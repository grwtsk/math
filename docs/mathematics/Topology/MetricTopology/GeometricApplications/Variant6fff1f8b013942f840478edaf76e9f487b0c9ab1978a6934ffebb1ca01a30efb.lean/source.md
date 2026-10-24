# Complete source: GRWTSK.Topology.MetricTopology.GeometricApplications.Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4e296b55239a755d7e3cf2fa59956cfa2c3ba55` · SHA-256 `7df79cd42c5ef945b7aa7acd6c3ecbf7c67394886b843af2aa0b4159e4fb3e87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.PositiveScalarCurvatureSemantics.Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.PositiveScalarCurvatureSemantics.Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d","mathematical_subject":"Topology.MetricSpaces","original_sha256":"f2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/SmoothFramedSurgery/GeometricApplications.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.SmoothFramedSurgery.DisjointCommutation
import Mathlib.Data.Real.Basic

/-!
# Conditional geometric applications of framed surgery

This module records two classical geometric uses of smooth surgery without
pretending that their analytic constructions follow from the abstract
topological surgery interface alone.

The positive-scalar-curvature layer separates the smooth metric semantics from
the construction capability.  A capability may be applied only to an interior
framed surgery of codimension at least three on a compact, collared admissible
manifold.  The input metric is product-like at the old boundary and standard on
the closure of the selected neighborhood, with an explicit gluing-compatibility
witness.  Its output includes positivity, preservation of the product-boundary
condition, and agreement with the old metric on the certified exterior.  No
conclusion about sectional curvature, Ricci curvature, a quantitative
scalar-curvature lower bound, completeness, or uniqueness is encoded.

The three-dimensional Ricci-flow layer similarly keeps its analytic hypotheses
independent.  Strong neck detection, canonical neighborhoods, curvature
pinching, noncollapsing, cap construction, and continuation are distinct fields
of the input.  The finite disjoint topological surgeries have core and normal
dimensions `(2, 1)` and carry a coherent family of typed transported-site
executions.  The pre-deletion slice is indexed by the final manifold of one
selected execution; selected eligible deletions, the retained union,
post-deletion metric, and continued flow are separate output data.  The flow
has an explicit interval, initial time, initial metric, and validity witness.
Neither closedness nor discardability is inferred from the local operation;
no uniqueness, global-time existence, canonical singular-flow, or convergence
claim is encoded.

Both layers are conditional ports.  Concrete differential-geometric models
must construct the corresponding capabilities; this file derives only the
conclusions present in those checked records.  In particular it neither builds
a smooth metric nor proves a global Ricci-flow existence theorem.
-/


namespace GRWTSK.Topology.MetricTopology.PositiveScalarCurvatureSemantics.Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d

namespace Surface.SmoothFramedSurgery

universe uGeometricData

/-! ## Positive scalar curvature -/

/--
The geometric vocabulary needed to state a codimension-at-least-three
positive-scalar-curvature surgery result for an abstract surgery theory.

`AgreesOutside e neighborhood before after` is deliberately part of the
supplying model: it expresses equality after restriction to the common
exterior selected by `neighborhood`.
-/
structure PositiveScalarCurvatureSemantics
    (T : SmoothFramedSurgeryTheory) where
  Metric : T.Manifold → Type uGeometricData
  SurgeryNeighborhood :
    {p q : Nat} → {M : T.Manifold} →
      T.FramedEmbedding p q M → Type uGeometricData
  NeighborhoodClosure :
    {p q : Nat} → {M : T.Manifold} →
      (embedding : T.FramedEmbedding p q M) →
      SurgeryNeighborhood embedding → Type uGeometricData
  AdmissibleManifold : T.Manifold → Prop
  CompactManifold : T.Manifold → Prop
  CollaredBoundary : T.Manifold → Prop
  InteriorEmbedding :
    {p q : Nat} → {M : T.Manifold} →
      T.FramedEmbedding p q M → Prop
  PositiveScalarCurvature :
    {M : T.Manifold} → Metric M → Prop
  ProductNearBoundary :
    {M : T.Manifold} → Metric M → Prop
  IsNeighborhoodClosure :
    {p q : Nat} → {M : T.Manifold} →
      (embedding : T.FramedEmbedding p q M) →
      (neighborhood : SurgeryNeighborhood embedding) →
      NeighborhoodClosure embedding neighborhood → Prop
  StandardOnNeighborhoodClosure :
    {p q : Nat} → {M : T.Manifold} →
      (embedding : T.FramedEmbedding p q M) →
      (neighborhood : SurgeryNeighborhood embedding) →
      NeighborhoodClosure embedding neighborhood → Metric M → Prop
  GluingCompatible :
    {p q : Nat} → {M : T.Manifold} →
      (embedding : T.FramedEmbedding p q M) →
      (neighborhood : SurgeryNeighborhood embedding) →
      NeighborhoodClosure embedding neighborhood → Metric M → Prop
  AgreesOutside :
    {p q : Nat} → {M : T.Manifold} →
      (embedding : T.FramedEmbedding p q M) →
      SurgeryNeighborhood embedding →
      Metric M → Metric (T.surgery embedding) → Prop

