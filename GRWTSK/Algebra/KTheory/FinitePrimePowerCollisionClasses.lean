/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.KTheory.RadicalCollisionWeightedSieve
import GRWTSK.GraphSandwichDiffusion
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Finite prime-power radical collision classes

This module extends the two-state `2` versus `2^2` collision fixture to the
four arithmetic states

`2, 2^2, 3, 3^2`.

There are two exact arithmetic-radical classes.  Raw sieve weight is one inside
a radical class and zero between distinct classes.  Column normalization is
therefore block diagonal with transition weight `1 / 2` inside each class.

Initial mass is placed on one representative of each class.  The normalized
sieve then gives exact mass `1 / 4` to every fine exponent-sensitive state and
preserves the total mass of each radical class.  Complete fine-type coverage
therefore coexists with failure of exact decoding from the paired arithmetic
radical and radical-factored universal `K₀`-shaped class.

The block decomposition also supplies a negative control: no single positive
raw anchor reinjection can receive mass from both radical classes.  Any restart
or teleportation edge connecting the classes changes the sieve and needs its
own provenance.

A real row-stochastic adapter is supplied for the existing finite repository
search kernel.  Positive transitions are transported to certified graph paths
only under an explicit hypothesis certifying every same-radical edge.  Scope
matching alone does not certify the transition support.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.KTheory.FinitePrimePowerCollisionClasses

open scoped BigOperators
open GRWTSK.Algebra.KTheory.RadicalCollisionBoundary
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.WeightedSieveTypeDiffusion
open GRWTSK.GraphSandwichDiffusion

/-- Four fine states retaining both prime-base and exponent data. -/
abbrev PrimePowerState := Fin 4

/-- Two coarse arithmetic-radical classes: powers of two and powers of three. -/
abbrev RadicalClass := Fin 2

/-- Arithmetic interpretation `2, 2^2, 3, 3^2`. -/
def arithmeticValue (state : PrimePowerState) : ℕ :=
  if state = 0 then 2
  else if state = 1 then 2 ^ 2
  else if state = 2 then 3
  else 3 ^ 2

/-- The first two states are the radical class of two; the last two are the
radical class of three. -/
def collisionClass (state : PrimePowerState) : RadicalClass :=
  if state = 0 then 0
  else if state = 1 then 0
  else 1

@[simp] theorem arithmeticValue_zero :
    arithmeticValue (0 : PrimePowerState) = 2 := by
  simp [arithmeticValue]

@[simp] theorem arithmeticValue_one :
    arithmeticValue (1 : PrimePowerState) = 2 ^ 2 := by
  norm_num [arithmeticValue]

@[simp] theorem arithmeticValue_two :
    arithmeticValue (2 : PrimePowerState) = 3 := by
  norm_num [arithmeticValue]

@[simp] theorem arithmeticValue_three :
    arithmeticValue (3 : PrimePowerState) = 3 ^ 2 := by
  norm_num [arithmeticValue]

/-- Equality of arithmetic radicals is exactly equality of the declared
collision classes.  This is an executable four-state decomposition, not an
asymptotic factorization statement. -/
theorem radical_eq_iff_class_eq (source target : PrimePowerState) :
    Nat.radical (arithmeticValue source) =
        Nat.radical (arithmeticValue target) ↔
      collisionClass source = collisionClass target := by
  fin_cases source <;> fin_cases target <;>
    norm_num [arithmeticValue, collisionClass,
      Nat.radical_eq_prod_primeFactors]

/-- Equal coarse classes force a collision under every radical-factored
universal group-completion observation. -/
theorem kZero_eq_of_class_eq
    {M : Type*} [CommMonoid M] (lift : ℕ →* M)
    {source target : PrimePowerState}
    (sameClass : collisionClass source = collisionClass target) :
    kZeroRadical lift (arithmeticValue source) =
      kZeroRadical lift (arithmeticValue target) :=
  kZeroRadical_eq_of_radical_eq lift
    ((radical_eq_iff_class_eq source target).2 sameClass)

/-- Raw nonnegative weight supported exactly on one radical class. -/
def collisionWeight (target source : PrimePowerState) : ℚ :=
  if collisionClass target = collisionClass source then 1 else 0

@[simp] theorem collisionWeight_eq_one_iff
    (target source : PrimePowerState) :
    collisionWeight target source = 1 ↔
      collisionClass target = collisionClass source := by
  by_cases sameClass : collisionClass target = collisionClass source <;>
    simp [collisionWeight, sameClass]

