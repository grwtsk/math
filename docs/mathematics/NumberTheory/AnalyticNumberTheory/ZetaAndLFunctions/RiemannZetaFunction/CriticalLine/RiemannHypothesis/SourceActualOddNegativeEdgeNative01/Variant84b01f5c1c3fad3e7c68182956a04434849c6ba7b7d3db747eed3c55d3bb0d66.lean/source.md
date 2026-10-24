# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualOddNegativeEdgeNative01.Variant84b01f5c1c3fad3e7c68182956a04434849c6ba7b7d3db747eed3c55d3bb0d66

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d05e4bb28d50c594ab21e4e33ba1bcc70da2d89` · SHA-256 `84b01f5c1c3fad3e7c68182956a04434849c6ba7b7d3db747eed3c55d3bb0d66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualEvenProductSector
import SourceActualNegativeEdgeMangoldt

/-!
# A genuine signed negative odd-product edge sector

Research direction: grwtsk contributors. Proof construction: OpenAI Codex.
The complete parity-filtered product contacts are compensated before any
estimate. A sum of absolute coefficients pays the even subset; a bound on
its signed whole moment is not used. All prime powers, real closed floors,
touching source zeros, and the full remaining odd complement are retained.
No full residual divergence, original one-sided cap, or terminal deletion.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualOddNegativeEdge
open Filter ArithmeticFunction
open scoped BigOperators Topology
open SourcePairing SourcePrimePowerPartition SourceActualEvenProductSector
open SourceActualNegativeEdgeMangoldt
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent EstimateMobiusSplit EstimateMertensResidual
open EstimatePrimeSmoothDefect
noncomputable section

private theorem even_primePow {n : ℕ} (hn : IsPrimePow n) (he : 2 ∣ n) :
    ∃ j : ℕ, 0 < j ∧ j ≤ n ∧ 2 ^ j = n := by
  obtain ⟨p, hpn, j, hjn, hp, hj, hpow⟩ := (isPrimePow_nat_iff_bounded n).mp hn
  have hdpow : 2 ∣ p ^ j := by rw [hpow]; exact he
  have hd : 2 ∣ p := Nat.prime_two.dvd_of_dvd_pow hdpow
  have hp2 : p = 2 := ((Nat.prime_dvd_prime_iff_eq Nat.prime_two hp).mp hd).symm
  subst p
  exact ⟨j, hj, hjn, hpow⟩

private theorem sum_geometric_Icc_one (N : ℕ) (r : ℝ) (hr0 : 0 ≤ r) (hr1 : r < 1) :
    (∑ j ∈ Finset.Icc 1 N, r ^ j) ≤ r * (1 - r)⁻¹ := by
  have hs : (∑ j ∈ Finset.Icc 1 N, r ^ j) =
      ∑ k ∈ Finset.range N, r ^ (k + 1) := by
    apply Finset.sum_bij (fun j _ => j - 1)
    · intro j hj
      simp only [Finset.mem_Icc] at hj
      simp only [Finset.mem_range]
      omega
    · intro j hj k hk heq
      simp only [Finset.mem_Icc] at hj hk
      omega
    · intro k hk
      refine ⟨k + 1, ?_, by omega⟩
      simp only [Finset.mem_range] at hk
      exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
    · intro j hj
      have := (Finset.mem_Icc.mp hj).1
      congr 1
      omega
  have ht := (summable_geometric_of_lt_one hr0 hr1).sum_le_tsum
    (Finset.range N) (fun k _ => pow_nonneg hr0 k)
  rw [tsum_geometric_of_lt_one hr0 hr1] at ht
  rw [hs]
  calc
    (∑ k ∈ Finset.range N, r ^ (k + 1)) = r * ∑ k ∈ Finset.range N, r ^ k := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro k hk
      rw [pow_succ]
      ring
    _ ≤ r * (1 - r)⁻¹ := mul_le_mul_of_nonneg_left ht hr0

