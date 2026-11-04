/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.CategoryTheoryHomologicalAlgebra.TypedFunctionChains
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.TypedObservationTransport
import GRWTSK.Combinatorics.FiniteConstraintCounting
import GRWTSK.Combinatorics.TwoPoolLatticeCounting

/-!
# Finite constraint counts through typed representation chains

Reuse the common typed interpreter, existing predicate transport, Mathlib
`Equiv`, and `ConstraintCounting.count_equiv`. A chain of genuine equivalences
has an explicit forward evaluator and reverse evaluator. Feasibility must be
compared at every edge before its count can be transported. Equality of counts
alone is not a semantic comparison, as the Boolean counterexample shows.

The concrete return connects the earlier two-pool allocation solution type,
its `Fin count` encoding, and the original nonnegative integer lattice region.
The already proved encode/decode maps become a standard equivalence. The integer
comparison retains both affine inequalities and nonnegativity; its inverse is
selected from the existing exact region theorem. Thus the formula counts actual
integer points, not descriptions or unproved relaxed solutions.

Primary arguments: edgewise round trips, predicate equivalence, and cardinality
invariance under equivalence. The integer inverse uses explicit classical choice;
no efficient general counting algorithm or fair schedule follows. All finite
universes, exclusivity reservations and feasibility conditions stay explicit.
Dependencies inspected at 7d33cee521e3 and ea33ef20e873.
AI-assisted formalization; novelty and independent review: not assessed.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.ConstraintCounting.Transport

universe u v w

open GRWTSK.CategoryTheory.TypedChain

variable {V : Type u} [Quiver.{v} V]

/-- Inverses are composed in reverse order; no representative defaults are needed. -/
def equivalence (C : V → Type w)
    (edge : {a b : V} → Quiver.Hom a b → (C a ≃ C b))
    {a b : V} (path : Quiver.Path a b) : C a ≃ C b where
  toFun := evaluate C (fun e => (edge e).toFun) path
  invFun := pull C (fun e => (edge e).invFun) path
  left_inv := pull_evaluate C (fun e => (edge e).toFun) (fun e => (edge e).invFun)
    (fun e x => (edge e).symm_apply_apply x) path
  right_inv := evaluate_pull C (fun e => (edge e).toFun) (fun e => (edge e).invFun)
    (fun e x => (edge e).apply_symm_apply x) path

/-- Reuse the typed predicate theorem before invoking cardinality invariance. -/
theorem count_transport (C : V → Type w) [∀ a : V, Fintype (C a)]
    (edge : {a b : V} → Quiver.Hom a b → (C a ≃ C b))
    (feasible : (a : V) → C a → Prop)
    (preserves : ∀ {a b : V} (e : Quiver.Hom a b) (x : C a),
      feasible a x ↔ feasible b (edge e x))
    {a b : V} (path : Quiver.Path a b) : count (feasible a) = count (feasible b) := by
  apply count_equiv (equivalence C edge path)
  intro x
  exact GRWTSK.Logic.Observation.Typed.predicate_iff C
    (fun e => (edge e).toFun) feasible preserves path x

/-- A new target-side constraint is transported back, not silently dropped. -/
theorem count_with_postconstraint (C : V → Type w) [∀ a : V, Fintype (C a)]
    (edge : {a b : V} → Quiver.Hom a b → (C a ≃ C b))
    (feasible : (a : V) → C a → Prop)
    (preserves : ∀ {a b : V} (e : Quiver.Hom a b) (x : C a),
      feasible a x ↔ feasible b (edge e x))
    {a b : V} (path : Quiver.Path a b) (extra : C b → Prop) :
    count (fun x => feasible a x ∧ extra (equivalence C edge path x)) =
      count (fun y => feasible b y ∧ extra y) := by
  apply count_equiv (equivalence C edge path)
  intro x
  exact and_congr
    (GRWTSK.Logic.Observation.Typed.predicate_iff C
      (fun e => (edge e).toFun) feasible preserves path x) Iff.rfl

/-- Distinct routes with valid comparison certificates agree on counts, not necessarily maps. -/
theorem route_count_independence (C : V → Type w) [∀ a : V, Fintype (C a)]
    (edge : {a b : V} → Quiver.Hom a b → (C a ≃ C b))
    (feasible : (a : V) → C a → Prop)
    (preserves : ∀ {a b : V} (e : Quiver.Hom a b) (x : C a),
      feasible a x ↔ feasible b (edge e x))
    {a b c : V} (first : Quiver.Path a b) (second : Quiver.Path a c) :
    count (feasible b) = count (feasible c) :=
  (count_transport C edge feasible preserves first).symm.trans
    (count_transport C edge feasible preserves second)

