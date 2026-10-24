# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ActualMoebiusSqrtLower.Variant4a2c260ccc85e52bbbfba7fc19f103b6f8ff666379af2b117da7973adf570ced

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ffd660f409c12c41d81901be21ae1d43225bbf05` · SHA-256 `e1f101f8ca61344d14f96ce0440cd35f4be7a4ebcbf41285075baefa49a0a5ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ActualAbsMoebiusEqSquarefreeIndicator.Variant55b89415ea27ea9a228090136314733254df0d8f382c504fedc6d74dff169b8a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"55b89415ea27ea9a228090136314733254df0d8f382c504fedc6d74dff169b8a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ActualAbsMoebiusEqSquarefreeIndicator.Variant55b89415ea27ea9a228090136314733254df0d8f382c504fedc6d74dff169b8a","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"55b89415ea27ea9a228090136314733254df0d8f382c504fedc6d74dff169b8a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T190313Z-1791313393576469000/ActualMoebiusSqrtLower.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualSqrtSieveBounds

/-!
An actual weighted square-divisor sieve lower-bounds the complete absolute
Moebius half-sum. The coefficients are the genuine squarefree indicator.
This is an unsigned arithmetic norm statement, not a signed upper witness.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ActualAbsMoebiusEqSquarefreeIndicator.Variant55b89415ea27ea9a228090136314733254df0d8f382c504fedc6d74dff169b8a

set_option autoImplicit false
namespace RH16IndependentChallengeNext

open scoped BigOperators
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensAbel

noncomputable section

/-- The actual real absolute Moebius value is the genuine squarefree indicator. -/
theorem actualAbsMoebius_eq_squarefreeIndicator (n : ℕ) :
    |realMoebius n| = if Squarefree n then (1 : ℝ) else 0 := by
  unfold realMoebius
  exact_mod_cast (ArithmeticFunction.abs_moebius (n := n))

/-- Every actual non-squarefree positive integer is covered by a retained square divisor. -/
theorem actualAbsMoebius_lower_square_sieve {U n : ℕ} (hn : 1 ≤ n) (hnU : n ≤ U) :
    1 - |realMoebius n| ≤
      ∑ k ∈ Finset.Icc 2 U, if k * k ∣ n then (1 : ℝ) else 0 := by
  classical
  rw [actualAbsMoebius_eq_squarefreeIndicator]
  by_cases hs : Squarefree n
  · rw [if_pos hs, sub_self]
    exact Finset.sum_nonneg (by intro k _; split_ifs <;> norm_num)
  · rw [if_neg hs, sub_zero]
    have hnot : ¬∀ p, Nat.Prime p → ¬p * p ∣ n := by
      intro he
      exact hs (Nat.squarefree_iff_prime_squarefree.mpr he)
    push Not at hnot
    obtain ⟨p, hp, hdiv⟩ := hnot
    have hp2 : 2 ≤ p := hp.two_le
    have hpSq : p * p ≤ n := Nat.le_of_dvd (by omega) hdiv
    have hpU : p ≤ U := (show p ≤ p * p by nlinarith).trans (hpSq.trans hnU)
    have hmem : p ∈ Finset.Icc 2 U := Finset.mem_Icc.mpr ⟨hp2, hpU⟩
    have he := Finset.single_le_sum
      (f := fun k => if k * k ∣ n then (1 : ℝ) else 0)
      (by intro k _; split_ifs <;> norm_num) hmem
    simpa only [if_pos hdiv] using he

