-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variantaa8a81040ea394c48e1890de0a64243d16408119ebc3e6d02a34db11c34e358a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa8a81040ea394c48e1890de0a64243d16408119ebc3e6d02a34db11c34e358a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Main.Variantaa8a81040ea394c48e1890de0a64243d16408119ebc3e6d02a34db11c34e358a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"aa8a81040ea394c48e1890de0a64243d16408119ebc3e6d02a34db11c34e358a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/src/formal/Formal/Checked/checked_core/main_b4c587ef3997.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean

/-!
Lake executable wrapper for the Rust Matriciant Formal regrowth checker.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variantaa8a81040ea394c48e1890de0a64243d16408119ebc3e6d02a34db11c34e358a

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
