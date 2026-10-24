-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Set.Variant1f9358c5c3851fc9073cbabc05cd7edb3f41ab2a77b88ac96e28c8a1eaeb97cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f9358c5c3851fc9073cbabc05cd7edb3f41ab2a77b88ac96e28c8a1eaeb97cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Set.Variant1f9358c5c3851fc9073cbabc05cd7edb3f41ab2a77b88ac96e28c8a1eaeb97cd","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"1f9358c5c3851fc9073cbabc05cd7edb3f41ab2a77b88ac96e28c8a1eaeb97cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BooleanMatrix/Matrix/Update.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BooleanMatrix.Matrix.Core

/-!
# Local BooleanMatrix updates
-/


namespace GRWTSK.Algebra.LinearAlgebra.Set.Variant1f9358c5c3851fc9073cbabc05cd7edb3f41ab2a77b88ac96e28c8a1eaeb97cd

namespace BooleanMatrix
namespace Matrix

/-- Replace one matrix entry. -/
def set
    (matrix : Matrix)
    (targetRow targetColumn : Nat)
    (value : Bool) :
    Matrix :=
  fun row column =>
    if row = targetRow ∧ column = targetColumn then
      value
    else
      matrix row column

@[simp]
theorem set_target
    (matrix : Matrix)
    (row column : Nat)
    (value : Bool) :
    set matrix row column value row column = value := by
  simp [set]

theorem set_other
    (matrix : Matrix)
    (targetRow targetColumn row column : Nat)
    (value : Bool)
    (different :
      row ≠ targetRow ∨ column ≠ targetColumn) :
    set matrix targetRow targetColumn value row column =
      matrix row column := by
  unfold set
  split
  · rename_i equal
    exact False.elim <|
      different.elim
        (fun hrow => hrow equal.1)
        (fun hcolumn => hcolumn equal.2)
  · rfl

end Matrix
end BooleanMatrix
