# Complete source: GRWTSK.Algebra.GroupTheory.ReversibleCausalState.Variant94413fba6c557a4f85eba4ddd517e9cf96c574d3d846124f32c2a67ccc04f722

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ccf577090d83b9b11228ce4649120cbba87c1f8` · SHA-256 `94413fba6c557a4f85eba4ddd517e9cf96c574d3d846124f32c2a67ccc04f722`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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

/--
A positive identity power turns every inverse iterate into a forward iterate,
so forward and bilateral observational kernels coincide.
-/
theorem forward_eq_bilateral_of_pow_eq_one
    (G : ReversibleSystem State Resolution)
    {N : Nat}
    (hNpos : 0 < N)
    (hN : G.step ^ N = 1) :
    G.ForwardCausalEquivalent = G.BilateralCausalEquivalent := by
  funext x y
  apply propext
  constructor
  · intro hforward
    refine ⟨hforward, ?_⟩
    intro t ρ
    have hle : t ≤ N * t := by
      exact Nat.le_mul_of_pos_left t hNpos
    have hpow : G.step ^ (N * t) = 1 := by
      rw [pow_mul, hN, one_pow]
    have hmul :
        G.step ^ (N * t - t) * G.step ^ t = 1 := by
      rw [← pow_add, Nat.sub_add_cancel hle, hpow]
    have hinverse :
        G.step.symm ^ t = G.step ^ (N * t - t) := by
      change G.step⁻¹ ^ t = G.step ^ (N * t - t)
      rw [inv_pow]
      exact inv_eq_of_mul_eq_one_left hmul
    rw [hinverse]
    exact hforward (N * t - t) ρ
  · intro h
    exact h.1

/-!
## Transporting the quotient under finite order

The equality of observational kernels above induces an actual equivalence of
their quotients.  It is identity-on-representatives; no state encoding or
choice of representative is introduced.  Conjugating the bilateral quotient
permutation through this equivalence equips the forward quotient with a
permutation exactly when a positive identity power has been supplied.
-/

/--
Under a positive identity power, the forward and bilateral quotient types are
canonically equivalent by the identity map on concrete representatives.
-/
def forwardCausalStateEquivBilateralOfPowEqOne
    (G : ReversibleSystem State Resolution)
    {N : Nat}
    (hNpos : 0 < N)
    (hN : G.step ^ N = 1) :
    G.ForwardCausalState ≃ G.BilateralCausalState where
  toFun := Quotient.map id (by
    intro x y hxy
    change G.ForwardCausalEquivalent x y at hxy
    change G.BilateralCausalEquivalent (id x) (id y)
    have heq := G.forward_eq_bilateral_of_pow_eq_one hNpos hN
    rw [heq] at hxy
    simpa using hxy)
  invFun := Quotient.map id (by
    intro x y hxy
    change G.BilateralCausalEquivalent x y at hxy
    change G.ForwardCausalEquivalent (id x) (id y)
    simpa using hxy.1)
  left_inv := by
    intro c
    refine Quotient.inductionOn c ?_
    intro x
    rfl
  right_inv := by
    intro c
    refine Quotient.inductionOn c ?_
    intro x
    rfl

/-- The quotient equivalence sends a forward class to the same bilateral class. -/
@[simp]
theorem forwardCausalStateEquivBilateralOfPowEqOne_mk
    (G : ReversibleSystem State Resolution)
    {N : Nat}
    (hNpos : 0 < N)
    (hN : G.step ^ N = 1)
    (x : State) :
    G.forwardCausalStateEquivBilateralOfPowEqOne hNpos hN
        (Quotient.mk G.forwardSetoid x) =
      G.toBilateral x :=
  rfl

/--
The forward causal quotient inherits a genuine permutation through the
forward/bilateral equivalence.  This construction is unavailable without the
positive finite-order witness (or a separately bilateral definition).
-/
def forwardStepPermOfPowEqOne
    (G : ReversibleSystem State Resolution)
    {N : Nat}
    (hNpos : 0 < N)
    (hN : G.step ^ N = 1) :
    Equiv.Perm G.ForwardCausalState :=
  let e := G.forwardCausalStateEquivBilateralOfPowEqOne hNpos hN
  (e.trans G.bilateralStepPerm).trans e.symm

/-- The inherited forward permutation applies the original state transition. -/
@[simp]
theorem forwardStepPermOfPowEqOne_mk
    (G : ReversibleSystem State Resolution)
    {N : Nat}
    (hNpos : 0 < N)
    (hN : G.step ^ N = 1)
    (x : State) :
    G.forwardStepPermOfPowEqOne hNpos hN
        (Quotient.mk G.forwardSetoid x) =
      Quotient.mk G.forwardSetoid (G.step x) :=
  rfl

/-- Every permutation of a finite state type has forward = bilateral kernel. -/
theorem forward_eq_bilateral_of_finite
    (G : ReversibleSystem State Resolution)
    [Finite State] :
    G.ForwardCausalEquivalent = G.BilateralCausalEquivalent :=
  G.forward_eq_bilateral_of_pow_eq_one
    (orderOf_pos G.step)
    (pow_orderOf_eq_one G.step)

/-- Finite state spaces canonically identify forward and bilateral quotients. -/
noncomputable def forwardCausalStateEquivBilateralOfFinite
    (G : ReversibleSystem State Resolution)
    [Finite State] :
    G.ForwardCausalState ≃ G.BilateralCausalState :=
  G.forwardCausalStateEquivBilateralOfPowEqOne
    (orderOf_pos G.step)
    (pow_orderOf_eq_one G.step)

/-- A finite forward causal quotient inherits the reversible transition. -/
noncomputable def forwardStepPermOfFinite
    (G : ReversibleSystem State Resolution)
    [Finite State] :
    Equiv.Perm G.ForwardCausalState :=
  G.forwardStepPermOfPowEqOne
    (orderOf_pos G.step)
    (pow_orderOf_eq_one G.step)

@[simp]
theorem forwardStepPermOfFinite_mk
    (G : ReversibleSystem State Resolution)
    [Finite State]
    (x : State) :
    G.forwardStepPermOfFinite (Quotient.mk G.forwardSetoid x) =
      Quotient.mk G.forwardSetoid (G.step x) := by
  apply G.forwardStepPermOfPowEqOne_mk

end ReversibleSystem

-- Stable names requested by the public API.
export ReversibleSystem
  (BilateralCausalState
   bilateralStepPerm
   bilateralObserve
   forward_eq_bilateral_of_pow_eq_one
   forwardCausalStateEquivBilateralOfPowEqOne
   forwardStepPermOfPowEqOne
   forwardCausalStateEquivBilateralOfFinite
   forwardStepPermOfFinite)

end ReversibleCausal
```