@[simp] theorem collisionWeight_eq_zero_iff
    (target source : PrimePowerState) :
    collisionWeight target source = 0 ↔
      collisionClass target ≠ collisionClass source := by
  by_cases sameClass : collisionClass target = collisionClass source <;>
    simp [collisionWeight, sameClass]

/-- The class indicator agrees exactly with equality of arithmetic radicals. -/
theorem collisionWeight_eq_radicalIndicator
    (target source : PrimePowerState) :
    collisionWeight target source =
      if Nat.radical (arithmeticValue target) =
          Nat.radical (arithmeticValue source) then 1 else 0 := by
  rw [radical_eq_iff_class_eq]
  rfl

/-- Each radical class contains exactly two states, so every raw source column
has mass two. -/
theorem collisionWeight_column_sum (source : PrimePowerState) :
    (∑ target : PrimePowerState, collisionWeight target source) = 2 := by
  fin_cases source <;>
    norm_num [collisionWeight, collisionClass, Fin.sum_univ_four]

/-- The exact two-class prime-power weighted sieve. -/
def collisionSieve : WeightedSieve PrimePowerState where
  weight := collisionWeight
  nonnegative := by
    intro target source
    simp [collisionWeight]
  positiveColumnMass := by
    intro source
    rw [collisionWeight_column_sum]
    norm_num

@[simp] theorem collisionSieve_columnMass (source : PrimePowerState) :
    collisionSieve.columnMass source = 2 := by
  exact collisionWeight_column_sum source

/-- Exact normalized block transition: one half inside a radical class and zero
between distinct radical classes. -/
@[simp] theorem collisionSieve_normalized_transition
    (target source : PrimePowerState) :
    collisionSieve.normalizedKernel.transition target source =
      if collisionClass target = collisionClass source then (1 / 2 : ℚ)
      else 0 := by
  change collisionWeight target source /
      collisionSieve.columnMass source = _
  rw [collisionSieve_columnMass]
  by_cases sameClass : collisionClass target = collisionClass source <;>
    simp [collisionWeight, sameClass]

/-- One representative in each radical class initially carries mass `1 / 2`. -/
def initialHeat (state : PrimePowerState) : ℚ :=
  if state = 0 then 1 / 2
  else if state = 2 then 1 / 2
  else 0

 theorem initialHeat_nonnegative :
    ∀ state : PrimePowerState, 0 ≤ initialHeat state := by
  intro state
  fin_cases state <;> norm_num [initialHeat]

@[simp] theorem initialHeat_mass :
    ∑ state : PrimePowerState, initialHeat state = 1 := by
  norm_num [initialHeat, Fin.sum_univ_four]

/-- Each coarse radical class starts with mass exactly one half. -/
@[simp] theorem initialClassMass (class : RadicalClass) :
    aggregate collisionClass initialHeat class = 1 / 2 := by
  fin_cases class <;>
    norm_num [aggregate, collisionClass, initialHeat, Fin.sum_univ_four]

/-- The block-diagonal kernel preserves the total mass of every radical class
for an arbitrary input heat field. -/
theorem classMass_step_eq
    (heat : PrimePowerState → ℚ) (class : RadicalClass) :
    aggregate collisionClass (collisionSieve.normalizedKernel.step heat) class =
      aggregate collisionClass heat class := by
  fin_cases class <;>
    simp [aggregate, HeatKernel.step,
      collisionSieve_normalized_transition,
      collisionClass, Fin.sum_univ_four] <;> ring

/-- Every finite iterate preserves each radical-class mass separately. -/
theorem classMass_evolve_eq
    (heat : PrimePowerState → ℚ) (time : ℕ) (class : RadicalClass) :
    aggregate collisionClass
        (collisionSieve.normalizedKernel.evolve heat time) class =
      aggregate collisionClass heat class := by
  induction time with
  | zero => rfl
  | succ time previous =>
      change aggregate collisionClass
          (collisionSieve.normalizedKernel.step
            (collisionSieve.normalizedKernel.evolve heat time)) class = _
      rw [classMass_step_eq, previous]

/-- After one normalized step, every fine exponent-sensitive state has exact
mass one quarter. -/
@[simp] theorem step_initialHeat_eq_quarter (target : PrimePowerState) :
    collisionSieve.normalizedKernel.step initialHeat target = 1 / 4 := by
  fin_cases target <;>
    norm_num [HeatKernel.step, collisionSieve_normalized_transition,
      collisionClass, initialHeat, Fin.sum_univ_four]

