# Complete source: GRWTSK.Algebra.LinearAlgebra.TheoremAdapter.Variant4bcf4cc21e8119a73e62b031cfa639fb2a8ec1b929923e975433631378d40f94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ffe1d16ab4744f63502eb0d6f794906fb34b79af` · SHA-256 `4bcf4cc21e8119a73e62b031cfa639fb2a8ec1b929923e975433631378d40f94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Codec

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
