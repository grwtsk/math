/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Finite height tensor and layer-preserving sofic presentation

This module packages the existing alternating prime-power diffusion observations
into a finite tensor whose coordinates distinguish:

* a bounded discrete schedule height;
* the certified, candidate, or admissible Graph Sandwich layer;
* source and target states;
* the actual diffusion-operator coefficient;
* the rational and real target heat observations;
* edge-local and slice-level provenance.

It also presents every height slice as a finite labelled sofic graph. The labels
are essential: certified labels coincide exactly with positive diffusion support,
whereas candidate and admissible labels cover the full finite vocabulary. After
forgetting labels, the resulting graph is complete and therefore contains
cross-class edges whose diffusion weight is zero. This is an explicit negative
control against promoting candidate or admissible transitions to certified
mathematical consequences.

The height coordinate is finite schedule time. It is not a zeta-zero ordinate.
The tensor is complete only relative to the selected finite height horizon and
the three-state arithmetic carrier. It proves no analytic heat semigroup,
eigenvalue completeness, Chowla cancellation, Kim--Vu probabilistic coupling,
Frobenius realization, Hilbert--Polya operator, Riemann hypothesis, or
compression estimate.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion

open scoped BigOperators
open GRWTSK.Algebra.KTheory.FinitePrimePowerFamilySearchDiffusion
open GRWTSK.GraphSandwichDiffusion
open GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover

namespace AlternatingExponentProfile

/-- The three Graph Sandwich coordinates retained by the finite tensor and its
sofic labels. -/
inductive ObservationLayer where
  | certified
  | candidate
  | admissible
  deriving DecidableEq, Fintype, Repr

/-- One coordinate of a bounded finite height observation tensor. -/
structure TensorCoordinate (horizon : Nat) where
  height : Fin (horizon + 1)
  layer : ObservationLayer
  source : State
  target : State
  deriving DecidableEq, Fintype, Repr

/-- Canonical coordinate constructor. -/
def tensorCoordinate
    (horizon : Nat) (height : Fin (horizon + 1))
    (layer : ObservationLayer) (source target : State) :
    TensorCoordinate horizon where
  height := height
  layer := layer
  source := source
  target := target

/-- Select the exact relation represented by one layer at one height. -/
def layerRelationAt
    (height : Nat) (layer : ObservationLayer)
    (source target : State) : Prop :=
  match layer with
  | .certified =>
      (profileAt height).familyInventory.certified source target
  | .candidate =>
      (profileAt height).familyInventory.candidate source target
  | .admissible =>
      (profileAt height).familyInventory.admissible source target

/-- Edge-local provenance record. The layer does not change the mathematical
classification: a same-class pair has a proved supplier, while a cross-class
pair remains unresolved even when retained by candidate/admissible scope. -/
def layerRecordAt
    (height : Nat) (_layer : ObservationLayer)
    (source target : State) :
    RelationshipRecord source target :=
  (profileAt height).familyRelationshipRecord source target

@[simp]
theorem layerRelationAt_certified_iff
    (height : Nat) (source target : State) :
    layerRelationAt height .certified source target ↔
      family.classOf source = family.classOf target := by
  change (profileAt height).familyInventory.certified source target ↔
    family.classOf source = family.classOf target
  exact (profileAt height).familyInventory_certified_iff source target

@[simp]
theorem layerRelationAt_candidate
    (height : Nat) (source target : State) :
    layerRelationAt height .candidate source target := by
  change (profileAt height).familyInventory.candidate source target
  exact (profileAt height).familyInventory_candidate source target

@[simp]
theorem layerRelationAt_admissible
    (height : Nat) (source target : State) :
    layerRelationAt height .admissible source target := by
  change (profileAt height).familyInventory.admissible source target
  exact (profileAt height).familyInventory_admissible source target

@[simp]
theorem layerRecordAt_verified_of_sameClass
    (height : Nat) (layer : ObservationLayer)
    {source target : State}
    (sameClass : family.classOf source = family.classOf target) :
    (layerRecordAt height layer source target).relationship =
      RelationshipClass.verifiedImplication := by
  simpa [layerRecordAt] using
    (profileAt height).sameClass_record_is_verified sameClass

@[simp]
theorem layerRecordAt_unresolved_of_crossClass
    (height : Nat) (layer : ObservationLayer)
    {source target : State}
    (different : family.classOf source ≠ family.classOf target) :
    (layerRecordAt height layer source target).relationship =
      RelationshipClass.unresolvedSupplier := by
  simpa [layerRecordAt] using
    (profileAt height).crossClass_record_is_unresolved different

