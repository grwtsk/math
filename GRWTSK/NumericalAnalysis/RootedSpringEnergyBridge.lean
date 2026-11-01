/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy
import GRWTSK.FunctionalAnalysis.RootedQuadraticFamilies

/-!
# Actual torsional spring energy away from its twist-zero locus

Local attribution: grwtsk contributors.

This is the torsion of a mechanical torsion spring, NOT the torsion
of a connection and NOT a finite-order group element.

The real twist is the existing source crankAngle - inverseGear*rotorAngle.
The source potential is stiffness * twist^2 / 2, so strict positivity
holds precisely OFF the twist-zero locus when stiffness is positive.

The zero locus is not a unique physical state: a synchronized nonzero
crank/rotor angle can have zero twist and still have kinetic energy.
We prove one explicit counterexample to prevent the stronger inference.

Lean build, kernel checking and transitive axiom auditing: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumericalAnalysis.RootedSpringEnergyBridge

open GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy
open GRWTSK.FunctionalAnalysis.RootedQuadraticFamilies

/-- A positive stiffness makes the original spring potential strictly
positive whenever the actual spring twist is nonzero. -/
theorem potential_pos_off_twist_root
    (p : Parameters) (s : State)
    (hk : 0 < p.stiffness) (ht : twist p s ≠ 0) :
    0 < potential p s := by
  have hs : 0 < (twist p s) ^ 2 := sq_pos_of_ne_zero ht
  unfold potential
  exact div_pos (mul_pos hk hs) (by norm_num)

/-- The twist-zero locus, rather than zero rotor position, is the root. -/
theorem potential_eq_zero_iff_twist_zero
    (p : Parameters) (s : State) (hk : 0 < p.stiffness) :
    potential p s = 0 ↔ twist p s = 0 := by
  constructor
  · intro h
    by_contra ht
    have hp := potential_pos_off_twist_root p s hk ht
    linarith
  · intro ht
    simp [potential, ht]

/-- Exactly the same positive potential is a member of the reusable
dependent-family response contract, using half-stiffness as its scale. -/
def springFamily (p : Parameters) (hk : 0 < p.stiffness) :
    Family Unit where
  Carrier := fun _ => State
  response := fun _ s => twist p s
  weight := fun _ => p.stiffness / 2
  weight_pos := fun _ => div_pos hk (by norm_num)

/-- Exact source identity: no mechanical work term has been changed. -/
theorem springFamily_energy_eq_potential
    (p : Parameters) (hk : 0 < p.stiffness) (s : State) :
    (springFamily p hk).energy () s = potential p s := by
  unfold springFamily Family.energy potential
  ring

/-- A concrete nonzero configuration with zero spring twist and
strictly positive kinetic/mechanical energy. -/
def exampleParameters : Parameters :=
  { inertiaCrank := 1
    inertiaRotor := 1
    stiffness := 1
    dampingCrank := 1
    dampingRotor := 1
    inverseGear := 1 }

def exampleState : State :=
  { crankAngle := 1
    rotorAngle := 1
    crankSpeed := 1
    rotorSpeed := 0 }

theorem example_twist_zero :
    twist exampleParameters exampleState = 0 := by
  norm_num [exampleParameters, exampleState, twist]

theorem example_rotor_nonzero :
    exampleState.rotorAngle ≠ 0 := by
  norm_num [exampleState]

theorem example_mechanicalEnergy_positive :
    0 < mechanicalEnergy exampleParameters exampleState := by
  norm_num [mechanicalEnergy, kinetic, potential, twist,
    exampleParameters, exampleState]

end GRWTSK.NumericalAnalysis.RootedSpringEnergyBridge

end
