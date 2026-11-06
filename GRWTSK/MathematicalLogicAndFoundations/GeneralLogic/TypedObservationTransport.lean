/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.CategoryTheoryHomologicalAlgebra.TypedFunctionChains
import GRWTSK.ComputerScience.TheoryOfData.DataStructures.CacheFactorization
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ObservationRefinement

/-!
# Observation and cache consumers of typed chains

A concrete interpretation and a displayed interpretation of the same typed path
are compared by edgewise commuting squares. The common chain theorem proves the
end-to-end square. Existing observation determination and cache sufficiency then
apply to the actual composite map, not to a similarity between labels.

Primary argument: transport equality of initial observations through the visible
chain, then use the terminal predicate's fiber invariance. A separate edgewise
predicate equivalence licenses returning a terminal conclusion to the source.
The cache factorization is on realized initial observations, avoiding arbitrary
values at impossible keys. No global injectivity is assumed.

Consumers: comparing provider representations, proof interfaces, and cached
semantic results through changing carrier types. A commuting square alone does
not preserve a state predicate; a constant observation gives a hostile example.
Nor does observational agreement permit swapping two routes unless the consumed
predicate is determined by that observation. No operational or empirical claim
is inferred. Dependencies inspected at 7d33cee521e3 and ea33ef20e873.
AI-assisted formalization. Novelty and independent review: not assessed.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Logic.Observation.Typed

universe u v w x y

open GRWTSK.CategoryTheory.TypedChain

variable {V : Type u} [Quiver.{v} V]
variable (C : V → Type w) (D : V → Type x)
variable (concrete : {a b : V} → Quiver.Hom a b → C a → C b)
variable (displayed : {a b : V} → Quiver.Hom a b → D a → D b)
variable (observe : (a : V) → C a → D a)
variable (square : ∀ {a b : V} (e : Quiver.Hom a b) (value : C a),
  observe b (concrete e value) = displayed e (observe a value))

/-- The endpoint observers compare the evaluated maps, not merely their codomains. -/
theorem chain_square {a b : V} (path : Quiver.Path a b) (value : C a) :
    observe b (evaluate C concrete path value) =
      evaluate D displayed path (observe a value) :=
  evaluate_natural C D concrete displayed observe square path value

/-- Initial observational equality survives each justified comparison square. -/
theorem same_after_chain {a b : V} (path : Quiver.Path a b)
    {first second : C a} (same : Same (observe a) first second) :
    Same (observe b) (evaluate C concrete path first)
      (evaluate C concrete path second) := by
  change observe b (evaluate C concrete path first) =
    observe b (evaluate C concrete path second)
  rw [chain_square C D concrete displayed observe square path first,
    chain_square C D concrete displayed observe square path second]
  exact congrArg (evaluate D displayed path) same

/-- Pull back a terminal observable predicate through the concrete chain. -/
theorem determined_pullback {a b : V} (path : Quiver.Path a b)
    (post : C b → Prop) (known : Determined (observe b) post) :
    Determined (observe a) (fun value => post (evaluate C concrete path value)) := by
  intro first second same
  exact known _ _ (same_after_chain C D concrete displayed observe square path same)

/-- Value sufficiency is stronger than predicate-specific sufficiency when needed. -/
theorem sufficient_consumer {Z : Type y} {a b : V} (path : Quiver.Path a b)
    (consumer : C b → Z) (known : GRWTSK.Cache.FiberConstant (observe b) consumer) :
    GRWTSK.Cache.FiberConstant (observe a)
      (fun value => consumer (evaluate C concrete path value)) := by
  intro first second same
  exact known _ _ (same_after_chain C D concrete displayed observe square path same)

/-- Existing cache factorization gives the exact return on realized initial keys. -/
theorem consumer_factors_on_image {Z : Type y} {a b : V}
    (path : Quiver.Path a b) (consumer : C b → Z)
    (known : GRWTSK.Cache.FiberConstant (observe b) consumer) :
    ∃ result : GRWTSK.Cache.KeyImage (observe a) → Z,
      ∀ value, result (GRWTSK.Cache.toImage (observe a) value) =
        consumer (evaluate C concrete path value) :=
  (GRWTSK.Cache.fiberConstant_iff_factorization (observe a)
    (fun value => consumer (evaluate C concrete path value))).mp
      (sufficient_consumer C D concrete displayed observe square path consumer known)

