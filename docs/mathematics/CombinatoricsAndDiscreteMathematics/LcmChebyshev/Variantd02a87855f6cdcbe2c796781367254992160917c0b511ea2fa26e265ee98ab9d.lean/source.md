# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.LcmChebyshev.Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `720201abbda1a13d36bb2cdd7d12fc84d40e37c0` · SHA-256 `491a4655784434390536cd680c53bc91fe1523dd9f4f582e93d2989dd4004774`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.IntervalLcm.Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.IntervalLcm.Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/LcmChebyshev.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.PrimePowerLogSums
import Mathlib.Algebra.GCDMonoid.FinsetLemmas
import Mathlib.Data.Nat.Log
import Mathlib.Tactic

/-!
# Folder.Rebuild.AnalyticNumberTheory.LcmChebyshev

Finite lcm/factorization bridge for Chebyshev psi.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.IntervalLcm.Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

def intervalLcm
    (N : Nat) : Nat :=
  (Finset.Icc 1 N).lcm id

theorem dvd_intervalLcm
    {n N : Nat}
    (hn : n ∈ Finset.Icc 1 N) :
    n ∣ intervalLcm N := by
  unfold intervalLcm
  exact Finset.dvd_lcm (s := Finset.Icc 1 N) (f := id) hn

theorem factorization_intervalLcm_eq_max
    (N p : Nat) :
    Nat.factorization (intervalLcm N) p =
      (Finset.Icc 1 N).sup (fun n => Nat.factorization n p) := by
  unfold intervalLcm
  exact
    Finset.factorization_lcm
      (f := id)
      (s := Finset.Icc 1 N)
      (by
        intro k hk
        exact (lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hk).1).ne') p

theorem factorization_intervalLcm_prime_log
    (N : Nat) {p : Nat}
    (hp : Nat.Prime p) :
    Nat.factorization (intervalLcm N) p = Nat.log p N := by
  rw [factorization_intervalLcm_eq_max]
  have hp1 := hp.one_lt
  refine le_antisymm ?_ ?_
  · simp only [Finset.sup_le_iff, Finset.mem_Icc, and_imp]
    intro m hm1 hmN
    exact
      Nat.le_log_of_pow_le hp1
        ((Nat.le_of_dvd (by omega) (Nat.ordProj_dvd m p)).trans hmN)
  · rcases le_or_gt p N with hpN | hpN
    · have hpow := Nat.pow_log_le_self p (x := N) (by omega)
      have hmem : p ^ Nat.log p N ∈ Finset.Icc 1 N := by
        exact
          Finset.mem_Icc.mpr
            ⟨Nat.succ_le_iff.mpr (pow_pos hp.pos _), hpow⟩
      have hle :=
        Finset.le_sup
          (s := Finset.Icc 1 N)
          (f := fun n => Nat.factorization n p)
          hmem
      have hfac :
          Nat.factorization (p ^ Nat.log p N) p = Nat.log p N := by
        simp [Nat.factorization_pow, hp]
      rwa [hfac] at hle
    · simp [Nat.log_of_lt hpN]

theorem factorization_intervalLcm_prime
    {N p e : Nat}
    (hp : Nat.Prime p) :
    e ≤ Nat.factorization (intervalLcm N) p ↔ p ^ e ≤ N ∨ e = 0 := by
  rw [factorization_intervalLcm_prime_log N hp]
  constructor
  · intro he
    by_cases h0 : e = 0
    · exact Or.inr h0
    · left
      have hNne : N ≠ 0 := by
        intro hN
        have hlog0 : Nat.log p N = 0 := by simp [hN]
        omega
      exact Nat.pow_le_of_le_log hNne he
  · intro h
    rcases h with hpow | h0
    · exact Nat.le_log_of_pow_le hp.one_lt hpow
    · simp [h0]

theorem log_intervalLcm_eq_chebyshevPsi
    (N : Nat) :
    Real.log (intervalLcm N) = chebyshevPsi N := by
  rw [chebyshevPsi_eq_sum_log_prime]
  rw [Real.log_nat_eq_sum_factorization]
  let F := Nat.factorization (intervalLcm N)
  have hsupport : F.support ⊆ primesUpTo N := by
    intro p hp_mem
    have hp_ne : F p ≠ 0 := Finsupp.mem_support_iff.mp hp_mem
    have hp_prime : Nat.Prime p := by
      by_contra hnp
      have hzero : F p = 0 := by
        simp [F, Nat.factorization_eq_zero_of_not_prime (intervalLcm N) hnp]
      exact hp_ne hzero
    have hlog : Nat.log p N ≠ 0 := by
      rwa [← factorization_intervalLcm_prime_log N hp_prime]
    have hp_le : p ≤ N := by
      by_contra hle
      have hlt : N < p := not_le.mp hle
      have hzero := Nat.log_of_lt hlt
      exact hlog hzero
    exact mem_primesUpTo_iff.mpr ⟨hp_prime, hp_le⟩
  have hsum :
      F.sum (fun p t => (t : Real) * Real.log (p : Real)) =
        ∑ p ∈ primesUpTo N, (F p : Real) * Real.log (p : Real) := by
    exact
      Finsupp.sum_of_support_subset
        (f := F)
        (s := primesUpTo N)
        hsupport
        (fun p t => (t : Real) * Real.log (p : Real))
        (by intro p hp; simp)
  rw [hsum]
  refine Finset.sum_congr rfl ?_
  intro p hp
  rw [factorization_intervalLcm_prime_log N (primesUpTo_prime hp)]

theorem chebyshevPsi_le_log_intervalLcm
    (N : Nat) :
    chebyshevPsi N ≤ Real.log (intervalLcm N) := by
  rw [log_intervalLcm_eq_chebyshevPsi]

end AnalyticNumberTheory
end Rebuild
end Folder
```