/-- The quarter-mass state is stationary, so every positive finite time has the
same exact fine-state weights. -/
theorem evolve_initialHeat_eq_quarter :
    ∀ time : ℕ, ∀ target : PrimePowerState,
      collisionSieve.normalizedKernel.evolve initialHeat (time + 1) target =
        1 / 4 := by
  intro time
  induction time with
  | zero =>
      intro target
      exact step_initialHeat_eq_quarter target
  | succ time previous =>
      intro target
      change collisionSieve.normalizedKernel.step
          (collisionSieve.normalizedKernel.evolve initialHeat (time + 1)) target =
        1 / 4
      fin_cases target <;>
        norm_num [HeatKernel.step, collisionSieve_normalized_transition,
          collisionClass, Fin.sum_univ_four, previous]

/-- Every fine prime-power type is complete from the first positive diffusion
time onward. -/
theorem fineTypeComplete_after_one :
    ∀ time : ℕ,
      TypeCompleteAt (fun state : PrimePowerState => state)
        (collisionSieve.normalizedKernel.evolve initialHeat (time + 1)) := by
  intro time kind
  have pointValue := evolve_initialHeat_eq_quarter time kind
  have positiveQuarter : (0 : ℚ) < 1 / 4 := by norm_num
  simpa [aggregate, pointValue] using positiveQuarter

/-- A strictly positive single global anchor reinjection is impossible across
both radical classes.  The obstruction is the zero cross-class raw weight. -/
theorem no_positive_global_anchor_reinjection
    (beta : ℚ) (beta_pos : 0 < beta) :
    ¬ ∃ anchor : PrimePowerState,
        RawAnchorReinjection collisionSieve anchor beta := by
  rintro ⟨anchor, reinject⟩
  fin_cases anchor
  · have bound := reinject (2 : PrimePowerState)
    norm_num [collisionSieve_columnMass, collisionSieve,
      collisionWeight, collisionClass] at bound
    linarith
  · have bound := reinject (2 : PrimePowerState)
    norm_num [collisionSieve_columnMass, collisionSieve,
      collisionWeight, collisionClass] at bound
    linarith
  · have bound := reinject (0 : PrimePowerState)
    norm_num [collisionSieve_columnMass, collisionSieve,
      collisionWeight, collisionClass] at bound
    linarith
  · have bound := reinject (0 : PrimePowerState)
    norm_num [collisionSieve_columnMass, collisionSieve,
      collisionWeight, collisionClass] at bound
    linarith

/-- Fine-state decoding cannot factor through the paired radical and
radical-factored universal `K₀`-shaped observation.  States zero and one give
the hostile collision witness. -/
theorem no_exact_feature_decoder
    {M : Type*} [CommMonoid M] (lift : ℕ →* M) :
    ¬ ∃ decode : GrothendieckKZero M × ℕ → PrimePowerState,
        ∀ state : PrimePowerState,
          decode
              (kZeroRadical lift (arithmeticValue state),
                Nat.radical (arithmeticValue state)) = state := by
  rintro ⟨decode, correct⟩
  have sameClass :
      collisionClass (0 : PrimePowerState) =
        collisionClass (1 : PrimePowerState) := by
    simp [collisionClass]
  have sameK :
      kZeroRadical lift (arithmeticValue (0 : PrimePowerState)) =
        kZeroRadical lift (arithmeticValue (1 : PrimePowerState)) :=
    kZero_eq_of_class_eq lift sameClass
  have sameRadical :
      Nat.radical (arithmeticValue (0 : PrimePowerState)) =
        Nat.radical (arithmeticValue (1 : PrimePowerState)) :=
    (radical_eq_iff_class_eq 0 1).2 sameClass
  have observedCollision :
      (kZeroRadical lift (arithmeticValue (0 : PrimePowerState)),
          Nat.radical (arithmeticValue (0 : PrimePowerState))) =
        (kZeroRadical lift (arithmeticValue (1 : PrimePowerState)),
          Nat.radical (arithmeticValue (1 : PrimePowerState))) :=
    Prod.ext sameK sameRadical
  have stateCollision : (0 : PrimePowerState) = (1 : PrimePowerState) := by
    calc
      (0 : PrimePowerState) =
          decode
            (kZeroRadical lift (arithmeticValue (0 : PrimePowerState)),
              Nat.radical (arithmeticValue (0 : PrimePowerState))) :=
        (correct 0).symm
      _ = decode
            (kZeroRadical lift (arithmeticValue (1 : PrimePowerState)),
              Nat.radical (arithmeticValue (1 : PrimePowerState))) :=
        congrArg decode observedCollision
      _ = (1 : PrimePowerState) := correct 1
  exact (by decide : (0 : PrimePowerState) ≠ (1 : PrimePowerState))
    stateCollision