/-- Equal realizable keys determine a unique downstream result, not fresh authority. -/
theorem consumer_key_unique {Z : Type y} {a b : V}
    (path : Quiver.Path a b) (consumer : C b → Z)
    (first second : GRWTSK.Cache.KeyImage (observe a) → Z)
    (hfirst : ∀ value, first (GRWTSK.Cache.toImage (observe a) value) =
      consumer (evaluate C concrete path value))
    (hsecond : ∀ value, second (GRWTSK.Cache.toImage (observe a) value) =
      consumer (evaluate C concrete path value)) : first = second :=
  GRWTSK.Cache.factorization_unique (observe a)
    (fun value => consumer (evaluate C concrete path value)) first second hfirst hsecond

/-- Predicate comparison is an additional premise, independent of observation transport. -/
theorem predicate_iff (predicate : (a : V) → C a → Prop)
    (edge_iff : ∀ {a b : V} (e : Quiver.Hom a b) (value : C a),
      predicate a value ↔ predicate b (concrete e value))
    {a b : V} (path : Quiver.Path a b) (value : C a) :
    predicate a value ↔ predicate b (evaluate C concrete path value) := by
  induction path with
  | nil => exact Iff.rfl
  | cons prefix last ih => exact ih.trans (edge_iff last _)

/-- A consumer's conclusion returns to the source only through all predicate comparisons. -/
theorem source_predicate_determined (predicate : (a : V) → C a → Prop)
    (edge_iff : ∀ {a b : V} (e : Quiver.Hom a b) (value : C a),
      predicate a value ↔ predicate b (concrete e value))
    {a b : V} (path : Quiver.Path a b)
    (known : Determined (observe b) (predicate b)) :
    Determined (observe a) (predicate a) := by
  intro first second same
  exact (predicate_iff C concrete predicate edge_iff path first).trans
    ((known _ _ (same_after_chain C D concrete displayed observe square path same)).trans
      (predicate_iff C concrete predicate edge_iff path second).symm)

/-- Different routes can agree on a determined consumer without agreeing on hidden state. -/
theorem routes_agree_on_predicate {a b : V} (first second : Quiver.Path a b)
    (same : ∀ value, observe b (evaluate C concrete first value) =
      observe b (evaluate C concrete second value))
    (post : C b → Prop) (known : Determined (observe b) post) (value : C a) :
    post (evaluate C concrete first value) ↔ post (evaluate C concrete second value) :=
  known _ _ (same value)

/-- Exact state equality from route agreement requires a separating final observation. -/
theorem routes_equal_of_separating {a b : V} (first second : Quiver.Path a b)
    (same : ∀ value, observe b (evaluate C concrete first value) =
      observe b (evaluate C concrete second value))
    (separates : Function.Injective (observe b)) :
    evaluate C concrete first = evaluate C concrete second := by
  funext value
  exact separates (same value)

/-- A commuting observation square may hide an actual predicate reversal. -/
theorem observation_square_does_not_preserve_truth :
    ∃ (change : Bool → Bool) (view : Bool → Unit) (shown : Unit → Unit),
      (∀ b, view (change b) = shown (view b)) ∧
      ¬ (∀ b, b = true → change b = true) := by
  refine ⟨fun _ => false, fun _ => (), id, ?_, ?_⟩
  · intro b
    rfl
  · intro h
    have impossible : (false : Bool) = true := h true rfl
    cases impossible

/-- Constant observations do not establish route interchangeability for hidden predicates. -/
theorem observational_route_agreement_can_hide_disagreement :
    let first : Unit → Bool := fun _ => true
    let second : Unit → Bool := fun _ => false
    let view : Bool → Unit := fun _ => ()
    (∀ x, view (first x) = view (second x)) ∧ first () ≠ second () := by
  constructor
  · intro x
    rfl
  · intro impossible
    cases impossible

end GRWTSK.Logic.Observation.Typed
