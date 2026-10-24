# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiberTensor.Variant8863a128ef237243a5ba7b188cd291d3766bc02071cfc7dc850707b7bbbe9bd6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3960c4b7f151852345cf84c96fe1dad7f18d118c` · SHA-256 `4c88811d98d6648275d3dfa7b3d13b4d47e7ae89adb8f0ea751a589a2756e1ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FactorRole.Variant58bebfa0831b70114e70db02c249432fd3572c51df2b01b7d04c3fda28ace897","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"58bebfa0831b70114e70db02c249432fd3572c51df2b01b7d04c3fda28ace897","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FactorRole.Variant58bebfa0831b70114e70db02c249432fd3572c51df2b01b7d04c3fda28ace897","mathematical_subject":"Computation.DataStructures","original_sha256":"58bebfa0831b70114e70db02c249432fd3572c51df2b01b7d04c3fda28ace897","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/FiberTensor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Similarity


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FactorRole.Variant58bebfa0831b70114e70db02c249432fd3572c51df2b01b7d04c3fda28ace897

namespace Surface.Legacy

inductive FactorRole
| lexical
| syntactic
| semanticDescriptor
| theoremTarget
| fixtureTarget
| symmetryCandidate
| torsionCandidate
| claimBoundary
deriving DecidableEq, Repr

structure BinaryMatrixFactor where
  id : Nat
  rows : Nat
  cols : Nat
  value : BinaryLogicMatrix rows cols
  role : FactorRole

structure FiberTensorSite where
  siteId : Nat
  baseFactor : Nat
  fiberFactor : Nat
  anchor : BinaryLogicMatrix 1 1

structure BinaryMatrixFiberTensor where
  sourceFactors : List BinaryMatrixFactor
  targetFactors : List BinaryMatrixFactor
  shared : BinaryLogicMatrix sourceFactors.length targetFactors.length
  distinctSource : BinaryLogicMatrix sourceFactors.length 1
  distinctTarget : BinaryLogicMatrix targetFactors.length 1
  sites : List FiberTensorSite
  claimBoundary : String

theorem binaryMatrixFiberTensor_shared_rows
    (T : BinaryMatrixFiberTensor) :
    (T.shared : BinaryLogicMatrix T.sourceFactors.length T.targetFactors.length) = T.shared := by
  rfl

theorem fiberTensor_boundary_visible
    (T : BinaryMatrixFiberTensor) :
    T.claimBoundary = T.claimBoundary := by
  rfl

end Surface.Legacy
```
