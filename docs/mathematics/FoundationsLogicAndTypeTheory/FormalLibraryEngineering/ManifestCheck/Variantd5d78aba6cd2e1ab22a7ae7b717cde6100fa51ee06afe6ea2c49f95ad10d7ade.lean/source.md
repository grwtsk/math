# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ManifestCheck.Variantd5d78aba6cd2e1ab22a7ae7b717cde6100fa51ee06afe6ea2c49f95ad10d7ade

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4faa7ddce047b0d5aa811ba14ddc917f96949148` · SHA-256 `3af3476f4aaba3c5689e765d0309945e16f5b1fb35a49e363f603c06a30c5c6d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant5784fcd5ea9a410f5a27d58b81fd5e3073be8a153db0e9148f8a724e4d1115af","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5784fcd5ea9a410f5a27d58b81fd5e3073be8a153db0e9148f8a724e4d1115af","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Main.Variant5784fcd5ea9a410f5a27d58b81fd5e3073be8a153db0e9148f8a724e4d1115af","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5784fcd5ea9a410f5a27d58b81fd5e3073be8a153db0e9148f8a724e4d1115af","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/.quarentine/formal/Formal/ManifestCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean

/-!
Lake executable wrapper for the Rust Matriciant Formal regrowth checker.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant5784fcd5ea9a410f5a27d58b81fd5e3073be8a153db0e9148f8a724e4d1115af

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
