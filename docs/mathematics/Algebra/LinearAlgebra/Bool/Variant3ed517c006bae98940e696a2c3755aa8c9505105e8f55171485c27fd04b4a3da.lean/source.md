# Complete source: GRWTSK.Algebra.LinearAlgebra.Bool.Variant3ed517c006bae98940e696a2c3755aa8c9505105e8f55171485c27fd04b4a3da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8d16714c163b0db47d6c5d9082aac8445c9ca1f` · SHA-256 `7303a59724944cd793a1d93ead9875199b382dfaddd3436d38bb6cbcd50dce06`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
