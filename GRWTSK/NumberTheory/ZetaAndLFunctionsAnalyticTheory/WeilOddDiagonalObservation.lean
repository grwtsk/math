/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddExactPeriodization
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddGammaOutput

/-!
# Exact diagonal observation of the literal odd archimedean entry

The positive sine mode has unit Lebesgue mass, so the constant term is
the full gamma constant. Orthogonality concentrates the periodic jump
energy on that same frequency. Exact periodization then leaves the
signed positive-half boundary integral, including its factor two.
The boundary series separates each exponential term into a negative
multiple of a squared sinh moment.

This gives a source identity for diagonal observations on positive
modes. The zero mode has zero mass and falls outside this formula.
Numerical enclosures, independent analytical review and novelty
assessment remain separate.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Filter

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddDiagonalObservation

open LowSchur OddRootProjection OddSineForm OddShiftEnergy OddSineParseval OddGammaOutput
open OddKernelSineTransform OddHighFloor OddWrapEnergy OddWrapPeriodLift OddBoundaryDifference
open OddExactPeriodization OddHighComplement OddPeriodicDiagonal OddOutputTrace OddMultiplierBounds

/-- The literal diagonal keeps the periodic multiplier and the full signed
odd boundary correction. -/
theorem sineArchimedeanEntry_eq_periodic_add_boundary (T : ℝ) (hT : 0 < T) {n : ℕ}
    (hn : 0 < n) :
    sineArchimedeanEntry T (gammaConstant 1 0) 0 n n =
      gammaConstant 1 0 + periodicMultiplier 0 (frequency T n) +
        2 * ∫ t in Ioo 0 T, ∫ s in Ioo 0 T,
          OddBoundaryNorm.oddKernel T t s * zeroExtendedSine T n t * zeroExtendedSine T n s := by
  let f := zeroExtendedSine T n
  have hLip := lipschitzWith_zeroExtendedSine T hT n
  have hf := hLip.continuous.measurable
  have hf2 := memLp_zeroExtendedSine T n
  have hodd := zeroExtendedSine_odd T n
  have hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0 :=
    Eventually.of_forall (fun t ht => by simp [f, zeroExtendedSine, ht])
  have hzero : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0) := by
    simpa only [zeroShiftEnergy, zeroShiftSquare, pow_two] using
      integrableOn_mixedGamma hLip (norm_zeroExtendedSine_le T hT n)
        (integrable_zeroExtendedSine T n) hf
  have hperiod := (periodicWeightedEnergy_integrable_le T hT hf2 hsupport hzero).1
  have hDiag := hasSum_periodicDiagonal_of_integrable T hT 0 hf2 (Eventually.of_forall hodd) hperiod
  have hCoeff (k : ℕ) : sineCoefficient T f (k + 1) = if k + 1 = n then 1 else 0 := by
    change (∫ t : ℝ, zeroExtendedSine T (k + 1) t * zeroExtendedSine T n t) = _
    rw [show (∫ t : ℝ, zeroExtendedSine T (k + 1) t * zeroExtendedSine T n t) =
      sineCorrelation T (k + 1) n 0 by simp [sineCorrelation]]
    by_cases h : k + 1 = n
    · rw [h, ite_eq_left rfl, sineCorrelation_self_zero T hT hn]
    · rw [ite_eq_right h, sineCorrelation_zero_shift T hT h]
  have hnCoeff : sineCoefficient T f n = 1 := by
    simpa [Nat.sub_add_cancel hn] using hCoeff (n - 1)
  have hSum : HasSum (fun k : ℕ => periodicMultiplier 0 (frequency T (k + 1)) *
      sineCoefficient T f (k + 1) ^ 2) (periodicMultiplier 0 (frequency T n)) := by
    have h := hasSum_single (f := fun k : ℕ => periodicMultiplier 0 (frequency T (k + 1)) *
      sineCoefficient T f (k + 1) ^ 2) (n - 1) (fun k hk => by
        rw [hCoeff, ite_eq_right (by omega)]
        ring)
    simpa only [Nat.sub_add_cancel hn, hnCoeff, one_pow, mul_one] using h
  have hArch := oddArchimedeanEnergy_eq_periodic_add_boundary T hT hf hf2 hodd hsupport hzero
  rw [hDiag.unique hSum] at hArch
  unfold sineArchimedeanEntry
  change gammaConstant 1 0 * (∫ t : ℝ, f t * f t) +
    (∫ r in Ioi (0 : ℝ), parityKernel 0 r * ∫ t : ℝ, (f (t + r) - f t) * (f (t + r) - f t)) = _
  simp only [← pow_two]
  rw [← oddArchimedeanEnergy, hArch]
  have hmass : (∫ t : ℝ, f t ^ 2) = 1 := by
    simpa only [sineCorrelation, add_zero, pow_two, f] using sineCorrelation_self_zero T hT hn
  rw [hmass, mul_one, add_assoc]

