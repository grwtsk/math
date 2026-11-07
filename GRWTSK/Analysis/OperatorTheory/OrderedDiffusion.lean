/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import Mathlib

/-!
# Ordered and noncommutative finite diffusion

A scalar-time semigroup hides ordering because its generator is fixed.  This
module makes the order of heterogeneous diffusion steps part of the carrier.
An `OrderedDiffuser I X` is only a family `I -> X -> X`; no commutativity,
linearity, positivity, stochasticity or invertibility is built into the type.
A word `[i₁, ..., iₙ]` acts chronologically from left to right, so concatenation
satisfies

  evolve (u ++ v) = evolve v ∘ evolve u.

This is the correct algebraic law before any commutativity assumption.  Pairwise
commutativity is an optional proposition and yields the expected adjacent-swap
identity.  A concrete successor/doubling example proves the general interface is
genuinely noncommutative.

`Hom` is the source-return interface: a map between state carriers must commute
with every indexed step.  The theorem `Hom.evolve_map` then returns the entire
ordered evolution, not merely one step.  This is the consumer used by the
holonomy adapters in `OrderedHolonomyDiffusion`.

For a group `G`, `rightTransport` acts on functions by

  T_u f(y) = f(y * u⁻¹).

The ordered word acts by the ordered group product.  No commutativity of `G` is
used.  This is the algebraic mechanism already latent in the repository's
edge-indexed stochastic holonomy lift.  Reversing two labels changes the product
from `u*v` to `v*u`; equality requires an additional commutation or readout
invariance hypothesis.

Finally, `bimoduleDiffuser` exposes the analogous phenomenon on a noncommutative
monoid-valued state: successive steps multiply left coefficients in reverse
operator order and right coefficients in chronological order.  This is an
algebraic generalization only; complete positivity, trace preservation and a
Lindblad generator are separate stronger structures and are not asserted here.

Primary argument: induction on words and associativity.  Hostile boundary: the
Nat successor/doubling family fails the two-step swap at zero.  Thus the ordered
word cannot in general be replaced by a multiset or accumulated scalar time.

Standard algebraic construction; novelty not assessed.\n\nCurrent source base: grwtsk/math `6ca46642074b551f160985d128ec7a5bacccad86`.  No mathematical claim
about language-model generation is made.
-/

set_option autoImplicit false

namespace GRWTSK.Analysis.OperatorTheory.OrderedDiffusion

universe u v w

/-- A family of state transformations indexed by explicit step labels.
No commutativity, positivity or semigroup law is assumed. -/
structure OrderedDiffuser (Index : Type u) (State : Type v) where
  step : Index → State → State

namespace OrderedDiffuser

variable {Index : Type u} {State : Type v}

/-- Chronological word evolution.  The head step acts first. -/
def evolve (D : OrderedDiffuser Index State) : List Index → State → State
  | [], x => x
  | i :: word, x => evolve D word (D.step i x)

@[simp] theorem evolve_nil (D : OrderedDiffuser Index State) (x : State) :
    D.evolve [] x = x := rfl

@[simp] theorem evolve_cons (D : OrderedDiffuser Index State)
    (i : Index) (word : List Index) (x : State) :
    D.evolve (i :: word) x = D.evolve word (D.step i x) := rfl

/-- Concatenating chronological words composes their evolutions in the same
chronological order.  No commutativity is used. -/
theorem evolve_append (D : OrderedDiffuser Index State)
    (left right : List Index) (x : State) :
    D.evolve (left ++ right) x = D.evolve right (D.evolve left x) := by
  induction left generalizing x with
  | nil => rfl
  | cons i left ih =>
      simp only [List.cons_append, evolve_cons]
      exact ih (D.step i x)

/-- Two labels commute exactly when their two chronological orders agree on
all states. -/
def CommuteAt (D : OrderedDiffuser Index State) (i j : Index) : Prop :=
  ∀ x, D.step j (D.step i x) = D.step i (D.step j x)

/-- A concrete state witnesses failure of commutation. -/
def NoncommutingAt (D : OrderedDiffuser Index State) (i j : Index) : Prop :=
  ∃ x, D.step j (D.step i x) ≠ D.step i (D.step j x)

/-- Global pairwise commutativity is optional data, not part of the diffuser. -/
def PairwiseCommuting (D : OrderedDiffuser Index State) : Prop :=
  ∀ i j, D.CommuteAt i j