/-- A bounded finite tensor of operator, heat, relation, and provenance data. -/
structure FiniteHeightObservationTensor (horizon : Nat) where
  relation : TensorCoordinate horizon → Prop
  operatorWeight : TensorCoordinate horizon → ℝ
  rationalObservation : TensorCoordinate horizon → ℚ
  realObservation : TensorCoordinate horizon → ℝ
  relationship :
    (coordinate : TensorCoordinate horizon) →
      RelationshipRecord coordinate.source coordinate.target
  proofProvenance : TensorCoordinate horizon → List SourceIdentity
  analogyProvenance : TensorCoordinate horizon → List SourceIdentity
  unresolvedSuppliers : TensorCoordinate horizon → List SourceIdentity

/-- The canonical tensor on every height from zero through `horizon`. -/
def heightTensor (horizon : Nat) :
    FiniteHeightObservationTensor horizon where
  relation := fun coordinate =>
    layerRelationAt coordinate.height.val coordinate.layer
      coordinate.source coordinate.target
  operatorWeight := fun coordinate =>
    (observationAt coordinate.height.val).spectral.diffusionWeight
      coordinate.source coordinate.target
  rationalObservation := fun coordinate =>
    (observationAt coordinate.height.val).rationalHeat coordinate.target
  realObservation := fun coordinate =>
    (observationAt coordinate.height.val).realHeat coordinate.target
  relationship := fun coordinate =>
    layerRecordAt coordinate.height.val coordinate.layer
      coordinate.source coordinate.target
  proofProvenance := fun coordinate =>
    (observationAt coordinate.height.val).proofProvenance
  analogyProvenance := fun coordinate =>
    (observationAt coordinate.height.val).analogyProvenance
  unresolvedSuppliers := fun coordinate =>
    (observationAt coordinate.height.val).unresolvedSuppliers

/-- Explicit finite coordinate inventory. -/
def tensorCoordinates (horizon : Nat) :
    Finset (TensorCoordinate horizon) :=
  Finset.univ

@[simp]
theorem mem_tensorCoordinates
    (horizon : Nat) (coordinate : TensorCoordinate horizon) :
    coordinate ∈ tensorCoordinates horizon := by
  simp [tensorCoordinates]

/-- The actual diffusion coefficient is positive exactly at the certified tensor
coordinate. Candidate/admissible scope is not used in this equivalence. -/
theorem heightTensor_weight_positive_iff_certified
    (horizon : Nat) (height : Fin (horizon + 1))
    (source target : State) :
    0 < (heightTensor horizon).operatorWeight
        (tensorCoordinate horizon height .certified source target) ↔
      (heightTensor horizon).relation
        (tensorCoordinate horizon height .certified source target) := by
  simpa [heightTensor, tensorCoordinate, layerRelationAt] using
    spectralHeightAt_positive_iff_certified height.val source target

/-- Every candidate coordinate is represented in the declared finite scope. -/
theorem heightTensor_candidate_relation
    (horizon : Nat) (height : Fin (horizon + 1))
    (source target : State) :
    (heightTensor horizon).relation
      (tensorCoordinate horizon height .candidate source target) := by
  simpa [heightTensor, tensorCoordinate] using
    layerRelationAt_candidate height.val source target

/-- Every admissible coordinate is represented in the declared finite scope. -/
theorem heightTensor_admissible_relation
    (horizon : Nat) (height : Fin (horizon + 1))
    (source target : State) :
    (heightTensor horizon).relation
      (tensorCoordinate horizon height .admissible source target) := by
  simpa [heightTensor, tensorCoordinate] using
    layerRelationAt_admissible height.val source target

/-- Rational and real tensor observations are exactly cast-compatible. -/
theorem heightTensor_observation_cast
    (horizon : Nat) (height : Fin (horizon + 1))
    (layer : ObservationLayer) (source target : State) :
    (heightTensor horizon).realObservation
        (tensorCoordinate horizon height layer source target) =
      ((heightTensor horizon).rationalObservation
        (tensorCoordinate horizon height layer source target) : ℝ) := by
  simpa [heightTensor, tensorCoordinate] using
    (observationAt height.val).cast_spec target

