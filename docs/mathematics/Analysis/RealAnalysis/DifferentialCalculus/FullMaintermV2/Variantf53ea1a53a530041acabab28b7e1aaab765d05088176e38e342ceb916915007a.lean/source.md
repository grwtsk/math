# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FullMaintermV2.Variantf53ea1a53a530041acabab28b7e1aaab765d05088176e38e342ceb916915007a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7289deafbfd56fd3cf9686ad5b39a6dc9546e42a` · SHA-256 `f53ea1a53a530041acabab28b7e1aaab765d05088176e38e342ceb916915007a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceRegularScaleProfiles
import FormalResearch.RiemannHypothesis.SourceSpatialDerivativeContinuity
import Mathlib.Analysis.Calculus.Deriv.Inv

/-!
# Actual scale calculus of the independently constructed Vaughan main term

The source correlation and its spatial derivative are differentiated in scale
inside the original finite inventories. Both floors freeze only at regular
scales. The logarithm of the short cutoff is consequently constant there.
The complete coefficient-one long diagonal deletion and every signed short row
remain in the derivative. This is local calculus, not a signed uniform estimate.

Review-only dependency scope: the recorded Vaughan prerequisites remain unmerged.
Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceMainTermScaleDerivative

open MeasureTheory Filter Set ArithmeticFunction
open scoped Topology InnerProductSpace BigOperators
open SourcePairing SourceScaleVariation SourceScaleDerivative
open SourceDiagonalMainTerm SourceRegularScaleProfiles SourceCutoffFlux
open SourceSamplingLedger SourceSamplingPointwise SourceSamplingCoefficients
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimatePlainKernel EstimateVaughanSource EstimateSourceMobiusKernel
open EstimateBetaCentering EstimateMertensAbel

/-- Scale derivative of the literal correlation through its actual reflected atoms. -/
def correlationScaleDerivative (A s : ℝ) : ℝ :=
  (reflectedAtomDerivative A 0 s).re

/-- The original scalar correlation has the actual Hilbert product-rule derivative. -/
theorem sourceCorrelation_hasDerivAt_scale {A : ℝ} (hA : 0 < A) (s : ℝ) :
    HasDerivAt (fun B ↦ sourceCorrelation explicitSecondDerivative B s)
      (correlationScaleDerivative A s) A := by
  have hd := Complex.reCLM.hasFDerivAt.comp_hasDerivAt A
    (reflectedAtomInteraction_hasDerivAt hA 0 s)
  apply hd.congr_of_eventuallyEq
  filter_upwards [eventually_gt_nhds hA] with B hB
  change sourceCorrelation explicitSecondDerivative B s =
    (reflectedAtomInteraction B 0 s).re
  rw [reflectedAtomInteraction_source hB, zero_add, Complex.ofReal_re]

/-- The unchanged correlation is locally C¹ in scale at each fixed separation. -/
theorem sourceCorrelation_contDiffAt_scale {A : ℝ} (hA : 0 < A) (s : ℝ) :
    ContDiffAt ℝ 1 (fun B ↦ sourceCorrelation explicitSecondDerivative B s) A := by
  have hc := Complex.reCLM.contDiff.contDiffAt.comp A
    (reflectedAtomInteraction_contDiffAt hA 0 s)
  apply hc.congr_of_eventuallyEq
  filter_upwards [eventually_gt_nhds hA] with B hB
  change sourceCorrelation explicitSecondDerivative B s =
    (reflectedAtomInteraction B 0 s).re
  rw [reflectedAtomInteraction_source hB, zero_add, Complex.ofReal_re]

/-- Exact coefficient derivative retains the unchanged normalization and its scale derivative. -/
def diagonalCoefficientDerivative (A : ℝ) : ℝ :=
  -(diagonalMainCoefficient A * normalizationDerivative A / sourceNormalization A)

