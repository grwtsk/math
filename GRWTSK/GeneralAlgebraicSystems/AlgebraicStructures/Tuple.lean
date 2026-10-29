import Mathematics.SemiLocalDefect.ResidueDeflection.Phase
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Safe residue tuples and protected total constraints

Coordinate reflections and permutations act on safe tuples.  Compatibility
with a protected total residue is a separate stabilizer certificate.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open scoped BigOperators

structure SafeResidueTuple
    (length : Nat) where
  residue : Fin length → Residue3
  safe :
    ∀ coordinate,
      (residue coordinate).Safe

def SafeResidueTuple.total
    {length : Nat}
    (tuple : SafeResidueTuple length) :
    ZMod 3 :=
  ∑ coordinate,
    (tuple.residue coordinate).value

structure TuplePhase
    (length : Nat) where
  coordinatePhase : Fin length → Phase3
  permutation : Equiv.Perm (Fin length)

def TuplePhase.act
    {length : Nat}
    (phase : TuplePhase length)
    (tuple : SafeResidueTuple length) :
    SafeResidueTuple length where
  residue := fun coordinate =>
    (phase.coordinatePhase coordinate).act
      (tuple.residue
        (phase.permutation.symm coordinate))
  safe := by
    intro coordinate
    exact phase3_action_preserves_safe
      (phase.coordinatePhase coordinate)
      (tuple.safe
        (phase.permutation.symm coordinate))

def TuplePhase.PreservesTotal
    {length : Nat}
    (phase : TuplePhase length)
    (target : ZMod 3) : Prop :=
  ∀ tuple : SafeResidueTuple length,
    tuple.total = target ↔
      (phase.act tuple).total = target

structure TupleConstraintStabilizer
    (length : Nat)
    (target : ZMod 3) where
  phase : TuplePhase length
  preserves :
    phase.PreservesTotal target

end Mathematics.SemiLocalDefect.ResidueDeflection
