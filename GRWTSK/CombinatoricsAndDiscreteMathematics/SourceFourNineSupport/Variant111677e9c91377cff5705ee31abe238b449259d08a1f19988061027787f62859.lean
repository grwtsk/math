import SourceSquarefreeSampling

/-!
Actual two-square Moebius support, with intersection36 retained. Existing
reciprocal telescope and four-square support proofs are reused unchanged.
Direction: grwtsk contributors. Native source construction: Codex graph-review.
-/
set_option autoImplicit false
noncomputable section
namespace RH16FourNineSupport
open scoped BigOperators
open RH16SquarefreeSampling

theorem mobius_nine_mul_zero (n : Nat) : ArithmeticFunction.moebius (9 * n) = 0 := by
  apply ArithmeticFunction.moebius_eq_zero_of_not_squarefree
  intro h
  have hu := h 3 (show Dvd.dvd (3 * 3) (9 * n) from by use n; ring)
  norm_num at hu

private theorem multiples_eq_image (k N : Nat) (hk : 0 < k) :
    (Finset.Icc 1 N).filter (fun n => k ∣ n) =
      (Finset.Icc 1 (N / k)).image (fun j => k * j) := by
  classical
  ext n
  simp only [Finset.mem_filter, Finset.mem_Icc, Finset.mem_image]
  constructor
  · intro hn
    refine ⟨n / k, ?_, Nat.mul_div_cancel' hn.2⟩
    have he := Nat.mul_div_cancel' hn.2
    constructor
    · by_contra h
      have h0 : n / k = 0 := by omega
      rw [h0, mul_zero] at he
      omega
    · exact Nat.div_le_div_right hn.1.2
  · rintro ⟨j, hj, rfl⟩
    constructor
    · constructor
      · nlinarith [hj.1]
      · exact (Nat.le_div_iff_mul_le hk).mp hj.2
    · exact dvd_mul_right k j

private theorem reciprocal_multiples_sum (k N : Nat) (hk : 0 < k) :
    (∑ n ∈ Finset.Icc 1 N, if k ∣ n then 1 / Real.sqrt (n : Real) else 0) =
      reciprocalSqrtSum (N / k) / Real.sqrt (k : Real) := by
  classical
  rw [← Finset.sum_filter, multiples_eq_image k N hk]
  rw [Finset.sum_image (by intro a _ b _ h; dsimp at h; nlinarith)]
  unfold reciprocalSqrtSum
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro j hj
  rw [Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg k)]
  ring

theorem squarefreeWeightSum_subtract_four_nine (N : Nat) :
    squarefreeWeightSum N <= reciprocalSqrtSum N - reciprocalSqrtSum (N / 4) / 2 -
      reciprocalSqrtSum (N / 9) / 3 + reciprocalSqrtSum (N / 36) / 6 := by
  classical
  have hpt (d : Nat) :
      abs ((ArithmeticFunction.moebius d : Int) : Real) / Real.sqrt (d : Real) <=
        1 / Real.sqrt (d : Real) - (if 4 ∣ d then 1 / Real.sqrt (d : Real) else 0) -
          (if 9 ∣ d then 1 / Real.sqrt (d : Real) else 0) +
          (if 36 ∣ d then 1 / Real.sqrt (d : Real) else 0) := by
    by_cases h4 : 4 ∣ d <;> by_cases h9 : 9 ∣ d
    · have h36 : 36 ∣ d := by omega
      obtain ⟨j, rfl⟩ := h4
      rw [mobius_four_mul_zero]
      simp only [Int.cast_zero, abs_zero, zero_div, if_pos h4, if_pos h9, if_pos h36]
      ring_nf
    · have h36 : ¬36 ∣ d := by omega
      obtain ⟨j, rfl⟩ := h4
      rw [mobius_four_mul_zero]
      simp only [Int.cast_zero, abs_zero, zero_div, if_pos h4, if_neg h9, if_neg h36]
      ring_nf
    · have h36 : ¬36 ∣ d := by omega
      obtain ⟨j, rfl⟩ := h9
      rw [mobius_nine_mul_zero]
      simp only [Int.cast_zero, abs_zero, zero_div, if_neg h4, if_pos h9, if_neg h36]
      ring_nf
    · have h36 : ¬36 ∣ d := by omega
      simp only [if_neg h4, if_neg h9, if_neg h36, sub_zero, add_zero]
      have hab : abs ((ArithmeticFunction.moebius d : Int) : Real) <= 1 := by
        exact_mod_cast ArithmeticFunction.abs_moebius_le_one (n := d)
      exact div_le_div_of_nonneg_right hab (Real.sqrt_nonneg _)
  have hs := Finset.sum_le_sum (fun d (_ : d ∈ Finset.Icc 1 N) => hpt d)
  unfold squarefreeWeightSum reciprocalSqrtSum
  simp_rw [Finset.sum_add_distrib, Finset.sum_sub_distrib] at hs
  rw [reciprocal_multiples_sum 4 N (by norm_num),
    reciprocal_multiples_sum 9 N (by norm_num),
    reciprocal_multiples_sum 36 N (by norm_num)] at hs
  norm_num only [Real.sqrt_natCast_ofNat] at hs
  exact hs