/-- The canonical diagonal coefficient is differentiated from its literal rational normalization. -/
theorem diagonalMainCoefficient_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt diagonalMainCoefficient (diagonalCoefficientDerivative A) A := by
  have hz := (sourceNormalization_pos hA).ne'
  have hd := (hasDerivAt_const A (1024 : ℝ)).div
    ((sourceNormalization_hasDerivAt hA).const_mul 99225) (by positivity)
  convert hd using 1 <;> first
    | rfl
    | (dsimp [diagonalCoefficientDerivative, diagonalMainCoefficient]; field_simp; ring)

/-- Local C¹ of the actual diagonal coefficient, on its positive-scale domain. -/
theorem diagonalMainCoefficient_contDiffAt {A : ℝ} (hA : 0 < A) :
    ContDiffAt ℝ 1 diagonalMainCoefficient A := by
  have hz := sourceNormalization_pos hA
  unfold diagonalMainCoefficient sourceNormalization
  fun_prop (disch := first | positivity | exact hA.ne' | exact hz.ne')

/-- Independent derivative formula for the normalized linear diagonal main contribution. -/
def normalizationMainDerivative (A : ℝ) : ℝ :=
  diagonalMainCoefficient A *
    (1 - A * normalizationDerivative A / sourceNormalization A)

/-- Product-rule derivative of κ_A A, with the normalization change retained. -/
theorem normalizedMain_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt (fun B ↦ diagonalMainCoefficient B * B)
      (normalizationMainDerivative A) A := by
  have hd := (diagonalMainCoefficient_hasDerivAt hA).mul (hasDerivAt_id A)
  convert hd using 1 <;> first
    | rfl
    | (dsimp [normalizationMainDerivative, diagonalCoefficientDerivative]; ring)

/-- The literal positive-axis diagonal main contribution is locally C¹. -/
theorem normalizedMain_contDiffAt {A : ℝ} (hA : 0 < A) :
    ContDiffAt ℝ 1 (fun B ↦ diagonalMainCoefficient B * B) A :=
  (diagonalMainCoefficient_contDiffAt hA).mul contDiffAt_id

/-- The original multiplicative weight derivative uses fixed log and inverse-square-root factors. -/
def plainWeightScaleDerivative (A k : ℝ) : ℝ :=
  correlationScaleDerivative A (Real.log k) / Real.sqrt k

/-- Scale calculus of the actual source weight, without a replacement kernel. -/
theorem sourcePlainWeight_hasDerivAt {A : ℝ} (hA : 0 < A) (k : ℝ) :
    HasDerivAt (fun B ↦ sourcePlainWeight B k) (plainWeightScaleDerivative A k) A :=
  (sourceCorrelation_hasDerivAt_scale hA (Real.log k)).div_const (Real.sqrt k)

/-- Scale C¹ of the original source weight at each fixed multiplicative argument. -/
theorem sourcePlainWeight_contDiffAt {A : ℝ} (hA : 0 < A) (k : ℝ) :
    ContDiffAt ℝ 1 (fun B ↦ sourcePlainWeight B k) A :=
  (sourceCorrelation_contDiffAt_scale hA (Real.log k)).div_const (Real.sqrt k)

/-- Every Mangoldt long interaction keeps its natural product and original coefficient. -/
def sourceKernelScaleDerivative (A : ℝ) (m n : ℕ) : ℝ :=
  vonMangoldt m * plainWeightScaleDerivative A ((m * n : ℕ) : ℝ)

/-- Actual scale derivative of the original two-variable kernel. -/
theorem sourceKernel_hasDerivAt {A : ℝ} (hA : 0 < A) (m n : ℕ) :
    HasDerivAt (fun B ↦ sourceKernel B m n) (sourceKernelScaleDerivative A m n) A :=
  (sourcePlainWeight_hasDerivAt hA ((m * n : ℕ) : ℝ)).const_mul (vonMangoldt m)

/-- The same actual two-variable kernel has local scale C¹. -/
theorem sourceKernel_contDiffAt {A : ℝ} (hA : 0 < A) (m n : ℕ) :
    ContDiffAt ℝ 1 (fun B ↦ sourceKernel B m n) A :=
  contDiffAt_const.mul (sourcePlainWeight_contDiffAt hA ((m * n : ℕ) : ℝ))

