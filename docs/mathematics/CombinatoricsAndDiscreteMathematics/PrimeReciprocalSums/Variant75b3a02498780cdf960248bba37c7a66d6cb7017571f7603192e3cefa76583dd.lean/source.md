# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeReciprocalSums.Variant75b3a02498780cdf960248bba37c7a66d6cb7017571f7603192e3cefa76583dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c567074adf8ae3a901e7e43b367435a9fb5ce79b` · SHA-256 `287ba98997c4a6405e5de6bd005d2def52fd150c3549a787c4683644ffe35034`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeReciprocalPartial.Variant8aaffa228afb6e106551ae39f2f45a3598b874d949dc74c1e7dc4b4d8a8e95fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8aaffa228afb6e106551ae39f2f45a3598b874d949dc74c1e7dc4b4d8a8e95fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PrimeReciprocalPartial.Variant8aaffa228afb6e106551ae39f2f45a3598b874d949dc74c1e7dc4b4d8a8e95fd","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8aaffa228afb6e106551ae39f2f45a3598b874d949dc74c1e7dc4b4d8a8e95fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/PrimeReciprocalSums.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.HarmonicPartialSums
import Folder.Rebuild.AnalyticNumberTheory.PrimeExhaustion

/-!
# Folder.Rebuild.AnalyticNumberTheory.PrimeReciprocalSums

Finite partial sums of reciprocal primes.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeReciprocalPartial.Variant8aaffa228afb6e106551ae39f2f45a3598b874d949dc74c1e7dc4b4d8a8e95fd

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def primeReciprocalPartial
    (N : Nat) : Real :=
  ∑ p ∈ primesUpTo N, (p : Real)⁻¹

theorem primeReciprocalPartial_nonneg
    (N : Nat) :
    0 ≤ primeReciprocalPartial N := by
  unfold primeReciprocalPartial
  exact
    Finset.sum_nonneg
      (fun p _hp => inv_nonneg.mpr (Nat.cast_nonneg p))

theorem primesUpTo_subset_of_le
    {M N : Nat}
    (hMN : M ≤ N) :
    primesUpTo M ⊆ primesUpTo N := by
  intro p hp
  rcases mem_primesUpTo_iff.mp hp with ⟨hprime, hpM⟩
  exact mem_primesUpTo_iff.mpr ⟨hprime, hpM.trans hMN⟩

theorem primeReciprocalPartial_mono :
    Monotone primeReciprocalPartial := by
  intro M N hMN
  unfold primeReciprocalPartial
  exact
    Finset.sum_le_sum_of_subset_of_nonneg
      (primesUpTo_subset_of_le hMN)
      (fun p _hp _hnot => inv_nonneg.mpr (Nat.cast_nonneg p))

end AnalyticNumberTheory
end Rebuild
end Folder
```
