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
