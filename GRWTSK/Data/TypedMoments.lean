/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Nat.Basic

set_option autoImplicit false

/-!
# Dependently typed moment families

A moment order is part of the type. Different orders may therefore have different
codomains, scales, or certificate objects. This prevents an implementation from silently
coercing every moment into one scalar accumulator.

The definitions are purely structural. They do not assert existence, convergence,
positivity, or a relation between moments of different orders.
-/

namespace GRWTSK.Data.TypedMoments

/-- A family assigning a possibly different carrier to every natural moment order. -/
structure Family (P : Type*) where
  carrier : ℕ → Type*
  moment : (order : ℕ) → P → carrier order

/-- Two payloads agree at every typed moment order. -/
def Family.Agree {P : Type*} (moments : Family P) (left right : P) : Prop :=
  ∀ order, moments.moment order left = moments.moment order right

theorem Family.agree_refl {P : Type*} (moments : Family P) (value : P) :
    moments.Agree value value := by
  intro order
  rfl

theorem Family.agree_symm {P : Type*} (moments : Family P) {left right : P}
    (agreement : moments.Agree left right) : moments.Agree right left := by
  intro order
  exact (agreement order).symm

theorem Family.agree_trans {P : Type*} (moments : Family P) {first second third : P}
    (first_second : moments.Agree first second)
    (second_third : moments.Agree second third) : moments.Agree first third := by
  intro order
  exact (first_second order).trans (second_third order)

end GRWTSK.Data.TypedMoments
