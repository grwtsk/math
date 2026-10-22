/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #816. Parent: draft PR #796 at
`37c9350943a22cc1a4f5847f6cb4f7523c4f7ce6`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticEndpointStaircase
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Filter

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exact decomposition of the active staircase square energy into the
visible positive quartic diagonal and the signed four-point off-diagonal. -/
theorem coreGrowingShiftQuarticEndpointStaircaseSquareEnergy_eq_diagonal_add_offDiagonal
    (j : ℕ) :
    coreGrowingShiftQuarticEndpointStaircaseSquareEnergy j =
      coreGrowingShiftQuarticDiagonalEnergy j +
        coreGrowingShiftQuarticOffDiagonalEnergy j := by
  rw [← coreGrowingShiftBinaryPrefixSquareEnergy_eq_endpointStaircase,
    coreGrowingShiftBinaryPrefixSquareEnergy_eq_diagonal_add_offDiagonal]

/-- Eventual cubic lower bound for the positive quartic diagonal.  This is an
explicit arithmetic premise; no lower bound is inferred from the existing
coarse diagonal upper bound. -/
structure ActiveStaircaseDiagonalCubicLowerBound : Type where
  constant : ℝ
  constant_pos : 0 < constant
  threshold : ℕ
  lower :
    ∀ j : ℕ, threshold ≤ j →
      constant * (((2 ^ j : ℕ) : ℝ)) ^ 3 ≤
        coreGrowingShiftQuarticDiagonalEnergy j

/-- Eventual signed lower bound saying that the four-point off-diagonal cannot
cancel more than a fixed fraction of the positive diagonal.  A uniform
four-point randomness theorem would still need a source-faithful adapter into
this exact growing family. -/
structure ActiveStaircaseOffDiagonalRelativeLowerBound : Type where
  relativeLoss : ℝ
  relativeLoss_nonneg : 0 ≤ relativeLoss
  relativeLoss_lt_one : relativeLoss < 1
  threshold : ℕ
  lower :
    ∀ j : ℕ, threshold ≤ j →
      -(relativeLoss * coreGrowingShiftQuarticDiagonalEnergy j) ≤
        coreGrowingShiftQuarticOffDiagonalEnergy j

/-- Eventual cubic lower bound on the staircase energy itself. -/
structure ActiveStaircaseCubicLowerBound : Type where
  constant : ℝ
  constant_pos : 0 < constant
  threshold : ℕ
  lower :
    ∀ j : ℕ, threshold ≤ j →
      constant * (((2 ^ j : ℕ) : ℝ)) ^ 3 ≤
        coreGrowingShiftQuarticEndpointStaircaseSquareEnergy j

/-- Positive diagonal density together with relative off-diagonal cancellation
forces the staircase energy to retain cubic scale. -/
def activeStaircaseCubicLowerBound_of_diagonal_offDiagonal
    (hDiagonal : ActiveStaircaseDiagonalCubicLowerBound)
    (hOffDiagonal : ActiveStaircaseOffDiagonalRelativeLowerBound) :
    ActiveStaircaseCubicLowerBound where
  constant := (1 - hOffDiagonal.relativeLoss) * hDiagonal.constant
  constant_pos :=
    mul_pos (sub_pos.mpr hOffDiagonal.relativeLoss_lt_one)
      hDiagonal.constant_pos
  threshold := max hDiagonal.threshold hOffDiagonal.threshold
  lower := by
    intro j hj
    let X : ℝ := ((2 ^ j : ℕ) : ℝ)
    have hDiag := hDiagonal.lower j
      (le_trans (le_max_left _ _) hj)
    have hOff := hOffDiagonal.lower j
      (le_trans (le_max_right _ _) hj)
    have hOneMinus : 0 ≤ 1 - hOffDiagonal.relativeLoss :=
      sub_nonneg.mpr (le_of_lt hOffDiagonal.relativeLoss_lt_one)
    have hScaled :
        (1 - hOffDiagonal.relativeLoss) *
            (hDiagonal.constant * X ^ 3) ≤
          (1 - hOffDiagonal.relativeLoss) *
            coreGrowingShiftQuarticDiagonalEnergy j :=
      mul_le_mul_of_nonneg_left (by simpa [X] using hDiag) hOneMinus
    have hRestore :
        (1 - hOffDiagonal.relativeLoss) *
            coreGrowingShiftQuarticDiagonalEnergy j ≤
          coreGrowingShiftQuarticDiagonalEnergy j +
            coreGrowingShiftQuarticOffDiagonalEnergy j := by
      linarith
    rw [coreGrowingShiftQuarticEndpointStaircaseSquareEnergy_eq_diagonal_add_offDiagonal]
    calc
      ((1 - hOffDiagonal.relativeLoss) * hDiagonal.constant) *
          (((2 ^ j : ℕ) : ℝ)) ^ 3 =
        (1 - hOffDiagonal.relativeLoss) *
          (hDiagonal.constant * X ^ 3) := by
            dsimp [X]
            ring
      _ ≤ (1 - hOffDiagonal.relativeLoss) *
          coreGrowingShiftQuarticDiagonalEnergy j := hScaled
      _ ≤ coreGrowingShiftQuarticDiagonalEnergy j +
          coreGrowingShiftQuarticOffDiagonalEnergy j := hRestore

