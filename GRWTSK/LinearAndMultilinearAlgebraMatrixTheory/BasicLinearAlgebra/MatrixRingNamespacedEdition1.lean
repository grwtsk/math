-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FixedMatrixRingState.Variantebc2fe6e7d41df9c02e0c49c216d68761251ed9e6457ffa04410ee9454ba7b2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ebc2fe6e7d41df9c02e0c49c216d68761251ed9e6457ffa04410ee9454ba7b2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FixedMatrixRingState.Variantebc2fe6e7d41df9c02e0c49c216d68761251ed9e6457ffa04410ee9454ba7b2d","mathematical_subject":"Foundations.Unclassified","original_sha256":"ebc2fe6e7d41df9c02e0c49c216d68761251ed9e6457ffa04410ee9454ba7b2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/BinaryMatrix/Runtime/MatrixRing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Runtime.RingState
import BinaryMatrix

/-!
# Binary-matrix ring adapter

This module specializes the framework-owned generic ring state to fixed-size
Boolean matrices.  It owns only matrix-specific projections.
-/


namespace GRWTSK.Algebra.LinearAlgebra.FixedMatrixRingState.Variantebc2fe6e7d41df9c02e0c49c216d68761251ed9e6457ffa04410ee9454ba7b2d

namespace BinaryMatrix.Runtime

/-- Fixed-size Boolean-matrix entries in a generic ring. -/
abbrev FixedMatrixRingState
    (capacity rows cols : Nat) :=
  DAF.Runtime.RingState capacity (BinMat rows cols)

/-- Observe selected rows in every matrix-valued slot. -/
def selectedRowsObservation
    (select : Fin outRows → Fin rows)
    (state : FixedMatrixRingState capacity rows cols) :
    Fin capacity → BinMat outRows cols :=
  fun slot i j => state.slots slot (select i) j

/-- Observe selected columns in every matrix-valued slot. -/
def selectedColumnsObservation
    (select : Fin outCols → Fin cols)
    (state : FixedMatrixRingState capacity rows cols) :
    Fin capacity → BinMat rows outCols :=
  fun slot i j => state.slots slot i (select j)

end BinaryMatrix.Runtime