/-- Every tensor target observation retains the concrete uniform `1 / 6` floor. -/
theorem heightTensor_realObservation_oneSixth_lower
    (horizon : Nat) (height : Fin (horizon + 1))
    (layer : ObservationLayer) (source target : State) :
    (1 / 6 : ℝ) ≤
      (heightTensor horizon).realObservation
        (tensorCoordinate horizon height layer source target) := by
  simpa [heightTensor, tensorCoordinate] using
    (observationAt height.val).real_floor target

/-- Cross-class pairs remain represented at candidate and admissible layers,
but their actual diffusion coefficient is exactly zero. -/
theorem heightTensor_crossClass_candidate_admissible_zero
    (horizon : Nat) (height : Fin (horizon + 1))
    {source target : State}
    (different : family.classOf source ≠ family.classOf target) :
    (heightTensor horizon).relation
        (tensorCoordinate horizon height .candidate source target) ∧
      (heightTensor horizon).relation
        (tensorCoordinate horizon height .admissible source target) ∧
      (heightTensor horizon).operatorWeight
        (tensorCoordinate horizon height .candidate source target) = 0 := by
  refine ⟨heightTensor_candidate_relation horizon height source target,
    heightTensor_admissible_relation horizon height source target, ?_⟩
  simpa [heightTensor, tensorCoordinate] using
    observationAt_crossClass_weight_zero height.val different

/-- The edge-local record for a cross-class candidate remains unresolved. -/
theorem heightTensor_crossClass_record_unresolved
    (horizon : Nat) (height : Fin (horizon + 1))
    {source target : State}
    (different : family.classOf source ≠ family.classOf target) :
    ((heightTensor horizon).relationship
      (tensorCoordinate horizon height .candidate source target)).relationship =
        RelationshipClass.unresolvedSupplier := by
  simpa [heightTensor, tensorCoordinate] using
    layerRecordAt_unresolved_of_crossClass
      height.val .candidate different

/-- The edge-local record for a same-class certified coordinate is verified. -/
theorem heightTensor_sameClass_record_verified
    (horizon : Nat) (height : Fin (horizon + 1))
    {source target : State}
    (sameClass : family.classOf source = family.classOf target) :
    ((heightTensor horizon).relationship
      (tensorCoordinate horizon height .certified source target)).relationship =
        RelationshipClass.verifiedImplication := by
  simpa [heightTensor, tensorCoordinate] using
    layerRecordAt_verified_of_sameClass
      height.val .certified sameClass

/-! ## Layer-preserving sofic presentation -/

/-- A finite labelled sofic graph for one height. Labels retain the Graph
Sandwich layer rather than collapsing all represented transitions together. -/
def sandwichSoficGraphAt (height : Nat) :
    SoficGraph State ObservationLayer where
  edge := fun source layer target =>
    layerRelationAt height layer source target

@[simp]
theorem sandwichSoficGraphAt_certified_iff
    (height : Nat) (source target : State) :
    (sandwichSoficGraphAt height).edge source .certified target ↔
      family.classOf source = family.classOf target := by
  exact layerRelationAt_certified_iff height source target

@[simp]
theorem sandwichSoficGraphAt_candidate_edge
    (height : Nat) (source target : State) :
    (sandwichSoficGraphAt height).edge source .candidate target := by
  exact layerRelationAt_candidate height source target

@[simp]
theorem sandwichSoficGraphAt_admissible_edge
    (height : Nat) (source target : State) :
    (sandwichSoficGraphAt height).edge source .admissible target := by
  exact layerRelationAt_admissible height source target

/-- Certified sofic labels coincide exactly with positive diffusion support. -/
theorem spectralWeight_positive_iff_soficCertifiedEdge
    (height : Nat) (source target : State) :
    0 < (spectralHeightAt height).diffusionWeight source target ↔
      (sandwichSoficGraphAt height).edge
        source .certified target := by
  simpa [sandwichSoficGraphAt, layerRelationAt] using
    spectralHeightAt_positive_iff_certified height source target

/-- The unlabelled adapter is complete because candidate labels exist for every
ordered pair. This theorem is finite scope coverage, not certification. -/
theorem unlabeledSoficGraph_edge
    (height : Nat) (source target : State) :
    (fromSoficGraph (sandwichSoficGraphAt height)).edge source target := by
  exact ⟨.candidate,
    sandwichSoficGraphAt_candidate_edge height source target⟩

