import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiDyadicPrimeBias
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiPrimeBlockRational

/-! # A certified prime cutoff for the ordinary-prime harmonic block

The original prime sums and any rational truncation through a positive
integer cutoff differ by at most the reciprocal of that cutoff, uniformly
in the starting order. The finite sample uses each ordinary prime once.
-/

namespace GRWTSK.XiPrimeBlockPrimeCutoff
open GRWTSK.XiDyadicPrimeBias GRWTSK.XiPrimeBlockRational
noncomputable section

/-- The full ordinary-prime contribution to the next harmonic block. -/
def primePart (N : ℕ) : ℝ :=
  ∑ i ∈ Finset.range N, (∑' p : Nat.Primes, weight (N+i+1) (p.val : ℝ)) /
    ((N : ℝ)+(i : ℝ)+1)

private def contribution (N p : ℕ) : ℝ :=
  if p.Prime then ∑ i ∈ Finset.range N, weight (N+i+1) (p:ℝ) / ((N:ℝ)+(i:ℝ)+1) else 0

private theorem contribution_bounds (N p : ℕ) :
    0 ≤ contribution N p ∧ contribution N p ≤ ((p:ℝ)^2)⁻¹ := by
  unfold contribution
  split_ifs with hp
  · have hy : 1 ≤ (p:ℝ) := by exact_mod_cast hp.one_lt.le
    refine ⟨Finset.sum_nonneg (fun i _ ↦ div_nonneg ((weight_mem_Icc hy _).1) (by positivity)),?_⟩
    rcases Nat.eq_zero_or_pos N with rfl | hN
    · simp
    · have hn : 0 < (N:ℝ) := by exact_mod_cast hN
      calc
        _ ≤ ∑ _i ∈ Finset.range N, ((p:ℝ)^2)⁻¹/(N:ℝ) := by
          apply Finset.sum_le_sum
          intro i _
          exact (div_le_div_of_nonneg_right (weight_mem_Icc hy _).2 (by positivity)).trans
            (div_le_div_of_nonneg_left (by positivity) hn (by linarith [Nat.cast_nonneg (α := ℝ) i]))
        _ = _ := by
          simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
          field_simp
  · exact ⟨le_rfl, by positivity⟩

private theorem primePart_eq (N : ℕ) : primePart N = ∑' p : ℕ, contribution N p := by
  have hs (i : ℕ) : Summable (fun p : Nat.Primes ↦ weight (N+i+1) (p.val : ℝ) / ((N:ℝ)+(i:ℝ)+1)) :=
    (summable_prime_weight _).div_const _
  unfold primePart
  simp_rw [← tsum_div_const]
  rw [← Summable.tsum_finsetSum (fun i _ ↦ hs i)]
  calc
    _ = ∑' p : Nat.Primes, contribution N p.val := tsum_congr (fun p ↦ by simp [contribution, p.property])
    _ = _ := by
      apply tsum_subtype_eq_of_support_subset
      intro p hp
      by_contra h
      change ¬ Nat.Prime p at h
      exact hp (by simp [contribution, h])

private theorem truncated_eq (N Y : ℕ) : (truncatedPrimeBlock N Y : ℝ) =
    ∑ p ∈ Finset.range (Y+1), contribution N p := by
  unfold truncatedPrimeBlock
  push_cast
  rw [Finset.sum_filter]
  rfl

/-- The inverse-square tail beyond a positive integer cutoff is at most its
continuous integral. The finite estimate retains the upper endpoint. -/
theorem shifted_inverse_square_tsum_le {Y : ℕ} (hY : 0 < Y) :
    (∑' k : ℕ, (((k + (Y+1) : ℕ) : ℝ)^2)⁻¹) ≤ 1/(Y:ℝ) := by
  have htail (n : ℕ) :
      (∑ k ∈ Finset.range n, (((k + (Y+1) : ℕ) : ℝ)^2)⁻¹) +
        1/((n:ℝ)+Y) ≤ 1/(Y:ℝ) := by
    induction n with
    | zero => simp
    | succ n ih =>
      have hpos : 0 < (n:ℝ)+Y := by positivity
      have step {x : ℝ} (hx : 0 < x) : ((x+1)^2)⁻¹ + 1/(x+1) ≤ 1/x := by
        field_simp
        nlinarith
      have s := step hpos
      rw [Finset.sum_range_succ, Nat.cast_add, Nat.cast_add, Nat.cast_one, Nat.cast_succ]
      rw [show (n:ℝ)+(Y+1) = ((n:ℝ)+Y)+1 by ring,
        show (n:ℝ)+1+Y = ((n:ℝ)+Y)+1 by ring]
      linarith
  apply Real.tsum_le_of_sum_range_le (fun k => by positivity)
  intro n
  have ht : 0 ≤ 1/((n:ℝ)+Y) := by positivity
  linarith [htail n]

set_option maxHeartbeats 1000000 in
/-- The actual omitted harmonic prime mass is nonnegative and at most `1/Y`. -/
theorem primePart_sub_truncated_mem_Icc (N : ℕ) {Y : ℕ} (hY : 0 < Y) :
    primePart N - (truncatedPrimeBlock N Y : ℝ) ∈ Set.Icc 0 (1/(Y:ℝ)) := by
  have hm : Summable (fun p : ℕ ↦ ((p:ℝ)^2)⁻¹) := (Real.summable_nat_pow_inv (p := 2)).mpr (by decide)
  have h := contribution_bounds N
  have hs : Summable (contribution N) :=
    Summable.of_nonneg_of_le (fun p ↦ (h p).1) (fun p ↦ (h p).2) hm
  have he := hs.sum_add_tsum_nat_add (Y+1)
  have hd : primePart N - (truncatedPrimeBlock N Y : ℝ) = ∑' k : ℕ, contribution N (k+(Y+1)) := by
    rw [primePart_eq, truncated_eq]
    linarith only [he]
  rw [hd]
  refine ⟨tsum_nonneg (fun k ↦ (h (k+(Y+1))).1),?_⟩
  apply le_trans _ (shifted_inverse_square_tsum_le hY)
  exact ((summable_nat_add_iff (Y+1)).mpr hs).tsum_le_tsum
    (fun k ↦ (h (k+(Y+1))).2) ((summable_nat_add_iff (Y+1)).mpr hm)

/-- Rational truncations give computable lower and upper bounds on the full
ordinary-prime contribution, at every block order. -/
theorem primePart_bounds (N : ℕ) {Y : ℕ} (hY : 0 < Y) :
    (truncatedPrimeBlock N Y : ℝ) ≤ primePart N ∧
    primePart N ≤ (truncatedPrimeBlock N Y : ℝ) + 1/(Y:ℝ) := by
  obtain ⟨h₁,h₂⟩ := primePart_sub_truncated_mem_Icc N hY
  exact ⟨sub_nonneg.mp h₁, by linarith⟩

end
end GRWTSK.XiPrimeBlockPrimeCutoff
