-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Bool.Variant783f4f03e025c1afe6891f650f3d865acce84661ec898afb0f5c1cee1d6e94bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"783f4f03e025c1afe6891f650f3d865acce84661ec898afb0f5c1cee1d6e94bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Bool.Variant783f4f03e025c1afe6891f650f3d865acce84661ec898afb0f5c1cee1d6e94bf","mathematical_subject":"Foundations.Unclassified","original_sha256":"783f4f03e025c1afe6891f650f3d865acce84661ec898afb0f5c1cee1d6e94bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BooleanMatrix/Codec/Bool.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BooleanMatrix.Codec.Lift

/-!
# Boolean values encoded as BooleanMatrices
-/


namespace GRWTSK.Algebra.LinearAlgebra.Bool.Variant783f4f03e025c1afe6891f650f3d865acce84661ec898afb0f5c1cee1d6e94bf

namespace BooleanMatrix
namespace Codec

/--
A minimal codec for one Boolean value.

The represented value occupies coordinate `(0,0)`; every other entry is
padding.
-/
def bool : Codec Bool where
  encode value row column :=
    if row = 0 ∧ column = 0 then value else false
  decode matrix :=
    some (matrix 0 0)
  decode_encode value := by
    simp

/-- Boolean negation represented as a matrix application. -/
def boolNot : Application :=
  lift bool bool (fun bit => !bit)

@[simp]
theorem boolNot_encode
    (value : Bool) :
    boolNot (bool.encode value) =
      bool.encode (!value) :=
  lift_encode bool bool (fun bit => !bit) value

end Codec
end BooleanMatrix