/-- Each square-divisor block retains the exact original integer cutoff. -/
def squareDivisorSqrtMass (U k : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 U, if k * k ∣ n then 1 / Real.sqrt (n : ℝ) else 0

/-- Genuine square-multiple reindexing retains all positive atoms and the floor quotient. -/
theorem squareDivisorSqrtMass_eq_quotient {U k : ℕ} (hk : 1 ≤ k) :
    squareDivisorSqrtMass U k =
      ∑ m ∈ Finset.Icc 1 (U / (k * k)), 1 / Real.sqrt ((k * k * m : ℕ) : ℝ) := by
  classical
  have hkk : 0 < k * k := Nat.mul_pos (by omega) (by omega)
  unfold squareDivisorSqrtMass
  rw [← Finset.sum_filter]
  apply Finset.sum_bij' (fun n _ => n / (k * k)) (fun m _ => k * k * m)
  · intro n hn
    obtain ⟨hnI, hd⟩ := Finset.mem_filter.mp hn
    obtain ⟨hn1, hnU⟩ := Finset.mem_Icc.mp hnI
    refine Finset.mem_Icc.mpr ⟨?_, Nat.div_le_div_right hnU⟩
    have he := Nat.div_mul_cancel hd
    apply Nat.one_le_iff_ne_zero.mpr
    intro hz
    rw [hz, zero_mul] at he
    omega
  · intro m hm
    obtain ⟨hm1, hmU⟩ := Finset.mem_Icc.mp hm
    refine Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨?_, ?_⟩, ⟨m, rfl⟩⟩
    · have hp := Nat.mul_pos hkk (show 0 < m by omega)
      omega
    · have he := (Nat.le_div_iff_mul_le hkk).mp hmU
      simpa only [Nat.mul_comm] using he
  · intro n hn
    obtain ⟨_, hd⟩ := Finset.mem_filter.mp hn
    simpa only [Nat.mul_comm] using Nat.div_mul_cancel hd
  · intro m _
    exact Nat.mul_div_cancel_left m hkk
  · intro n hn
    obtain ⟨_, hd⟩ := Finset.mem_filter.mp hn
    rw [Nat.mul_div_cancel' hd]

private theorem reciprocalSqrt_square_product (k m : ℕ) :
    1 / Real.sqrt ((k * k * m : ℕ) : ℝ) =
      1 / (k : ℝ) * (1 / Real.sqrt (m : ℝ)) := by
  push_cast
  rw [show (k : ℝ) * k * m = (k : ℝ) ^ 2 * m by ring,
    Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq (Nat.cast_nonneg k)]
  simp only [one_div, mul_inv_rev]
  ring

/-- The full positive square-divisor block has its scaled finite reciprocal sum. -/
theorem squareDivisorSqrtMass_eq_scaled {U k : ℕ} (hk : 1 ≤ k) :
    squareDivisorSqrtMass U k =
      1 / (k : ℝ) * (∑ m ∈ Finset.Icc 1 (U / (k * k)), 1 / Real.sqrt (m : ℝ)) := by
  rw [squareDivisorSqrtMass_eq_quotient hk]
  simp_rw [reciprocalSqrt_square_product]
  rw [Finset.mul_sum]

private theorem quotientSqrt_scaled_le {U k : ℕ} :
    (k : ℝ) * Real.sqrt ((U / (k * k) : ℕ) : ℝ) ≤ Real.sqrt (U : ℝ) := by
  have he : (k : ℝ) ^ 2 * ((U / (k * k) : ℕ) : ℝ) ≤ (U : ℝ) := by
    simpa only [pow_two] using
      (show (k : ℝ) * k * ((U / (k * k) : ℕ) : ℝ) ≤ U by
        exact_mod_cast Nat.mul_div_le U (k * k))
  have hs := Real.sqrt_le_sqrt he
  rwa [Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq (Nat.cast_nonneg k)] at hs

/-- A full square-divisor block has an actual reciprocal-square upper budget. -/
theorem squareDivisorSqrtMass_le {U k : ℕ} (hk : 1 ≤ k) :
    squareDivisorSqrtMass U k ≤ 2 * Real.sqrt (U : ℝ) / (k : ℝ) ^ 2 := by
  have hk0 : (0 : ℝ) < k := by exact_mod_cast (by omega : 0 < k)
  rw [squareDivisorSqrtMass_eq_scaled hk]
  have hm := mul_le_mul_of_nonneg_left (reciprocalSqrt_sum_upper_total (U / (k * k)))
    (show 0 ≤ 1 / (k : ℝ) by positivity)
  apply hm.trans
  apply (le_div_iff₀ (sq_pos_of_pos hk0)).mpr
  have hs := quotientSqrt_scaled_le (U := U) (k := k)
  field_simp
  nlinarith

/-- A nonempty actual square-divisor block retains the saved first reciprocal term. -/
theorem squareDivisorSqrtMass_le_saved {U k : ℕ} (hk : 1 ≤ k) (hksq : k * k ≤ U) :
    squareDivisorSqrtMass U k ≤
      2 * Real.sqrt (U : ℝ) / (k : ℝ) ^ 2 - 1 / (k : ℝ) := by
  have hk0 : (0 : ℝ) < k := by exact_mod_cast (by omega : 0 < k)
  have hkk : 0 < k * k := Nat.mul_pos (by omega) (by omega)
  have hm1 : 1 ≤ U / (k * k) := (Nat.le_div_iff_mul_le hkk).mpr (by simpa using hksq)
  rw [squareDivisorSqrtMass_eq_scaled hk]
  have hm := mul_le_mul_of_nonneg_left (reciprocalSqrt_sum_upper hm1)
    (show 0 ≤ 1 / (k : ℝ) by positivity)
  apply hm.trans
  have hs := quotientSqrt_scaled_le (U := U) (k := k)
  have he : 1 / (k : ℝ) * (2 * Real.sqrt ((U / (k * k) : ℕ) : ℝ) - 1) =
      1 / (k : ℝ) * (2 * Real.sqrt ((U / (k * k) : ℕ) : ℝ)) - 1 / (k : ℝ) := by ring
  rw [he]
  apply sub_le_sub_right
  apply (le_div_iff₀ (sq_pos_of_pos hk0)).mpr
  field_simp
  nlinarith

/-- The genuine squarefree indicator supplies the complete weighted sieve inequality. -/
theorem actualMoebiusSqrtMass_lower_weighted_sieve (U : ℕ) :
    (∑ n ∈ Finset.Icc 1 U, 1 / Real.sqrt (n : ℝ)) ≤
      (∑ n ∈ Finset.Icc 1 U, |realMoebius n| / Real.sqrt (n : ℝ)) +
        ∑ k ∈ Finset.Icc 2 U, squareDivisorSqrtMass U k := by
  classical
  have hrow (n : ℕ) (hn : n ∈ Finset.Icc 1 U) :
      1 / Real.sqrt (n : ℝ) ≤ |realMoebius n| / Real.sqrt (n : ℝ) +
        ∑ k ∈ Finset.Icc 2 U, if k * k ∣ n then 1 / Real.sqrt (n : ℝ) else 0 := by
    obtain ⟨hn1, hnU⟩ := Finset.mem_Icc.mp hn
    have hi := div_le_div_of_nonneg_right (actualAbsMoebius_lower_square_sieve hn1 hnU)
      (Real.sqrt_nonneg (n : ℝ))
    have he : (∑ k ∈ Finset.Icc 2 U, if k * k ∣ n then (1 : ℝ) else 0) /
        Real.sqrt (n : ℝ) =
        ∑ k ∈ Finset.Icc 2 U, if k * k ∣ n then 1 / Real.sqrt (n : ℝ) else 0 := by
      rw [Finset.sum_div]
      apply Finset.sum_congr rfl
      intro k _
      split_ifs <;> simp
    rw [he, sub_div] at hi
    linarith
  have hs := Finset.sum_le_sum hrow
  rw [Finset.sum_add_distrib, Finset.sum_comm] at hs
  exact hs

/-- The first six real square-divisor blocks retain the saved unit contributions. -/
theorem squareDivisorSqrtMass_total_le {U : ℕ} (hU : 36 ≤ U) :
    (∑ k ∈ Finset.Icc 2 U, squareDivisorSqrtMass U k) ≤
      (25 / 18 : ℝ) * Real.sqrt (U : ℝ) - 25 / 18 := by
  have hrow (k : ℕ) (hk : k ∈ Finset.Icc 2 U) :
      squareDivisorSqrtMass U k ≤ 2 * Real.sqrt (U : ℝ) / (k : ℝ) ^ 2 -
        (if k ≤ 6 then 1 / (k : ℝ) else 0) := by
    have hk1 : 1 ≤ k := by have := (Finset.mem_Icc.mp hk).1; omega
    by_cases hk6 : k ≤ 6
    · rw [if_pos hk6]
      apply squareDivisorSqrtMass_le_saved hk1
      nlinarith
    · rw [if_neg hk6, sub_zero]
      exact squareDivisorSqrtMass_le hk1
  have hs := Finset.sum_le_sum hrow
  rw [Finset.sum_sub_distrib] at hs
  have he : (∑ k ∈ Finset.Icc 2 U, 2 * Real.sqrt (U : ℝ) / (k : ℝ) ^ 2) =
      2 * Real.sqrt (U : ℝ) * (∑ k ∈ Finset.Icc 2 U, 1 / (k : ℝ) ^ 2) := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  have hb : (∑ k ∈ Finset.Icc 2 U, if k ≤ 6 then 1 / (k : ℝ) else 0) =
      ∑ k ∈ Finset.Icc (2 : ℕ) 6, 1 / (k : ℝ) := by
    rw [← Finset.sum_filter]
    congr 1
    ext k
    simp only [Finset.mem_filter, Finset.mem_Icc]
    omega
  rw [he, hb] at hs
  have hm := mul_le_mul_of_nonneg_left (reciprocalSquare_sum_upper U)
    (show 0 ≤ 2 * Real.sqrt (U : ℝ) by positivity)
  have hbonus := reciprocal_small_square_divisor_bonus
  linarith

/-- The complete actual unsigned Moebius half-sum has a positive square-root lower norm. -/
theorem actualMoebiusSqrtMass_lower {U : ℕ} (hU : 36 ≤ U) :
    (11 / 18 : ℝ) * (Real.sqrt (U : ℝ) - 1) ≤
      ∑ n ∈ Finset.Icc 1 U, |realMoebius n| / Real.sqrt (n : ℝ) := by
  have hs := actualMoebiusSqrtMass_lower_weighted_sieve U
  have hl := reciprocalSqrt_sum_lower U
  have hu := squareDivisorSqrtMass_total_le hU
  linarith

end
end RH16IndependentChallengeNext
```
