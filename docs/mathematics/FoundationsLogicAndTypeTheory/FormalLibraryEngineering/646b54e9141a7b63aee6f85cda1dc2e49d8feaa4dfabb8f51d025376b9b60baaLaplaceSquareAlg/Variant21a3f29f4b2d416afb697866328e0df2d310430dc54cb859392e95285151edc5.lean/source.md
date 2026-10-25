# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.646b54e9141a7b63aee6f85cda1dc2e49d8feaa4dfabb8f51d025376b9b60baaLaplaceSquareAlg.Variant21a3f29f4b2d416afb697866328e0df2d310430dc54cb859392e95285151edc5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `533e230df43fcecdbc0c6caccc87044d0806484f` · SHA-256 `93d163717f81539bb8cf11c118a781b32350e140e90f4321e78183ce612f25a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Complex.Variant646b54e9141a7b63aee6f85cda1dc2e49d8feaa4dfabb8f51d025376b9b60baa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"646b54e9141a7b63aee6f85cda1dc2e49d8feaa4dfabb8f51d025376b9b60baa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Complex.Variant646b54e9141a7b63aee6f85cda1dc2e49d8feaa4dfabb8f51d025376b9b60baa","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"646b54e9141a7b63aee6f85cda1dc2e49d8feaa4dfabb8f51d025376b9b60baa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/64/646b54e9141a7b63aee6f85cda1dc2e49d8feaa4dfabb8f51d025376b9b60baa--LaplaceSquareAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Complex.Basic
import Mathlib.Tactic

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Complex.Variant646b54e9141a7b63aee6f85cda1dc2e49d8feaa4dfabb8f51d025376b9b60baa

example (A Z sa sz z B : ℂ) (ha : sa ≠ 0) (hz : sz ≠ 0)
    (hA : A ≠ 0) (hZ : Z ≠ 0) (hAsqrt : sa ^ 2 = A) (hZsqrt : sz ^ 2 = Z) :
    ((z ^ 2 - 1 / 4) * (A / sa * B) / sz) *
      ((z ^ 2 - 1 / 4) * (A / sa * B) / sz) = A / Z * (z ^ 2 - 1 / 4) ^ 2 * B ^ 2 := by
  field_simp [ha, hz, hA, hZ]
  rw [hAsqrt, hZsqrt]
  ring
example (A : ℝ) (ρ : ℂ) : (((A : ℂ) * (ρ - 1 / 2)).re) = A * (ρ.re - 1 / 2) := by simp
```
