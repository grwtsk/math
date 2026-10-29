-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WeightedPointTerm.Variant48851878e9f512ac636503d6e8dd54f70293539426292a33ae671479d0c2b70d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48851878e9f512ac636503d6e8dd54f70293539426292a33ae671479d0c2b70d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.WeightedPointTerm.Variant48851878e9f512ac636503d6e8dd54f70293539426292a33ae671479d0c2b70d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"48851878e9f512ac636503d6e8dd54f70293539426292a33ae671479d0c2b70d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/RiemannHypothesis/ZeroSide/SmoothExplicitFormulaTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormula

/-!
# Z2.6 zero-carrier and analytic-multiplicity transport

The external Weil formula is naturally stated over distinct zero points with an
analytic multiplicity coefficient.  The repository's frozen zero-side target is
stated over `ZeroOccurrence = Σ p, Fin (multiplicity p)`.

This module proves the exact adapter between those two representations for the
prescribed smooth source.  Absolute summability is established before the
regrouping, every multiplicity slot is retained exactly once, and the values
remain ordinary complex squares.

No explicit-formula equality, arithmetic lower bound, positivity premise, or
Riemann Hypothesis premise is introduced here.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WeightedPointTerm.Variant48851878e9f512ac636503d6e8dd54f70293539426292a33ae671479d0c2b70d

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormulaTransport

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourcePairing
open ZeroSideTargets ZeroObject ZeroSmoothing ZeroSmoothingTransform
open SmoothExplicitFormula

noncomputable section

/-- The point-weighted source sum, in exactly the representation used by a
multiplicity-aware Weil formula. -/
def weightedPointTerm (A ε : ℝ) (hε : 0 < ε) (p : ZeroPoint) : ℂ :=
  (multiplicity p : ℂ) *
    smoothedBilateralTransform A ε hε (p.val - 1 / 2) ^ 2

/-- Absolute summability of the occurrence family justifies regrouping the
finite multiplicity fibres.  No conditional rearrangement is used. -/
theorem occurrence_sum_eq_weighted_points (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    (∑' o : ZeroOccurrence,
      smoothedBilateralTransform A ε hε (shiftedValue o) ^ 2) =
      ∑' p : ZeroPoint, weightedPointTerm A ε hε p := by
  have hs := smoothed_squares_summable A ε hA hε
  refine hs.tsum_sigma.trans ?_
  apply tsum_congr
  intro p
  simp [weightedPointTerm, shiftedValue, tsum_fintype, nsmul_eq_mul]

/-- The same point term expressed through the smooth autocorrelation transform.
This is the shape expected from a Weil explicit formula. -/
def kernelPointTerm (A ε : ℝ) (hε : 0 < ε) (p : ZeroPoint) : ℂ :=
  (multiplicity p : ℂ) *
    smoothKernelFT A ε hε ((p.val - 1 / 2) / Complex.I)

/-- The source transform adapter is exact at every distinct zero point. -/
theorem kernelPointTerm_eq_weightedPointTerm
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (p : ZeroPoint) :
    kernelPointTerm A ε hε p = weightedPointTerm A ε hε p := by
  unfold kernelPointTerm weightedPointTerm
  rw [smoothKernelFT_shifted A ε hA hε]

/-- The complete zero-side conversion from the external kernel representation
to the repository's original occurrence representation. -/
theorem kernel_point_sum_eq_occurrence_sum
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    (∑' p : ZeroPoint, kernelPointTerm A ε hε p) =
      ∑' o : ZeroOccurrence,
        smoothedBilateralTransform A ε hε (shiftedValue o) ^ 2 := by
  calc
    (∑' p : ZeroPoint, kernelPointTerm A ε hε p) =
        ∑' p : ZeroPoint, weightedPointTerm A ε hε p :=
      tsum_congr fun p ↦ kernelPointTerm_eq_weightedPointTerm A ε hA hε p
    _ = _ := (occurrence_sum_eq_weighted_points A ε hA hε).symm

/-- Exact remaining theorem shape on the zero side.  A proof of this proposition
may come directly from an independently checked Weil formula after its
literature RHS has been transported to the source arithmetic form. -/
def KernelPointFormulaObligation : Prop :=
  ∀ A : ℝ, 1 ≤ A → ∀ (ε : ℝ) (hε : 0 < ε), ε ≤ 1 →
    (∑' p : ZeroPoint, kernelPointTerm A ε hε p) =
      (BridgeAdmissibility.realArithmeticForm (A + 1)
        (smoothedTest A ε hε) : ℂ)

/-- Once the weighted-point explicit formula is available, the exact Z2.6
`HasSum` target follows with no further convergence premise. -/
theorem smooth_explicit_formula_of_kernel_point_formula
    (h : KernelPointFormulaObligation) :
    SmoothExplicitFormulaObligation := by
  intro A hA ε hε hε1
  have hs := smoothed_squares_summable A ε hA hε
  rw [← h A hA ε hε hε1, kernel_point_sum_eq_occurrence_sum A ε hA hε]
  exact hs.hasSum

end
end FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormulaTransport
