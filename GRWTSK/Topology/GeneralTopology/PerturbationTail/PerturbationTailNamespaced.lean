-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ExactBoundaryTail.Variantc73745f1985b3da6b86bc206c8dff036df7f8dcd6b9397c15c94eed9dba7e735","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c73745f1985b3da6b86bc206c8dff036df7f8dcd6b9397c15c94eed9dba7e735","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ExactBoundaryTail.Variantc73745f1985b3da6b86bc206c8dff036df7f8dcd6b9397c15c94eed9dba7e735","mathematical_subject":"Topology.GeneralTopology","original_sha256":"c73745f1985b3da6b86bc206c8dff036df7f8dcd6b9397c15c94eed9dba7e735","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/PerturbationTail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.MobiusOntology.PerturbedBoundary

/-!
# Evidence-bearing perturbation-tail classification

The resolver classifies a weighted defect tail only when the corresponding
proof object is present.  `unknown` is an explicit result and is never encoded
as divergence, rejection, zero, or a missing bit.
-/


namespace GRWTSK.Topology.GeneralTopology.ExactBoundaryTail.Variantc73745f1985b3da6b86bc206c8dff036df7f8dcd6b9397c15c94eed9dba7e735

namespace Mathematics.MobiusOntology

open Filter
open scoped NNReal Topology

universe u v

def weightedPerturbationTail
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule)
    (depth : ℕ) : ℝ≥0 :=
  perturbed.transportedError schedule depth 0

theorem transportedError_eq_geometric_add_tail
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule)
    (depth : ℕ)
    (initial : ℝ≥0) :
    perturbed.transportedError schedule depth initial =
      exact.contraction ^ depth * initial +
        weightedPerturbationTail perturbed schedule depth := by
  induction depth with
  | zero =>
      simp [weightedPerturbationTail,
        PerturbedBoundaryCertificate.transportedError]
  | succ depth inductionHypothesis =>
      simp only
        [PerturbedBoundaryCertificate.transportedError,
          weightedPerturbationTail]
      rw [inductionHypothesis]
      rw [pow_succ]
      ring

/--
The exact perturbed cross-schedule estimate.  Nonzero tail floors remain
visible and therefore cannot authorize unique asymptotic semantics.
-/
theorem perturbed_cross_schedule_nndist_le
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (left : PerturbedBoundaryCertificate exact)
    (right : PerturbedBoundaryCertificate exact)
    (leftSchedule rightSchedule : ℕ → Schedule)
    {leftInitial rightInitial : State}
    (left_mem : leftInitial ∈ exact.basin)
    (right_mem : rightInitial ∈ exact.basin)
    (depth : ℕ) :
    nndist
        (iteratePerturbed
          left leftSchedule depth leftInitial)
        (iteratePerturbed
          right rightSchedule depth rightInitial) ≤
      exact.contraction ^ depth *
          (nndist leftInitial exact.boundary +
            nndist rightInitial exact.boundary) +
        weightedPerturbationTail
          left leftSchedule depth +
        weightedPerturbationTail
          right rightSchedule depth := by
  calc
    nndist
        (iteratePerturbed
          left leftSchedule depth leftInitial)
        (iteratePerturbed
          right rightSchedule depth rightInitial) ≤
      nndist
          (iteratePerturbed
            left leftSchedule depth leftInitial)
          exact.boundary +
        nndist
          (iteratePerturbed
            right rightSchedule depth rightInitial)
          exact.boundary := by
            simpa [nndist_comm exact.boundary] using
              (nndist_triangle
                (iteratePerturbed
                  left leftSchedule depth leftInitial)
                exact.boundary
                (iteratePerturbed
                  right rightSchedule depth rightInitial))
    _ ≤
      left.transportedError leftSchedule depth
          (nndist leftInitial exact.boundary) +
        right.transportedError rightSchedule depth
          (nndist rightInitial exact.boundary) :=
      add_le_add
        (left.iterate_error_le
          leftSchedule left_mem depth)
        (right.iterate_error_le
          rightSchedule right_mem depth)
    _ =
      exact.contraction ^ depth *
          (nndist leftInitial exact.boundary +
            nndist rightInitial exact.boundary) +
        weightedPerturbationTail
          left leftSchedule depth +
        weightedPerturbationTail
          right rightSchedule depth := by
      rw [transportedError_eq_geometric_add_tail,
        transportedError_eq_geometric_add_tail]
      ring

/-! ## Outcome certificates -/

structure ExactBoundaryTail
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule) where
  weightedTailVanishes :
    Tendsto
      (weightedPerturbationTail perturbed schedule)
      atTop
      (𝓝 0)
  transportedErrorVanishes :
    ∀ initial,
      Tendsto
        (fun depth =>
          perturbed.transportedError
            schedule depth initial)
        atTop
        (𝓝 0)

def ExactBoundaryTail.toBoundaryCertificate
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    {perturbed : PerturbedBoundaryCertificate exact}
    {schedule : ℕ → Schedule}
    (certificate :
      ExactBoundaryTail perturbed schedule)
    (initial : ℝ≥0) :
    ExactTransportedErrorCertificate
      perturbed schedule initial where
  vanishes :=
    certificate.transportedErrorVanishes initial

theorem perturbed_traversal_exact_boundary
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule)
    {initial : State}
    (initial_mem : initial ∈ exact.basin)
    (tail : ExactBoundaryTail perturbed schedule) :
    Tendsto
      (fun depth =>
        iteratePerturbed
          perturbed schedule depth initial)
      atTop
      (𝓝 exact.boundary) :=
  perturbed_traversal_tendsto_boundary
    perturbed schedule initial_mem
    (tail.toBoundaryCertificate
      (nndist initial exact.boundary))

structure ResidualBoundaryTail
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule) where
  radius : ℝ≥0
  weightedLimsup :
    ∀ epsilon : ℝ≥0,
      0 < epsilon →
      ∀ᶠ depth in atTop,
        weightedPerturbationTail
            perturbed schedule depth ≤
          radius + epsilon
  transportedLimsup :
    ∀ initial epsilon : ℝ≥0,
      0 < epsilon →
      ∀ᶠ depth in atTop,
        perturbed.transportedError
            schedule depth initial ≤
          radius + epsilon

/--
Approximate boundary determinacy: an accepted residual outcome gives an
eventual radius, not convergence to the boundary.
-/
theorem perturbed_traversal_residual_boundary
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule)
    {initial : State}
    (initial_mem : initial ∈ exact.basin)
    (tail : ResidualBoundaryTail perturbed schedule) :
    ∀ epsilon : ℝ≥0,
      0 < epsilon →
      ∀ᶠ depth in atTop,
        nndist
            (iteratePerturbed
              perturbed schedule depth initial)
            exact.boundary ≤
          tail.radius + epsilon := by
  intro epsilon epsilon_pos
  filter_upwards
    [tail.transportedLimsup
      (nndist initial exact.boundary)
      epsilon epsilon_pos] with
      depth transportedBound
  exact le_trans
    (perturbed.iterate_error_le
      schedule initial_mem depth)
    transportedBound

structure UnboundedPerturbationTail
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule) where
  witness :
    ∀ bound : ℝ≥0,
      ∃ depth,
        bound <
          weightedPerturbationTail
            perturbed schedule depth

inductive PerturbationTailUnknownReason
  | missingLimitProof
  | missingResidualRadius
  | missingDivergenceWitness
  | conflictingEvidence
  deriving DecidableEq, Repr, Fintype

inductive PerturbationTailOutcome
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule)
  | exactBoundary
      (certificate :
        ExactBoundaryTail perturbed schedule)
  | residualBoundary
      (certificate :
        ResidualBoundaryTail perturbed schedule)
  | unboundedTail
      (certificate :
        UnboundedPerturbationTail perturbed schedule)
  | unknownTail
      (reason : PerturbationTailUnknownReason)

