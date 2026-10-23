/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Do not import into the GRWTSK public root before exact-commit
transitive compilation, fresh kernel checking and axiom audit.
-/
import GRWTSK.NumberTheory.Farey.ReturnAngularChannel

/-!
# The mod-three Farey quarter-turn does not descend to projective points

The exact source-defined Farey return H=LR has H^2=-I modulo three.
Consequently the selected four-vector orbit traverses antipodal pairs:
v₂=-v₀ and v₃=-v₁. Its character/observation has
phi(v₂)=-phi(v₀), so it remembers the orientation of the chosen vector.

Any observable defined on projective points must be invariant under
nonzero scalar multiplication; in particular it must be invariant
under v -> -v. We prove the weaker, sufficient no-go hypothesis:
no globally sign-invariant observable on the full vector carrier
can agree with this selected four-state phase at all four orbit points.

This is a finite obstruction to an UNSPECIFIED projective/gauge
identification, not a denial of the oriented-vector channel, the
return projector, or a possible separate projective eigenchannel.
No general irrational dynamics, continuous winding, or RH result.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Farey.ReturnAngularProjectiveObstruction

open GRWTSK.NumberTheory.Farey.ReturnAngularChannel

/-- The two-step endpoint of the actual mod-three return orbit differs
from the initial vector by the nontrivial scalar -1. -/
theorem residueOrbit_two_eq_neg_zero :
    residueOrbit (2 : Fin 4) = -(residueOrbit (0 : Fin 4)) := by
  funext i
  fin_cases i <;> decide

/-- The other orbit pair is likewise related by the same sign gauge. -/
theorem residueOrbit_three_eq_neg_one :
    residueOrbit (3 : Fin 4) = -(residueOrbit (1 : Fin 4)) := by
  funext i
  fin_cases i <;> decide

/-- The explicitly source-linked phase does not identify the first
two antipodal representatives. -/
theorem orbitPhase_two_ne_zero :
    orbitPhase (2 : Fin 4) ≠ orbitPhase (0 : Fin 4) := by
  norm_num [orbitPhase]

/-- Invariance under -1 is a necessary (not sufficient) condition for
descent of a vector observable to the projective quotient. -/
def SignGaugeInvariant (readout : (Fin 2 → ZMod 3) → ℂ) : Prop :=
  ∀ v, readout (-v) = readout v

/-- Faithfulness to the exact four-state phase already defined by the
mod-three return, with no adjustable state relabeling. -/
def AgreesWithOrbitPhase (readout : (Fin 2 → ZMod 3) → ℂ) : Prop :=
  ∀ j : Fin 4, readout (residueOrbit j) = orbitPhase j

/-- Any globally sign-invariant vector readout necessarily identifies
v₀ and v₂. That contradicts their distinct measured phases. -/
theorem no_sign_invariant_orbit_phase
    (readout : (Fin 2 → ZMod 3) → ℂ)
    (hSign : SignGaugeInvariant readout)
    (hOrbit : AgreesWithOrbitPhase readout) : False := by
  have heq : orbitPhase (2 : Fin 4) = orbitPhase (0 : Fin 4) := by
    calc
      orbitPhase (2 : Fin 4) = readout (residueOrbit (2 : Fin 4)) :=
        (hOrbit 2).symm
      _ = readout (-(residueOrbit (0 : Fin 4))) := by
        rw [residueOrbit_two_eq_neg_zero]
      _ = readout (residueOrbit (0 : Fin 4)) :=
        hSign (residueOrbit 0)
      _ = orbitPhase (0 : Fin 4) :=
        hOrbit 0
  exact orbitPhase_two_ne_zero heq

/-- Precise no-go: the selected quarter-turn phase cannot arise as the
restriction of a projective/sign-gauge-invariant complex observable.

This does not rule out phase-squared, sign-alternating projective
characters, a gauge-fixed oriented lift, or an enlarged representation. -/
theorem no_projective_selected_phase_extension :
    ¬ ∃ readout : (Fin 2 → ZMod 3) → ℂ,
        SignGaugeInvariant readout ∧ AgreesWithOrbitPhase readout := by
  rintro ⟨readout, hSign, hOrbit⟩
  exact no_sign_invariant_orbit_phase readout hSign hOrbit

end GRWTSK.NumberTheory.Farey.ReturnAngularProjectiveObstruction
