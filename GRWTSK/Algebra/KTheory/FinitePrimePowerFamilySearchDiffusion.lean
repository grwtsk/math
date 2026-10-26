/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyClassDiffusion
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Provenance-bearing search for finite prime-power family diffusion

This module combines an arbitrary finite `FinitePrimePowerFamily` with a
strictly positive class-local target profile.

The certified search relation is exact equality of the declared prime-power
collision class. Every ordered pair remains candidate and admissible in the
declared finite vocabulary, while cross-class pairs retain unresolved supplier
records. The real search kernel is the orientation adapter of the existing
rational class-local weighted sieve.

The construction proves exact equivalence among:

* positive kernel transitions;
* certified same-class edges;
* exact-length positive kernel paths;
* exact-length certified bounded paths;
* positive-depth certified search within one collision class.

One representative seed per class covers the entire finite inventory. This is
multi-seed class coverage, not cross-class mixing. Fine-state diffusion
completeness remains conditional on positive initial aggregate mass in every
class, and it remains independent of exact decoding from the paired arithmetic
radical and radical-factored universal `K₀`-shaped feature.

This is a finite source-bound interface. It proves no asymptotic prime-power
distribution, Chowla cancellation, Kim--Vu probabilistic coupling, analytic
K-theory realization, zeta-zero operator, RH implication, or compression bound.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

universe u v

namespace GRWTSK.Algebra.KTheory.FinitePrimePowerFamilySearchDiffusion

open scoped BigOperators
open GRWTSK.Algebra.KTheory.RadicalCollisionBoundary
open GRWTSK.Algebra.KTheory.PrimePowerCollisionSearchInventory
open GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyClassDiffusion
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.WeightedSieveTypeDiffusion
open GRWTSK.GraphSandwichDiffusion

/-- Source identity for the generic finite prime-power family and provenance
inventory interface consumed here. -/
def primePowerFamilyInventorySource : SourceIdentity where
  kind := .leanDeclaration
  identifier :=
    "GRWTSK.Algebra.KTheory.PrimePowerCollisionSearchInventory"
  locator :=
    "FinitePrimePowerFamily; positivePath_preserves_class; SourceSearchInventory construction"
  repository := some "grwtsk/math"
  commit := some "27cbc7a1333e82eeceb45458aa9d95d2e823ab67"
  path := some
    "GRWTSK/Algebra/KTheory/PrimePowerCollisionSearchInventory.lean"
  blob := some "c5471bdc63c94df934e4125c435793ad790c9224"

/-- Source identity for unequal-fibre class-local normalization, class-mass
conservation, and fine-state diffusion coverage. -/
def classLocalDiffusionSource : SourceIdentity where
  kind := .leanDeclaration
  identifier :=
    "GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyClassDiffusion"
  locator :=
    "ClassWeightProfile.classLocalSieve_normalized_transition; classMass_evolve_eq; fineTypeComplete_all_positive_times"
  repository := some "grwtsk/math"
  commit := some "706705db53b7e742d0eb45a88619274ca48bac4d"
  path := some
    "GRWTSK/Algebra/KTheory/FinitePrimePowerFamilyClassDiffusion.lean"
  blob := some "34d2e24c88ab013bdfbd463fc8f27bcaf7b01789"

/-- Explicit unresolved provenance for a candidate edge joining distinct
arithmetic-radical classes. -/
def unresolvedCrossClassSource : SourceIdentity where
  kind := .unresolved
  identifier := "generic cross-radical prime-power bridge"
  locator :=
    "No independent mathematical supplier for a relation between distinct collision classes"
  repository := some "grwtsk/math"
  commit := none
  path := none
  blob := none

/-- Source-only verification status. Compilation, fresh-kernel acceptance and
transitive axiom auditing remain separate verification dimensions. -/
def sourceOnlyStatus (supplierComplete : Bool) : VerificationStatus where
  sourceInspected := true
  compiled := false
  kernelAccepted := false
  axiomAudited := false
  supplierComplete := supplierComplete

section GenericFamilySearch

variable {State : Type u} {Class : Type v}
  [Fintype State] [Fintype Class]
  [DecidableEq State] [DecidableEq Class]

namespace ClassWeightProfile

variable {family : FinitePrimePowerFamily State Class}

