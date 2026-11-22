/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSourceHeightTail

/-! # Horizontal width in the absolute Weil height-tail bound -/

set_option autoImplicit false
noncomputable section

open Set MeasureTheory
open GRWTSK.NumberTheory.WeilNegativeWitness
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
open GRWTSK.MeasureAndIntegration.DyadicDecayMoment

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

/-- The exponential factor in the tail bound can use any horizontal radius
containing the omitted zeros. The finite head is unrestricted. -/
theorem primitive_height_tail_absolute_bound_of_tail_width
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U → (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L))
    (f : ℝ → ℂ) {A B H : ℝ} (hA : 0 ≤ A) (hB : 0 ≤ B) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A)
    (hwidth : ∀ ρ : CriticalStripZero χ, H ≤ |ρ.1.im| → |ρ.1.re - 1 / 2| ≤ B)
    (k J : ℕ) (hk : 1 ≤ k) (hJ : (2 : ℝ) ^ J ≤ 1 + H) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    let v := fun ρ : CriticalStripZero χ =>
      if H ≤ |ρ.1.im| then (zeroMultiplicity χ ρ : ℂ) * W ρ.1 else 0
    Summable (fun ρ => ‖v ρ‖) ∧
      (∑' ρ, ‖v ρ‖) ≤ derivativeL1Cost f k ^ 2 *
        tailBudget A B (2 * D * (L + 1)) 1 k J := by
  classical
  intro W v
  let m : CriticalStripZero χ → ℝ := fun ρ =>
    if H ≤ |ρ.1.im| then (zeroMultiplicity χ ρ : ℝ) else 0
  let z : CriticalStripZero χ → ℂ := fun ρ =>
    if H ≤ |ρ.1.im| then spectralCoordinate ρ.1 else 0
  have hm (ρ : CriticalStripZero χ) : 0 ≤ m ρ := by
    dsimp only [m]
    split_ifs <;> positivity
  have hre (ρ : CriticalStripZero χ) (hρ : H ≤ |ρ.1.im|) : (z ρ).re = ρ.1.im := by
    simp [z, hρ, spectralCoordinate, Complex.mul_re]
  have hstrip (ρ : CriticalStripZero χ) : |(z ρ).im| ≤ B := by
    by_cases hρ : H ≤ |ρ.1.im|
    · simpa [z, hρ, spectralCoordinate_im, abs_sub_comm] using hwidth ρ hρ
    · simpa [z, hρ] using hB
  have hheight (U : ℝ) (hU : 2 ≤ U) (S : Finset (CriticalStripZero χ))
      (hS : ∀ ρ ∈ S, |(z ρ).re| < U) : (∑ ρ ∈ S, m ρ) ≤ D * U * (Real.log U + L) := by
    rw [← Finset.sum_filter (p := fun ρ : CriticalStripZero χ => H ≤ |ρ.1.im|)
      (f := fun ρ => (zeroMultiplicity χ ρ : ℝ))]
    apply (heightCount_le_iff χ hp U _).mp (hcount U hU)
    intro ρ hρ
    obtain ⟨hmem, htail⟩ := Finset.mem_filter.mp hρ
    simpa only [hre ρ htail] using hS ρ hmem
  have hmoment := radial_tail_moment m z A B (2 * D * (L + 1)) 1 hA
    (by positivity) (by norm_num) hm hstrip (dyadic_count_of_height_count m z D L hD hL hheight)
    k J hk
  let u : CriticalStripZero χ → ℝ := fun ρ =>
    if (2 : ℝ) ^ J ≤ 1 + ‖z ρ‖ then m ρ * decayWeight A k (z ρ) ^ 2 else 0
  have hu : Summable u := hmoment.1
  have hu0 (ρ : CriticalStripZero χ) : 0 ≤ u ρ := by
    dsimp only [u]
    split_ifs <;> positivity
  have hpoint (ρ : CriticalStripZero χ) : ‖v ρ‖ ≤ derivativeL1Cost f k ^ 2 * u ρ := by
    by_cases hρ : H ≤ |ρ.1.im|
    · have hcoord : |ρ.1.im| ≤ ‖z ρ‖ := by
        simpa only [hre ρ hρ] using Complex.abs_re_le_norm (z ρ)
      have hr : (2 : ℝ) ^ J ≤ 1 + ‖z ρ‖ := hJ.trans (add_le_add le_rfl (hρ.trans hcoord))
      have hw : ‖W ρ.1‖ ≤ derivativeL1Cost f k ^ 2 * decayWeight A k (z ρ) ^ 2 := by
        dsimp only [W]
        rw [correlation_contour_weight_eq_fourier]
        simpa only [z, ite_eq_left hρ] using
          norm_fourier_correlation_le_decay f A hf hs k (spectralCoordinate ρ.1)
      dsimp only [v, u, m]
      rw [ite_eq_left hρ, ite_eq_left hr, ite_eq_left hρ, norm_mul, Complex.norm_natCast]
      calc
        _ ≤ (zeroMultiplicity χ ρ : ℝ) *
            (derivativeL1Cost f k ^ 2 * decayWeight A k (z ρ) ^ 2) :=
          mul_le_mul_of_nonneg_left hw (Nat.cast_nonneg _)
        _ = _ := by ring
    · calc
        ‖v ρ‖ = 0 := by simp [v, hρ]
        _ ≤ _ := mul_nonneg (sq_nonneg _) (hu0 ρ)
  have hv : Summable (fun ρ => ‖v ρ‖) := by
    apply (hu.mul_left (derivativeL1Cost f k ^ 2)).of_norm_bounded
    intro ρ
    simpa only [norm_norm] using hpoint ρ
  refine ⟨hv, ?_⟩
  calc
    _ ≤ ∑' ρ, derivativeL1Cost f k ^ 2 * u ρ :=
      Summable.tsum_le_tsum hpoint hv (hu.mul_left _)
    _ = derivativeL1Cost f k ^ 2 * ∑' ρ, u ρ := (hu.hasSum.mul_left _).tsum_eq
    _ ≤ _ := mul_le_mul_of_nonneg_left hmoment.2 (sq_nonneg _)

/-- The width estimate controls the error against the original contour value,
including both pole terms when the modulus is one. -/
theorem primitive_heightWindow_error_le_of_tail_width
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U → (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L))
    (f : ℝ → ℂ) {A B H : ℝ} (hA : 0 ≤ A) (hB : 0 ≤ B) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A)
    (hwidth : ∀ ρ : CriticalStripZero χ, H ≤ |ρ.1.im| → |ρ.1.re - 1 / 2| ≤ B)
    (k J : ℕ) (hk : 1 ≤ k) (hJ : (2 : ℝ) ^ J ≤ 1 + H) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    ‖((∫ t : ℝ, weilRightArithmeticIntegrand χ W t) / (2 * (Real.pi : ℂ)) +
        (if q = 1 then W 0 + W 1 else 0)) -
      ∑ ρ ∈ heightWindow χ hp H, (zeroMultiplicity χ ρ : ℂ) * W ρ.1‖ ≤
        derivativeL1Cost f k ^ 2 * tailBudget A B (2 * D * (L + 1)) 1 k J := by
  classical
  intro W
  let w : CriticalStripZero χ → ℂ := fun ρ => (zeroMultiplicity χ ρ : ℂ) * W ρ.1
  let S := heightWindow χ hp H
  let u : CriticalStripZero χ → ℂ := fun ρ => if ρ ∈ S then w ρ else 0
  let v : CriticalStripZero χ → ℂ := fun ρ => if H ≤ |ρ.1.im| then w ρ else 0
  have hu : HasSum u (∑ ρ ∈ S, w ρ) := by
    have hfin : HasSum u (∑ ρ ∈ S, u ρ) := hasSum_sum_of_ne_finset_zero (s := S)
      (fun ρ hρ => by simp [u, hρ])
    have heq : (∑ ρ ∈ S, u ρ) = ∑ ρ ∈ S, w ρ :=
      Finset.sum_congr rfl (fun ρ hρ => by simp [u, hρ])
    exact heq ▸ hfin
  have hsplit : (fun ρ => w ρ - u ρ) = v := by
    funext ρ
    by_cases hρ : |ρ.1.im| < H
    · have hmem : ρ ∈ S := (mem_heightWindow χ hp H ρ).mpr hρ
      simp [u, v, hmem, not_le.mpr hρ]
    · have hmem : ρ ∉ S := fun hm => hρ ((mem_heightWindow χ hp H ρ).mp hm)
      simp [u, v, hmem, le_of_not_gt hρ]
  have hsum := (primitive_hasSum_contour_weight_source_bound χ hp f A hA hf hs).sub hu
  change HasSum (fun ρ => w ρ - u ρ) _ at hsum
  rw [hsplit] at hsum
  have htail := primitive_height_tail_absolute_bound_of_tail_width χ hp hD hL hcount
    f hA hB hf hs hwidth k J hk hJ
  change Summable (fun ρ => ‖v ρ‖) ∧ _ at htail
  change ‖_ - ∑ ρ ∈ S, w ρ‖ ≤ _
  rw [← hsum.tsum_eq]
  exact (tsum_of_norm_bounded (f := v) htail.1.hasSum (fun _ => le_rfl)).trans htail.2

end GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
