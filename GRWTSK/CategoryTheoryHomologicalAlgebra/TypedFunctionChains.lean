/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import Mathlib.Combinatorics.Quiver.Path

/-!
# Interpreting endpoint-indexed chains

Reuse Mathlib's `Quiver.Path`; do not introduce another path inductive. A vertex
indexes an actual carrier type, and an edge is interpreted at its exact source
and target. Forward evaluation and contravariant query transport have opposite
composition orders. They are related by the predicate-pullback theorem.

Primary argument: induction on the final edge of an existing quiver path.
Pointwise invariant preservation, relational simulation, commuting comparison
squares, injectivity, and reconstruction each propagate through the same path.
None is inferred from an edge name or from equality of displayed endpoints.

Consumers: evidence representations with backward obligation translation,
state-transition comparisons, and framed partial maps. The kernel of an
observation may identify endpoints that this type-indexed path does not identify.
Theorems concern finite mathematical composition, not scheduling or effects.
Upstream path API inspected at Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
AI-assisted formalization. Novelty and independent review: not assessed.
Compilation, fresh kernel checking, and transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.CategoryTheory.TypedChain

universe u v w x y

variable {V : Type u} [Quiver.{v} V]

/-- Interpret each edge covariantly at its exact carrier types. -/
def evaluate (C : V → Type w)
    (edge : {a b : V} → Quiver.Hom a b → C a → C b) :
    {a b : V} → Quiver.Path a b → C a → C b
  | _, _, .nil, value => value
  | _, _, .cons prefix last, value =>
      edge last (evaluate C edge prefix value)

/-- A query travels against the direction of the represented data. -/
def pull (C : V → Type w)
    (edge : {a b : V} → Quiver.Hom a b → C b → C a) :
    {a b : V} → Quiver.Path a b → C b → C a
  | _, _, .nil, value => value
  | _, _, .cons prefix last, value =>
      pull C edge prefix (edge last value)

@[simp] theorem evaluate_nil (C : V → Type w)
    (edge : {a b : V} → Quiver.Hom a b → C a → C b)
    {a : V} (value : C a) :
    evaluate C edge (Quiver.Path.nil : Quiver.Path a a) value = value := rfl

@[simp] theorem pull_nil (C : V → Type w)
    (edge : {a b : V} → Quiver.Hom a b → C b → C a)
    {a : V} (value : C a) :
    pull C edge (Quiver.Path.nil : Quiver.Path a a) value = value := rfl

/-- Appending paths evaluates the first path before the second. -/
theorem evaluate_comp (C : V → Type w)
    (edge : {a b : V} → Quiver.Hom a b → C a → C b)
    {a b c : V} (first : Quiver.Path a b) (second : Quiver.Path b c)
    (value : C a) :
    evaluate C edge (first.comp second) value =
      evaluate C edge second (evaluate C edge first value) := by
  induction second with
  | nil => rfl
  | cons prefix last ih => exact congrArg (edge last) ih

/-- Backward transport reverses composition without reversing the path itself. -/
theorem pull_comp (C : V → Type w)
    (edge : {a b : V} → Quiver.Hom a b → C b → C a)
    {a b c : V} (first : Quiver.Path a b) (second : Quiver.Path b c) :
    ∀ value : C c, pull C edge (first.comp second) value =
      pull C edge first (pull C edge second value) := by
  induction second with
  | nil => intro value; rfl
  | cons prefix last ih =>
      intro value
      exact ih (edge last value)

/-- Every edge must preserve the predicate belonging to its own carrier. -/
theorem evaluate_preserves (C : V → Type w)
    (edge : {a b : V} → Quiver.Hom a b → C a → C b)
    (invariant : (a : V) → C a → Prop)
    (preserves : ∀ {a b : V} (e : Quiver.Hom a b) (value : C a),
      invariant a value → invariant b (edge e value))
    {a b : V} (path : Quiver.Path a b) (value : C a)
    (initial : invariant a value) :
    invariant b (evaluate C edge path value) := by
  induction path with
  | nil => exact initial
  | cons prefix last ih => exact preserves last _ ih

/-- Heterogeneous relational simulations compose along the identical typed path. -/
theorem evaluate_relates (C : V → Type w) (D : V → Type x)
    (first : {a b : V} → Quiver.Hom a b → C a → C b)
    (second : {a b : V} → Quiver.Hom a b → D a → D b)
    (relation : (a : V) → C a → D a → Prop)
    (preserves : ∀ {a b : V} (e : Quiver.Hom a b) (c : C a) (d : D a),
      relation a c d → relation b (first e c) (second e d))
    {a b : V} (path : Quiver.Path a b) (c : C a) (d : D a)
    (initial : relation a c d) :
    relation b (evaluate C first path c) (evaluate D second path d) := by
  induction path with
  | nil => exact initial
  | cons prefix last ih => exact preserves last _ _ ih