/-- Exact finite independence statement: all four fine types are covered while
coarse radical/`K₀` observations still fail to decode them. -/
theorem diffusion_complete_but_feature_not_decodable
    {M : Type*} [CommMonoid M] (lift : ℕ →* M) :
    (∀ time : ℕ,
      TypeCompleteAt (fun state : PrimePowerState => state)
        (collisionSieve.normalizedKernel.evolve initialHeat (time + 1))) ∧
    ¬ ∃ decode : GrothendieckKZero M × ℕ → PrimePowerState,
        ∀ state : PrimePowerState,
          decode
              (kZeroRadical lift (arithmeticValue state),
                Nat.radical (arithmeticValue state)) = state := by
  exact ⟨fineTypeComplete_after_one, no_exact_feature_decoder lift⟩

/-! ## Adapter to certified repository search -/

/-- Real row-stochastic orientation of the same block kernel.  The first
argument is the source and the second is the target. -/
def searchKernel : FiniteSieveMarkovKernel PrimePowerState where
  scope := Finset.univ
  transition := fun source target =>
    if collisionClass source = collisionClass target then (1 / 2 : ℝ) else 0
  transition_nonneg := by
    intro source _ target _
    by_cases sameClass : collisionClass source = collisionClass target <;>
      simp [sameClass]
  row_sum_one := by
    intro source _
    fin_cases source <;>
      norm_num [collisionClass, Fin.sum_univ_four]

/-- The real search kernel is exactly the transpose/orientation adapter of the
rational weighted-sieve kernel. -/
theorem searchKernel_matches_collisionSieve
    (source target : PrimePowerState) :
    searchKernel.transition source target =
      (collisionSieve.normalizedKernel.transition target source : ℝ) := by
  by_cases sameClass : collisionClass source = collisionClass target
  · have reversed : collisionClass target = collisionClass source := sameClass.symm
    simp [searchKernel, sameClass, reversed]
  · have reversed : collisionClass target ≠ collisionClass source := by
      intro h
      exact sameClass h.symm
    simp [searchKernel, sameClass, reversed]

@[simp] theorem searchKernel_transition_pos_iff
    (source target : PrimePowerState) :
    0 < searchKernel.transition source target ↔
      collisionClass source = collisionClass target := by
  by_cases sameClass : collisionClass source = collisionClass target <;>
    simp [searchKernel, sameClass]

/-- An exact one-step positive kernel path exists precisely within one radical
class. -/
theorem searchKernel_positivePath_one_iff
    (source target : PrimePowerState) :
    searchKernel.positivePath 1 source target ↔
      collisionClass source = collisionClass target := by
  change (∃ middle ∈ searchKernel.scope,
      source = middle ∧ 0 < searchKernel.transition middle target) ↔ _
  constructor
  · rintro ⟨middle, _, rfl, positive⟩
    exact (searchKernel_transition_pos_iff source target).mp positive
  · intro sameClass
    exact ⟨source, by simp [searchKernel], rfl,
      (searchKernel_transition_pos_iff source target).2 sameClass⟩

/-- Positive collision-kernel paths become certified graph paths only when the
inventory certifies every positive same-radical transition. -/
theorem oneStepCertifiedPath_of_collision_edges
    (inventory : SourceSearchInventory PrimePowerState)
    (collision_edges_certified :
      ∀ source target,
        collisionClass source = collisionClass target →
          inventory.certified source target)
    (source target : PrimePowerState)
    (sameClass : collisionClass source = collisionClass target) :
    BoundedPath inventory.certified 1 source target := by
  apply searchKernel.positivePath_to_certifiedPath inventory
    (fun x _ y _ positive =>
      collision_edges_certified x y
        ((searchKernel_transition_pos_iff x y).mp positive))
    1 source target
  · simp [searchKernel]
  · exact (searchKernel_positivePath_one_iff source target).2 sameClass

/-- Missing certification of one positive collision edge blocks the global
support-certification premise required by `positivePath_to_certifiedPath`. -/
theorem no_support_certification_of_missing_collision_edge
    (inventory : SourceSearchInventory PrimePowerState)
    {source target : PrimePowerState}
    (sameClass : collisionClass source = collisionClass target)
    (missing : ¬ inventory.certified source target) :
    ¬ (∀ x ∈ searchKernel.scope, ∀ y ∈ searchKernel.scope,
        0 < searchKernel.transition x y → inventory.certified x y) := by
  intro support
  exact missing
    (support source (by simp [searchKernel]) target (by simp [searchKernel])
      ((searchKernel_transition_pos_iff source target).2 sameClass))

