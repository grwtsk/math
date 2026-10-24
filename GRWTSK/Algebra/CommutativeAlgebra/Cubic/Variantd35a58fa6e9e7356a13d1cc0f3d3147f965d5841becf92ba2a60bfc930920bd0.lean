-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.Cubic.Variantdb80dee895cd6684214d5ea61b28d1264ef777ee084b851ac296090c6c5ac4fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db80dee895cd6684214d5ea61b28d1264ef777ee084b851ac296090c6c5ac4fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.Cubic.Variantdb80dee895cd6684214d5ea61b28d1264ef777ee084b851ac296090c6c5ac4fb","mathematical_subject":"Algebra.Polynomials","original_sha256":"db80dee895cd6684214d5ea61b28d1264ef777ee084b851ac296090c6c5ac4fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Polynomial/Cubic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Polynomial.Quadratic

/-!
# Real cubic polynomials

This is the degree-three member of the same canonical polynomial carrier used
for quadratics.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.Cubic.Variantdb80dee895cd6684214d5ea61b28d1264ef777ee084b851ac296090c6c5ac4fb

namespace Mathematics.Polynomial

open _root_.Polynomial
open scoped Polynomial

/-- The real polynomial `aX³ + bX² + cX + d`. -/
noncomputable def cubic (a b c d : ℝ) : ℝ[X] :=
  C a * X ^ 3 + C b * X ^ 2 + C c * X + C d

@[simp] theorem eval_cubic (a b c d x : ℝ) :
    (cubic a b c d).eval x =
      a * x ^ 3 + b * x ^ 2 + c * x + d := by
  simp [cubic]

end Mathematics.Polynomial
