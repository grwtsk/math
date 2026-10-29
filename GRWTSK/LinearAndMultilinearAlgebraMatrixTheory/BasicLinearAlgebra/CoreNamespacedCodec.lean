-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Codec.Variant3cabdda54a9b7fe2b0a5e6c27c564afff9f94b480bb976b1344df613dab6cb1d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3cabdda54a9b7fe2b0a5e6c27c564afff9f94b480bb976b1344df613dab6cb1d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Codec.Variant3cabdda54a9b7fe2b0a5e6c27c564afff9f94b480bb976b1344df613dab6cb1d","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"3cabdda54a9b7fe2b0a5e6c27c564afff9f94b480bb976b1344df613dab6cb1d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BooleanMatrix/Codec/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BooleanMatrix.Format

/-!
# BooleanMatrix codecs

A codec gives a lossless representation of values in the common matrix
carrier.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Codec.Variant3cabdda54a9b7fe2b0a5e6c27c564afff9f94b480bb976b1344df613dab6cb1d

namespace BooleanMatrix

universe u

/--
A lossless representation of values inside BooleanMatrix.

Decoding is partial because not every matrix must be a valid encoding.
-/
structure Codec (α : Type u) where
  encode : α → Matrix
  decode : Matrix → Option α
  decode_encode :
    ∀ value,
      decode (encode value) = some value

namespace Codec

variable {α : Type u}

/-- The format consisting exactly of matrices realized by a codec. -/
def format
    (codec : Codec α) :
    Format where
  Valid := fun matrix =>
    ∃ value, codec.encode value = matrix

end Codec
end BooleanMatrix
