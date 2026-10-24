# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TensorIntegrity.Variantfa258620aaf7e1354b64a580b7389285cdc24fdd272a449c7a2dd03bb5ed1823

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7586401cd6ab7bbd6e1000270e5dbdaa0e73d35d` · SHA-256 `3db2cef7732fd030fb22c28867877aea94b1a30844d14c62f1a08165dae39b74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteArithmeticDescriptor.Variant580f639448be1a07cd468206d445aeb1dfede086699511d523cd398aad5a8331","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"580f639448be1a07cd468206d445aeb1dfede086699511d523cd398aad5a8331","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FiniteArithmeticDescriptor.Variant580f639448be1a07cd468206d445aeb1dfede086699511d523cd398aad5a8331","mathematical_subject":"Computation.DataStructures","original_sha256":"580f639448be1a07cd468206d445aeb1dfede086699511d523cd398aad5a8331","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Stream/TensorIntegrity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Stream.TensorLocus


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteArithmeticDescriptor.Variant580f639448be1a07cd468206d445aeb1dfede086699511d523cd398aad5a8331

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure FiniteArithmeticDescriptor where
  arithmeticName : String
  qWeight? : Option Int
  localFactorTags : List String
  conductorTag? : Option Nat
  torsionTags : List String
  ramanujanInspired : Bool
  hasseWeilInspired : Bool
  noBSDClaim : True
  noCriticalLineClaim : True
  noAnalyticContinuationClaim : True
  claimBoundary : List String

structure TensoralIntegrity where
  left : TensorLocus
  right : TensorLocus
  comparisonMatrix :
    BinaryLogicMatrix left.carrier.rows right.carrier.cols
  overlapScore : Nat
  xorNaturalityMode : XorNaturalityMode
  curvaturePressure : Int
  torsionCompatible : Prop
  arithmeticDescriptor : FiniteArithmeticDescriptor
  claimBoundary : List String

theorem tensoralIntegrity_boundary_visible
    (I : TensoralIntegrity) :
    I.claimBoundary = I.claimBoundary ∧
    I.arithmeticDescriptor.claimBoundary =
      I.arithmeticDescriptor.claimBoundary := by
  exact ⟨rfl, rfl⟩

inductive IntegrityDefectKind where
  | tensorMismatch
  | xorNaturalityFailure
  | curvatureImbalance
  | torsionMismatch
  | homologyMismatch
  | arithmeticWeightMismatch
  | streamOrderConflict
  | missingKernelTheorem
  | proofBoundaryDefect
  | paddingDefect
  | nonReversibleDefect
  | nullPointGluingDefect
deriving DecidableEq, Repr

structure IntegrityDefect where
  kind : IntegrityDefectKind
  left : TensorLocus
  right : TensorLocus
  witness : SomeBinaryLogicMatrix
  explanation : String
  repairData : List String
  claimBoundary : List String

theorem integrityDefect_has_matrix_witness
    (D : IntegrityDefect) :
    Nonempty
      (BinaryLogicMatrix D.witness.rows D.witness.cols) :=
  ⟨D.witness.matrix⟩

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```
