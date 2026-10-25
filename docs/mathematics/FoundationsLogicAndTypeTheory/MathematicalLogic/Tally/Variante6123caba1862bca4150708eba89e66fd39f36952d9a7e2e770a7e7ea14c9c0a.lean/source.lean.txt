import Mathlib.Logic.Equiv.Basic

/-!
# Exact tally carrier

A tally is a natural count with a canonical constructor.  Certified tallies
retain one immutable mark per counted operation.
-/

namespace Mathematics.AbelReynolds

structure Tally where
  count : Nat
  deriving DecidableEq, Repr

def Tally.empty : Tally :=
  ⟨0⟩

def Tally.ofNat (count : Nat) : Tally :=
  ⟨count⟩

def Tally.append (left right : Tally) : Tally :=
  ⟨left.count + right.count⟩

@[simp] theorem Tally.count_ofNat (count : Nat) :
    (Tally.ofNat count).count = count :=
  rfl

@[simp] theorem Tally.ofNat_count (tally : Tally) :
    Tally.ofNat tally.count = tally := by
  cases tally
  rfl

@[simp] theorem Tally.count_append (left right : Tally) :
    (left.append right).count = left.count + right.count :=
  rfl

def tallyEquivNat : Tally ≃ Nat where
  toFun := Tally.count
  invFun := Tally.ofNat
  left_inv := Tally.ofNat_count
  right_inv := Tally.count_ofNat

structure CertifiedMark where
  markId : String
  fieldId : String
  operationId : String
  dependencyDigest : String
  boundaryDigest : String
  evidenceDigest : String
  costWitness : Nat
  deriving DecidableEq, Repr

abbrev CertifiedTally := List CertifiedMark

def CertifiedTally.appendMark
    (tally : CertifiedTally)
    (mark : CertifiedMark) : CertifiedTally :=
  tally ++ [mark]

@[simp] theorem CertifiedTally.length_appendMark
    (tally : CertifiedTally)
    (mark : CertifiedMark) :
    (tally.appendMark mark).length = tally.length + 1 := by
  simp [CertifiedTally.appendMark]

theorem CertifiedTally.prefix_appendMark
    (tally : CertifiedTally)
    (mark : CertifiedMark) :
    tally.IsPrefix (tally.appendMark mark) := by
  refine ⟨[mark], ?_⟩
  simp [CertifiedTally.appendMark]

def fieldOrdinal (index : Nat) : Tally :=
  Tally.ofNat (index + 1)

@[simp] theorem fieldOrdinal_count (index : Nat) :
    (fieldOrdinal index).count = index + 1 :=
  rfl

end Mathematics.AbelReynolds
