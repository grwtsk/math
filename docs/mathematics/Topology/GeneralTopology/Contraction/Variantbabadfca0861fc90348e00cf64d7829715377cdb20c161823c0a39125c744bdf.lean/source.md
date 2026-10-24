# Complete source: GRWTSK.Topology.GeneralTopology.Contraction.Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `449b924ca4a98fa36dac3e64a989f2f20aa2b6d9` · SHA-256 `71a7d9147ededd3a88a3d25fd1a122afd00fa04650ca505fd3d60c59a9156ce1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.PerturbationKind.Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.PerturbationKind.Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0","mathematical_subject":"Topology.GeneralTopology","original_sha256":"ff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Operational/Contraction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Operational.Stability
import Mathlib.Topology.MetricSpace.Contracting

/-!
# Certified contraction and perturbation persistence

The contraction region is an ambient closed set together with a proof that it
lies in the operator's invariant domain.  This lets completeness arise from
the ambient complete metric carrier and closedness, rather than from a stored
Boolean capability.

Pointwise operator perturbation has its own indexed magnitude type.  Kernel,
representation, norm-profile, scheduling, and snapshot perturbations are
different types and cannot be substituted into the displacement theorem
without a separate bridge.
-/


namespace GRWTSK.Topology.GeneralTopology.PerturbationKind.Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0

namespace Mathematics.Operational

open Filter
open scoped NNReal

universe u

variable {State : Type u} [MetricSpace State]

/-- Mutually noninterchangeable perturbation channels. -/
inductive PerturbationKind
  | pointwiseOperator
  | operatorNorm
  | representation
  | kernel
  | normProfile
  | runtimeScheduling
  | snapshotComponent
  deriving DecidableEq, Repr

/-- A nonnegative magnitude indexed by exactly one perturbation channel. -/
structure PerturbationMagnitude (kind : PerturbationKind) where
  value : ℝ
  nonnegative : 0 ≤ value

/--
A strict contraction on one nonempty closed region contained in a versioned
operator's certified domain.
-/
structure ContractionCertificate
    (operator : VersionedOperator State) where
  region : Set State
  region_nonempty : region.Nonempty
  region_closed : IsClosed region
  region_in_domain : region ≤ operator.domain
  invariant : Set.MapsTo operator.rawMap region region
  factor : ℝ≥0
  contractive :
    ContractingWith factor
      (invariant.restrict operator.rawMap region region)

namespace ContractionCertificate

variable
    {operator : VersionedOperator State}
    (certificate : ContractionCertificate operator)

/-- The closed contraction region is complete in a complete ambient carrier. -/
theorem region_isComplete [CompleteSpace State] :
    IsComplete certificate.region :=
  certificate.region_closed.isComplete

/-- The certified restricted update. -/
def regionStep :
    certificate.region → certificate.region :=
  certificate.invariant.restrict
    operator.rawMap certificate.region certificate.region

/-- Strict contraction supplies the required positive denominator. -/
theorem one_sub_factor_positive :
    0 < 1 - (certificate.factor : ℝ) :=
  certificate.contractive.one_sub_K_pos

/-- The canonical Banach fixed point inside the certified region. -/
noncomputable def regionFixedPoint [CompleteSpace State] :
    certificate.region := by
  letI : CompleteSpace certificate.region :=
    certificate.region_isComplete.completeSpace_coe
  letI : Nonempty certificate.region :=
    certificate.region_nonempty.to_subtype
  exact certificate.contractive.fixedPoint certificate.regionStep

/-- The canonical region point satisfies the restricted update exactly. -/
theorem regionFixedPoint_fixed [CompleteSpace State] :
    Function.IsFixedPt certificate.regionStep
      certificate.regionFixedPoint := by
  letI : CompleteSpace certificate.region :=
    certificate.region_isComplete.completeSpace_coe
  letI : Nonempty certificate.region :=
    certificate.region_nonempty.to_subtype
  exact certificate.contractive.fixedPoint_isFixedPt

/-- The canonical region point as an operator-indexed exact fixed point. -/
noncomputable def certifiedFixedPoint [CompleteSpace State] :
    CertifiedFixedPoint operator where
  point :=
    ⟨certificate.regionFixedPoint,
      certificate.region_in_domain
        certificate.regionFixedPoint.property⟩
  fixed := by
    apply Subtype.ext
    change
      operator.rawMap
          (certificate.regionFixedPoint : State) =
        certificate.regionFixedPoint
    exact congrArg Subtype.val certificate.regionFixedPoint_fixed

/-- The canonical exact fixed point remains inside the contraction region. -/
theorem certifiedFixedPoint_mem_region [CompleteSpace State] :
    (certificate.certifiedFixedPoint.point : State) ∈
      certificate.region :=
  certificate.regionFixedPoint.property

