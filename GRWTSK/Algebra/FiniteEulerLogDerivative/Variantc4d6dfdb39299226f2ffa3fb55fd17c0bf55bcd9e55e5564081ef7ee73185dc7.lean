-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.FiniteGeometricEulerFactorMul.Varianta6c22019319444d17093391b207f2f1b6addd20193ffdef4c4773f12b3fbb282","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a6c22019319444d17093391b207f2f1b6addd20193ffdef4c4773f12b3fbb282","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.FiniteGeometricEulerFactorMul.Varianta6c22019319444d17093391b207f2f1b6addd20193ffdef4c4773f12b3fbb282","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"a6c22019319444d17093391b207f2f1b6addd20193ffdef4c4773f12b3fbb282","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/NumberTheory/FiniteEulerLogDerivative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.NumberTheory.FiniteEulerProduct
import Mathlib.Algebra.Ring.GeomSum

/-!
# Folder.Rebuild.NumberTheory.FiniteEulerLogDerivative

Finite algebraic shadows of Euler-factor inverse identities.
-/


namespace GRWTSK.Algebra.FiniteGeometricEulerFactorMul.Varianta6c22019319444d17093391b207f2f1b6addd20193ffdef4c4773f12b3fbb282

namespace Folder
namespace Rebuild
namespace NumberTheory

open scoped BigOperators

/--
Finite algebraic shadow of the Euler-product inverse factor.

This is the finite identity `(1-x)(1+x+...+x^N)=1-x^(N+1)`.
It is the algebraic precursor to Euler products, not an analytic convergence theorem.
-/
theorem finite_geometric_euler_factor_mul
    [Ring R]
    (x : R)
    (N : Nat) :
    (1 - x) * (∑ k ∈ Finset.range (N + 1), x ^ k)
      = 1 - x ^ (N + 1) := by
  simpa using mul_neg_geom_sum x (N + 1)

theorem finite_euler_factor_inverse_truncation_identity
    [CommRing R]
    (x : R)
    (N : Nat) :
    (1 - x) * (∑ k ∈ Finset.range (N + 1), x ^ k)
      = 1 - x ^ (N + 1) := by
  exact finite_geometric_euler_factor_mul x N

end NumberTheory
end Rebuild
end Folder
