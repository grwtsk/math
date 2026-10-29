-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SimpleFinitePoleDescriptor.Variant4883aa67098b2657017b18e857487927785fc9456b250a5c50fde4afa2ca0bd5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4883aa67098b2657017b18e857487927785fc9456b250a5c50fde4afa2ca0bd5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SimpleFinitePoleDescriptor.Variant4883aa67098b2657017b18e857487927785fc9456b250a5c50fde4afa2ca0bd5","mathematical_subject":"Computation.DataStructures","original_sha256":"4883aa67098b2657017b18e857487927785fc9456b250a5c50fde4afa2ca0bd5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Stream/SimpleFinitePole.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Stream.OrderedStream
import Surface.Legacy.BinaryLogicMatrix.Stream.TensorIntegrity


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SimpleFinitePoleDescriptor.Variant4883aa67098b2657017b18e857487927785fc9456b250a5c50fde4afa2ca0bd5

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure SimpleFinitePoleDescriptor where
  poleName : String
  orderedStream : OrderedBinaryLogicMatrixStream
  poleOrder : Nat
  residueMatrix : SomeBinaryLogicMatrix
  defectResidues : List IntegrityDefect
  arithmeticDescriptor : FiniteArithmeticDescriptor
  noMeromorphicFunctionClaim : True
  noBSDClaim : True
  noCriticalLineClaim : True
  noDeBruijnNewmanDynamicsClaim : True
  claimBoundary : List String

theorem simpleFinitePole_has_matrix_residue
    (P : SimpleFinitePoleDescriptor) :
    Nonempty
      (BinaryLogicMatrix P.residueMatrix.rows P.residueMatrix.cols) :=
  ⟨P.residueMatrix.matrix⟩

end Stream
end BinaryLogicMatrix
end Surface.Legacy
