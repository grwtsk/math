# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.Divisibility.Variant757310c3dc4480dba2d2da379e14aed4c6a4f16fdee781d0ef90c714b1086e57

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80fd32b2d6b2bf05eba25f412eeb9ae5887f9bc7` · SHA-256 `5cf162c73d6ae6f9cf947eca09172f7f12711ea7ea2b1daaada7d88c41df2058`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.DvdIffFactorizationLe.Variantea83d76a553df8fa800847a36b6abcb4804c08a98a17631ef6ee843a3a9a68f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea83d76a553df8fa800847a36b6abcb4804c08a98a17631ef6ee843a3a9a68f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.DvdIffFactorizationLe.Variantea83d76a553df8fa800847a36b6abcb4804c08a98a17631ef6ee843a3a9a68f8","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"ea83d76a553df8fa800847a36b6abcb4804c08a98a17631ef6ee843a3a9a68f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/NumberTheory/Divisibility.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.NumberTheory.FactorizationRebuild

/-!
# Folder.Rebuild.NumberTheory.Divisibility

Divisibility and coprimality rebuilt through the project factorization map.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.DvdIffFactorizationLe.Variantea83d76a553df8fa800847a36b6abcb4804c08a98a17631ef6ee843a3a9a68f8

namespace Folder
namespace Rebuild
namespace NumberTheory

open Folder.NumberTheory

/--
Divisibility of positive naturals is pointwise comparison of prime exponents in
the project factorization map.
-/
theorem dvd_iff_factorization_le
    (a b : PositiveNat) :
    a.val ∣ b.val ↔
      ∀ p, FactorizationMap a p ≤ FactorizationMap b p := by
  constructor
  · intro h p
    exact
      (Nat.factorization_le_iff_dvd
        (Nat.ne_of_gt a.2) (Nat.ne_of_gt b.2)).mpr h p
  · intro h
    exact
      (Nat.factorization_le_iff_dvd
        (Nat.ne_of_gt a.2) (Nat.ne_of_gt b.2)).mp h

/--
Coprimality means the two project prime-support predicates do not overlap.
-/
theorem coprime_iff_disjoint_prime_support
    (a b : PositiveNat) :
    Nat.Coprime a.val b.val ↔
      ∀ p, ¬ (IsPrimeSupport a p ∧ IsPrimeSupport b p) := by
  constructor
  · intro hcop p hpab
    rcases hpab with ⟨hpa, hpb⟩
    have hpprime : Nat.Prime p := factorization_support_prime a hpa
    have hpda : p ∣ a.val := Nat.dvd_of_factorization_pos hpa
    have hpdb : p ∣ b.val := Nat.dvd_of_factorization_pos hpb
    have hp1 : p = 1 := Nat.eq_one_of_dvd_coprimes hcop hpda hpdb
    exact hpprime.ne_one hp1
  · intro hdis
    by_contra hnot
    rcases Nat.Prime.not_coprime_iff_dvd.mp hnot with
      ⟨p, hpprime, hpda, hpdb⟩
    have hpa : IsPrimeSupport a p := by
      exact Nat.ne_of_gt
        (hpprime.factorization_pos_of_dvd
          (Nat.ne_of_gt a.2) hpda)
    have hpb : IsPrimeSupport b p := by
      exact Nat.ne_of_gt
        (hpprime.factorization_pos_of_dvd
          (Nat.ne_of_gt b.2) hpdb)
    exact hdis p ⟨hpa, hpb⟩

end NumberTheory
end Rebuild
end Folder
```
