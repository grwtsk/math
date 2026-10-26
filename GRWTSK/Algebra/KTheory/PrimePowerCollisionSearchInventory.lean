/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.KTheory.FinitePrimePowerCollisionClasses
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Provenance-bearing prime-power collision search inventory

This module packages a finite class-indexed family of prime powers and
instantiates an actual `SourceSearchInventory` for the four states

`2, 2^2, 3, 3^2`.

The certified relation is equality of arithmetic-radical class.  Every ordered
pair remains a source-grounded candidate and admissible edge in the declared
finite vocabulary, but cross-class candidates are recorded as unresolved rather
than promoted to mathematical consequences.

The module also proves that arbitrary finite positive paths in the class-local
Markov kernel preserve collision class.  Positive kernel paths transport to
certified graph paths because this inventory explicitly certifies every positive
same-class transition.  A single certified search seed reaches exactly one
radical class; the union of one representative search from each class covers the
whole four-state inventory.

This is a finite source-bound model.  It does not prove an asymptotic theorem
for arbitrary prime-power families, a Kim--Vu probabilistic coupling, a Chowla
cancellation estimate, analytic K-theory, or a cross-class arithmetic bridge.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

universe u v

namespace GRWTSK.Algebra.KTheory.PrimePowerCollisionSearchInventory

open scoped BigOperators
open GRWTSK.Algebra.KTheory.RadicalCollisionBoundary
open GRWTSK.Algebra.KTheory.FinitePrimePowerCollisionClasses
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
open GRWTSK.GraphSandwichDiffusion

/-- A finite class-indexed prime-power family.  The exact radical/class
correspondence is retained as data rather than inferred from names or shared
imports. -/
structure FinitePrimePowerFamily (State Class : Type*) where
  base : Class → ℕ
  exponent : State → ℕ
  classOf : State → Class
  value : State → ℕ
  base_prime : ∀ class, Nat.Prime (base class)
  exponent_ne_zero : ∀ state, exponent state ≠ 0
  value_eq_pow :
    ∀ state, value state = base (classOf state) ^ exponent state
  radical_eq_iff_class_eq :
    ∀ source target,
      Nat.radical (value source) = Nat.radical (value target) ↔
        classOf source = classOf target

namespace FinitePrimePowerFamily

/-- Equal declared classes collide under every radical-factored universal
Grothendieck-group observation.  No analytic or geometric K-theory
interpretation is inferred. -/
theorem kZero_eq_of_class_eq
    {State Class M : Type*} [CommMonoid M]
    (family : FinitePrimePowerFamily State Class)
    (lift : ℕ →* M) {source target : State}
    (sameClass : family.classOf source = family.classOf target) :
    kZeroRadical lift (family.value source) =
      kZeroRadical lift (family.value target) :=
  kZeroRadical_eq_of_radical_eq lift
    ((family.radical_eq_iff_class_eq source target).2 sameClass)

end FinitePrimePowerFamily

/-- Prime base attached to each coarse class in the four-state fixture. -/
def fourStateBase (class : RadicalClass) : ℕ :=
  if class = 0 then 2 else 3

/-- Positive exponent attached to each fine state. -/
def fourStateExponent (state : PrimePowerState) : ℕ :=
  if state = 0 then 1
  else if state = 1 then 2
  else if state = 2 then 1
  else 2

/-- The existing four-state arithmetic fixture as an explicit finite
prime-power family. -/
def fourStateFamily :
    FinitePrimePowerFamily PrimePowerState RadicalClass where
  base := fourStateBase
  exponent := fourStateExponent
  classOf := collisionClass
  value := arithmeticValue
  base_prime := by
    intro class
    fin_cases class <;> norm_num [fourStateBase]
  exponent_ne_zero := by
    intro state
    fin_cases state <;> norm_num [fourStateExponent]
  value_eq_pow := by
    intro state
    fin_cases state <;>
      norm_num [arithmeticValue, collisionClass,
        fourStateBase, fourStateExponent]
  radical_eq_iff_class_eq :=
    GRWTSK.Algebra.KTheory.FinitePrimePowerCollisionClasses.radical_eq_iff_class_eq

/-! ## Arbitrary-length positive paths preserve collision class -/