/-- Elementary dyadic scale separation at exponent `delta = 1/4`: every
fixed `X^(2+1/2)` square envelope is eventually below every positive cubic
multiple. -/
private theorem exists_dyadic_quarter_envelope_below_cubic
    {c C : ℝ}
    (hc : 0 < c)
    (_hC : 0 ≤ C)
    (J : ℕ) :
    ∃ j : ℕ, J ≤ j ∧
      (C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ (1 / 4 : ℝ))) ^ 2 <
        c * (((2 ^ j : ℕ) : ℝ)) ^ 3 := by
  have hdyadicNat :
      Tendsto (fun j : ℕ => (2 : ℕ) ^ j) atTop atTop :=
    tendsto_pow_atTop_atTop_of_one_lt (by norm_num)
  have hdyadicReal :
      Tendsto (fun j : ℕ => (((2 ^ j : ℕ) : ℝ))) atTop atTop :=
    (tendsto_natCast_atTop_atTop :
      Tendsto (fun n : ℕ => (n : ℝ)) atTop atTop).comp hdyadicNat
  have hsqrt :
      Tendsto
        (fun j : ℕ =>
          (((2 ^ j : ℕ) : ℝ) ^ (1 / 2 : ℝ)))
        atTop atTop :=
    (tendsto_rpow_atTop (by norm_num : (0 : ℝ) < 1 / 2)).comp
      hdyadicReal
  have hevent :
      ∀ᶠ j : ℕ in atTop,
        C ^ 2 / c <
          (((2 ^ j : ℕ) : ℝ) ^ (1 / 2 : ℝ)) :=
    hsqrt.eventually_gt_atTop (C ^ 2 / c)
  obtain ⟨J₀, hJ₀⟩ := (eventually_atTop.1 hevent)
  let j : ℕ := max J J₀
  refine ⟨j, le_max_left _ _, ?_⟩
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  have hX : 0 < X := by
    dsimp [X]
    positivity
  have hroot : C ^ 2 / c < X ^ (1 / 2 : ℝ) := by
    exact hJ₀ j (le_max_right _ _)
  have hC2 : C ^ 2 < c * X ^ (1 / 2 : ℝ) := by
    have h := (div_lt_iff₀ hc).mp hroot
    simpa [mul_comm] using h
  have hquarter :
      (X ^ (1 / 4 : ℝ)) ^ 2 = X ^ (1 / 2 : ℝ) := by
    rw [← Real.rpow_natCast]
    rw [← Real.rpow_mul hX.le]
    norm_num
  have hhalf :
      (X ^ (1 / 2 : ℝ)) ^ 2 = X := by
    rw [← Real.rpow_natCast]
    rw [← Real.rpow_mul hX.le]
    norm_num
  have hfactor :
      0 < X ^ 2 * X ^ (1 / 2 : ℝ) := by
    positivity
  have hmul := mul_lt_mul_of_pos_right hC2 hfactor
  change
    (C * X * X ^ (1 / 4 : ℝ)) ^ 2 < c * X ^ 3
  calc
    (C * X * X ^ (1 / 4 : ℝ)) ^ 2 =
        C ^ 2 * X ^ 2 * X ^ (1 / 2 : ℝ) := by
          rw [hquarter]
          ring
    _ < (c * X ^ (1 / 2 : ℝ)) *
        (X ^ 2 * X ^ (1 / 2 : ℝ)) := by
          simpa [mul_assoc, mul_left_comm, mul_comm] using hmul
    _ = c * X ^ 3 := by
          rw [← hhalf]
          ring

