-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ComplexOneForm.Variantb63018c7eb7e8d853a9f4727d34163a36bd599b8f7cb942a2122f98d2c635f27","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b63018c7eb7e8d853a9f4727d34163a36bd599b8f7cb942a2122f98d2c635f27","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ComplexOneForm.Variantb63018c7eb7e8d853a9f4727d34163a36bd599b8f7cb942a2122f98d2c635f27","mathematical_subject":"Analysis.Integration","original_sha256":"b63018c7eb7e8d853a9f4727d34163a36bd599b8f7cb942a2122f98d2c635f27","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/tmp/ca03/BranchHomotopyPoincare.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Core.ComplexAnalysis.FiniteHoleGeometry
import Mathlib.MeasureTheory.Integral.CurveIntegral.Poincare
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Tactic

/-!
# CA-03 F1b scratch audit: Poincare curve integrals

This file records kernel-checked positive adapters and the remaining blockers.
It is not imported by the canonical build and does not inhabit the CA-03
single-hole statement.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ComplexOneForm.Variantb63018c7eb7e8d853a9f4727d34163a36bd599b8f7cb942a2122f98d2c635f27

open scoped unitInterval Interval Pointwise Topology
open AffineMap Filter Function MeasureTheory Set Complex

namespace Surface.Core.ComplexAnalysis.CA03Scratch.BranchHomotopyPoincare

noncomputable section

#check ContinuousLinearMap.lsmul
#check ContinuousLinearMap.smulRight
#check curveIntegral_segment
#check curveIntegral_trans
#check curveIntegral_symm
#check ContinuousMap.Homotopy.curveIntegral_add_curveIntegral_eq_of_hasFDerivWithinAt_off_countable
#check ContinuousMap.Homotopy.curveIntegral_add_curveIntegral_eq_of_hasFDerivWithinAt

/-- The complex one-form corresponding to the classical integrand `f(z) dz`. -/
def complexOneForm (f : ℂ → ℂ) : ℂ → ℂ →L[ℂ] ℂ :=
  fun z ↦ (ContinuousLinearMap.lsmul ℂ ℂ) (f z)

@[simp]
theorem complexOneForm_apply (f : ℂ → ℂ) (z v : ℂ) :
    complexOneForm f z v = f z * v := by
  simp [complexOneForm]

/-- Curve integration of `f(z) dz` along a straight segment is exactly its
unit-interval affine parameter integral. -/
theorem curveIntegral_segment_complexOneForm
    (f : ℂ → ℂ) (a b : ℂ) :
    curveIntegral (complexOneForm f) (Path.segment a b) =
      ∫ t : ℝ in 0..1, f (lineMap a b t) * (b - a) := by
  rw [curveIntegral_segment]
  apply intervalIntegral.integral_congr
  intro t ht
  simp [complexOneForm]

/-! ## Missing normalization and geometry bridges

The segment adapter above is positive evidence that the raw rectangle edges
can be converted one at a time after proving elementary affine-substitution
lemmas.  Pinned mathlib does not currently package that conversion, does not
identify `circleIntegral` with a `curveIntegral` along a circle path, and does
not provide reparameterization invariance for `curveIntegral`.

More importantly, the Poincare theorem requires the extended homotopy map to
be globally `C²` on the closed parameter square.  A single loop obtained by
concatenating four line segments has four parameter corners, so the direct
whole-rectangle-to-circle homotopy cannot meet that hypothesis.  A possible
unbounded development would split the region into four smooth strips, prove
four homotopy identities, and cancel their transverse seams.  That requires
new circle-arc, reparameterization, affine edge, seam cancellation, and range
lemmas and is outside the bounded CA-03 branch.
-/

#check_failure rectangleBoundaryIntegral_eq_curveIntegral
#check_failure circleIntegral_eq_curveIntegral_circlePath
#check_failure curveIntegral_reparam
#check_failure Path.curveIntegral_reparam

#print axioms curveIntegral_segment_complexOneForm

end


end Surface.Core.ComplexAnalysis.CA03Scratch.BranchHomotopyPoincare
