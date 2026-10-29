import Folder.NumberTheory.PositiveNat

/-!
# Folder.NumberTheory.PrimePower

Radiation role: number-theory
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: nt.prime_power
Pivot role: arithmetic
Zero typology: none
Contract boundary: definition
Composite stack role: arithmetic
-/

namespace Folder
namespace NumberTheory

structure PrimePower where
  prime : Nat
  isPrime : Nat.Prime prime
  exponent : Nat
  exponent_pos : 0 < exponent

namespace PrimePower

def value (P : PrimePower) : Nat :=
  P.prime ^ P.exponent

theorem value_pos (P : PrimePower) : 0 < P.value := by
  exact pow_pos (Nat.Prime.pos P.isPrime) P.exponent

theorem value_ne_zero (P : PrimePower) : P.value ≠ 0 :=
  Nat.ne_of_gt P.value_pos

def asPositiveNat (P : PrimePower) : PositiveNat :=
  ⟨P.value, P.value_pos⟩

def PrimeLt (a b : PrimePower) : Prop :=
  a.prime < b.prime

theorem prime_ne_of_primeLt
    {a b : PrimePower}
    (h : PrimeLt a b) :
    a.prime ≠ b.prime :=
  Nat.ne_of_lt h

end PrimePower
end NumberTheory
end Folder
