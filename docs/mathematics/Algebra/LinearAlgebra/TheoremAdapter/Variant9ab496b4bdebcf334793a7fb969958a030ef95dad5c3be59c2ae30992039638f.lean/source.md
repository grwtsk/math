# Complete source: GRWTSK.Algebra.LinearAlgebra.TheoremAdapter.Variant9ab496b4bdebcf334793a7fb969958a030ef95dad5c3be59c2ae30992039638f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93257de839c07598acfdd369a60cacb092111510` · SHA-256 `2e29cfcc29c0e6bdcd86e15bb99c6fbc6bd4f8bd2d518504df44bb8b7830021b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.EncodedTheorem.Variant4bcf4cc21e8119a73e62b031cfa639fb2a8ec1b929923e975433631378d40f94","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4bcf4cc21e8119a73e62b031cfa639fb2a8ec1b929923e975433631378d40f94","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.EncodedTheorem.Variant4bcf4cc21e8119a73e62b031cfa639fb2a8ec1b929923e975433631378d40f94","mathematical_subject":"Foundations.Unclassified","original_sha256":"4bcf4cc21e8119a73e62b031cfa639fb2a8ec1b929923e975433631378d40f94","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/TheoremAdapter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Codec


namespace GRWTSK.Algebra.LinearAlgebra.EncodedTheorem.Variant4bcf4cc21e8119a73e62b031cfa639fb2a8ec1b929923e975433631378d40f94

namespace Surface.Legacy

structure EncodedTheorem where
  statement : Prop
  matrixDescriptor : Sigma fun rows => Sigma fun cols => BinaryLogicMatrix rows cols
  soundProof : statement
  claimBoundary : String

theorem encodedTheorem_matrix_sound (T : EncodedTheorem) :
    T.statement :=
  T.soundProof

structure BinaryLogicMatrixTheoremAdapter
    (α β : Type) [BinaryLogicMatrixCodec α] [BinaryLogicMatrixCodec β] where
  sourceStatement : Prop
  targetStatement : Prop
  sourceMap : α -> β
  transport : sourceStatement -> targetStatement
  dependencyPrecision : String
  claimBoundary : String

theorem theoremAdapter_sound
    {α β : Type} [BinaryLogicMatrixCodec α] [BinaryLogicMatrixCodec β]
    (A : BinaryLogicMatrixTheoremAdapter α β) :
    A.sourceStatement -> A.targetStatement := by
  intro h
  exact A.transport h

theorem theoremAdapter_boundary_visible
    {α β : Type} [BinaryLogicMatrixCodec α] [BinaryLogicMatrixCodec β]
    (A : BinaryLogicMatrixTheoremAdapter α β) :
    A.claimBoundary = A.claimBoundary := by
  rfl

end Surface.Legacy
```