/-- Provenance record for one ordered pair in a generic finite prime-power
family. Same-class pairs have a supplied finite implication; cross-class pairs
remain unresolved candidates. -/
def familyRelationshipRecord
    (profile : ClassWeightProfile family)
    (source target : State) :
    RelationshipRecord source target :=
  if family.classOf source = family.classOf target then
    {
      relationship := .verifiedImplication
      mathematicalMeaning :=
        "Equal declared prime-power collision class implies equal arithmetic radical, and the supplied positive class-local profile gives a positive normalized transition."
      provenance := [
        primePowerFamilyInventorySource,
        classLocalDiffusionSource
      ]
      assumptions := [
        "The state and class carriers are finite.",
        "The supplied target profile is strictly positive on every state.",
        "Every declared collision class has an explicit state witness.",
        "The edge is interpreted inside the class-local normalized weighted sieve."
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
        "Cross-class ordered pair retained by the finite candidate vocabulary without a certified mathematical consequence or positive class-local transition."
      provenance := [
        primePowerFamilyInventorySource,
        classLocalDiffusionSource,
        unresolvedCrossClassSource
      ]
      assumptions := [
        "Candidate and admissible completion are relative to the declared finite vocabulary only."
      ]
      obligations := [
        "Supply a source-grounded cross-class mathematical relation before certification.",
        "Do not infer restart, teleportation, arithmetic implication, spectral comparison, or mixing from scope alone."
      ]
      verification := sourceOnlyStatus false
    }

/-- Generic provenance-bearing graph sandwich. Every ordered pair is candidate
and admissible; exactly same-class pairs are certified. The semantic relation is
equality of arithmetic radicals. -/
def familyInventory
    (profile : ClassWeightProfile family) :
    SourceSearchInventory State where
  vertices := Finset.univ
  certified := fun source target =>
    family.classOf source = family.classOf target
  candidate := fun _ _ => True
  admissible := fun _ _ => True
  semantic := fun source target =>
    Nat.radical (family.value source) =
      Nat.radical (family.value target)
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
    exact (family.radical_eq_iff_class_eq source target).2 sameClass
  candidateRecord := by
    intro source target _
    exact profile.familyRelationshipRecord source target
  admissibleRecord := by
    intro source target _
    exact profile.familyRelationshipRecord source target

@[simp]
theorem familyInventory_certified_iff
    (profile : ClassWeightProfile family)
    (source target : State) :
    profile.familyInventory.certified source target ↔
      family.classOf source = family.classOf target :=
  Iff.rfl

@[simp]
theorem familyInventory_candidate
    (profile : ClassWeightProfile family)
    (source target : State) :
    profile.familyInventory.candidate source target := by
  trivial

@[simp]
theorem familyInventory_admissible
    (profile : ClassWeightProfile family)
    (source target : State) :
    profile.familyInventory.admissible source target := by
  trivial

/-- Candidate completion covers every admissible pair in the declared finite
inventory. This does not certify cross-class pairs. -/
theorem no_missing_candidate_edge
    (profile : ClassWeightProfile family)
    (source target : State) :
    ¬ MissingCandidateEdge profile.familyInventory source target := by
  simp [MissingCandidateEdge, familyInventory]

/-- A cross-class pair remains candidate and admissible but is not certified. -/
theorem crossClass_candidate_not_certified
    (profile : ClassWeightProfile family)
    {source target : State}
    (different :
      family.classOf source ≠ family.classOf target) :
    profile.familyInventory.candidate source target ∧
      profile.familyInventory.admissible source target ∧
        ¬ profile.familyInventory.certified source target := by
  refine ⟨by trivial, by trivial, ?_⟩
  simpa [familyInventory] using different

@[simp]
theorem sameClass_record_is_verified
    (profile : ClassWeightProfile family)
    {source target : State}
    (sameClass :
      family.classOf source = family.classOf target) :
    (profile.familyRelationshipRecord source target).relationship =
      RelationshipClass.verifiedImplication := by
  simp [familyRelationshipRecord, sameClass]

@[simp]
theorem crossClass_record_is_unresolved
    (profile : ClassWeightProfile family)
    {source target : State}
    (different :
      family.classOf source ≠ family.classOf target) :
    (profile.familyRelationshipRecord source target).relationship =
      RelationshipClass.unresolvedSupplier := by
  simp [familyRelationshipRecord, different]

/-- Real row-stochastic orientation adapter of the rational class-local heat
kernel. The first argument is the source and the second is the target. -/
def searchKernel
    (profile : ClassWeightProfile family) :
    FiniteSieveMarkovKernel State where
  scope := Finset.univ
  transition := fun source target =>
    (profile.classLocalSieve.normalizedKernel.transition target source : ℝ)
  transition_nonneg := by
    intro source _ target _
    exact_mod_cast
      profile.classLocalSieve.normalizedKernel.nonnegative target source
  row_sum_one := by
    intro source _
    change (∑ target : State,
      (profile.classLocalSieve.normalizedKernel.transition target source : ℝ)) = 1
    exact_mod_cast
      profile.classLocalSieve.normalizedKernel.stochastic source

@[simp]
theorem searchKernel_matches_classLocalSieve
    (profile : ClassWeightProfile family)
    (source target : State) :
    profile.searchKernel.transition source target =
      (profile.classLocalSieve.normalizedKernel.transition target source : ℝ) :=
  rfl

/-- Positive real transitions occur exactly within one declared collision
class. -/
theorem searchKernel_transition_pos_iff
    (profile : ClassWeightProfile family)
    (source target : State) :
    0 < profile.searchKernel.transition source target ↔
      family.classOf source = family.classOf target := by
  constructor
  · intro positive
    have rationalPositive :
        0 <
          profile.classLocalSieve.normalizedKernel.transition target source := by
      exact_mod_cast positive
    exact
      ((profile.classLocalSieve_transition_pos_iff target source).1
        rationalPositive).symm
  · intro sameClass
    have rationalPositive :
        0 <
          profile.classLocalSieve.normalizedKernel.transition target source :=
      (profile.classLocalSieve_transition_pos_iff target source).2
        sameClass.symm
    exact_mod_cast rationalPositive

/-- Exact support equality between the class-local search kernel and the
certified relation. -/
theorem positive_transition_iff_certified
    (profile : ClassWeightProfile family)
    (source target : State) :
    0 < profile.searchKernel.transition source target ↔
      profile.familyInventory.certified source target := by
  simpa only [familyInventory_certified_iff] using
    profile.searchKernel_transition_pos_iff source target

/-- Every positive exact-length path stays in one collision class. -/
theorem searchKernel_positivePath_preserves_class
    (profile : ClassWeightProfile family)
    {depth : ℕ} {source target : State}
    (path :
      profile.searchKernel.positivePath depth source target) :
    family.classOf source = family.classOf target := by
  exact
    GRWTSK.Algebra.KTheory.PrimePowerCollisionSearchInventory.positivePath_preserves_class
      profile.searchKernel family.classOf
      (fun x _ y _ positive =>
        (profile.searchKernel_transition_pos_iff x y).1 positive)
      (by simp [searchKernel]) path

/-- Positive self-loop paths exist at every exact finite length. -/
theorem searchKernel_positivePath_refl
    (profile : ClassWeightProfile family)
    (depth : ℕ) (source : State) :
    profile.searchKernel.positivePath depth source source := by
  induction depth with
  | zero =>
      rfl
  | succ depth inductionHypothesis =>
      change ∃ middle ∈ profile.searchKernel.scope,
        profile.searchKernel.positivePath depth source middle ∧
          0 < profile.searchKernel.transition middle source
      exact ⟨source, by simp [searchKernel], inductionHypothesis,
        (profile.searchKernel_transition_pos_iff source source).2 rfl⟩

/-- For every positive exact length, a positive kernel path exists exactly
between states in the same collision class. -/
theorem searchKernel_positivePath_succ_iff_class_eq
    (profile : ClassWeightProfile family)
    (depth : ℕ) (source target : State) :
    profile.searchKernel.positivePath (depth + 1) source target ↔
      family.classOf source = family.classOf target := by
  constructor
  · exact profile.searchKernel_positivePath_preserves_class
  · intro sameClass
    change ∃ middle ∈ profile.searchKernel.scope,
      profile.searchKernel.positivePath depth source middle ∧
        0 < profile.searchKernel.transition middle target
    exact ⟨source, by simp [searchKernel],
      profile.searchKernel_positivePath_refl depth source,
      (profile.searchKernel_transition_pos_iff source target).2 sameClass⟩

/-- Every positive kernel path transports to a certified path of the same exact
length because the concrete inventory certifies its entire positive support. -/
theorem positivePath_to_certifiedPath
    (profile : ClassWeightProfile family)
    {depth : ℕ} {source target : State}
    (path :
      profile.searchKernel.positivePath depth source target) :
    BoundedPath profile.familyInventory.certified
      depth source target := by
  apply profile.searchKernel.positivePath_to_certifiedPath
    profile.familyInventory
    (fun x _ y _ positive =>
      (profile.positive_transition_iff_certified x y).1 positive)
    depth source target
  · simp [searchKernel]
  · exact path

/-- Every certified path is realized by a positive kernel path of the same exact
length. -/
theorem certifiedPath_to_positivePath
    (profile : ClassWeightProfile family)
    {depth : ℕ} {source target : State}
    (path :
      BoundedPath profile.familyInventory.certified
        depth source target) :
    profile.searchKernel.positivePath depth source target := by
  induction path with
  | refl vertex =>
      rfl
  | @tail length source middle target prefix edge inductionHypothesis =>
      change ∃ previous ∈ profile.searchKernel.scope,
        profile.searchKernel.positivePath length source previous ∧
          0 < profile.searchKernel.transition previous target
      exact ⟨middle, by simp [searchKernel], inductionHypothesis,
        (profile.positive_transition_iff_certified middle target).2 edge⟩

/-- Exact equivalence between positive kernel paths and certified bounded paths. -/
theorem positivePath_iff_certifiedPath
    (profile : ClassWeightProfile family)
    (depth : ℕ) (source target : State) :
    profile.searchKernel.positivePath depth source target ↔
      BoundedPath profile.familyInventory.certified
        depth source target := by
  exact ⟨fun path => profile.positivePath_to_certifiedPath path,
    fun path => profile.certifiedPath_to_positivePath path⟩

/-- Every certified path preserves collision class, hence arithmetic radical. -/
theorem certifiedPath_preserves_class
    (profile : ClassWeightProfile family)
    {depth : ℕ} {source target : State}
    (path :
      BoundedPath profile.familyInventory.certified
        depth source target) :
    family.classOf source = family.classOf target :=
  profile.searchKernel_positivePath_preserves_class
    (profile.certifiedPath_to_positivePath path)

/-- Positive-depth certified search from one seed returns exactly its collision
class. -/
theorem mem_certifiedSearch_succ_iff_class_eq
    (profile : ClassWeightProfile family)
    (depth : ℕ) (source target : State) :
    target ∈ profile.familyInventory.certifiedSearch source (depth + 1) ↔
      family.classOf source = family.classOf target := by
  constructor
  · intro member
    change target ∈ reachableWithin
      profile.familyInventory.vertices
      profile.familyInventory.certified
      source (depth + 1) at member
    obtain ⟨length, _, path⟩ :=
      exists_boundedPath_of_mem_reachableWithin
        profile.familyInventory.vertices
        profile.familyInventory.certified
        source target (depth + 1) member
    exact profile.certifiedPath_preserves_class path
  · intro sameClass
    have positivePath :
        profile.searchKernel.positivePath
          (depth + 1) source target :=
      (profile.searchKernel_positivePath_succ_iff_class_eq
        depth source target).2 sameClass
    have certifiedPath :
        BoundedPath profile.familyInventory.certified
          (depth + 1) source target :=
      profile.positivePath_to_certifiedPath positivePath
    change target ∈ reachableWithin
      profile.familyInventory.vertices
      profile.familyInventory.certified
      source (depth + 1)
    exact BoundedPath.mem_reachableWithin
      profile.familyInventory.vertices
      profile.familyInventory.certified
      (by simp [familyInventory])
      (by
        intro first second edge
        simp [familyInventory])
      certifiedPath

/-- Cross-class states are not manufactured by any positive-depth certified
search from one seed. -/
theorem crossClass_not_mem_certifiedSearch_succ
    (profile : ClassWeightProfile family)
    (depth : ℕ) {source target : State}
    (different :
      family.classOf source ≠ family.classOf target) :
    target ∉
      profile.familyInventory.certifiedSearch source (depth + 1) := by
  intro member
  exact different
    ((profile.mem_certifiedSearch_succ_iff_class_eq
      depth source target).1 member)

/-- Cross-class states admit no positive path of positive exact length. -/
theorem no_positivePath_succ_of_class_ne
    (profile : ClassWeightProfile family)
    (depth : ℕ) {source target : State}
    (different :
      family.classOf source ≠ family.classOf target) :
    ¬ profile.searchKernel.positivePath (depth + 1) source target := by
  intro path
  exact different
    ((profile.searchKernel_positivePath_succ_iff_class_eq
      depth source target).1 path)

/-- Choose one actual state representative in every declared collision class. -/
noncomputable def representative
    (profile : ClassWeightProfile family)
    (class : Class) : State :=
  Classical.choose (profile.fiber_nonempty class)

@[simp]
theorem representative_class
    (profile : ClassWeightProfile family)
    (class : Class) :
    family.classOf (profile.representative class) = class :=
  Classical.choose_spec (profile.fiber_nonempty class)

/-- Every fine state lies in the one-step certified search from the selected
representative of its own class. -/
theorem target_mem_representative_search
    (profile : ClassWeightProfile family)
    (target : State) :
    target ∈ profile.familyInventory.certifiedSearch
      (profile.representative (family.classOf target)) 1 := by
  apply (profile.mem_certifiedSearch_succ_iff_class_eq
    0 (profile.representative (family.classOf target)) target).2
  simpa using profile.representative_class (family.classOf target)

/-- Union of one representative search from every declared class. -/
noncomputable def representativeSearchUnion
    (profile : ClassWeightProfile family) : Finset State :=
  Finset.univ.biUnion (fun class =>
    profile.familyInventory.certifiedSearch
      (profile.representative class) 1)

/-- One representative seed per class covers the complete finite state
inventory. This is not a single-seed cross-class mixing theorem. -/
theorem representativeSearchUnion_eq_univ
    (profile : ClassWeightProfile family) :
    profile.representativeSearchUnion = (Finset.univ : Finset State) := by
  ext target
  constructor
  · intro _
    exact Finset.mem_univ target
  · intro _
    apply Finset.mem_biUnion.mpr
    exact ⟨family.classOf target, Finset.mem_univ _,
      profile.target_mem_representative_search target⟩

/-- Reusable package of exact class-local diffusion and certified-search
properties. -/
structure CertifiedClassLocalDiffusion
    (profile : ClassWeightProfile family)
    (initial : State → ℚ) : Prop where
  fineTypeComplete :
    ∀ time : ℕ,
      TypeCompleteAt (fun state : State => state)
        (profile.classLocalSieve.normalizedKernel.evolve
          initial (time + 1))
  transitionSupport :
    ∀ source target : State,
      0 < profile.searchKernel.transition source target ↔
        profile.familyInventory.certified source target
  pathSupport :
    ∀ depth : ℕ, ∀ source target : State,
      profile.searchKernel.positivePath depth source target ↔
        BoundedPath profile.familyInventory.certified
          depth source target
  representativeCoverage :
    profile.representativeSearchUnion = (Finset.univ : Finset State)

/-- Positive initial aggregate mass in every collision class supplies the full
finite diffusion/search certificate. -/
theorem certifiedClassLocalDiffusion_of_classComplete
    (profile : ClassWeightProfile family)
    (initial : State → ℚ)
    (initialClassComplete :
      TypeCompleteAt family.classOf initial) :
    CertifiedClassLocalDiffusion profile initial where
  fineTypeComplete :=
    profile.fineTypeComplete_all_positive_times
      initial initialClassComplete
  transitionSupport := by
    intro source target
    exact profile.positive_transition_iff_certified source target
  pathSupport := by
    intro depth source target
    exact profile.positivePath_iff_certifiedPath
      depth source target
  representativeCoverage :=
    profile.representativeSearchUnion_eq_univ

/-- Complete fine-state diffusion and exact certified support can coexist with
failure of exact decoding from the paired radical and radical-factored
universal `K₀`-shaped feature. -/
theorem certified_diffusion_but_feature_not_decodable
    (profile : ClassWeightProfile family)
    (initial : State → ℚ)
    (initialClassComplete :
      TypeCompleteAt family.classOf initial)
    {M : Type*} [CommMonoid M] (lift : ℕ →* M)
    {first second : State}
    (sameClass :
      family.classOf first = family.classOf second)
    (different : first ≠ second) :
    CertifiedClassLocalDiffusion profile initial ∧
      ¬ ∃ decode : GrothendieckKZero M × ℕ → State,
          ∀ state : State,
            decode
                (kZeroRadical lift (family.value state),
                  Nat.radical (family.value state)) = state := by
  exact ⟨profile.certifiedClassLocalDiffusion_of_classComplete
      initial initialClassComplete,
    profile.no_exact_feature_decoder_of_class_collision
      lift sameClass different⟩

end ClassWeightProfile

end GenericFamilySearch

end GRWTSK.Algebra.KTheory.FinitePrimePowerFamilySearchDiffusion