/--
All hypotheses used by one positive-scalar-curvature surgery construction.
The normal-disk dimension `q` is the surgery codimension in this interface.
-/
structure PSCSurgeryInput
    (T : SmoothFramedSurgeryTheory)
    (G : PositiveScalarCurvatureSemantics T)
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M) where
  metric : G.Metric M
  neighborhood : G.SurgeryNeighborhood embedding
  neighborhoodClosure : G.NeighborhoodClosure embedding neighborhood
  codimension_at_least_three : 3 ≤ q
  manifold_admissible : G.AdmissibleManifold M
  manifold_compact : G.CompactManifold M
  manifold_collared : G.CollaredBoundary M
  embedding_interior : G.InteriorEmbedding embedding
  positive : G.PositiveScalarCurvature metric
  product_near_boundary : G.ProductNearBoundary metric
  neighborhood_closure_valid :
    G.IsNeighborhoodClosure embedding neighborhood neighborhoodClosure
  standard_near_surgery_site :
    G.StandardOnNeighborhoodClosure
      embedding neighborhood neighborhoodClosure metric
  gluing_compatible :
    G.GluingCompatible embedding neighborhood neighborhoodClosure metric

/--
The exact output promised by the positive-scalar-curvature surgery capability:
a positive metric that is unchanged on the certified exterior.
-/
structure PSCSurgeryOutput
    (T : SmoothFramedSurgeryTheory)
    (G : PositiveScalarCurvatureSemantics T)
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    (input : PSCSurgeryInput T G embedding) where
  metric : G.Metric (T.surgery embedding)
  positive : G.PositiveScalarCurvature metric
  product_near_boundary : G.ProductNearBoundary metric
  agreesOutside :
    G.AgreesOutside embedding input.neighborhood input.metric metric

/--
An explicit construction capability for positive-scalar-curvature surgery.
Possessing only `SmoothFramedSurgeryTheory` does not manufacture this value.
-/
structure PSCSurgeryCapability
    (T : SmoothFramedSurgeryTheory)
    (G : PositiveScalarCurvatureSemantics T) where
  construct :
    {p q : Nat} → {M : T.Manifold} →
      {embedding : T.FramedEmbedding p q M} →
      (input : PSCSurgeryInput T G embedding) →
        PSCSurgeryOutput T G input

/-- The input certificate retains the codimension-three threshold exactly. -/
theorem psc_codimension_at_least_three
    {T : SmoothFramedSurgeryTheory}
    {G : PositiveScalarCurvatureSemantics T}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    (input : PSCSurgeryInput T G embedding) :
    3 ≤ q :=
  input.codimension_at_least_three

/--
A supplied construction capability produces a positive metric on the surgered
manifold, with exact agreement outside the chosen neighborhood.
-/
theorem exists_psc_metric_after_surgery
    {T : SmoothFramedSurgeryTheory}
    {G : PositiveScalarCurvatureSemantics T}
    (capability : PSCSurgeryCapability T G)
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    (input : PSCSurgeryInput T G embedding) :
    ∃ postMetric : G.Metric (T.surgery embedding),
      G.PositiveScalarCurvature postMetric ∧
      G.ProductNearBoundary postMetric ∧
      G.AgreesOutside
        embedding input.neighborhood input.metric postMetric := by
  let output := capability.construct input
  exact ⟨output.metric, output.positive, output.product_near_boundary,
    output.agreesOutside⟩

