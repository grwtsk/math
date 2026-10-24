import Lean

/-!
Lake executable wrapper for the Rust Matriciant Formal regrowth checker.
-/

def main : IO UInt32 := do
  let output <- IO.Process.output {
    cmd := "/bin/sh"
    args := #[
      "-lc",
      "if [ -x ../../target/debug/formal_manifest_check ]; then \
        ../../target/debug/formal_manifest_check --root . --check; \
       else \
        env -u DYLD_LIBRARY_PATH -u DYLD_FALLBACK_LIBRARY_PATH -u LIBRARY_PATH -u LEAN_SYSROOT \
          cargo run -q --manifest-path ../../Cargo.toml --bin formal_manifest_check -- --root . --check; \
       fi"
    ]
  }
  if !output.stdout.isEmpty then
    IO.print output.stdout
  if !output.stderr.isEmpty then
    IO.eprint output.stderr
  return output.exitCode