/-- Every literal even subset is paid by its sum of absolute actual source coefficients. -/
theorem actualEvenProduct_subset_abs_sum_le {A : ℝ} (hA : 1 ≤ A) (S : Finset ℕ)
    (hS : S ⊆ (primePowerInventory (2 * A)).filter (fun n : ℕ => 2 ∣ n)) :
    (∑ n ∈ S, |vonMangoldt n * closedPrimeWeight A n|) ≤
      Real.log 2 / (Real.sqrt 2 - 1) := by
  let P := S.filter IsPrimePow
  let K := Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊
  have hzero : (∑ n ∈ S, |vonMangoldt n * closedPrimeWeight A n|) =
      ∑ n ∈ P, |vonMangoldt n * closedPrimeWeight A n| := by
    symm
    apply Finset.sum_subset (Finset.filter_subset _ _)
    intro n hn hnot
    have hnnot : ¬IsPrimePow n := by
      intro hp
      exact hnot (Finset.mem_filter.mpr ⟨hn, hp⟩)
    rw [source_coefficient_zero_of_not_isPrimePow A hnnot, abs_zero]
  have hsub : P ⊆ K.image (fun j : ℕ => 2 ^ j) := by
    intro n hn
    obtain ⟨hnS, hnP⟩ := Finset.mem_filter.mp hn
    obtain ⟨hnI, hn2⟩ := Finset.mem_filter.mp (hS hnS)
    obtain ⟨j, hj0, hjn, hjpow⟩ := even_primePow hnP hn2
    have hnN := (Finset.mem_Icc.mp hnI).2
    exact Finset.mem_image.mpr ⟨j, Finset.mem_Icc.mpr ⟨hj0, hjn.trans hnN⟩, hjpow⟩
  have hr : (2 : ℝ) ^ (-(1 : ℝ) / 2) = (Real.sqrt 2)⁻¹ := by
    rw [show -(1 : ℝ) / 2 = -((1 : ℝ) / 2) by ring,
      Real.rpow_neg (by norm_num : (0 : ℝ) ≤ 2), ← Real.sqrt_eq_rpow]
  have hs0 : 0 < Real.sqrt (2 : ℝ) := Real.sqrt_pos.2 (by norm_num)
  have hs1 : 1 < Real.sqrt (2 : ℝ) := by
    have hs := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)
    nlinarith [Real.sqrt_nonneg (2 : ℝ)]
  have hr0 : 0 ≤ (2 : ℝ) ^ (-(1 : ℝ) / 2) := Real.rpow_nonneg (by norm_num) _
  have hr1 : (2 : ℝ) ^ (-(1 : ℝ) / 2) < 1 := by
    rw [hr]
    exact (inv_lt_one₀ hs0).2 hs1
  have hl0 : 0 ≤ Real.log (2 : ℝ) := (Real.log_pos (by norm_num)).le
  rw [hzero]
  calc
    (∑ n ∈ P, |vonMangoldt n * closedPrimeWeight A n|) ≤
        ∑ n ∈ K.image (fun j : ℕ => 2 ^ j), |vonMangoldt n * closedPrimeWeight A n| :=
      Finset.sum_le_sum_of_subset_of_nonneg hsub (fun n hn hnnot => abs_nonneg _)
    _ = ∑ j ∈ K, |vonMangoldt (2 ^ j) * closedPrimeWeight A (2 ^ j)| := by
      rw [Finset.sum_image]
      intro j hj k hk heq
      exact Nat.pow_right_injective (by norm_num : 2 ≤ 2) heq
    _ ≤ ∑ j ∈ K, Real.log 2 * ((2 : ℝ) ^ (-(1 : ℝ) / 2)) ^ j := by
      apply Finset.sum_le_sum
      intro j hj
      have hj0 : j ≠ 0 := by have := (Finset.mem_Icc.mp hj).1; omega
      exact prime_power_source_coefficient_abs_le A hA Nat.prime_two hj0
    _ = Real.log 2 * ∑ j ∈ K, ((2 : ℝ) ^ (-(1 : ℝ) / 2)) ^ j :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ Real.log 2 * ((2 : ℝ) ^ (-(1 : ℝ) / 2) *
        (1 - (2 : ℝ) ^ (-(1 : ℝ) / 2))⁻¹) :=
      mul_le_mul_of_nonneg_left (sum_geometric_Icc_one _ _ hr0 hr1) hl0
    _ = Real.log 2 / (Real.sqrt 2 - 1) := by rw [hr]; field_simp