/-- The explicitly requested product collar is preserved by the supplied capability. -/
theorem psc_surgery_product_near_boundary
    {T : SmoothFramedSurgeryTheory}
    {G : PositiveScalarCurvatureSemantics T}
    (capability : PSCSurgeryCapability T G)
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    (input : PSCSurgeryInput T G embedding) :
    G.ProductNearBoundary (capability.construct input).metric :=
  (capability.construct input).product_near_boundary

/-! ## Three-dimensional Ricci-flow surgery -/

/--
The finite disjoint topological data underlying one three-dimensional neck
surgery event.  Every site is an `S² × D¹` framed site.  Rather than naming an
unconstrained simultaneous result, the record selects one order inside a
`CoherentDisjointFamilyExecution`; its pre-deletion manifold is therefore the
final state of a typed chain of transported-site surgeries.
-/
structure RicciNeckSurgeryTopology
    (T : SmoothFramedSurgeryTheory)
    (G : RelativeBoundaryDiffeomorphismTheory T)
    (M : T.Manifold)
    (count : Nat) where
  family : FiniteDisjointFramedFamily T M count
  coreDimension_eq_two : ∀ i, family.p i = 2
  normalDimension_eq_one : ∀ i, family.q i = 1
  coherentExecution : CoherentDisjointFamilyExecution G family
  selectedOrder : Equiv.Perm (Fin count)

namespace RicciNeckSurgeryTopology

/-- The selected typed execution of the disjoint neck family. -/
def selectedExecution
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {M : T.Manifold} {count : Nat}
    (topology : RicciNeckSurgeryTopology T G M count) :
    OrderedDisjointExecution topology.family
      topology.coherentExecution.semantics topology.selectedOrder :=
  topology.coherentExecution.execution topology.selectedOrder

/-- The pre-deletion topological slice is the result of the selected execution. -/
def preDeletionManifold
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {M : T.Manifold} {count : Nat}
    (topology : RicciNeckSurgeryTopology T G M count) : T.Manifold :=
  topology.selectedExecution.result

/-- The pre-deletion manifold is definitionally the final typed execution state. -/
@[simp]
theorem preDeletionManifold_eq_selectedExecution_result
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {M : T.Manifold} {count : Nat}
    (topology : RicciNeckSurgeryTopology T G M count) :
    topology.preDeletionManifold = topology.selectedExecution.result :=
  rfl

/-- Every alternative order is coherently compared with the selected execution. -/
def comparisonFromSelectedOrder
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {M : T.Manifold} {count : Nat}
    (topology : RicciNeckSurgeryTopology T G M count)
    (order : Equiv.Perm (Fin count)) :
    G.Hom topology.preDeletionManifold
      (topology.coherentExecution.execution order).result :=
  topology.coherentExecution.comparison topology.selectedOrder order

/-- The selected result is relatively diffeomorphic to every other typed order result. -/
theorem selectedExecution_commutes_with
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {M : T.Manifold} {count : Nat}
    (topology : RicciNeckSurgeryTopology T G M count)
    (order : Equiv.Perm (Fin count)) :
    T.RelBoundaryDiffeomorphic topology.preDeletionManifold
      (topology.coherentExecution.execution order).result :=
  G.sound (topology.comparisonFromSelectedOrder order)

/-- Every certified Ricci neck site has two-dimensional spherical core. -/
theorem coreDimension
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {M : T.Manifold} {count : Nat}
    (topology : RicciNeckSurgeryTopology T G M count)
    (i : Fin count) :
    topology.family.p i = 2 :=
  topology.coreDimension_eq_two i

/-- Every certified Ricci neck site has one-dimensional normal disk. -/
theorem normalDimension
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {M : T.Manifold} {count : Nat}
    (topology : RicciNeckSurgeryTopology T G M count)
    (i : Fin count) :
    topology.family.q i = 1 :=
  topology.normalDimension_eq_one i

