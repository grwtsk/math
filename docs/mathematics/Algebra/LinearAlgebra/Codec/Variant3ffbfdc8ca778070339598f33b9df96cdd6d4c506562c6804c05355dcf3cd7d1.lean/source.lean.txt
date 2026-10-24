import Surface.Legacy.BinaryLogicMatrix.Core

namespace Surface.Legacy

class BinaryLogicMatrixCodec (α : Type) where
  rows : α -> Nat
  cols : α -> Nat
  encode : (x : α) -> BinaryLogicMatrix (rows x) (cols x)
  decode? : {rows cols : Nat} -> BinaryLogicMatrix rows cols -> Option α
  roundTrip : ∀ x : α, decode? (encode x) = some x

namespace BinaryLogicMatrixCodec

def encodeSigma {α : Type} [C : BinaryLogicMatrixCodec α] (x : α) :
    Sigma fun rows => Sigma fun cols => BinaryLogicMatrix rows cols :=
  ⟨C.rows x, ⟨C.cols x, C.encode x⟩⟩

theorem roundTrip_checked {α : Type} [C : BinaryLogicMatrixCodec α] (x : α) :
    C.decode? (C.encode x) = some x :=
  C.roundTrip x

end BinaryLogicMatrixCodec

end Surface.Legacy