/-- All odd products in the original strict-lower and closed-upper negative window. -/
def actualOddNegativeEdgeBlock (A : ℝ) : ℝ :=
  ∑ n ∈ (actualNegativeEdgeWindow A).filter (fun n : ℕ => ¬2 ∣ n),
    vonMangoldt n * closedPrimeWeight A n

/-- Every even complete product in the same genuine negative window. -/
def actualEvenNegativeEdgeBlock (A : ℝ) : ℝ :=
  ∑ n ∈ (actualNegativeEdgeWindow A).filter (fun n : ℕ => 2 ∣ n),
    vonMangoldt n * closedPrimeWeight A n

/-- The full remaining odd inventory, including positive and all other long contacts. -/
def actualOddNegativeEdgeComplement (A : ℝ) : ℝ :=
  ∑ n ∈ ((primePowerInventory (2 * A)).filter (fun n : ℕ => ¬2 ∣ n)) \
      ((actualNegativeEdgeWindow A).filter (fun n : ℕ => ¬2 ∣ n)),
    vonMangoldt n * closedPrimeWeight A n

/-- The original negative block retains both complete product parities exactly. -/
theorem actualNegativeEdgeMangoldtBlock_eq_even_add_odd (A : ℝ) :
    actualNegativeEdgeMangoldtBlock A =
      actualEvenNegativeEdgeBlock A + actualOddNegativeEdgeBlock A := by
  unfold actualNegativeEdgeMangoldtBlock actualEvenNegativeEdgeBlock actualOddNegativeEdgeBlock
  symm
  exact Finset.sum_filter_add_sum_filter_not _ _ _