/-- Equal cardinalities cannot replace a predicate comparison on the same representation. -/
theorem equal_counts_do_not_identify_predicates :
    count (fun b : Bool => b = false) = count (fun b : Bool => b = true) ∧
      (fun b : Bool => b = false) ≠ (fun b : Bool => b = true) := by
  let exchange : Bool ≃ Bool := {
    toFun := Bool.not
    invFun := Bool.not
    left_inv := by intro b; cases b <;> rfl
    right_inv := by intro b; cases b <;> rfl
  }
  constructor
  · apply count_equiv exchange
    intro b
    cases b <;> simp [exchange]
  · intro same
    have predicates := congrFun same false
    have impossible : (false : Bool) = true := (Iff.of_eq predicates).mp rfl
    cases impossible

end GRWTSK.Combinatorics.ConstraintCounting.Transport

namespace GRWTSK.Combinatorics.Allocation.TwoPool

/-- Upgrade the existing two inverse functions to the standard typed equivalence. -/
def indexEquivalence (l r s L R : Nat) : Solution l r s L R ≃ Fin (count l r s L R) where
  toFun := encode
  invFun := decode
  left_inv := decode_encode
  right_inv := encode_decode

/-- A finite instance is constructed from the exact count certificate, not assumed. -/
def finiteSolutions (l r s L R : Nat) : Fintype (Solution l r s L R) :=
  Fintype.ofEquiv (Fin (count l r s L R)) (indexEquivalence l r s L R).symm

/-- This holds for every finite enumeration of the same solution type. -/
theorem cardinality_formula (l r s L R : Nat) [Fintype (Solution l r s L R)] :
    Fintype.card (Solution l r s L R) = count l r s L R := by
  simpa using Fintype.card_congr (indexEquivalence l r s L R)

abbrev LatticePoint (l r s L R : Nat) := {p : Int × Int // IntegerRegion l r s L R p}

variable {l r s L R : Nat}

/-- The full integer-region predicate is retained in the target subtype. -/
def integerEmbed (solution : Solution l r s L R) : LatticePoint l r s L R :=
  ⟨((solution.val.1 : Int), (solution.val.2 : Int)),
    (integer_region_iff l r s L R _).mpr ⟨solution, rfl, rfl⟩⟩

/-- The inverse is chosen only from the previously proved exact-region witness. -/
noncomputable def integerDecode (point : LatticePoint l r s L R) : Solution l r s L R :=
  Classical.choose ((integer_region_iff l r s L R point.val).mp point.property)

theorem integerDecode_spec (point : LatticePoint l r s L R) :
    ((integerDecode point).val.1 : Int) = point.val.1 ∧
      ((integerDecode point).val.2 : Int) = point.val.2 :=
  Classical.choose_spec ((integer_region_iff l r s L R point.val).mp point.property)

theorem integerDecode_integerEmbed (solution : Solution l r s L R) :
    integerDecode (integerEmbed solution) = solution := by
  have coordinates := integerDecode_spec (integerEmbed solution)
  apply Subtype.ext
  apply Prod.ext
  · have same := coordinates.1
    change ((integerDecode (integerEmbed solution)).val.1 : Int) =
      (solution.val.1 : Int) at same
    omega
  · have same := coordinates.2
    change ((integerDecode (integerEmbed solution)).val.2 : Int) =
      (solution.val.2 : Int) at same
    omega

theorem integerEmbed_integerDecode (point : LatticePoint l r s L R) :
    integerEmbed (integerDecode point) = point := by
  apply Subtype.ext
  exact Prod.ext (integerDecode_spec point).1 (integerDecode_spec point).2

/-- The actual lattice slice, not its convex relaxation, is equivalent to allocations. -/
noncomputable def integerEquivalence (l r s L R : Nat) :
    Solution l r s L R ≃ LatticePoint l r s L R where
  toFun := integerEmbed
  invFun := integerDecode
  left_inv := integerDecode_integerEmbed
  right_inv := integerEmbed_integerDecode

/-- A concrete type chain: finite index, allocation, nonnegative integer lattice point. -/
noncomputable def indexedLatticeEquivalence (l r s L R : Nat) :
    Fin (count l r s L R) ≃ LatticePoint l r s L R :=
  (indexEquivalence l r s L R).symm.trans (integerEquivalence l r s L R)

noncomputable def finiteLatticePoints (l r s L R : Nat) : Fintype (LatticePoint l r s L R) :=
  Fintype.ofEquiv (Fin (count l r s L R)) (indexedLatticeEquivalence l r s L R)

/-- The same formula counts the precise integer-region type under any enumeration. -/
theorem lattice_cardinality_formula (l r s L R : Nat) [Fintype (LatticePoint l r s L R)] :
    Fintype.card (LatticePoint l r s L R) = count l r s L R := by
  simpa using (Fintype.card_congr (indexedLatticeEquivalence l r s L R)).symm

end GRWTSK.Combinatorics.Allocation.TwoPool