end RicciNeckSurgeryTopology

/--
The analytic and geometric vocabulary required by a smooth three-dimensional
Ricci-flow surgery model.  Each named hypothesis remains a separate predicate,
so none can silently stand in for another.
-/
structure RicciFlowSurgerySemantics
    (T : SmoothFramedSurgeryTheory) where
  Metric : T.Manifold → Type uGeometricData
  Time : Type uGeometricData
  FlowInterval : Type uGeometricData
  TimeInInterval : Time → FlowInterval → Prop
  PostSurgeryFlow : (M : T.Manifold) → FlowInterval → Type uGeometricData
  flowInitialMetric :
    {M : T.Manifold} → {interval : FlowInterval} →
      PostSurgeryFlow M interval → Metric M
  IsRicciFlow :
    {M : T.Manifold} → {interval : FlowInterval} →
      PostSurgeryFlow M interval → Prop
  StrongDeltaNeck :
    {p q : Nat} → {M : T.Manifold} →
      Metric M → ℝ → T.FramedEmbedding p q M → Prop
  CanonicalNeighborhoodHypothesis :
    {M : T.Manifold} → Metric M → Prop
  CurvaturePinched :
    {M : T.Manifold} → Metric M → Prop
  KappaNoncollapsed :
    {M : T.Manifold} → Metric M → ℝ → Prop
  CapConstructionHypothesis :
    {M : T.Manifold} → {count : Nat} →
      FiniteDisjointFramedFamily T M count → Metric M → Prop
  ContinuationHypothesis :
    {M : T.Manifold} → Metric M → Prop
  DeletedComponents : T.Manifold → Type uGeometricData
  DeletionEligible :
    {X : T.Manifold} → DeletedComponents X → Prop
  RetainedUnion :
    {X : T.Manifold} → DeletedComponents X → Type uGeometricData
  retainedManifold :
    {X : T.Manifold} → {deleted : DeletedComponents X} →
      RetainedUnion deleted → T.Manifold
  IsRetainedUnion :
    {X : T.Manifold} → {deleted : DeletedComponents X} →
      (retained : RetainedUnion deleted) → Prop
  deleteComponents :
    (X : T.Manifold) → DeletedComponents X → T.Manifold
  PreDeletionSurgerySlice :
    {M N : T.Manifold} → {count : Nat} →
      FiniteDisjointFramedFamily T M count →
      Metric M → Metric N → Prop
  PostMetricOnRetainedUnion :
    {X : T.Manifold} → {deleted : DeletedComponents X} →
      (retained : RetainedUnion deleted) →
      Metric X → Metric (retainedManifold retained) → Prop
  MetricsCorrespondAcrossRelBoundaryDiffeomorphism :
    {X Y : T.Manifold} → Metric X → Metric Y → Prop
  StandardCapsInserted :
    {M N : T.Manifold} → {count : Nat} →
      FiniteDisjointFramedFamily T M count → Metric M → Metric N → Prop
  ContinuesAfterSurgery :
    {M N : T.Manifold} → Metric M → Metric N → Prop

/--
The independently stated hypotheses for one finite Ricci-flow surgery event.
Positivity of `delta` and `kappa` is explicit, as are the analytic assumptions
at the pre-surgery metric.
-/
structure RicciFlowSurgeryInput
    (T : SmoothFramedSurgeryTheory)
    (G : RelativeBoundaryDiffeomorphismTheory T)
    (R : RicciFlowSurgerySemantics T)
    (M : T.Manifold) (count : Nat) where
  topology : RicciNeckSurgeryTopology T G M count
  preMetric : R.Metric M
  delta : ℝ
  delta_pos : 0 < delta
  kappa : ℝ
  kappa_pos : 0 < kappa
  strongNecks :
    ∀ i, R.StrongDeltaNeck preMetric delta (topology.family.embedding i)
  canonicalNeighborhood : R.CanonicalNeighborhoodHypothesis preMetric
  pinched : R.CurvaturePinched preMetric
  noncollapsed : R.KappaNoncollapsed preMetric kappa
  capConstruction :
    R.CapConstructionHypothesis topology.family preMetric
  continuationAdmissible : R.ContinuationHypothesis preMetric