/-- Generic path invariant for a finite Markov kernel: if every positive
in-scope transition preserves a supplied class label, then every exact finite
positive path preserves that label. -/
theorem positivePath_preserves_class
    {State : Type u} {Class : Type v} [DecidableEq State]
    (kernel : FiniteSieveMarkovKernel State)
    (classOf : State → Class)
    (transition_preserves :
      ∀ source ∈ kernel.scope, ∀ target ∈ kernel.scope,
        0 < kernel.transition source target →
          classOf source = classOf target) :
    ∀ {depth : ℕ} {source target : State},
      target ∈ kernel.scope →
      kernel.positivePath depth source target →
      classOf source = classOf target := by
  intro depth
  induction depth with
  | zero =>
      intro source target _ path
      change source = target at path
      subst target
      rfl
  | succ depth inductionHypothesis =>
      intro source target target_mem path
      change ∃ middle ∈ kernel.scope,
        kernel.positivePath depth source middle ∧
          0 < kernel.transition middle target at path
      rcases path with ⟨middle, middle_mem, prefix, positive⟩
      exact (inductionHypothesis (target := middle) middle_mem prefix).trans
        (transition_preserves middle middle_mem target target_mem positive)

/-- Every positive path in the concrete collision kernel stays inside one
arithmetic-radical class. -/
theorem searchKernel_positivePath_preserves_class
    {depth : ℕ} {source target : PrimePowerState}
    (path : searchKernel.positivePath depth source target) :
    collisionClass source = collisionClass target := by
  apply positivePath_preserves_class searchKernel collisionClass
    (fun x _ y _ positive =>
      (searchKernel_transition_pos_iff x y).1 positive)
  · simp [searchKernel]
  · exact path

/-- Positive self-loop paths exist at every exact finite length. -/
theorem searchKernel_positivePath_refl
    (depth : ℕ) (source : PrimePowerState) :
    searchKernel.positivePath depth source source := by
  induction depth with
  | zero =>
      rfl
  | succ depth inductionHypothesis =>
      change ∃ middle ∈ searchKernel.scope,
        searchKernel.positivePath depth source middle ∧
          0 < searchKernel.transition middle source
      exact ⟨source, by simp [searchKernel], inductionHypothesis,
        (searchKernel_transition_pos_iff source source).2 rfl⟩

/-- For every positive exact length, a positive collision-kernel path exists
exactly between states in the same radical class. -/
theorem searchKernel_positivePath_succ_iff_class_eq
    (depth : ℕ) (source target : PrimePowerState) :
    searchKernel.positivePath (depth + 1) source target ↔
      collisionClass source = collisionClass target := by
  constructor
  · exact searchKernel_positivePath_preserves_class
  · intro sameClass
    change ∃ middle ∈ searchKernel.scope,
      searchKernel.positivePath depth source middle ∧
        0 < searchKernel.transition middle target
    exact ⟨source, by simp [searchKernel],
      searchKernel_positivePath_refl depth source,
      (searchKernel_transition_pos_iff source target).2 sameClass⟩

/-! ## Source-bound relationship records -/

/-- Immutable source identity for the exact finite collision decomposition and
kernel adapter consumed by this inventory. -/
def finitePrimePowerSource : SourceIdentity where
  kind := .leanDeclaration
  identifier :=
    "GRWTSK.Algebra.KTheory.FinitePrimePowerCollisionClasses"
  locator :=
    "radical_eq_iff_class_eq; collisionSieve_normalized_transition; searchKernel_transition_pos_iff"
  repository := some "grwtsk/math"
  commit := some "46ed4dfb7df203a8275807a7949c3b2020f57d40"
  path := some
    "GRWTSK/Algebra/KTheory/FinitePrimePowerCollisionClasses.lean"
  blob := some "f1125fa11b954d2e64f9f8240fe68e7d76d29782"

/-- Explicit unresolved provenance for a cross-radical candidate edge. -/
def unresolvedCrossClassSource : SourceIdentity where
  kind := .unresolved
  identifier := "cross-radical prime-power bridge"
  locator :=
    "No certified arithmetic relation supplied between distinct radical classes"
  repository := some "grwtsk/math"
  commit := none
  path := none
  blob := none

/-- Source-only verification status.  Compilation, fresh-kernel acceptance and
transitive axiom auditing remain independently pending. -/
def sourceOnlyStatus (supplierComplete : Bool) : VerificationStatus where
  sourceInspected := true
  compiled := false
  kernelAccepted := false
  axiomAudited := false
  supplierComplete := supplierComplete

