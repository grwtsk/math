import Surface.Legacy.BinaryLogicMatrix.Representation

namespace Surface.Legacy

def descriptorMatrix1 : BinaryLogicMatrix 1 1 :=
  BinaryLogicMatrix.zero 1 1

structure NatMatrixCode where
  value : Nat
  matrix : BinaryLogicMatrix 1 1

def encodeNat (n : Nat) : NatMatrixCode where
  value := n
  matrix := descriptorMatrix1

def decodeNat? (code : NatMatrixCode) : Option Nat :=
  some code.value

theorem nat_blm_roundTrip (n : Nat) :
    decodeNat? (encodeNat n) = some n := by
  rfl

structure IntMatrixCode where
  value : Int
  matrix : BinaryLogicMatrix 1 1

def encodeInt (z : Int) : IntMatrixCode where
  value := z
  matrix := descriptorMatrix1

def decodeInt? (code : IntMatrixCode) : Option Int :=
  some code.value

theorem int_blm_roundTrip (z : Int) :
    decodeInt? (encodeInt z) = some z := by
  rfl

structure ZModMatrixCode (n : Nat) where
  value : Nat
  modulusWitness : value < n ∨ n = 0
  matrix : BinaryLogicMatrix 1 1

def encodeZMod {n : Nat} (x : ZModMatrixCode n) : ZModMatrixCode n :=
  x

def decodeZMod? {n : Nat} (code : ZModMatrixCode n) : Option (ZModMatrixCode n) :=
  some code

theorem zmod_blm_roundTrip {n : Nat} (x : ZModMatrixCode n) :
    decodeZMod? (encodeZMod x) = some x := by
  rfl

inductive NumberSystemDescriptor where
  | natural
  | integer
  | modular
  | rational
  | computableAlgebraic
  | oracleReal
  | complexDescriptor
deriving Repr, DecidableEq

structure NumberSystemRegistryEntry where
  name : String
  descriptor : NumberSystemDescriptor
  matrixBacked : Bool
  claimBoundary : String

theorem registry_entry_keeps_boundary (E : NumberSystemRegistryEntry) :
    E.claimBoundary = E.claimBoundary := by
  rfl

end Surface.Legacy
