project = "static-site"
app "static-site" {
  build {
    use "pack" {
    }
    registry {
      use "files" {
        path = "."
      }
    }
  }
  deploy {
    use "docker" {
    }
  }
  release {
    use "nomad-jobspec-canary" {
    }
  }
}