private theorem sqrt_floor_next (N k : Nat) (hk : 0 < k) :
    Real.sqrt (N : Real) / Real.sqrt (k : Real) <=
      Real.sqrt ((N / k + 1 : Nat) : Real) := by
  have hf : (N : Real) / (k : Real) <= ((N / k + 1 : Nat) : Real) := by
    apply (div_le_iff₀ (by exact_mod_cast hk : (0 : Real) < k)).2
    exact_mod_cast (show N <= (N / k + 1) * k by omega)
  simpa only [Real.sqrt_div (Nat.cast_nonneg N)] using Real.sqrt_le_sqrt hf

theorem squarefreeWeightSum_four_thirds (N : Nat) :
    squarefreeWeightSum N <= (4 / 3 : Real) * Real.sqrt (N : Real) + 1 / 2 := by
  by_cases hs : N <= 9
  · have h := squarefreeWeightSum_three_halves N
    have hn : (N : Real) <= 9 := by exact_mod_cast hs
    have hb : Real.sqrt (N : Real) <= 3 := by
      have h := Real.sqrt_le_sqrt hn
      norm_num at h
      exact h
    linarith
  have hn : 1 <= N := by omega
  have hu := reciprocalSqrtSum_upper_unit N hn
  have h4 := reciprocalSqrtSum_lower_next (N / 4)
  have h9 := reciprocalSqrtSum_lower_next (N / 9)
  have hf4 := sqrt_floor_next N 4 (by norm_num)
  have hf9 := sqrt_floor_next N 9 (by norm_num)
  norm_num only [Real.sqrt_natCast_ofNat] at hf4 hf9
  have h := squarefreeWeightSum_subtract_four_nine N
  by_cases h36 : 36 <= N
  · have h36pos : 1 <= N / 36 := by omega
    have hv := reciprocalSqrtSum_upper_unit (N / 36) h36pos
    have hf : Real.sqrt ((N / 36 : Nat) : Real) <= Real.sqrt (N : Real) / 6 := by
      have hc : ((N / 36 : Nat) : Real) <= (N : Real) / 36 := by
        apply (le_div_iff₀ (by norm_num : (0 : Real) < 36)).2
        exact_mod_cast (show N / 36 * 36 <= N by omega)
      have hh := Real.sqrt_le_sqrt hc
      rw [Real.sqrt_div (Nat.cast_nonneg N)] at hh
      norm_num at hh
      exact hh
    linarith
  · have hz : N / 36 = 0 := by omega
    rw [hz] at h
    norm_num [reciprocalSqrtSum] at h
    have hsqrt : 3 <= Real.sqrt (N : Real) := by
      have hc : (9 : Real) <= N := by exact_mod_cast (show 9 <= N by omega)
      have hh := Real.sqrt_le_sqrt hc
      norm_num at hh
      exact hh
    linarith

end RH16FourNineSupport