/-- The fixed long compensation derivative retains both Ioc axes and literal m=n deletion. -/
def plainOffDerivativeAt (A : ℝ) (U N : ℕ) : ℝ :=
  offDiagonal (Finset.Ioc U N) (sourceKernelScaleDerivative A) (fun _ ↦ 1)

/-- Derivative of the complete coefficient-one off-diagonal compensation inventory. -/
theorem plainOffAt_hasDerivAt {A : ℝ} (hA : 0 < A) (U N : ℕ) :
    HasDerivAt (fun B ↦ plainOffAt B U N) (plainOffDerivativeAt A U N) A := by
  have hr : HasDerivAt (fun B ↦ rectangle (Finset.Ioc U N) (sourceKernel B) (fun _ ↦ 1))
      (rectangle (Finset.Ioc U N) (sourceKernelScaleDerivative A) (fun _ ↦ 1)) A := by
    apply HasDerivAt.fun_sum
    intro m _
    apply HasDerivAt.fun_sum
    intro n _
    exact (sourceKernel_hasDerivAt hA m n).mul_const 1
  have hd : HasDerivAt (fun B ↦ diagonal (Finset.Ioc U N) (sourceKernel B) (fun _ ↦ 1))
      (diagonal (Finset.Ioc U N) (sourceKernelScaleDerivative A) (fun _ ↦ 1)) A := by
    apply HasDerivAt.fun_sum
    intro m _
    exact (sourceKernel_hasDerivAt hA m m).mul_const 1
  exact hr.sub hd

/-- Local scale C¹ of the same full off-diagonal finite inventory. -/
theorem plainOffAt_contDiffAt {A : ℝ} (hA : 0 < A) (U N : ℕ) :
    ContDiffAt ℝ 1 (fun B ↦ plainOffAt B U N) A := by
  apply ContDiffAt.sub
  · apply ContDiffAt.sum
    intro m _
    apply ContDiffAt.sum
    intro n _
    exact (sourceKernel_contDiffAt hA m n).mul contDiffAt_const
  · apply ContDiffAt.sum
    intro m _
    exact (sourceKernel_contDiffAt hA m m).mul contDiffAt_const