def PerturbationTailOutcome.authorizesExactBoundary
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    {perturbed : PerturbedBoundaryCertificate exact}
    {schedule : ℕ → Schedule} :
    PerturbationTailOutcome perturbed schedule → Bool
  | .exactBoundary _ => true
  | .residualBoundary _ => false
  | .unboundedTail _ => false
  | .unknownTail _ => false

/-! ## Sufficient evidence, kept separate from outcomes -/

structure VanishingDefectEvidence
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule) where
  vanishes :
    Tendsto
      (fun depth =>
        perturbed.perturbation
          depth (schedule depth))
      atTop
      (𝓝 0)

structure SummableDefectEvidence
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule) where
  summable :
    Summable
      (fun depth =>
        (perturbed.perturbation
          depth (schedule depth) : ℝ))

structure UniformDefectBoundEvidence
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule) where
  bound : ℝ≥0
  sound :
    ∀ depth,
      perturbed.perturbation
          depth (schedule depth) ≤
        bound

structure FiniteSupportDefectEvidence
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule) where
  cutoff : ℕ
  vanishesAfter :
    ∀ depth,
      cutoff ≤ depth →
      perturbed.perturbation
          depth (schedule depth) = 0

structure GeometricDefectEvidence
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule) where
  constant : ℝ≥0
  ratio : ℝ≥0
  ratio_lt_one : ratio < 1
  sound :
    ∀ depth,
      perturbed.perturbation
          depth (schedule depth) ≤
        constant * ratio ^ depth

inductive PerturbationTailEvidence
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule)
  | vanishing
      (evidence :
        VanishingDefectEvidence perturbed schedule)
  | summable
      (evidence :
        SummableDefectEvidence perturbed schedule)
  | uniformlyBounded
      (evidence :
        UniformDefectBoundEvidence perturbed schedule)
  | finiteSupport
      (evidence :
        FiniteSupportDefectEvidence perturbed schedule)
  | geometricDecay
      (evidence :
        GeometricDefectEvidence perturbed schedule)

/-- Vanishing tails force two admitted perturbed schedules together. -/
theorem perturbed_traversal_limit_deterministic
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (left : PerturbedBoundaryCertificate exact)
    (right : PerturbedBoundaryCertificate exact)
    (leftSchedule rightSchedule : ℕ → Schedule)
    {leftInitial rightInitial : State}
    (left_mem : leftInitial ∈ exact.basin)
    (right_mem : rightInitial ∈ exact.basin)
    (leftTail : ExactBoundaryTail left leftSchedule)
    (rightTail : ExactBoundaryTail right rightSchedule) :
    Tendsto
      (fun depth =>
        nndist
          (iteratePerturbed
            left leftSchedule depth leftInitial)
          (iteratePerturbed
            right rightSchedule depth rightInitial))
      atTop
      (𝓝 0) := by
  have upperTends :
      Tendsto
        (fun depth =>
          left.transportedError leftSchedule depth
              (nndist leftInitial exact.boundary) +
            right.transportedError rightSchedule depth
              (nndist rightInitial exact.boundary))
        atTop
        (𝓝 0) :=
    (leftTail.transportedErrorVanishes
      (nndist leftInitial exact.boundary)).add
      (rightTail.transportedErrorVanishes
        (nndist rightInitial exact.boundary))
  exact
    tendsto_of_tendsto_of_tendsto_of_le_of_le
      tendsto_const_nhds
      upperTends
      (fun _ => bot_le)
      (fun depth =>
        le_trans
          (nndist_triangle
            (iteratePerturbed
              left leftSchedule depth leftInitial)
            exact.boundary
            (iteratePerturbed
              right rightSchedule depth rightInitial))
          (by
            simpa [nndist_comm exact.boundary] using
              add_le_add
                (left.iterate_error_le
                  leftSchedule left_mem depth)
                (right.iterate_error_le
                  rightSchedule right_mem depth)))