/-- Provenance record for every ordered pair in the declared finite vocabulary.
Same-class pairs are certified finite implications; cross-class pairs remain
unresolved candidates. -/
def primePowerRelationshipRecord
    (source target : PrimePowerState) :
    RelationshipRecord source target :=
  if collisionClass source = collisionClass target then
    {
      relationship := .verifiedImplication
      mathematicalMeaning :=
        "Equal collision class implies equal arithmetic radical; the finite kernel transition is positive and class-preserving."
      provenance := [finitePrimePowerSource]
      assumptions := [
        "State carrier is the declared four-state family 2, 2^2, 3, 3^2.",
        "The edge is interpreted inside the exact same-radical block kernel."
      ]
      obligations := [
        "Compile the source module at the pinned Lean and Mathlib revisions.",
        "Run fresh kernel checking and a transitive axiom audit."
      ]
      verification := sourceOnlyStatus true
    }
  else
    {
      relationship := .unresolvedSupplier
      mathematicalMeaning :=
        "Cross-radical ordered pair retained by finite search vocabulary without a certified mathematical consequence."
      provenance := [finitePrimePowerSource, unresolvedCrossClassSource]
      assumptions := [
        "Candidate and admissible coverage are finite-inventory notions only."
      ]
      obligations := [
        "Supply a source-grounded cross-class mathematical relation before certification.",
        "Do not infer a restart, teleportation edge, arithmetic implication, or spectral comparison from scope alone."
      ]
      verification := sourceOnlyStatus false
    }

/-! ## Concrete graph sandwich inventory -/

/-- Every ordered pair is admissible and represented as a candidate, while only
same-radical pairs are certified.  The semantic relation is exact equality of
arithmetic radicals. -/
def primePowerInventory : SourceSearchInventory PrimePowerState where
  vertices := Finset.univ
  certified := fun source target =>
    collisionClass source = collisionClass target
  candidate := fun _ _ => True
  admissible := fun _ _ => True
  semantic := fun source target =>
    Nat.radical (arithmeticValue source) =
      Nat.radical (arithmeticValue target)
  certified_le_candidate := by
    intro source target _
    trivial
  candidate_le_admissible := by
    intro source target _
    trivial
  admissible_scoped := by
    intro source target _
    simp
  certified_sound := by
    intro source target sameClass
    exact (radical_eq_iff_class_eq source target).2 sameClass
  candidateRecord := by
    intro source target _
    exact primePowerRelationshipRecord source target
  admissibleRecord := by
    intro source target _
    exact primePowerRelationshipRecord source target

@[simp]
theorem primePowerInventory_certified_iff
    (source target : PrimePowerState) :
    primePowerInventory.certified source target ↔
      collisionClass source = collisionClass target :=
  Iff.rfl

@[simp]
theorem primePowerInventory_candidate
    (source target : PrimePowerState) :
    primePowerInventory.candidate source target := by
  trivial

@[simp]
theorem primePowerInventory_admissible
    (source target : PrimePowerState) :
    primePowerInventory.admissible source target := by
  trivial

/-- Candidate completion covers every admissible ordered pair, but does not
turn cross-class candidates into certified edges. -/
theorem no_missing_candidate_edge
    (source target : PrimePowerState) :
    ¬ MissingCandidateEdge primePowerInventory source target := by
  simp [MissingCandidateEdge]

/-- A concrete cross-class pair is candidate and admissible but not certified. -/
theorem crossClass_candidate_not_certified :
    primePowerInventory.candidate 0 2 ∧
      primePowerInventory.admissible 0 2 ∧
        ¬ primePowerInventory.certified 0 2 := by
  norm_num [primePowerInventory, collisionClass]

@[simp]
theorem sameClass_record_is_verified :
    (primePowerRelationshipRecord 0 1).relationship =
      RelationshipClass.verifiedImplication := by
  simp [primePowerRelationshipRecord, collisionClass]

@[simp]
theorem crossClass_record_is_unresolved :
    (primePowerRelationshipRecord 0 2).relationship =
      RelationshipClass.unresolvedSupplier := by
  simp [primePowerRelationshipRecord, collisionClass]