/-- Any eventual cubic staircase lower bound contradicts the current
`X^(2+o(1))` staircase supplier.  The contradiction uses only the supplier's
`delta = 1/4` instance. -/
theorem not_subpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy_of_cubicLower
    (hCubic : ActiveStaircaseCubicLowerBound) :
    ¬ SubpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy := by
  intro hSub
  obtain ⟨C, hC, hUpper⟩ :=
    hSub (1 / 4 : ℝ) (by norm_num)
  obtain ⟨j, hj, hEscape⟩ :=
    exists_dyadic_quarter_envelope_below_cubic
      hCubic.constant_pos hC hCubic.threshold
  have hLower := hCubic.lower j hj
  have hUpperj := hUpper j
  linarith

/-- Named conditional obstruction witness.  It does not assert either
arithmetic field unconditionally. -/
structure ActiveStaircaseNaturalScaleMismatchWitness : Type where
  diagonal : ActiveStaircaseDiagonalCubicLowerBound
  offDiagonal : ActiveStaircaseOffDiagonalRelativeLowerBound

/-- A supplied random-scale witness refutes the positive staircase source at
its current normalization.  This is not a refutation of RH; it only rules out
this sufficient positive majorant under the stated arithmetic premises. -/
theorem activeStaircase_subpolynomial_refutedAt_randomScaleWitness
    (w : ActiveStaircaseNaturalScaleMismatchWitness) :
    ¬ SubpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy :=
  not_subpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy_of_cubicLower
    (activeStaircaseCubicLowerBound_of_diagonal_offDiagonal
      w.diagonal w.offDiagonal)

/-- Squarefree-pair-density profile intended to supply the positive diagonal
lower bound.  Every range, multiplicity, and finite-threshold obligation is
kept explicit. -/
structure SquarefreePairDensityDiagonalSource where
  sourceStatement : Prop
  squarefreePairDensity : Prop
  activeStaircaseCoverage : Prop
  depthShiftMultiplicityControl : Prop
  eventualUniformity : Prop
  finiteThresholdControl : Prop

structure ToActiveStaircaseDiagonalCubicLowerBound
    (d : SquarefreePairDensityDiagonalSource) : Type where
  toDiagonal :
    d.sourceStatement →
      d.squarefreePairDensity →
      d.activeStaircaseCoverage →
      d.depthShiftMultiplicityControl →
      d.eventualUniformity →
      d.finiteThresholdControl →
      ActiveStaircaseDiagonalCubicLowerBound

/-- Growing-family four-point profile intended to show that the signed
off-diagonal cannot cancel a fixed proportion of the diagonal. -/
structure GrowingFourPointRelativeCancellationSource where
  sourceStatement : Prop
  fourDistinctFormControl : Prop
  collisionLineControl : Prop
  growingShiftUniformity : Prop
  prefixEndpointUniformity : Prop
  activeMultiplicityControl : Prop
  eventualRelativeError : Prop
  finiteThresholdControl : Prop

structure ToActiveStaircaseOffDiagonalRelativeLowerBound
    (d : GrowingFourPointRelativeCancellationSource) : Type where
  toOffDiagonal :
    d.sourceStatement →
      d.fourDistinctFormControl →
      d.collisionLineControl →
      d.growingShiftUniformity →
      d.prefixEndpointUniformity →
      d.activeMultiplicityControl →
      d.eventualRelativeError →
      d.finiteThresholdControl →
      ActiveStaircaseOffDiagonalRelativeLowerBound

/-- Combined proof-producing boundary for a Bernoulli/Chowla-scale model.
No fixed-form or named literature theorem inhabits this structure merely by
citation. -/
structure ToActiveStaircaseNaturalScaleMismatchWitness
    (density : SquarefreePairDensityDiagonalSource)
    (fourPoint : GrowingFourPointRelativeCancellationSource) : Type where
  diagonalAdapter : ToActiveStaircaseDiagonalCubicLowerBound density
  offDiagonalAdapter :
    ToActiveStaircaseOffDiagonalRelativeLowerBound fourPoint

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticEndpointStaircaseSquareEnergy_eq_diagonal_add_offDiagonal
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.activeStaircaseCubicLowerBound_of_diagonal_offDiagonal
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.not_subpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy_of_cubicLower
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.activeStaircase_subpolynomial_refutedAt_randomScaleWitness