/--
Output of a certified Ricci-flow surgery step.  Local neck surgery first gives
the simultaneous topological result.  The selected components and a proof of
their eligibility for deletion are retained explicitly, and `postManifold` is
compared with that deletion by a relative-boundary diffeomorphism.
-/
structure RicciFlowSurgeryOutput
    (T : SmoothFramedSurgeryTheory)
    (G : RelativeBoundaryDiffeomorphismTheory T)
    (R : RicciFlowSurgerySemantics T)
    {M : T.Manifold} {count : Nat}
    (input : RicciFlowSurgeryInput T G R M count) where
  preDeletionMetric :
    R.Metric input.topology.preDeletionManifold
  preDeletionSlice :
    R.PreDeletionSurgerySlice
      input.topology.family input.preMetric preDeletionMetric
  deletedComponents :
    R.DeletedComponents input.topology.preDeletionManifold
  deletionEligible : R.DeletionEligible deletedComponents
  retainedUnion : R.RetainedUnion deletedComponents
  retainedUnion_valid : R.IsRetainedUnion retainedUnion
  postManifold : T.Manifold
  topologyAfterDeletion :
    T.RelBoundaryDiffeomorphic
      postManifold
      (R.retainedManifold retainedUnion)
  retainedUnionAgreesWithDeletion :
    T.RelBoundaryDiffeomorphic
      (R.retainedManifold retainedUnion)
      (R.deleteComponents
        input.topology.preDeletionManifold deletedComponents)
  postMetric : R.Metric postManifold
  retainedMetric : R.Metric (R.retainedManifold retainedUnion)
  postMetricOnRetainedUnion :
    R.PostMetricOnRetainedUnion retainedUnion preDeletionMetric retainedMetric
  postMetricCorrespondsToRetainedMetric :
    R.MetricsCorrespondAcrossRelBoundaryDiffeomorphism postMetric retainedMetric
  capsInserted :
    R.StandardCapsInserted
      input.topology.family input.preMetric postMetric
  pinchingPreserved : R.CurvaturePinched postMetric
  noncollapsedPreserved : R.KappaNoncollapsed postMetric input.kappa
  continuation : R.ContinuesAfterSurgery input.preMetric postMetric
  flowInterval : R.FlowInterval
  flowInitialTime : R.Time
  flowInitialTime_mem : R.TimeInInterval flowInitialTime flowInterval
  postSurgeryFlow : R.PostSurgeryFlow postManifold flowInterval
  postSurgeryFlow_valid : R.IsRicciFlow postSurgeryFlow
  postSurgeryFlow_initial_metric :
    R.flowInitialMetric postSurgeryFlow = postMetric

/--
An explicit capability that performs one Ricci-flow surgery step under all
the hypotheses retained by `RicciFlowSurgeryInput`.
-/
structure RicciFlowSurgeryCapability
    (T : SmoothFramedSurgeryTheory)
    (G : RelativeBoundaryDiffeomorphismTheory T)
    (R : RicciFlowSurgerySemantics T) where
  construct :
    {M : T.Manifold} → {count : Nat} →
      (input : RicciFlowSurgeryInput T G R M count) →
        RicciFlowSurgeryOutput T G R input

/-- A capability returns the complete certified output record. -/
def ricciFlowSurgery
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {R : RicciFlowSurgerySemantics T}
    (capability : RicciFlowSurgeryCapability T G R)
    {M : T.Manifold} {count : Nat}
    (input : RicciFlowSurgeryInput T G R M count) :
    RicciFlowSurgeryOutput T G R input :=
  capability.construct input

/-- The output exposes, rather than assumes in prose, deletion eligibility. -/
theorem ricci_flow_surgery_deletion_eligible
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {R : RicciFlowSurgerySemantics T}
    (capability : RicciFlowSurgeryCapability T G R)
    {M : T.Manifold} {count : Nat}
    (input : RicciFlowSurgeryInput T G R M count) :
    let output := ricciFlowSurgery capability input
    R.DeletionEligible output.deletedComponents :=
  (ricciFlowSurgery capability input).deletionEligible