/-- The concrete support-certification premise is now discharged by the
inventory definition, so every positive kernel path transports to a certified
path of the same exact length. -/
theorem positivePath_to_inventory_certifiedPath
    {depth : ℕ} {source target : PrimePowerState}
    (path : searchKernel.positivePath depth source target) :
    BoundedPath primePowerInventory.certified depth source target := by
  apply searchKernel.positivePath_to_certifiedPath primePowerInventory
    (fun x _ y _ positive => by
      change collisionClass x = collisionClass y
      exact (searchKernel_transition_pos_iff x y).1 positive)
    depth source target
  · simp [searchKernel]
  · exact path

/-- Every certified path preserves the semantic arithmetic radical. -/
theorem certifiedPath_preserves_radical
    {depth : ℕ} {source target : PrimePowerState}
    (path :
      BoundedPath primePowerInventory.certified depth source target) :
    Nat.radical (arithmeticValue source) =
      Nat.radical (arithmeticValue target) := by
  exact BoundedPath.semantic
    primePowerInventory.certified_sound
    (fun _ => rfl)
    (fun first second => first.trans second)
    path

/-- One-step certified search from a state returns exactly its radical class. -/
@[simp]
theorem mem_certifiedSearch_one_iff
    (source target : PrimePowerState) :
    target ∈ primePowerInventory.certifiedSearch source 1 ↔
      collisionClass source = collisionClass target := by
  constructor
  · intro member
    have semantic :=
      primePowerInventory.certifiedSearch_sound
        (fun _ => rfl)
        (fun first second => first.trans second)
        source target 1 member
    exact (radical_eq_iff_class_eq source target).1 semantic
  · intro sameClass
    change target ∈ reachableWithin
      primePowerInventory.vertices
      primePowerInventory.certified source 1
    apply (mem_reachableWithin_succ
      primePowerInventory.vertices
      primePowerInventory.certified source target 0).2
    right
    refine ⟨by simp [primePowerInventory], source, ?_, ?_⟩
    · exact (mem_reachableWithin_zero
        primePowerInventory.vertices
        primePowerInventory.certified source source).2
        ⟨by simp [primePowerInventory], rfl⟩
    · exact sameClass

/-- One representative search from each radical class covers the entire declared
four-state inventory.  This is a multi-seed finite coverage statement, not
cross-class mixing from one seed. -/
theorem representative_search_union :
    primePowerInventory.certifiedSearch 0 1 ∪
        primePowerInventory.certifiedSearch 2 1 =
      (Finset.univ : Finset PrimePowerState) := by
  ext target
  simp only [Finset.mem_union, Finset.mem_univ, iff_true]
  rw [mem_certifiedSearch_one_iff, mem_certifiedSearch_one_iff]
  fin_cases target <;> simp [collisionClass]

/-- A single seed cannot certify the other radical class in one step. -/
theorem zero_seed_does_not_reach_three_class :
    (2 : PrimePowerState) ∉
      primePowerInventory.certifiedSearch 0 1 := by
  simp [collisionClass]

/-- Final finite boundary: diffusion covers every fine state, every positive
kernel path is certified by the concrete inventory, yet a single certified
search seed remains confined to one radical class and the coarse radical/K₀
feature does not decode fine exponent state. -/
theorem complete_diffusion_with_certified_class_local_search
    {M : Type*} [CommMonoid M] (lift : ℕ →* M) :
    (∀ time : ℕ,
      TypeCompleteAt (fun state : PrimePowerState => state)
        (collisionSieve.normalizedKernel.evolve initialHeat (time + 1))) ∧
    (∀ {depth : ℕ} {source target : PrimePowerState},
      searchKernel.positivePath depth source target →
        BoundedPath primePowerInventory.certified depth source target) ∧
    (¬ ∃ decode : GrothendieckKZero M × ℕ → PrimePowerState,
      ∀ state : PrimePowerState,
        decode
          (kZeroRadical lift (arithmeticValue state),
            Nat.radical (arithmeticValue state)) = state) := by
  exact ⟨fineTypeComplete_after_one,
    fun {_} {_} {_} path => positivePath_to_inventory_certifiedPath path,
    no_exact_feature_decoder lift⟩

end GRWTSK.Algebra.KTheory.PrimePowerCollisionSearchInventory