/-- Forgetting the layer label can create an unlabelled edge with zero diffusion
weight. This is the principal negative control for the sofic adapter. -/
theorem unlabeledSoficEdge_with_zeroWeight_of_crossClass
    (height : Nat) {source target : State}
    (different : family.classOf source ≠ family.classOf target) :
    (fromSoficGraph (sandwichSoficGraphAt height)).edge source target ∧
      (spectralHeightAt height).diffusionWeight source target = 0 := by
  refine ⟨unlabeledSoficGraph_edge height source target, ?_⟩
  exact observationAt_crossClass_weight_zero height different

/-- Certified edge relation extracted from the labelled sofic graph. -/
def certifiedSoficEdgeAt
    (height : Nat) (source target : State) : Prop :=
  (sandwichSoficGraphAt height).edge source .certified target

/-- Positive exact-length kernel paths are exactly bounded paths through the
certified-labelled sofic relation. Candidate and admissible labels do not enter
this equivalence. -/
theorem positivePath_iff_certifiedSoficPath_at
    (height depth : Nat) (source target : State) :
    (schedule.realKernelAt height).positivePath depth source target ↔
      BoundedPath (certifiedSoficEdgeAt height)
        depth source target := by
  simpa [certifiedSoficEdgeAt, sandwichSoficGraphAt, layerRelationAt] using
    positivePath_iff_certifiedPath_at
      height depth source target

/-- Reusable package for bounded tensor coverage and layer-preserving sofic
support. -/
structure HeightTensorSoficCertificate (horizon : Nat) : Prop where
  coordinateCoverage :
    ∀ coordinate : TensorCoordinate horizon,
      coordinate ∈ tensorCoordinates horizon
  positiveSupport :
    ∀ height : Fin (horizon + 1), ∀ source target,
      0 < (heightTensor horizon).operatorWeight
          (tensorCoordinate horizon height .certified source target) ↔
        (heightTensor horizon).relation
          (tensorCoordinate horizon height .certified source target)
  candidateAdmissibleCoverage :
    ∀ height : Fin (horizon + 1), ∀ source target,
      (heightTensor horizon).relation
          (tensorCoordinate horizon height .candidate source target) ∧
        (heightTensor horizon).relation
          (tensorCoordinate horizon height .admissible source target)
  pathSupport :
    ∀ height : Fin (horizon + 1), ∀ depth source target,
      (schedule.realKernelAt height.val).positivePath
          depth source target ↔
        BoundedPath (certifiedSoficEdgeAt height.val)
          depth source target
  observationCast :
    ∀ height : Fin (horizon + 1), ∀ layer source target,
      (heightTensor horizon).realObservation
          (tensorCoordinate horizon height layer source target) =
        ((heightTensor horizon).rationalObservation
          (tensorCoordinate horizon height layer source target) : ℝ)
  observationFloor :
    ∀ height : Fin (horizon + 1), ∀ layer source target,
      (1 / 6 : ℝ) ≤
        (heightTensor horizon).realObservation
          (tensorCoordinate horizon height layer source target)
  crossClassControl :
    ∀ height : Fin (horizon + 1), ∀ source target,
      family.classOf source ≠ family.classOf target →
        (fromSoficGraph
          (sandwichSoficGraphAt height.val)).edge source target ∧
        (heightTensor horizon).operatorWeight
          (tensorCoordinate horizon height .candidate source target) = 0

/-- The canonical bounded height tensor satisfies the complete finite
layer-preserving sofic certificate. -/
theorem canonicalHeightTensorSoficCertificate
    (horizon : Nat) :
    HeightTensorSoficCertificate horizon where
  coordinateCoverage := by
    intro coordinate
    exact mem_tensorCoordinates horizon coordinate
  positiveSupport := by
    intro height source target
    exact heightTensor_weight_positive_iff_certified
      horizon height source target
  candidateAdmissibleCoverage := by
    intro height source target
    exact ⟨heightTensor_candidate_relation horizon height source target,
      heightTensor_admissible_relation horizon height source target⟩
  pathSupport := by
    intro height depth source target
    exact positivePath_iff_certifiedSoficPath_at
      height.val depth source target
  observationCast := by
    intro height layer source target
    exact heightTensor_observation_cast
      horizon height layer source target
  observationFloor := by
    intro height layer source target
    exact heightTensor_realObservation_oneSixth_lower
      horizon height layer source target
  crossClassControl := by
    intro height source target different
    refine ⟨unlabeledSoficGraph_edge height.val source target, ?_⟩
    simpa [heightTensor, tensorCoordinate] using
      observationAt_crossClass_weight_zero height.val different

end AlternatingExponentProfile

end GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion
