import Surface.AST.Core
import Surface.Legacy.BinaryLogicMatrix.Core

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

open Surface.AST

structure SomeBinaryLogicMatrix where
  rows : Nat
  cols : Nat
  matrix : BinaryLogicMatrix rows cols

def bitNot (b : Bool) : Bool :=
  if b then false else true

def xorBit (a b : Bool) : Bool :=
  a != b

def xorWord : List Bool → List Bool → List Bool
  | [], [] => []
  | a :: as, b :: bs => xorBit a b :: xorWord as bs
  | _, _ => []

def repeatWord (n : Nat) (w : List Bool) : List Bool :=
  match n with
  | 0 => []
  | Nat.succ k => w ++ repeatWord k w

def word010 : List Bool :=
  [false, true, false]

def word0110 : List Bool :=
  [false, true, true, false]

def word1001 : List Bool :=
  [true, false, false, true]

def word01 : List Bool :=
  [false, true]

def word10 : List Bool :=
  [true, false]

theorem split0110_reverse_symmetric :
    word0110.reverse = word0110 := by
  decide

theorem split0110_inverts_to_1001 :
    word0110.map bitNot = word1001 := by
  decide

theorem originalWord_eq_010 :
    word010 = [false, true, false] := by
  rfl

theorem splitWord_eq_0110 :
    word0110 = [false, true, true, false] := by
  rfl

theorem someBinaryLogicMatrix_has_matrix
    (M : SomeBinaryLogicMatrix) :
    Nonempty (BinaryLogicMatrix M.rows M.cols) :=
  ⟨M.matrix⟩

end Stream
end BinaryLogicMatrix
end Surface.Legacy
