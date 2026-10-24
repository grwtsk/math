# Complete source: GRWTSK.NumberTheory.ArithmeticFunctions.Checks.PrimePowerAtomControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ce1276cc80e0ff3e7b3a4c1a8e86cd5d642e1ce` · SHA-256 `039beeab58434ec31b2a8af6bdb97c20c2e441f338c6c6d1d1d77a65b9e27789`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerAtoms
import Mathlib.Tactic

set_option autoImplicit false

namespace GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerAtoms.Checks

open GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScale
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerAtoms

/-- One p^2 atom and two p atoms are distinct in the source module. -/
theorem square_atom_distinct_from_two_unit_atoms (p : PrimeIndex) :
    Finsupp.single (squareAtom p) (1 : ℤ) ≠
      Finsupp.single (unitAtom p) 2 := by
  intro h
  have h' := congrArg (fun x : PrimePowerModule ℤ => x (squareAtom p)) h
  simp [squareAtom_ne_unitAtom] at h'

/-- They become equal after exponent collapse. -/
theorem square_atom_and_two_unit_atoms_same_collapse (p : PrimeIndex) :
    collapse (Finsupp.single (squareAtom p) (1 : ℤ)) =
      collapse (Finsupp.single (unitAtom p) 2) := by
  rw [collapse_single, collapse_single]
  change Finsupp.single p (2 : ℤ) = Finsupp.single p (1 * 2 : ℤ)
  norm_num

/-- The exact source-level obstruction witness. -/
theorem atom_collapse_information_loss (p : PrimeIndex) :
    collapseKernelWitness p ≠ 0 ∧ collapse (collapseKernelWitness p) = 0 :=
  ⟨collapseKernelWitness_ne_zero p, collapseKernelWitness_mem_kernel p⟩

/-- A test that depends quadratically on the exponent does not descend to the
net exponent lattice. -/
theorem nonlinear_readout_rejected (p : PrimeIndex) :
    ¬ FactorsThroughCollapse squaredExponentReadout :=
  squaredExponentReadout_not_factors p

/-- Exponent-one atoms give a source section of the quotient. -/
theorem collapse_has_section (x : PrimeExponent) :
    collapse (unitAtomSection x) = x :=
  collapse_unitAtomSection x

/-- A finite stage with two source atoms inhabits the fourth witness channel
without creating a fourth triangular phase. -/
def twoAtomStage (p : PrimeIndex) : PrimePowerWitnessStage where
  atoms := {unitAtom p, squareAtom p}

theorem twoAtomStage_card (p : PrimeIndex) :
    Fintype.card (twoAtomStage p).WitnessIndex = 2 := by
  classical
  change Fintype.card {a : PrimePowerAtom // a ∈ (twoAtomStage p).atoms} = 2
  rw [Fintype.card_coe]
  exact Finset.card_pair (Ne.symm (squareAtom_ne_unitAtom p))

/-- The triangular base still has exactly three phases. -/
theorem triangle_remains_three :
    Nat.card GRWTSK.Geometry.ThreePlusOne.TrianglePhase = 3 := by
  norm_num [GRWTSK.Geometry.ThreePlusOne.TrianglePhase]

/-- The atom witness channel is not a claim of a symmetric four-phase base. -/
theorem no_triangle_fin_four :
    ¬ Nonempty (GRWTSK.Geometry.ThreePlusOne.TrianglePhase ≃ Fin 4) := by
  intro h
  have hcard := Nat.card_congr h.some
  norm_num [GRWTSK.Geometry.ThreePlusOne.TrianglePhase] at hcard

end GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerAtoms.Checks
```
