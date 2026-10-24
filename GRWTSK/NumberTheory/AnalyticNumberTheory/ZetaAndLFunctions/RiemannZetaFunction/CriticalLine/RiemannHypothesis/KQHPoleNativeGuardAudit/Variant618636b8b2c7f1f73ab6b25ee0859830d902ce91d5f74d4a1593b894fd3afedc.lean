-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LocalizedDilationValue.Variant46e4ad92842356006990db1c4731712369be9f0355e3b04868e1c55893e019f2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46e4ad92842356006990db1c4731712369be9f0355e3b04868e1c55893e019f2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.LocalizedDilationValue.Variant46e4ad92842356006990db1c4731712369be9f0355e3b04868e1c55893e019f2","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"46e4ad92842356006990db1c4731712369be9f0355e3b04868e1c55893e019f2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-kqh-20261007/spectral/KQHPoleNativeGuard.audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi

/-!
# The literal arithmetic dilation is not a positive reference energy

grwtsk contributors selected the native spectral comparison. OpenAI Codex
formalized this exact sign obstruction using the existing signed dilation.
Whenever an actual retained source weight is nonzero, its two block directions
have opposite signs. This does not contradict a bound on the particular
arithmetic vector; it rules out an unproved full-space positivity premise.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LocalizedDilationValue.Variant46e4ad92842356006990db1c4731712369be9f0355e3b04868e1c55893e019f2

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.KQHPoleNativeGuard

open Matrix MangoldtMobiusJacobi
open scoped BigOperators

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- An exact localized test keeps the complete signed block form. -/
theorem localized_dilation_value (w : ι → ℝ) (q : ι) (a : ℝ) :
    jointVector (fun i => if i = q then 1 else 0)
        (fun i => if i = q then a else 0) ⬝ᵥ
      signedDilation (pairKernel w) *ᵥ
        jointVector (fun i => if i = q then 1 else 0)
          (fun i => if i = q then a else 0) = 2 * a * w q := by
  rw [pairKernel_covariance]
  simp [ite_mul, mul_ite]
  ring

/-- Every nonzero literal weight produces both a positive and a negative form
value; a positive Laughlin reference form cannot be assigned by analogy. -/
theorem sourceSignedOperator_opposite_signs (A : ℝ) (q : SourceAtom A)
    (hq : sourceAtomWeight A q ≠ 0) :
    (∃ x : SourceAtom A ⊕ SourceAtom A → ℝ,
      x ⬝ᵥ sourceSignedOperator A *ᵥ x < 0) ∧
    (∃ x : SourceAtom A ⊕ SourceAtom A → ℝ,
      0 < x ⬝ᵥ sourceSignedOperator A *ᵥ x) := by
  have hs : 0 < (sourceAtomWeight A q) ^ 2 := sq_pos_of_ne_zero hq
  constructor
  · refine ⟨jointVector (fun i => if i = q then 1 else 0)
      (fun i => if i = q then -sourceAtomWeight A q else 0), ?_⟩
    rw [sourceSignedOperator, localized_dilation_value]
    nlinarith
  · refine ⟨jointVector (fun i => if i = q then 1 else 0)
      (fun i => if i = q then sourceAtomWeight A q else 0), ?_⟩
    rw [sourceSignedOperator, localized_dilation_value]
    nlinarith

end FormalResearch.RiemannHypothesis.KQHPoleNativeGuard

set_option linter.hashCommand false
namespace FormalResearch.RiemannHypothesis.KQHPoleNativeGuard
#check localized_dilation_value
#print axioms localized_dilation_value
#check sourceSignedOperator_opposite_signs
#print axioms sourceSignedOperator_opposite_signs
end FormalResearch.RiemannHypothesis.KQHPoleNativeGuard
