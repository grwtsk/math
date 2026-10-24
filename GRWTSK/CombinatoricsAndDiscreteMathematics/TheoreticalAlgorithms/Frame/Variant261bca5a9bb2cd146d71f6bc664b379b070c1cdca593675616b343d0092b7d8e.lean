-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Frame.Variant5c521608eee20e53ab54a516874580fc1dbc14b788f46ec8c28b5a241005e4db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c521608eee20e53ab54a516874580fc1dbc14b788f46ec8c28b5a241005e4db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Frame.Variant5c521608eee20e53ab54a516874580fc1dbc14b788f46ec8c28b5a241005e4db","mathematical_subject":"Computation.DataStructures","original_sha256":"5c521608eee20e53ab54a516874580fc1dbc14b788f46ec8c28b5a241005e4db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Stream/Frame.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Stream.Core


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Frame.Variant5c521608eee20e53ab54a516874580fc1dbc14b788f46ec8c28b5a241005e4db

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure Frame where
  frameIndex : Nat
  payload : SomeBinaryLogicMatrix
  rowMajorPayload : List Bool
  payloadMatchesMatrix :
    rowMajorPayload =
      BinaryLogicMatrix.rowMajorBits payload.matrix
  roundTripMatrix :
    BinaryLogicMatrix.fromBoolList
      payload.rows
      payload.cols
      rowMajorPayload =
        payload.matrix
  matrixHash : String
  previousHash? : Option String
  boundaryHash : String
  claimBoundary : List String

theorem frame_payload_is_BinaryLogicMatrix
    (F : Frame) :
    Nonempty (BinaryLogicMatrix F.payload.rows F.payload.cols) :=
  ⟨F.payload.matrix⟩

end Stream
end BinaryLogicMatrix
end Surface.Legacy
