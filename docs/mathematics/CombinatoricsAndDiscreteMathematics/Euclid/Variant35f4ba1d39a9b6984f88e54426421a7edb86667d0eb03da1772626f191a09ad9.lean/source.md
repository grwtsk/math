# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Euclid.Variant35f4ba1d39a9b6984f88e54426421a7edb86667d0eb03da1772626f191a09ad9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `938cfee42ac1e64fef73c77a8603e560ec84cddf` · SHA-256 `ad53729115efaf3d1008a27499c21d1cb7e99bbf001ee69e0d6bc972d11f5766`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EuclidPrimeNotInFiniteSet.Variant206d6bfd1e2a9d49fdeb8bddaeb8a274e4e48309825f3036a22bcca25889de4f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"206d6bfd1e2a9d49fdeb8bddaeb8a274e4e48309825f3036a22bcca25889de4f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.EuclidPrimeNotInFiniteSet.Variant206d6bfd1e2a9d49fdeb8bddaeb8a274e4e48309825f3036a22bcca25889de4f","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"206d6bfd1e2a9d49fdeb8bddaeb8a274e4e48309825f3036a22bcca25889de4f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/NumberTheory/Euclid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.NumberTheory.FactorizationRebuild

/-!
# Folder.Rebuild.NumberTheory.Euclid

Euclid's prime construction rebuilt through project factorization support.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EuclidPrimeNotInFiniteSet.Variant206d6bfd1e2a9d49fdeb8bddaeb8a274e4e48309825f3036a22bcca25889de4f

namespace Folder
namespace Rebuild
namespace NumberTheory

open Folder.NumberTheory
open scoped BigOperators

theorem euclid_prime_not_in_finite_set
    (S : Finset Nat)
    (hS : ∀ p ∈ S, Nat.Prime p) :
    ∃ q, Nat.Prime q ∧ q ∉ S := by
  let M : Nat := ∏ p ∈ S, p
  have hMpos : 0 < M := by
    exact Finset.prod_pos (fun p hp => (hS p hp).pos)
  let n : PositiveNat := ⟨M + 1, by omega⟩
  have hn : 1 < n.val := by
    dsimp [n, PositiveNat.val]
    omega
  rcases exists_prime_support_of_gt_one n hn with ⟨q, hqSupport, hqPrime⟩
  refine ⟨q, hqPrime, ?_⟩
  intro hqS
  have hqM : q ∣ M := by
    exact Finset.dvd_prod_of_mem (fun p => p) hqS
  have hqn : q ∣ n.val := by
    exact Nat.dvd_of_factorization_pos hqSupport
  have hq1 : q ∣ 1 := by
    have hsub : q ∣ n.val - M := Nat.dvd_sub hqn hqM
    simpa [n, PositiveNat.val, M] using hsub
  exact hqPrime.not_dvd_one hq1

theorem infinitely_many_primes_checked :
    Set.Infinite {p : Nat | Nat.Prime p} := by
  classical
  intro hfinite
  rcases hfinite.exists_finset with ⟨S, hS⟩
  have hSprimes : ∀ p ∈ S, Nat.Prime p := by
    intro p hp
    have : p ∈ ({p : Nat | Nat.Prime p} : Set Nat) := by
      simpa [hS] using hp
    exact this
  rcases euclid_prime_not_in_finite_set S hSprimes with ⟨q, hqPrime, hqNotS⟩
  have hqInS : q ∈ S := by
    have : q ∈ ({p : Nat | Nat.Prime p} : Set Nat) := hqPrime
    simpa [hS] using this
  exact hqNotS hqInS

end NumberTheory
end Rebuild
end Folder
```
