/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE: Lean, full axiom audit and independent replay NOT_RUN.
-/
import Mathlib

/-!
# Involutive two-sided semigroups and separately sourced signed forms

A prime-knot reflection is an involution J, not a claim that -p is
a positive prime. Given a genuine semigroup law for the forward
flow T_plus, the backward flow is defined as J T_plus J and its
semigroup law is proved rather than assumed. Automorphisms must
commute with BOTH the forward flow and the reflection.

A signed Weil-like arithmetic form is NOT defined by this graph heat
semigroup. A source-specific approximation must supply an explicit
error bound to the actual original functional. The only conclusions
about its sign below are conditional on that bound; no RH/GRH,
global Weil positivity, or spectral identification is inferred.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicTopology.MirroredPrimeHeatAndSignedReturn

universe u v

/-- An algebraic time-indexed semigroup action; generator,
self-adjointness, positivity and strong continuity are separate laws. -/
structure TimeSemigroup (State : Type u) where
  evolve : ℝ≥0 → State → State
  evolve_zero : ∀ x, evolve 0 x = x
  evolve_add : ∀ t s x, evolve (t + s) x = evolve t (evolve s x)

/-- Forward heat and a square-one reflection. -/
structure MirroredFlow (State : Type u) where
  forward : TimeSemigroup State
  reflect : State ≃ State
  reflect_involutive : ∀ x, reflect (reflect x) = x

/-- The second flow is conjugate to the first through the reflection. -/
def MirroredFlow.backward {State : Type u} (H : MirroredFlow State)
    (t : ℝ≥0) (x : State) : State :=
  H.reflect (H.forward.evolve t (H.reflect x))

theorem MirroredFlow.backward_zero {State : Type u}
    (H : MirroredFlow State) (x : State) :
    H.backward 0 x = x := by
  change H.reflect (H.forward.evolve 0 (H.reflect x)) = x
  rw [H.forward.evolve_zero, H.reflect_involutive]

/-- Mirrored evolution composes in exactly the same time order. -/
theorem MirroredFlow.backward_add {State : Type u}
    (H : MirroredFlow State) (t s : ℝ≥0) (x : State) :
    H.backward (t + s) x = H.backward t (H.backward s x) := by
  change H.reflect (H.forward.evolve (t + s) (H.reflect x)) =
    H.reflect (H.forward.evolve t
      (H.reflect (H.reflect (H.forward.evolve s (H.reflect x)))))
  rw [H.forward.evolve_add]
  simp only [H.reflect_involutive]

/-- The reflection intertwines the two genuine semigroup actions. -/
theorem MirroredFlow.intertwining {State : Type u}
    (H : MirroredFlow State) (t : ℝ≥0) (x : State) :
    H.backward t (H.reflect x) =
      H.reflect (H.forward.evolve t x) := by
  change H.reflect
    (H.forward.evolve t (H.reflect (H.reflect x))) =
    H.reflect (H.forward.evolve t x)
  rw [H.reflect_involutive]

/-- Reflecting back recovers the original forward evolution. -/
theorem MirroredFlow.forward_from_backward {State : Type u}
    (H : MirroredFlow State) (t : ℝ≥0) (x : State) :
    H.reflect (H.backward t (H.reflect x)) =
      H.forward.evolve t x := by
  rw [H.intertwining, H.reflect_involutive]

/-- An automorphism must be proven compatible with the flow and J.
Reindexing any finite graph does not establish these hypotheses. -/
structure MirroredFlow.Automorphism {State : Type u}
    (H : MirroredFlow State) where
  action : State ≃ State
  commute_forward : ∀ t x,
    action (H.forward.evolve t x) = H.forward.evolve t (action x)
  commute_reflect : ∀ x,
    action (H.reflect x) = H.reflect (action x)

/-- Compatible automorphisms commute with the mirrored flow too. -/
theorem MirroredFlow.Automorphism.commute_backward {State : Type u}
    {H : MirroredFlow State} (A : H.Automorphism)
    (t : ℝ≥0) (x : State) :
    A.action (H.backward t x) = H.backward t (A.action x) := by
  change A.action (H.reflect (H.forward.evolve t (H.reflect x))) =
    H.reflect (H.forward.evolve t (H.reflect (A.action x)))
  rw [A.commute_reflect, A.commute_forward, A.commute_reflect]

/-- Formal signed sheets for an underlying prime identity.
The mirror flips sheets, not the mathematical value of a positive prime. -/
abbrev SignedKnot (PrimeId : Type v) := Bool × PrimeId

def signedKnotReflect {PrimeId : Type v} :
    SignedKnot PrimeId ≃ SignedKnot PrimeId where
  toFun := fun x => (!x.1, x.2)
  invFun := fun x => (!x.1, x.2)
  left_inv := by
    intro x
    cases x with
    | mk b p =>
      cases b <;> rfl
  right_inv := by
    intro x
    cases x with
    | mk b p =>
      cases b <;> rfl

theorem signedKnotReflect_preserves_id {PrimeId : Type v}
    (x : SignedKnot PrimeId) :
    (signedKnotReflect x).2 = x.2 := rfl

theorem signedKnotReflect_involutive {PrimeId : Type v}
    (x : SignedKnot PrimeId) :
    signedKnotReflect (signedKnotReflect x) = x :=
  (signedKnotReflect).left_inv x

/-- Exact comparison contract to a source-identified signed functional.
It requires a complete error bound; nothing asserts positivity.
When used for a Weil form, the source must also keep gamma, pole,
conductor, signed prime-power, and test-domain data. -/
structure SignedSourceApproximation (Test : Type v) where
  sourceIdentity : String
  original : Test → ℝ
  finiteApproximation : Test → ℝ
  error : Test → ℝ
  error_nonneg : ∀ f, 0 ≤ error f
  bounded : ∀ f, |finiteApproximation f - original f| ≤ error f

theorem SignedSourceApproximation.lower {Test : Type v}
    (A : SignedSourceApproximation Test) (f : Test) :
    A.finiteApproximation f - A.error f ≤ A.original f := by
  have h := (abs_le.mp (A.bounded f)).2
  linarith

theorem SignedSourceApproximation.upper {Test : Type v}
    (A : SignedSourceApproximation Test) (f : Test) :
    A.original f ≤ A.finiteApproximation f + A.error f := by
  have h := (abs_le.mp (A.bounded f)).1
  linarith

/-- A strictly positive finite margin suffices for the source sign. -/
theorem SignedSourceApproximation.positive_of_margin {Test : Type v}
    (A : SignedSourceApproximation Test) (f : Test)
    (h : A.error f < A.finiteApproximation f) :
    0 < A.original f := by
  have hl := A.lower f
  linarith

/-- Negative signed witnesses are retained instead of discarded. -/
theorem SignedSourceApproximation.negative_of_margin {Test : Type v}
    (A : SignedSourceApproximation Test) (f : Test)
    (h : A.finiteApproximation f < -A.error f) :
    A.original f < 0 := by
  have hu := A.upper f
  linarith

/-- Zero error provides an EXACT source-return equality on a test. -/
theorem SignedSourceApproximation.exact_of_zero_error {Test : Type v}
    (A : SignedSourceApproximation Test) (f : Test)
    (h : A.error f = 0) :
    A.finiteApproximation f = A.original f := by
  have hl := A.lower f
  have hu := A.upper f
  linarith

end GRWTSK.AlgebraicTopology.MirroredPrimeHeatAndSignedReturn