/-- Edgewise commuting squares give an end-to-end commuting square. -/
theorem evaluate_natural (C : V → Type w) (D : V → Type x)
    (first : {a b : V} → Quiver.Hom a b → C a → C b)
    (second : {a b : V} → Quiver.Hom a b → D a → D b)
    (compare : (a : V) → C a → D a)
    (commutes : ∀ {a b : V} (e : Quiver.Hom a b) (value : C a),
      compare b (first e value) = second e (compare a value))
    {a b : V} (path : Quiver.Path a b) (value : C a) :
    compare b (evaluate C first path value) =
      evaluate D second path (compare a value) := by
  induction path with
  | nil => rfl
  | cons prefix last ih =>
      exact (commutes last _).trans (congrArg (second last) ih)

/-- Losslessness needs a hypothesis on each edge, not just a common notation. -/
theorem evaluate_injective (C : V → Type w)
    (edge : {a b : V} → Quiver.Hom a b → C a → C b)
    (separates : ∀ {a b : V} (e : Quiver.Hom a b), Function.Injective (edge e))
    {a b : V} (path : Quiver.Path a b) :
    Function.Injective (evaluate C edge path) := by
  induction path with
  | nil => intro x y h; exact h
  | cons prefix last ih =>
      intro x y h
      exact ih (separates last h)

/-- Surjectivity follows by constructing preimages in reverse edge order. -/
theorem evaluate_surjective (C : V → Type w)
    (edge : {a b : V} → Quiver.Hom a b → C a → C b)
    (covers : ∀ {a b : V} (e : Quiver.Hom a b), Function.Surjective (edge e))
    {a b : V} (path : Quiver.Path a b) :
    Function.Surjective (evaluate C edge path) := by
  induction path with
  | nil => intro value; exact ⟨value, rfl⟩
  | cons prefix last ih =>
      intro value
      obtain ⟨middle, hm⟩ := covers last value
      obtain ⟨source, hs⟩ := ih middle
      exact ⟨source, (congrArg (edge last) hs).trans hm⟩

/-- A left inverse at every edge reconstructs the original source value. -/
theorem pull_evaluate (C : V → Type w)
    (forward : {a b : V} → Quiver.Hom a b → C a → C b)
    (backward : {a b : V} → Quiver.Hom a b → C b → C a)
    (roundtrip : ∀ {a b : V} (e : Quiver.Hom a b) (value : C a),
      backward e (forward e value) = value)
    {a b : V} (path : Quiver.Path a b) (value : C a) :
    pull C backward path (evaluate C forward path value) = value := by
  induction path with
  | nil => rfl
  | cons prefix last ih =>
      change pull C backward prefix
        (backward last (forward last (evaluate C forward prefix value))) = value
      rw [roundtrip last, ih]

/-- A right inverse is a separate premise; it reconstructs target values. -/
theorem evaluate_pull (C : V → Type w)
    (forward : {a b : V} → Quiver.Hom a b → C a → C b)
    (backward : {a b : V} → Quiver.Hom a b → C b → C a)
    (roundtrip : ∀ {a b : V} (e : Quiver.Hom a b) (value : C b),
      forward e (backward e value) = value)
    {a b : V} (path : Quiver.Path a b) :
    ∀ value : C b, evaluate C forward path (pull C backward path value) = value := by
  induction path with
  | nil => intro value; rfl
  | cons prefix last ih =>
      intro value
      change forward last
        (evaluate C forward prefix (pull C backward prefix (backward last value))) = value
      rw [ih, roundtrip last]

/-- Predicate transport is exactly precomposition with the evaluated data map. -/
theorem pullback_apply (C : V → Type w)
    (edge : {a b : V} → Quiver.Hom a b → C a → C b)
    {a b : V} (path : Quiver.Path a b) (post : C b → Prop) (value : C a) :
    pull (fun a => C a → Prop)
        (fun e predicate source => predicate (edge e source)) path post value ↔
      post (evaluate C edge path value) := by
  induction path generalizing post with
  | nil => exact Iff.rfl
  | cons prefix last ih =>
      exact ih (fun middle => post (edge last middle))

end GRWTSK.CategoryTheory.TypedChain
