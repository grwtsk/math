# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ManifestCheck.Variant5784fcd5ea9a410f5a27d58b81fd5e3073be8a153db0e9148f8a724e4d1115af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f988ecbfb03bfff990f02d75f59205d7ee862652` · SHA-256 `5784fcd5ea9a410f5a27d58b81fd5e3073be8a153db0e9148f8a724e4d1115af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean

/-!
Lake executable wrapper for the Rust Matriciant Formal regrowth checker.
-/

def main : IO UInt32 := do
  let output <- IO.Process.output {
    cmd := "cargo"
    args := #[
      "run", "-q",
      "--manifest-path", "../../Cargo.toml",
      "--bin", "formal_manifest_check",
      "--",
      "--root", ".",
      "--check"
    ]
  }
  if !output.stdout.isEmpty then
    IO.print output.stdout
  if !output.stderr.isEmpty then
    IO.eprint output.stderr
  return output.exitCode
```
