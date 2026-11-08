/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Source base: grwtsk/math@562d19601f702335d4400d15e44851dd5d228f0e.
Canonical workflow source: grwtsk/noeaaeue@
0ca03a08fe714c95e7a52466fa3bb1a2f8b1c753.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.FiniteRelationalRefinementBound
import Mathlib

/-!
# Finite relational type capacity

## Consumer and exact scope

`FiniteRelationalTypeDiscovery` gives a source-correct partial classifier when
accumulated dependent observations separate every pair of different source
types. `FiniteRelationalRefinementBound` counts the strict refinements of the
realized observation partition. This file connects those two existing layers.

For a finite source inventory, the number of realized source types cannot exceed
the number of realized observation prefixes whenever the type map is constant on
prefix fibers. A correct `Option`-valued classifier supplies exactly that fiber
condition. Conversely, if equal source types always have equal prefixes, the
observation partition has no more classes than the type partition. Hence the two
counts agree precisely when their realized fibers agree in both directions.

If the source type map is injective, a correct classifier forces the observation
prefix map itself to be injective. The realized observation class count then
reaches `Fintype.card P`, remains saturated at every later stage, and no later
stage can split a class. This is a finite-capacity consequence of source
correctness, not a construction of separating observations.

The hostile boundary is formalized on two Boolean sources carrying the same
`PUnit` type. A correct type classifier exists at stage zero, but the next
observation still splits the two sources. Thus correctness for a noninjective
type map does not imply terminal observational stabilization.

The counting argument is the standard finite fiber-refinement principle. The
source-specific content is its use of the existing dependent `observationPrefix`,
`Option`-valued source-returning classifier, and actual realized images. No
physical spin mechanism, classifier termination, Weil sign, RH, or GRH result is
asserted.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy

universe u v w x

section FiniteFiberRefinement

variable {P : Type u} [Fintype P]
variable {Fine : Type v} {Coarse : Type w}

