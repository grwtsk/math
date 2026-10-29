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