/--
The post-surgery manifold is relative-boundary diffeomorphic to the simultaneous
finite neck surgery after the explicitly selected components are deleted.
-/
theorem ricci_flow_surgery_topology_after_deletion
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {R : RicciFlowSurgerySemantics T}
    (capability : RicciFlowSurgeryCapability T G R)
    {M : T.Manifold} {count : Nat}
    (input : RicciFlowSurgeryInput T G R M count) :
    let output := ricciFlowSurgery capability input
    T.RelBoundaryDiffeomorphic
      output.postManifold
      (R.retainedManifold output.retainedUnion) :=
  (ricciFlowSurgery capability input).topologyAfterDeletion

/-- The metric immediately after the local surgeries is a distinct pre-deletion slice. -/
theorem ricci_flow_pre_deletion_slice
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {R : RicciFlowSurgerySemantics T}
    (capability : RicciFlowSurgeryCapability T G R)
    {M : T.Manifold} {count : Nat}
    (input : RicciFlowSurgeryInput T G R M count) :
    let output := ricciFlowSurgery capability input
    R.PreDeletionSurgerySlice
      input.topology.family input.preMetric output.preDeletionMetric :=
  (ricciFlowSurgery capability input).preDeletionSlice

/-- The retained union is selected and certified separately from deletion eligibility. -/
theorem ricci_flow_retained_union_valid
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {R : RicciFlowSurgerySemantics T}
    (capability : RicciFlowSurgeryCapability T G R)
    {M : T.Manifold} {count : Nat}
    (input : RicciFlowSurgeryInput T G R M count) :
    let output := ricciFlowSurgery capability input
    R.IsRetainedUnion output.retainedUnion :=
  (ricciFlowSurgery capability input).retainedUnion_valid

/-- The post metric is related to the retained-union metric by an explicit predicate. -/
theorem ricci_flow_post_metric_corresponds
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {R : RicciFlowSurgerySemantics T}
    (capability : RicciFlowSurgeryCapability T G R)
    {M : T.Manifold} {count : Nat}
    (input : RicciFlowSurgeryInput T G R M count) :
    let output := ricciFlowSurgery capability input
    R.MetricsCorrespondAcrossRelBoundaryDiffeomorphism
      output.postMetric output.retainedMetric :=
  (ricciFlowSurgery capability input).postMetricCorrespondsToRetainedMetric

/-- The supplied continuation has an explicit interval, initial time, and initial metric. -/
theorem ricci_flow_post_surgery_flow
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {R : RicciFlowSurgerySemantics T}
    (capability : RicciFlowSurgeryCapability T G R)
    {M : T.Manifold} {count : Nat}
    (input : RicciFlowSurgeryInput T G R M count) :
    let output := ricciFlowSurgery capability input
    R.TimeInInterval output.flowInitialTime output.flowInterval ∧
      R.IsRicciFlow output.postSurgeryFlow ∧
      R.flowInitialMetric output.postSurgeryFlow = output.postMetric := by
  let output := ricciFlowSurgery capability input
  exact ⟨output.flowInitialTime_mem, output.postSurgeryFlow_valid,
    output.postSurgeryFlow_initial_metric⟩

/--
All analytic conclusions of the capability are exposed together, without
strengthening them to an unconditional existence or long-time theorem.
-/
theorem ricci_flow_surgery_analytic_conclusions
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {R : RicciFlowSurgerySemantics T}
    (capability : RicciFlowSurgeryCapability T G R)
    {M : T.Manifold} {count : Nat}
    (input : RicciFlowSurgeryInput T G R M count) :
    let output := ricciFlowSurgery capability input
    R.StandardCapsInserted
        input.topology.family input.preMetric output.postMetric ∧
      R.CurvaturePinched output.postMetric ∧
      R.KappaNoncollapsed output.postMetric input.kappa ∧
      R.ContinuesAfterSurgery input.preMetric output.postMetric := by
  let output := ricciFlowSurgery capability input
  exact ⟨output.capsInserted, output.pinchingPreserved,
    output.noncollapsedPreserved, output.continuation⟩

end Surface.SmoothFramedSurgery
```