/-- Every exact operator fixed point in the region is the canonical one. -/
theorem fixedPoint_unique_in_region
    [CompleteSpace State]
    (candidate : CertifiedFixedPoint operator)
    (candidate_mem :
      (candidate.point : State) ∈ certificate.region) :
    candidate.point =
      certificate.certifiedFixedPoint.point := by
  letI : CompleteSpace certificate.region :=
    certificate.region_isComplete.completeSpace_coe
  letI : Nonempty certificate.region :=
    certificate.region_nonempty.to_subtype
  let candidateInRegion : certificate.region :=
    ⟨candidate.point, candidate_mem⟩
  have candidateFixed :
      Function.IsFixedPt certificate.regionStep
        candidateInRegion := by
    apply Subtype.ext
    change
      operator.rawMap (candidate.point : State) =
        candidate.point
    exact candidate.raw_step_eq
  have regionEquality :
      candidateInRegion = certificate.regionFixedPoint :=
    certificate.contractive.fixedPoint_unique'
      candidateFixed certificate.regionFixedPoint_fixed
  exact congrArg
    (fun point : certificate.region ↦
      (⟨point, certificate.region_in_domain point.property⟩ :
        operator.domain))
    regionEquality

/-- Every region iterate converges to the canonical region fixed point. -/
theorem tendsto_iterates
    [CompleteSpace State]
    (state : certificate.region) :
    Tendsto
      (fun iteration ↦
        (certificate.regionStep^[iteration]) state)
      atTop
      (nhds certificate.regionFixedPoint) := by
  letI : CompleteSpace certificate.region :=
    certificate.region_isComplete.completeSpace_coe
  letI : Nonempty certificate.region :=
    certificate.region_nonempty.to_subtype
  exact certificate.contractive.tendsto_iterate_fixedPoint state

/-- Explicit geometric convergence bound on every region iterate. -/
theorem iterate_distance_le
    [CompleteSpace State]
    (state : certificate.region)
    (iteration : Nat) :
    dist
        ((certificate.regionStep^[iteration]) state)
        certificate.regionFixedPoint ≤
      dist state (certificate.regionStep state) *
        (certificate.factor : ℝ) ^ iteration /
        (1 - (certificate.factor : ℝ)) := by
  letI : CompleteSpace certificate.region :=
    certificate.region_isComplete.completeSpace_coe
  letI : Nonempty certificate.region :=
    certificate.region_nonempty.to_subtype
  exact
    certificate.contractive.apriori_dist_iterate_fixedPoint_le
      state iteration

end ContractionCertificate

/--
Uniform pointwise discrepancy of two versioned operators on one shared
region.  Both updates must preserve that region.
-/
structure PointwiseOperatorPerturbationOn
    (reference candidate : VersionedOperator State)
    (region : Set State) where
  reference_invariant :
    Set.MapsTo reference.rawMap region region
  candidate_invariant :
    Set.MapsTo candidate.rawMap region region
  magnitude :
    PerturbationMagnitude .pointwiseOperator
  pointwise :
    ∀ state ∈ region,
      dist (reference.rawMap state)
          (candidate.rawMap state) ≤
        magnitude.value

/--
A fixed point of a pointwise-perturbed operator moves by at most
`η / (1 - q)` inside the shared region.
-/
theorem fixedPoint_displacement_le
    {reference candidate : VersionedOperator State}
    (contraction : ContractionCertificate reference)
    (perturbation :
      PointwiseOperatorPerturbationOn
        reference candidate contraction.region)
    (referencePoint : CertifiedFixedPoint reference)
    (candidatePoint : CertifiedFixedPoint candidate)
    (reference_mem :
      (referencePoint.point : State) ∈ contraction.region)
    (candidate_mem :
      (candidatePoint.point : State) ∈ contraction.region) :
    dist (referencePoint.point : State)
        (candidatePoint.point : State) ≤
      perturbation.magnitude.value /
        (1 - (contraction.factor : ℝ)) := by
  let referenceInRegion : contraction.region :=
    ⟨referencePoint.point, reference_mem⟩
  let candidateInRegion : contraction.region :=
    ⟨candidatePoint.point, candidate_mem⟩
  have referenceFixed :
      Function.IsFixedPt contraction.regionStep
        referenceInRegion := by
    apply Subtype.ext
    change
      reference.rawMap (referencePoint.point : State) =
        referencePoint.point
    exact referencePoint.raw_step_eq
  let candidateStep :
      contraction.region → contraction.region :=
    perturbation.candidate_invariant.restrict
      candidate.rawMap contraction.region contraction.region
  have candidateFixed :
      Function.IsFixedPt candidateStep
        candidateInRegion := by
    apply Subtype.ext
    change
      candidate.rawMap (candidatePoint.point : State) =
        candidatePoint.point
    exact candidatePoint.raw_step_eq
  have pointwiseRestricted :
      ∀ state : contraction.region,
        dist (contraction.regionStep state)
            (candidateStep state) ≤
          perturbation.magnitude.value := by
    intro state
    exact perturbation.pointwise state state.property
  simpa [referenceInRegion, candidateInRegion, Subtype.dist_eq] using
    contraction.contractive.dist_fixedPoint_fixedPoint_of_dist_le'
      candidateStep referenceFixed candidateFixed
      pointwiseRestricted

end Mathematics.Operational
```