/-- One exponential image contributes a nonpositive square to the
normalized sine diagonal. -/
def sineBoundaryTerm (T : ℝ) (n j : ℕ) : ℝ :=
  let a : ℝ := 2 * (j : ℝ) + 1 / 2
  (-8 : ℝ) / (Real.exp (2 * a * T) - 1) *
    (∫ t in Ioo 0 T, Real.sinh (a * t) * zeroExtendedSine T n t) ^ 2

theorem sineBoundaryTerm_nonpos (T : ℝ) (hT : 0 < T) (n j : ℕ) :
    sineBoundaryTerm T n j ≤ 0 := by
  have ha : 0 < 2 * (j : ℝ) + 1 / 2 := by positivity
  have hDen : 0 < Real.exp (2 * (2 * (j : ℝ) + 1 / 2) * T) - 1 :=
    sub_pos.mpr (Real.one_lt_exp_iff.mpr (by positivity))
  unfold sineBoundaryTerm
  exact mul_nonpos_of_nonpos_of_nonneg (div_nonpos_of_nonpos_of_nonneg (by norm_num) hDen.le)
    (sq_nonneg _)

/-- All exponential images contribute to the exact signed correction in
the literal diagonal. -/
theorem hasSum_sineBoundaryTerm (T : ℝ) (hT : 0 < T) {n : ℕ} (hn : 0 < n) :
    HasSum (sineBoundaryTerm T n)
      (sineArchimedeanEntry T (gammaConstant 1 0) 0 n n -
        (gammaConstant 1 0 + periodicMultiplier 0 (frequency T n))) := by
  let f := zeroExtendedSine T n
  have hf := (lipschitzWith_zeroExtendedSine T hT n).continuous.measurable
  have hf2 := (memLp_zeroExtendedSine T n).integrable_sq.integrableOn (s := Ioo 0 T)
  have hBound := (OddBoundaryNorm.oddKernel_quadratic_bound T f hf hf2).1
  have hSum := (hasSum_oddTerm_integrals T f hf hf2).mul_left 2
  rw [← Measure.prod_restrict, integral_prod _ hBound] at hSum
  rw [sineArchimedeanEntry_eq_periodic_add_boundary T hT hn, add_sub_cancel_left]
  apply hSum.congr_fun
  intro j
  let a : ℝ := 2 * (j : ℝ) + 1 / 2
  let C := Real.exp (2 * a * T) - 1
  let g := fun t : ℝ => Real.sinh (a * t) * f t
  have hProd :
      (∫ z in Ioo 0 T ×ˢ Ioo 0 T, -OddBoundaryNorm.positiveTerm T z.1 z.2 j * f z.1 * f z.2
        ∂((volume : Measure ℝ).prod volume)) =
      ∫ z in Ioo 0 T ×ˢ Ioo 0 T, (-4 / C) * (g z.1 * g z.2)
        ∂((volume : Measure ℝ).prod volume) := by
    apply integral_congr_ae (Eventually.of_forall (fun z => ?_))
    dsimp [OddBoundaryNorm.positiveTerm, C, g, a]
    ring
  rw [Measure.prod_restrict, hProd, integral_const_mul, setIntegral_prod_mul g g]
  change (-8 / C) * (∫ t in Ioo 0 T, g t) ^ 2 =
    2 * ((-4 / C) * ((∫ t in Ioo 0 T, g t) * ∫ t in Ioo 0 T, g t))
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.OddDiagonalObservation