/-- A function constant on the fibers of a finer finite observation realizes no
more values than the finer observation itself. -/
theorem image_card_le_image_card_of_fiber_refinement
    (fine : P → Fine) (coarse : P → Coarse)
    (refines : ∀ p q, fine p = fine q → coarse p = coarse q) :
    ((Finset.univ : Finset P).image coarse).card ≤
      ((Finset.univ : Finset P).image fine).card := by
  classical
  let fineImage : Finset Fine :=
    (Finset.univ : Finset P).image fine
  let coarseImage : Finset Coarse :=
    (Finset.univ : Finset P).image coarse
  let representative : {b // b ∈ coarseImage} → P := fun b =>
    Classical.choose (Finset.mem_image.mp b.property)
  have representative_coarse (b : {b // b ∈ coarseImage}) :
      coarse (representative b) = b.1 := by
    exact (Classical.choose_spec (Finset.mem_image.mp b.property)).2
  let toFine : {b // b ∈ coarseImage} → {a // a ∈ fineImage} := fun b =>
    ⟨fine (representative b), by
      exact Finset.mem_image.mpr
        ⟨representative b, Finset.mem_univ (representative b), rfl⟩⟩
  have toFine_injective : Function.Injective toFine := by
    intro b c h
    apply Subtype.ext
    have hfine : fine (representative b) = fine (representative c) :=
      congrArg Subtype.val h
    exact (representative_coarse b).symm.trans
      ((refines _ _ hfine).trans (representative_coarse c))
  have hcard : coarseImage.card ≤ fineImage.card :=
    Finset.card_le_card_of_injective toFine_injective
  simpa [coarseImage, fineImage] using hcard

end FiniteFiberRefinement

section RealizedTypeCapacity

variable {P : Type u} [Fintype P]
variable {Kind : Type v} {Obs : Nat → Type w}

/-- Number of source types actually realized by the finite inventory. -/
noncomputable def realizedTypeCount (typeOf : P → Kind) : Nat :=
  ((Finset.univ : Finset P).image typeOf).card

/-- An injective source type map realizes one type for every source object. -/
theorem realizedTypeCount_eq_card_of_injective
    (typeOf : P → Kind) (hinjective : Function.Injective typeOf) :
    realizedTypeCount typeOf = Fintype.card P := by
  classical
  unfold realizedTypeCount
  calc
    ((Finset.univ : Finset P).image typeOf).card =
        (Finset.univ : Finset P).card :=
      Finset.card_image_of_injective _ hinjective
    _ = Fintype.card P := Finset.card_univ

/-- Prefix-fiber constancy is exactly the condition needed for the realized
source-type count to fit inside the realized observation capacity. -/
theorem realizedTypeCount_le_observationClassCount
    (typeOf : P → Kind) (readout : (n : Nat) → P → Obs n) (N : Nat)
    (constantOnPrefixFibers : ∀ p q,
      observationPrefix readout N p = observationPrefix readout N q →
      typeOf p = typeOf q) :
    realizedTypeCount typeOf ≤ observationClassCount readout N := by
  simpa [realizedTypeCount, observationClassCount] using
    (image_card_le_image_card_of_fiber_refinement
      (P := P) (fine := observationPrefix readout N)
      (coarse := typeOf) constantOnPrefixFibers)

/-- If equal source types always have equal prefixes, the observation partition
has no more realized classes than the source-type partition. -/
theorem observationClassCount_le_realizedTypeCount
    (typeOf : P → Kind) (readout : (n : Nat) → P → Obs n) (N : Nat)
    (constantOnTypeFibers : ∀ p q, typeOf p = typeOf q →
      observationPrefix readout N p = observationPrefix readout N q) :
    observationClassCount readout N ≤ realizedTypeCount typeOf := by
  simpa [realizedTypeCount, observationClassCount] using
    (image_card_le_image_card_of_fiber_refinement
      (P := P) (fine := typeOf)
      (coarse := observationPrefix readout N) constantOnTypeFibers)

/-- The realized prefix and type counts agree when they induce the same fibers
on the source inventory. -/
theorem observationClassCount_eq_realizedTypeCount
    (typeOf : P → Kind) (readout : (n : Nat) → P → Obs n) (N : Nat)
    (prefixDeterminesType : ∀ p q,
      observationPrefix readout N p = observationPrefix readout N q →
      typeOf p = typeOf q)
    (typeDeterminesPrefix : ∀ p q, typeOf p = typeOf q →
      observationPrefix readout N p = observationPrefix readout N q) :
    observationClassCount readout N = realizedTypeCount typeOf := by
  exact Nat.le_antisymm
    (observationClassCount_le_realizedTypeCount
      typeOf readout N typeDeterminesPrefix)
    (realizedTypeCount_le_observationClassCount
      typeOf readout N prefixDeterminesType)

/-- Every correct source-returning classifier forces enough realized prefix
classes to carry all realized source types. -/
theorem realizedTypeCount_le_observationClassCount_of_classifier
    (typeOf : P → Kind) (readout : (n : Nat) → P → Obs n) (N : Nat)
    (classify : ((i : Fin (N + 1)) → Obs i.val) → Option Kind)
    (hcorrect : ∀ p, classify (observationPrefix readout N p) =
      some (typeOf p)) :
    realizedTypeCount typeOf ≤ observationClassCount readout N := by
  apply realizedTypeCount_le_observationClassCount typeOf readout N
  intro p q hprefix
  exact classifier_correct_implies_type_constant
    typeOf readout N classify hcorrect p q hprefix

/-- The explicit finite-separation horizon already has enough observational
capacity to represent every realized source type. -/
theorem realizedTypeCount_le_observationClassCount_separationHorizon
    (typeOf : P → Kind) (readout : (n : Nat) → P → Obs n)
    (witness : P → P → Nat)
    (distinguishes : ∀ p q, typeOf p ≠ typeOf q →
      readout (witness p q) p ≠ readout (witness p q) q) :
    realizedTypeCount typeOf ≤
      observationClassCount readout (separationHorizon witness) := by
  apply realizedTypeCount_le_observationClassCount
    typeOf readout (separationHorizon witness)
  intro p q hprefix
  exact type_eq_of_prefix_eq
    typeOf readout witness distinguishes p q hprefix

/-- With injective source types, correctness forces all source objects into
distinct realized observation classes. -/
theorem observationClassCount_eq_card_of_injective_type_classifier
    (typeOf : P → Kind) (readout : (n : Nat) → P → Obs n) (N : Nat)
    (hinjective : Function.Injective typeOf)
    (classify : ((i : Fin (N + 1)) → Obs i.val) → Option Kind)
    (hcorrect : ∀ p, classify (observationPrefix readout N p) =
      some (typeOf p)) :
    observationClassCount readout N = Fintype.card P := by
  apply Nat.le_antisymm (observationClassCount_le_card readout N)
  calc
    Fintype.card P = realizedTypeCount typeOf :=
      (realizedTypeCount_eq_card_of_injective typeOf hinjective).symm
    _ ≤ observationClassCount readout N :=
      realizedTypeCount_le_observationClassCount_of_classifier
        typeOf readout N classify hcorrect

/-- Once an injectively typed correct classifier saturates finite observation
capacity, every later accumulated prefix count remains saturated. -/
theorem observationClassCount_stabilizes_after_injective_classifier
    (typeOf : P → Kind) (readout : (n : Nat) → P → Obs n) (N : Nat)
    (hinjective : Function.Injective typeOf)
    (classify : ((i : Fin (N + 1)) → Obs i.val) → Option Kind)
    (hcorrect : ∀ p, classify (observationPrefix readout N p) =
      some (typeOf p))
    (M : Nat) (hNM : N ≤ M) :
    observationClassCount readout M = Fintype.card P := by
  apply Nat.le_antisymm (observationClassCount_le_card readout M)
  calc
    Fintype.card P = observationClassCount readout N :=
      (observationClassCount_eq_card_of_injective_type_classifier
        typeOf readout N hinjective classify hcorrect).symm
    _ ≤ observationClassCount readout M :=
      observationClassCount_mono readout hNM

/-- No later stage can split an observation class once an injectively typed
correct classifier has saturated the finite source inventory. -/
theorem no_observation_split_after_injective_classifier
    (typeOf : P → Kind) (readout : (n : Nat) → P → Obs n) (N : Nat)
    (hinjective : Function.Injective typeOf)
    (classify : ((i : Fin (N + 1)) → Obs i.val) → Option Kind)
    (hcorrect : ∀ p, classify (observationPrefix readout N p) =
      some (typeOf p))
    {M : Nat} (hNM : N ≤ M) :
    ¬ ObservationSplitAt readout M := by
  intro hsplit
  have hlt := observationClassCount_lt_succ_of_split readout M hsplit
  have hM := observationClassCount_stabilizes_after_injective_classifier
    typeOf readout N hinjective classify hcorrect M hNM
  have hMs := observationClassCount_stabilizes_after_injective_classifier
    typeOf readout N hinjective classify hcorrect (M + 1)
      (hNM.trans (Nat.le_succ M))
  rw [hM, hMs] at hlt
  exact (Nat.lt_irrefl _) hlt

end RealizedTypeCapacity

section NoninjectiveBoundary

/-- Two Boolean sources have the same observation at stage zero and reveal their
identity at every positive stage. -/
def delayedBoolReadout (n : Nat) (p : Bool) : Bool :=
  if n = 0 then false else p

/-- A correct classifier for the single realized `PUnit` source type. -/
def unitPrefixClassifier : (Fin 1 → Bool) → Option PUnit :=
  fun _ => some PUnit.unit

/-- The unit classifier is source-correct at stage zero for both Boolean
sources. -/
theorem unitPrefixClassifier_correct (p : Bool) :
    unitPrefixClassifier (observationPrefix delayedBoolReadout 0 p) =
      some PUnit.unit := by
  rfl

/-- Correct type classification at stage zero does not prevent a later
observation split when the type map is noninjective. -/
theorem delayedBoolReadout_split_at_zero :
    ObservationSplitAt delayedBoolReadout 0 := by
  refine ⟨false, true, ?_, ?_⟩
  · funext i
    have hi : i.val = 0 := by omega
    simp [observationPrefix, delayedBoolReadout, hi]
  · intro h
    have hcoord := congrFun h (⟨1, by omega⟩ : Fin 2)
    simp [observationPrefix, delayedBoolReadout] at hcoord

end NoninjectiveBoundary

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
