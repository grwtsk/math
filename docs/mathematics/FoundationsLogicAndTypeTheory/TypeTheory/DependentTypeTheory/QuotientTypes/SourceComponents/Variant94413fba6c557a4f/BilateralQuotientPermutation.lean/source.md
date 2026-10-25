# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.SourceComponents.Variant94413fba6c557a4f.BilateralQuotientPermutation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `513d4013203a81a8bbf05ab2e2542ba22d0ee0ae` · SHA-256 `bc4c086ce3a92683ad6e724674e84b492b550caced9a874d498cbb932d037cce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
BilateralQuotientPermutation — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 94413fba6c557a4f85eba4ddd517e9cf96c574d3d846124f32c2a67ccc04f722
Organized SHA-256: 48bfb722aa153d51cf840bfda5bd7c918b4b9c62ee58d54457406d42a4c0fd3c
PMD: 510.0.070.020.080 quotient types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole reversible-system and bilateral quotient-permutation construction; both private congruence helpers stay with every consumer. Exact original namespaces and imports remain; no added containing namespace or open binding. Only declared same-source public companions are added. Source documentation may describe archived components. Provider resolution, namespace coimport compatibility and elaboration are unreplayed. -/

import DAF.Causal.CausalState
import Mathlib.GroupTheory.OrderOfElement

/-!
# Reversible and bilateral causal state

For a reversible autonomous system, bilateral equivalence compares every
observation both along forward iterates and along iterates of the inverse.
This makes the descended transition an actual permutation of the quotient.

Forward and bilateral equivalence coincide when a **positive** power of the
global permutation is the identity.  Positivity is essential: the equation
`H ^ 0 = 1` is tautological and gives no finite-order information.  Finite
state spaces supply a positive exponent through `orderOf H`.  On arbitrary
infinite state spaces a forward causal quotient need not be reversible.
-/

namespace ReversibleCausal

universe uS uR uO

/-- An autonomous observable system whose state update is a permutation. -/
structure ReversibleSystem
    (State : Type uS)
    (Resolution : Type uR) where
  Observation : Resolution → Type uO
  step : Equiv.Perm State
  observe : ∀ ρ, State → Observation ρ

namespace ReversibleSystem

variable {State : Type uS} {Resolution : Type uR}

/-- Agreement of all observations along nonnegative forward iterates. -/
def ForwardCausalEquivalent
    (G : ReversibleSystem State Resolution)
    (x y : State) : Prop :=
  ∀ t ρ,
    G.observe ρ ((G.step ^ t) x) =
      G.observe ρ ((G.step ^ t) y)

/-- Agreement along both forward and inverse nonnegative iterates. -/
def BilateralCausalEquivalent
    (G : ReversibleSystem State Resolution)
    (x y : State) : Prop :=
  G.ForwardCausalEquivalent x y ∧
    ∀ t ρ,
      G.observe ρ ((G.step.symm ^ t) x) =
        G.observe ρ ((G.step.symm ^ t) y)

/-- Forward causal equivalence as a setoid. -/
def forwardSetoid
    (G : ReversibleSystem State Resolution) : Setoid State where
  r := G.ForwardCausalEquivalent
  iseqv := {
    refl := by intro x t ρ; rfl
    symm := by intro x y h t ρ; exact (h t ρ).symm
    trans := by intro x y z hxy hyz t ρ; exact (hxy t ρ).trans (hyz t ρ)
  }

/-- Bilateral causal equivalence as a setoid. -/
def bilateralSetoid
    (G : ReversibleSystem State Resolution) : Setoid State where
  r := G.BilateralCausalEquivalent
  iseqv := {
    refl := by
      intro x
      exact ⟨fun _ _ => rfl, fun _ _ => rfl⟩
    symm := by
      intro x y h
      exact
        ⟨fun t ρ => (h.1 t ρ).symm,
          fun t ρ => (h.2 t ρ).symm⟩
    trans := by
      intro x y z hxy hyz
      exact
        ⟨fun t ρ => (hxy.1 t ρ).trans (hyz.1 t ρ),
          fun t ρ => (hxy.2 t ρ).trans (hyz.2 t ρ)⟩
  }

/-- Forward-only causal quotient. -/
def ForwardCausalState
    (G : ReversibleSystem State Resolution) :=
  Quotient G.forwardSetoid

/-- Causal quotient that observes the complete two-sided orbit. -/
def BilateralCausalState
    (G : ReversibleSystem State Resolution) :=
  Quotient G.bilateralSetoid

/-- Insert a concrete state into the bilateral quotient. -/
def toBilateral
    (G : ReversibleSystem State Resolution)
    (x : State) : G.BilateralCausalState :=
  Quotient.mk G.bilateralSetoid x

private theorem bilateral_step
    (G : ReversibleSystem State Resolution)
    {x y : State}
    (h : G.BilateralCausalEquivalent x y) :
    G.BilateralCausalEquivalent (G.step x) (G.step y) := by
  constructor
  · intro t ρ
    simpa [pow_succ, Equiv.Perm.mul_apply] using h.1 (t + 1) ρ
  · intro t ρ
    cases t with
    | zero =>
        simpa using h.1 1 ρ
    | succ t =>
        simpa [pow_succ, Equiv.Perm.mul_apply] using h.2 t ρ

private theorem bilateral_step_symm
    (G : ReversibleSystem State Resolution)
    {x y : State}
    (h : G.BilateralCausalEquivalent x y) :
    G.BilateralCausalEquivalent (G.step.symm x) (G.step.symm y) := by
  constructor
  · intro t ρ
    cases t with
    | zero =>
        simpa using h.2 1 ρ
    | succ t =>
        simpa [pow_succ, Equiv.Perm.mul_apply] using h.1 t ρ
  · intro t ρ
    simpa [pow_succ, Equiv.Perm.mul_apply] using h.2 (t + 1) ρ

/-- The reversible update descended to bilateral causal classes. -/
def bilateralStepPerm
    (G : ReversibleSystem State Resolution) :
    Equiv.Perm G.BilateralCausalState where
  toFun := Quotient.map G.step (fun _ _ h => G.bilateral_step h)
  invFun := Quotient.map G.step.symm (fun _ _ h => G.bilateral_step_symm h)
  left_inv := by
    intro c
    refine Quotient.inductionOn c ?_
    intro x
    change G.toBilateral (G.step.symm (G.step x)) = G.toBilateral x
    simp
  right_inv := by
    intro c
    refine Quotient.inductionOn c ?_
    intro x
    change G.toBilateral (G.step (G.step.symm x)) = G.toBilateral x
    simp

@[simp]
theorem bilateralStepPerm_toBilateral
    (G : ReversibleSystem State Resolution)
    (x : State) :
    G.bilateralStepPerm (G.toBilateral x) =
      G.toBilateral (G.step x) :=
  rfl

/-- Current observations descend to bilateral causal classes. -/
def bilateralObserve
    (G : ReversibleSystem State Resolution)
    (ρ : Resolution) :
    G.BilateralCausalState → G.Observation ρ :=
  Quotient.lift (G.observe ρ) (by
    intro x y h
    simpa using h.1 0 ρ)

@[simp]
theorem bilateralObserve_toBilateral
    (G : ReversibleSystem State Resolution)
    (ρ : Resolution)
    (x : State) :
    G.bilateralObserve ρ (G.toBilateral x) = G.observe ρ x :=
  rfl

end ReversibleSystem
end ReversibleCausal
```
