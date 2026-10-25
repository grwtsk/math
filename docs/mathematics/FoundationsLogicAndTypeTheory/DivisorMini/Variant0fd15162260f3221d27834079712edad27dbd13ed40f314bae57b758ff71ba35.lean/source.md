# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.DivisorMini.Variant0fd15162260f3221d27834079712edad27dbd13ed40f314bae57b758ff71ba35

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3fd3d28300e1d27f9a4a9643043e9480e278cd73` · SHA-256 `ada8e021c3d3524771923511f880cee51409ab9ec3f459787cc2eee8b8486993`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.D.Variant0b9537d0227aeffe19073b2cb942cdc00e569644e3cea4307be9ea98ad9e1338","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b9537d0227aeffe19073b2cb942cdc00e569644e3cea4307be9ea98ad9e1338","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.D.Variant0b9537d0227aeffe19073b2cb942cdc00e569644e3cea4307be9ea98ad9e1338","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0b9537d0227aeffe19073b2cb942cdc00e569644e3cea4307be9ea98ad9e1338","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/divisor-mini.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Nat.Factorization.Divisors

namespace GRWTSK.FoundationsLogicAndTypeTheory.D.Variant0b9537d0227aeffe19073b2cb942cdc00e569644e3cea4307be9ea98ad9e1338

namespace F
structure D (M : ℕ) where
  val : ℕ
  property : val ∣ M
instance (M : ℕ) : Coe (D M) ℕ := ⟨D.val⟩
instance (M : ℕ) : CoeOut (D M) ℕ := ⟨D.val⟩
#check (fun {M : ℕ} (d : D M) => (d : ℕ))
end F
```