/-- The short Mangoldt derivative is its exact closed arithmetic inventory. -/
def shortMangoldtDerivativeAt (A : ℝ) (U : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 U, vonMangoldt m * plainWeightScaleDerivative A m

/-- Actual scale derivative of the retained short Mangoldt term. -/
theorem shortMangoldtAt_hasDerivAt {A : ℝ} (hA : 0 < A) (U : ℕ) :
    HasDerivAt (fun B ↦ shortMangoldtAt B U) (shortMangoldtDerivativeAt A U) A := by
  apply HasDerivAt.fun_sum
  intro m _
  exact (sourcePlainWeight_hasDerivAt hA m).const_mul (vonMangoldt m)

/-- Local C¹ of the same short Mangoldt inventory. -/
theorem shortMangoldtAt_contDiffAt {A : ℝ} (hA : 0 < A) (U : ℕ) :
    ContDiffAt ℝ 1 (fun B ↦ shortMangoldtAt B U) A := by
  apply ContDiffAt.sum
  intro m _
  exact contDiffAt_const.mul (sourcePlainWeight_contDiffAt hA m)

/-- The plain sampling derivative retains precisely its original signed coefficient pair. -/
def plainSamplingScaleDerivative (A k : ℝ) : ℝ :=
  (samplingAlpha0 * correlationScaleDerivative A (Real.log k) +
    samplingAlpha1 * SourceSpatialDerivativeContinuity.correlationPrimeScaleDerivative A
      (Real.log k)) / Real.sqrt k

/-- The logarithmic sampling derivative retains the shifted signed coefficient pair. -/
def logSamplingScaleDerivative (A k : ℝ) : ℝ :=
  (samplingAlpha1 * correlationScaleDerivative A (Real.log k) +
    samplingAlpha2 * SourceSpatialDerivativeContinuity.correlationPrimeScaleDerivative A
      (Real.log k)) / Real.sqrt k

/-- Actual scale derivative of the retained constant-plus-linear plain sample. -/
theorem sourcePlainSamplingMainTerm_hasDerivAt {A : ℝ} (hA : 0 < A) (k : ℝ) :
    HasDerivAt (fun B ↦ sourcePlainSamplingMainTerm B k)
      (plainSamplingScaleDerivative A k) A :=
  (((sourceCorrelation_hasDerivAt_scale hA (Real.log k)).const_mul samplingAlpha0).add
    ((SourceSpatialDerivativeContinuity.sourceCorrelationPrime_hasDerivAt_scale hA
      (Real.log k)).const_mul samplingAlpha1)).div_const (Real.sqrt k)

/-- Actual scale derivative of the retained constant-plus-linear logarithmic sample. -/
theorem sourceLogSamplingMainTerm_hasDerivAt {A : ℝ} (hA : 0 < A) (k : ℝ) :
    HasDerivAt (fun B ↦ sourceLogSamplingMainTerm B k)
      (logSamplingScaleDerivative A k) A :=
  (((sourceCorrelation_hasDerivAt_scale hA (Real.log k)).const_mul samplingAlpha1).add
    ((SourceSpatialDerivativeContinuity.sourceCorrelationPrime_hasDerivAt_scale hA
      (Real.log k)).const_mul samplingAlpha2)).div_const (Real.sqrt k)

/-- The exact retained plain sampling main term is locally C¹ in scale. -/
theorem sourcePlainSamplingMainTerm_contDiffAt {A : ℝ} (hA : 0 < A) (k : ℝ) :
    ContDiffAt ℝ 1 (fun B ↦ sourcePlainSamplingMainTerm B k) A :=
  ((contDiffAt_const.mul (sourceCorrelation_contDiffAt_scale hA (Real.log k))).add
    (contDiffAt_const.mul
      (SourceSpatialDerivativeContinuity.sourceCorrelationPrime_contDiffAt_scale hA
        (Real.log k)))).div_const (Real.sqrt k)

/-- The exact retained logarithmic sampling main term is locally C¹ in scale. -/
theorem sourceLogSamplingMainTerm_contDiffAt {A : ℝ} (hA : 0 < A) (k : ℝ) :
    ContDiffAt ℝ 1 (fun B ↦ sourceLogSamplingMainTerm B k) A :=
  ((contDiffAt_const.mul (sourceCorrelation_contDiffAt_scale hA (Real.log k))).add
    (contDiffAt_const.mul
      (SourceSpatialDerivativeContinuity.sourceCorrelationPrime_contDiffAt_scale hA
        (Real.log k)))).div_const (Real.sqrt k)

/-- The closed short logarithmic derivative preserves every genuine Möbius coefficient. -/
def shortLogDerivativeAt (A : ℝ) (U : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U, realMoebius d * logSamplingScaleDerivative A d

/-- The doubly short derivative retains both closed inventories and all signed coefficients. -/
def shortPlainDerivativeAt (A : ℝ) (U : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U, ∑ m ∈ Finset.Icc 1 U,
    realMoebius d * vonMangoldt m * plainSamplingScaleDerivative A ((d * m : ℕ) : ℝ)

/-- Scale derivative of the original retained short logarithmic inventory. -/
theorem shortLogSamplingAt_hasDerivAt {A : ℝ} (hA : 0 < A) (U : ℕ) :
    HasDerivAt (fun B ↦ shortLogSamplingAt B U) (shortLogDerivativeAt A U) A := by
  apply HasDerivAt.fun_sum
  intro d _
  exact (sourceLogSamplingMainTerm_hasDerivAt hA d).const_mul (realMoebius d)

/-- Scale derivative of the original doubly short plain inventory. -/
theorem shortPlainSamplingAt_hasDerivAt {A : ℝ} (hA : 0 < A) (U : ℕ) :
    HasDerivAt (fun B ↦ shortPlainSamplingAt B U) (shortPlainDerivativeAt A U) A := by
  apply HasDerivAt.fun_sum
  intro d _
  apply HasDerivAt.fun_sum
  intro m _
  exact (sourcePlainSamplingMainTerm_hasDerivAt hA ((d * m : ℕ) : ℝ)).const_mul
    (realMoebius d * vonMangoldt m)

/-- Local C¹ of the same signed short logarithmic inventory. -/
theorem shortLogSamplingAt_contDiffAt {A : ℝ} (hA : 0 < A) (U : ℕ) :
    ContDiffAt ℝ 1 (fun B ↦ shortLogSamplingAt B U) A := by
  apply ContDiffAt.sum
  intro d _
  exact contDiffAt_const.mul (sourceLogSamplingMainTerm_contDiffAt hA d)

/-- Local C¹ of the same complete doubly short signed inventory. -/
theorem shortPlainSamplingAt_contDiffAt {A : ℝ} (hA : 0 < A) (U : ℕ) :
    ContDiffAt ℝ 1 (fun B ↦ shortPlainSamplingAt B U) A := by
  apply ContDiffAt.sum
  intro d _
  apply ContDiffAt.sum
  intro m _
  exact contDiffAt_const.mul (sourcePlainSamplingMainTerm_contDiffAt hA ((d * m : ℕ) : ℝ))

/-- Independent formula for the full fixed-inventory derivative, never defined from deriv M. -/
def mainTermDerivativeAt (A : ℝ) (U N : ℕ) : ℝ :=
  alpha U * plainOffDerivativeAt A U N + normalizationMainDerivative A -
    shortMangoldtDerivativeAt A U - shortLogDerivativeAt A U + shortPlainDerivativeAt A U

/-- Genuine derivative of the independently defined complete main formula at fixed cutoffs. -/
theorem mainTermAt_hasDerivAt {A : ℝ} (hA : 0 < A) (U N : ℕ) :
    HasDerivAt (fun B ↦ mainTermAt B U N) (mainTermDerivativeAt A U N) A := by
  have hd : HasDerivAt (fun B ↦ mainTermAt B U N)
      (alpha U * plainOffDerivativeAt A U N + normalizationMainDerivative A - 0 -
        shortMangoldtDerivativeAt A U - shortLogDerivativeAt A U +
          shortPlainDerivativeAt A U) A :=
    ((((((plainOffAt_hasDerivAt hA U N).const_mul (alpha U)).add
      (normalizedMain_hasDerivAt hA)).sub (hasDerivAt_const A (Real.log (U : ℝ)))).sub
        (shortMangoldtAt_hasDerivAt hA U)).sub (shortLogSamplingAt_hasDerivAt hA U)).add
          (shortPlainSamplingAt_hasDerivAt hA U)
  simpa only [sub_zero] using hd

/-- The independently defined complete fixed-cutoff main formula is locally C¹. -/
theorem mainTermAt_contDiffAt {A : ℝ} (hA : 0 < A) (U N : ℕ) :
    ContDiffAt ℝ 1 (fun B ↦ mainTermAt B U N) A :=
  (((((contDiffAt_const.mul (plainOffAt_contDiffAt hA U N)).add
    (normalizedMain_contDiffAt hA)).sub contDiffAt_const).sub
      (shortMangoldtAt_contDiffAt hA U)).sub (shortLogSamplingAt_contDiffAt hA U)).add
        (shortPlainSamplingAt_contDiffAt hA U)

/-- The original independent main term agrees with one fixed inventory on a regular neighborhood. -/
theorem independentMainTerm_eventually_eq_fixed {A : ℝ}
    (hA : RegularScale A) (h1 : 1 < A) :
    ∀ᶠ B in nhds A, independentMainTerm B =
      mainTermAt B (vaughanCutoff A) (sourceKernelCutoff A) := by
  filter_upwards [cutoffs_eventually_eq hA, eventually_gt_nhds h1] with B hB hB1
  rw [← mainTermAt_actual B hB1.le, hB.1, hB.2]

/-- Independent derivative formula for the original main term with its exact two floors. -/
def independentMainTermDerivative (A : ℝ) : ℝ :=
  mainTermDerivativeAt A (vaughanCutoff A) (sourceKernelCutoff A)

/-- Genuine derivative of the independently defined M at each regular scale above one. -/
theorem independentMainTerm_hasDerivAt {A : ℝ} (hA : RegularScale A) (h1 : 1 < A) :
    HasDerivAt independentMainTerm (independentMainTermDerivative A) A :=
  (mainTermAt_hasDerivAt hA.1 (vaughanCutoff A) (sourceKernelCutoff A)).congr_of_eventuallyEq
    (independentMainTerm_eventually_eq_fixed hA h1)

/-- The actual ordinary derivative is the independently constructed full source inventory. -/
theorem independentMainTerm_deriv {A : ℝ} (hA : RegularScale A) (h1 : 1 < A) :
    deriv independentMainTerm A = independentMainTermDerivative A :=
  (independentMainTerm_hasDerivAt hA h1).deriv

/-- Genuine local C¹ of the original independent main term on the literal regular domain. -/
theorem independentMainTerm_contDiffAt {A : ℝ} (hA : RegularScale A) (h1 : 1 < A) :
    ContDiffAt ℝ 1 independentMainTerm A :=
  (mainTermAt_contDiffAt hA.1 (vaughanCutoff A) (sourceKernelCutoff A)).congr_of_eventuallyEq
    (independentMainTerm_eventually_eq_fixed hA h1)

/-- The exact cutoff logarithm has zero local derivative because its actual floor is frozen. -/
theorem cutoffLog_hasDerivAt_zero {A : ℝ} (hA : RegularScale A) :
    HasDerivAt (fun B ↦ Real.log (vaughanCutoff B : ℝ)) 0 A := by
  apply (hasDerivAt_const A (Real.log (vaughanCutoff A : ℝ))).congr_of_eventuallyEq
  filter_upwards [cutoffs_eventually_eq hA] with B hB
  rw [hB.1]

/-- Replacing the exact local cutoff logarithm by 2log A gives the wrong derivative. -/
theorem cutoffLog_deriv_ne_two_div {A : ℝ} (hA : RegularScale A) :
    deriv (fun B ↦ Real.log (vaughanCutoff B : ℝ)) A ≠ 2 / A := by
  rw [(cutoffLog_hasDerivAt_zero hA).deriv]
  have hp : (0 : ℝ) < 2 / A := div_pos (by norm_num) hA.1
  exact hp.ne'

/-- The prior derivative interface is discharged using the constructed actual M derivative. -/
theorem compensatedState_hasDerivAt {A : ℝ} (hA : RegularScale A) (h1 : 1 < A) :
    HasDerivAt compensatedState
      (covarianceHalfDerivative A - independentMainTermDerivative A) A :=
  compensatedState_hasDerivAt_of_mainTerm hA (independentMainTerm_hasDerivAt hA h1)

/-- The prior compensated C¹ interface is discharged without any independent-M premise. -/
theorem compensatedState_contDiffAt {A : ℝ} (hA : RegularScale A) (h1 : 1 < A) :
    ContDiffAt ℝ 1 compensatedState A :=
  compensatedState_contDiffAt_of_mainTerm hA (independentMainTerm_contDiffAt hA h1)

/-- The unchanged original operator-minus-M target has its exact regular-scale derivative. -/
theorem covarianceOperator_sub_mainTerm_hasDerivAt {A : ℝ}
    (hA : RegularScale A) (h1 : 1 < A) :
    HasDerivAt (fun B ↦ VaughanOperatorReview.covarianceOperatorValue B / 2 -
      independentMainTerm B) (covarianceHalfDerivative A - independentMainTermDerivative A) A :=
  (covarianceOperator_half_hasDerivAt hA h1).sub (independentMainTerm_hasDerivAt hA h1)

/-- Local C¹ of the same unchanged operator-minus-M family, without a signed bound conclusion. -/
theorem covarianceOperator_sub_mainTerm_contDiffAt {A : ℝ}
    (hA : RegularScale A) (h1 : 1 < A) :
    ContDiffAt ℝ 1 (fun B ↦ VaughanOperatorReview.covarianceOperatorValue B / 2 -
      independentMainTerm B) A :=
  (covarianceOperator_half_contDiffAt hA h1).sub (independentMainTerm_contDiffAt hA h1)

end FormalResearch.RiemannHypothesis.SourceMainTermScaleDerivative
```