/-- Under an explicit commutation hypothesis an adjacent pair may be swapped. -/
theorem evolve_pair_swap_of_commute (D : OrderedDiffuser Index State)
    {i j : Index} (h : D.CommuteAt i j) (x : State) :
    D.evolve [i, j] x = D.evolve [j, i] x :=
  h x

/-- A source-return map between ordered diffusers.  It must intertwine every
individual labeled step. -/
structure Hom {Target : Type w}
    (D : OrderedDiffuser Index State)
    (E : OrderedDiffuser Index Target) where
  map : State → Target
  step_map : ∀ i x, map (D.step i x) = E.step i (map x)

namespace Hom

variable {Target : Type w}
  {D : OrderedDiffuser Index State} {E : OrderedDiffuser Index Target}

/-- A one-step source return propagates through the entire ordered word. -/
theorem evolve_map (h : Hom D E) (word : List Index) (x : State) :
    h.map (D.evolve word x) = E.evolve word (h.map x) := by
  induction word generalizing x with
  | nil => rfl
  | cons i word ih =>
      rw [evolve_cons, evolve_cons]
      rw [ih, h.step_map]

end Hom

/-- A tiny hostile fixture: successor followed by doubling is different from
doubling followed by successor. -/
def natNoncommutative : OrderedDiffuser Bool ℕ where
  step
    | false => Nat.succ
    | true => fun n => 2 * n

/-- The generic ordered diffuser genuinely permits noncommuting steps. -/
theorem natNoncommutative_witness :
    natNoncommutative.NoncommutingAt false true := by
  refine ⟨0, ?_⟩
  norm_num [NoncommutingAt, natNoncommutative]

end OrderedDiffuser

namespace RightTransport

variable {G : Type u} [Group G] {A : Type v}

/-- Right-translation pullback on functions.  It is defined for arbitrary,
possibly nonabelian groups. -/
def diffuser : OrderedDiffuser G (G → A) where
  step u f := fun y => f (y * u⁻¹)

/-- Product of a chronological group word. -/
def orderedProduct : List G → G
  | [] => 1
  | u :: word => u * orderedProduct word

@[simp] theorem orderedProduct_nil : orderedProduct ([] : List G) = 1 := rfl

@[simp] theorem orderedProduct_cons (u : G) (word : List G) :
    orderedProduct (u :: word) = u * orderedProduct word := rfl

/-- The entire ordered diffuser word is exactly right transport by the ordered
noncommutative group product. -/
theorem evolve_apply (word : List G) (f : G → A) (y : G) :
    diffuser.evolve word f y = f (y * (orderedProduct word)⁻¹) := by
  induction word generalizing f y with
  | nil => simp [OrderedDiffuser.evolve, diffuser, orderedProduct]
  | cons u word ih =>
      calc
        diffuser.evolve (u :: word) f y =
            diffuser.evolve word (diffuser.step u f) y := rfl
        _ = diffuser.step u f (y * (orderedProduct word)⁻¹) :=
          ih (diffuser.step u f) y
        _ = f ((y * (orderedProduct word)⁻¹) * u⁻¹) := rfl
        _ = f (y * (u * orderedProduct word)⁻¹) := by
          apply congrArg f
          group
        _ = f (y * (orderedProduct (u :: word))⁻¹) := rfl

/-- For two labels the chronological order is the literal group product
`u * v`; no swap is performed. -/
theorem evolve_two_apply (u v : G) (f : G → A) (y : G) :
    diffuser.evolve [u, v] f y = f (y * (u * v)⁻¹) := by
  simpa using evolve_apply (G := G) (A := A) [u, v] f y

end RightTransport

namespace Bimodule

variable {I : Type u} {A : Type v} [Monoid A]

/-- A basic noncommutative-algebra diffuser: each label acts by a selected
left and right multiplier. -/
def diffuser (left right : I → A) : OrderedDiffuser I A where
  step i x := left i * x * right i

/-- Two chronological bimodule steps retain their multiplication order. -/
theorem evolve_two (left right : I → A) (i j : I) (x : A) :
    (diffuser left right).evolve [i, j] x =
      (left j * left i) * x * (right i * right j) := by
  simp [OrderedDiffuser.evolve, diffuser, mul_assoc]

end Bimodule

end GRWTSK.Analysis.OperatorTheory.OrderedDiffusion