/-- All divisor/log contacts are preserved before the odd product compensation. -/
theorem actualOddNegativeEdgeBlock_eq_full_mobius_sum (A : ℝ) :
    actualOddNegativeEdgeBlock A =
      ∑ n ∈ (actualNegativeEdgeWindow A).filter (fun n : ℕ => ¬2 ∣ n),
        ∑ dk ∈ n.divisorsAntidiagonal, mobiusLogTerm A n dk := by
  unfold actualOddNegativeEdgeBlock
  apply Finset.sum_congr rfl
  intro n hn
  rw [vonMangoldt_eq_mobius_log_convolution n, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro dk hdk
  rfl

private theorem edgeWindow_subset {A : ℝ} (hA : 20000000000000 ≤ A) :
    actualNegativeEdgeWindow A ⊆ primePowerInventory (2 * A) := by
  intro n hn
  have hm := Finset.mem_Ioc.mp hn
  have hl : 1 ≤ ⌊Real.exp (2 * A - 13)⌋₊ :=
    Nat.le_floor (by simpa only [Nat.cast_one] using Real.one_le_exp_iff.mpr (by linarith))
  have hu : ⌊Real.exp (2 * A - 12)⌋₊ ≤ ⌊Real.exp (2 * A)⌋₊ :=
    Nat.floor_mono (Real.exp_le_exp.mpr (by linarith))
  exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩

/-- The even window's absolute coefficient sum pays its signed value uniformly. -/
theorem actualEvenNegativeEdgeBlock_abs_le {A : ℝ} (hA : 20000000000000 ≤ A) :
    |actualEvenNegativeEdgeBlock A| ≤ Real.log 2 / (Real.sqrt 2 - 1) := by
  unfold actualEvenNegativeEdgeBlock
  refine (Finset.abs_sum_le_sum_abs _ _).trans
    (actualEvenProduct_subset_abs_sum_le (by linarith : 1 ≤ A) _ ?_)
  intro n hn
  obtain ⟨hnW, hn2⟩ := Finset.mem_filter.mp hn
  exact Finset.mem_filter.mpr ⟨edgeWindow_subset hA hnW, hn2⟩

/-- The complete odd source retains the full odd complementary closed inventory. -/
theorem actualOddProductMoment_eq_edge_add_complement {A : ℝ}
    (hA : 20000000000000 ≤ A) :
    actualOddProductMoment A =
      actualOddNegativeEdgeBlock A + actualOddNegativeEdgeComplement A := by
  have hs : (actualNegativeEdgeWindow A).filter (fun n : ℕ => ¬2 ∣ n) ⊆
      (primePowerInventory (2 * A)).filter (fun n : ℕ => ¬2 ∣ n) := by
    intro n hn
    obtain ⟨hnW, hn2⟩ := Finset.mem_filter.mp hn
    exact Finset.mem_filter.mpr ⟨edgeWindow_subset hA hnW, hn2⟩
  unfold actualOddProductMoment actualOddNegativeEdgeBlock actualOddNegativeEdgeComplement
  have hh := Finset.sum_sdiff hs (f := fun n => vonMangoldt n * closedPrimeWeight A n)
  linarith

/-- Original residual reconstruction keeps the even payment and the entire odd complement. -/
theorem actualResidual_eq_even_add_oddEdge_add_complement {A : ℝ}
    (hA : 20000000000000 ≤ A) :
    mertensResidual A = actualEvenProductMoment A + actualOddNegativeEdgeBlock A +
      actualOddNegativeEdgeComplement A := by
  rw [mertensResidual_eq_even_add_odd A (by linarith : 1 ≤ A),
    actualOddProductMoment_eq_edge_add_complement hA]
  ring

/-- A genuine odd-product partial contribution is negative on the critical exponential scale. -/
theorem actualOddNegativeEdgeBlock_eventually_negative :
    ∃ R : ℝ, 20000000000000 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      actualOddNegativeEdgeBlock A ≤
        -(actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9 := by
  obtain ⟨R1, hR1, hnegative⟩ := actualNegativeEdgeMangoldtBlock_eventually_negative
  have hl : Tendsto (fun A : ℝ =>
      (actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9) atTop atTop := by
    simpa only [mul_div_assoc] using (Real.tendsto_exp_div_pow_atTop 9).const_mul_atTop
      (half_pos actualNegativeEdgeConstant_pos)
  obtain ⟨R2, hR2⟩ := eventually_atTop.1
    (hl.eventually_ge_atTop (Real.log 2 / (Real.sqrt 2 - 1)))
  refine ⟨max R1 R2, hR1.trans (le_max_left _ _), ?_⟩
  intro A hA
  have hA1 : R1 ≤ A := (le_max_left _ _).trans hA
  have hA2 : R2 ≤ A := (le_max_right _ _).trans hA
  have hn := hnegative A hA1
  have he := (abs_le.mp (actualEvenNegativeEdgeBlock_abs_le (hR1.trans hA1))).1
  have hs := hR2 A hA2
  have hid := actualNegativeEdgeMangoldtBlock_eq_even_add_odd A
  rw [neg_mul, neg_div] at hn
  rw [neg_mul, neg_div]
  linarith

/-- Genuine odd negative sector divergence does not assert full residual divergence. -/
theorem actualOddNegativeEdgeBlock_tendsto_atBot :
    Tendsto actualOddNegativeEdgeBlock atTop atBot := by
  obtain ⟨R, hR, hbound⟩ := actualOddNegativeEdgeBlock_eventually_negative
  have hp : Tendsto (fun A : ℝ =>
      (actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9) atTop atTop := by
    simpa only [mul_div_assoc] using (Real.tendsto_exp_div_pow_atTop 9).const_mul_atTop
      (half_pos actualNegativeEdgeConstant_pos)
  have hl : Tendsto (fun A : ℝ =>
      -(actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9) atTop atBot := by
    simpa only [neg_mul, neg_div] using hp.neg
  apply tendsto_atBot_mono' atTop _ hl
  filter_upwards [eventually_ge_atTop R] with A hA
  exact hbound A hA

/-- Opposite odd compensation is necessary; the full odd readout remains signed and explicit. -/
theorem actualOddNegativeEdgeComplement_eventually_above_oddMoment :
    ∃ R : ℝ, 20000000000000 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      actualOddProductMoment A + (actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9 ≤
        actualOddNegativeEdgeComplement A := by
  obtain ⟨R, hR, hnegative⟩ := actualOddNegativeEdgeBlock_eventually_negative
  refine ⟨R, hR, ?_⟩
  intro A hA
  have hn := hnegative A hA
  have hid := actualOddProductMoment_eq_edge_add_complement (hR.trans hA)
  rw [neg_mul, neg_div] at hn
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualOddNegativeEdge
```