/--
Residual tails authorize only an eventual common residual neighborhood.
They do not imply that the two traversals become indistinguishable.
-/
theorem perturbed_cross_schedule_residual_semantics
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (left : PerturbedBoundaryCertificate exact)
    (right : PerturbedBoundaryCertificate exact)
    (leftSchedule rightSchedule : ℕ → Schedule)
    {leftInitial rightInitial : State}
    (left_mem : leftInitial ∈ exact.basin)
    (right_mem : rightInitial ∈ exact.basin)
    (leftTail :
      ResidualBoundaryTail left leftSchedule)
    (rightTail :
      ResidualBoundaryTail right rightSchedule) :
    ∀ epsilon : ℝ≥0,
      0 < epsilon →
      ∀ᶠ depth in atTop,
        nndist
            (iteratePerturbed
              left leftSchedule depth leftInitial)
            (iteratePerturbed
              right rightSchedule depth rightInitial) ≤
          leftTail.radius + rightTail.radius +
            2 * epsilon := by
  intro epsilon epsilon_pos
  filter_upwards
    [leftTail.transportedLimsup
      (nndist leftInitial exact.boundary)
      epsilon epsilon_pos,
     rightTail.transportedLimsup
      (nndist rightInitial exact.boundary)
      epsilon epsilon_pos] with
      depth leftBound rightBound
  calc
    nndist
        (iteratePerturbed
          left leftSchedule depth leftInitial)
        (iteratePerturbed
          right rightSchedule depth rightInitial) ≤
      nndist
          (iteratePerturbed
            left leftSchedule depth leftInitial)
          exact.boundary +
        nndist
          (iteratePerturbed
            right rightSchedule depth rightInitial)
          exact.boundary := by
            simpa [nndist_comm exact.boundary] using
              (nndist_triangle
                (iteratePerturbed
                  left leftSchedule depth leftInitial)
                exact.boundary
                (iteratePerturbed
                  right rightSchedule depth rightInitial))
    _ ≤
      left.transportedError leftSchedule depth
          (nndist leftInitial exact.boundary) +
        right.transportedError rightSchedule depth
          (nndist rightInitial exact.boundary) :=
      add_le_add
        (left.iterate_error_le
          leftSchedule left_mem depth)
        (right.iterate_error_le
          rightSchedule right_mem depth)
    _ ≤
      (leftTail.radius + epsilon) +
        (rightTail.radius + epsilon) :=
      add_le_add leftBound rightBound
    _ =
      leftTail.radius + rightTail.radius +
        2 * epsilon := by
      ring

/--
Strong perturbed equivalence quantifies over every admitted implementation
and schedule whose weighted tail has an exact-boundary certificate.
-/
def StronglyPerturbedAsymptoticallyEquivalent
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (exact :
      ContractiveBoundaryCertificate State Schedule)
    (leftInitial rightInitial : State) : Prop :=
  leftInitial ∈ exact.basin ∧
    rightInitial ∈ exact.basin ∧
    ∀ (left right : PerturbedBoundaryCertificate exact)
      (leftSchedule rightSchedule : ℕ → Schedule),
      ExactBoundaryTail left leftSchedule →
      ExactBoundaryTail right rightSchedule →
      Tendsto
        (fun depth =>
          nndist
            (iteratePerturbed
              left leftSchedule depth leftInitial)
            (iteratePerturbed
              right rightSchedule depth rightInitial))
        atTop
        (𝓝 0)

theorem basin_states_strongly_perturbed_equivalent
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (exact :
      ContractiveBoundaryCertificate State Schedule)
    {leftInitial rightInitial : State}
    (left_mem : leftInitial ∈ exact.basin)
    (right_mem : rightInitial ∈ exact.basin) :
    StronglyPerturbedAsymptoticallyEquivalent
      exact leftInitial rightInitial := by
  refine ⟨left_mem, right_mem, ?_⟩
  intro left right leftSchedule rightSchedule
    leftTail rightTail
  exact
    perturbed_traversal_limit_deterministic
      left right leftSchedule rightSchedule
      left_mem right_mem leftTail rightTail

end Mathematics.MobiusOntology