/-- Real initial search weight: one positive representative in each collision
class. -/
def searchInitialWeight (state : PrimePowerState) : ℝ :=
  if state = 0 then 1 / 2
  else if state = 2 then 1 / 2
  else 0

 theorem searchInitialWeight_nonnegative
    (state : PrimePowerState) : 0 ≤ searchInitialWeight state := by
  fin_cases state <;> norm_num [searchInitialWeight]

/-- Every fine target has a positive initial representative in its radical
class and a positive one-step kernel path from that representative. -/
theorem searchPositivePath_to_every_state
    (target : PrimePowerState) :
    ∃ source ∈ searchKernel.scope,
      0 < searchInitialWeight source ∧
        searchKernel.positivePath 1 source target := by
  fin_cases target
  · exact ⟨0, by simp [searchKernel], by norm_num [searchInitialWeight],
      (searchKernel_positivePath_one_iff 0 0).2 (by rfl)⟩
  · exact ⟨0, by simp [searchKernel], by norm_num [searchInitialWeight],
      (searchKernel_positivePath_one_iff 0 1).2
        (by simp [collisionClass])⟩
  · exact ⟨2, by simp [searchKernel], by norm_num [searchInitialWeight],
      (searchKernel_positivePath_one_iff 2 2).2 (by rfl)⟩
  · exact ⟨2, by simp [searchKernel], by norm_num [searchInitialWeight],
      (searchKernel_positivePath_one_iff 2 3).2
        (by norm_num [collisionClass])⟩

/-- Conditional search-level completeness: when the declared finite search
scope is exactly this four-state kernel scope, the one-step Markov-evolved
weights hit every fine type.  This statement does not by itself certify the
kernel transitions; use `oneStepCertifiedPath_of_collision_edges` for that
separate obligation. -/
theorem certifiedSearchTypeComplete_of_scope
    (inventory : SourceSearchInventory PrimePowerState)
    (source : PrimePowerState) (searchDepth : ℕ)
    (scope_eq : searchKernel.scope =
      inventory.certifiedSearch source searchDepth) :
    inventory.sieveTypeCompleteAt source
      (fun state : PrimePowerState => state)
      (fun _ state => searchKernel.evolve searchInitialWeight 1 state)
      searchDepth := by
  apply (inventory.sieveTypeCompleteAt_iff_kernelPaths
    source (fun state : PrimePowerState => state)
    searchKernel searchDepth scope_eq searchInitialWeight
    (fun state _ => searchInitialWeight_nonnegative state) 1).2
  intro targetType
  obtain ⟨start, start_mem, start_pos, path⟩ :=
    searchPositivePath_to_every_state targetType
  exact ⟨targetType, by simp [searchKernel], rfl,
    start, start_mem, start_pos, path⟩

/-- Scope-level type completeness together with actual certified one-step paths
when every positive collision transition is certified. -/
theorem certifiedSearchTypeComplete_with_paths
    (inventory : SourceSearchInventory PrimePowerState)
    (source : PrimePowerState) (searchDepth : ℕ)
    (scope_eq : searchKernel.scope =
      inventory.certifiedSearch source searchDepth)
    (collision_edges_certified :
      ∀ x y, collisionClass x = collisionClass y →
        inventory.certified x y) :
    inventory.sieveTypeCompleteAt source
        (fun state : PrimePowerState => state)
        (fun _ state => searchKernel.evolve searchInitialWeight 1 state)
        searchDepth ∧
      ∀ target : PrimePowerState,
        ∃ start ∈ searchKernel.scope,
          0 < searchInitialWeight start ∧
            BoundedPath inventory.certified 1 start target := by
  refine ⟨certifiedSearchTypeComplete_of_scope
    inventory source searchDepth scope_eq, ?_⟩
  intro target
  obtain ⟨start, start_mem, start_pos, path⟩ :=
    searchPositivePath_to_every_state target
  have sameClass : collisionClass start = collisionClass target :=
    (searchKernel_positivePath_one_iff start target).mp path
  exact ⟨start, start_mem, start_pos,
    oneStepCertifiedPath_of_collision_edges
      inventory collision_edges_certified start target sameClass⟩

end GRWTSK.Algebra.KTheory.FinitePrimePowerCollisionClasses
