import Surface.SmoothFramedSurgery.Core
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.LinearPMap
import Mathlib.Analysis.Normed.Operator.Compact.Basic
import Mathlib.Topology.MetricSpace.Basic

/-!
# Conditional point-cloud reconstruction and spectral comparison

This module separates two analytic tasks from the abstract topology of framed
surgery.

The reconstruction interface starts with a finite sample in an ambient metric
space, an explicit distance unit and scale, and a model-supplied proof that its
represented point type realizes the outgoing surgery manifold.  The two
directed errors (carrier-to-sample coverage and sample-to-carrier noise) are
kept distinct.  Reach, feature-separation, exterior-separation, collar-width,
and labeled correspondence data are explicit hypotheses.  A reconstruction
capability then returns five separately checked recovery relations for the
post-surgery carrier, core, framing, exterior, and collar.  Neither a
framed-surgery certificate nor a curvature certificate constructs it.

The spectral interface records exact vertex masses, discrete inner product,
normalization coefficients, graph operator formula, and weighted
self-adjointness.  The continuum Laplace--Beltrami realization is a genuinely
partially defined linear operator on a Hilbert space: its `LinearPMap` domain
is dense because the operator is self-adjoint in Mathlib's unbounded-operator
sense.  Compact resolvent is witnessed by an actual compact continuous linear
map together with both inverse equations for a selected real shift.  Boundary
realization and sign remain explicit inputs.  Interpolation, restriction, norm
compatibility, isolated clusters, eigengaps, and projectors are also named
data.  The only conclusion is a fixed finite-mode error bound; no limit,
asymptotic, or convergence theorem is encoded.

These are conditional ports.  They prevent smooth surgery, positive scalar
curvature, Ricci flow, or homotopy information from being used as a substitute
for sampling geometry or an analytic comparison.  Concrete geometric and
probabilistic developments must construct the capabilities below.
-/

namespace Surface.SmoothFramedSurgery

open scoped BigOperators

universe uPoint uAmbient uRecovery uFunction uEigenspace uProjector

/-! ## Finite samples of a post-surgery manifold -/

/--
A finite point cloud whose represented point type is explicitly related to the
manifold obtained by the specified surgery.  The representation predicate, the
map into the ambient metric space, and its injectivity are parts of the
observation model rather than consequences of surgery.
-/
structure PostSurgeryPointCloud
    (T : SmoothFramedSurgeryTheory)
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M)
    (sampleSize : Nat) where
  Point : Type uPoint
  Ambient : Type uAmbient
  DistanceUnit : Type uAmbient
  distanceUnit : DistanceUnit
  metricUnitScale : ℝ
  metricUnitScale_pos : 0 < metricUnitScale
  RealizesManifold : Type uPoint → T.Manifold → Prop
  point_type_represents_surgery :
    RealizesManifold Point (T.surgery embedding)
  ambientMetricSpace : MetricSpace Ambient
  embed : Point → Ambient
  embed_injective : Function.Injective embed
  sample : Fin sampleSize → Ambient

namespace PostSurgeryPointCloud

/-- The observation model explicitly identifies its point type with the outgoing manifold. -/
theorem point_type_realizes_surgery
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    (O : PostSurgeryPointCloud T embedding sampleSize) :
    O.RealizesManifold O.Point (T.surgery embedding) :=
  O.point_type_represents_surgery

/-- The metric supplied by the observation model, exposed without a global instance. -/
def ambientDistance
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    (O : PostSurgeryPointCloud T embedding sampleSize)
    (x y : O.Ambient) : ℝ := by
  letI := O.ambientMetricSpace
  exact dist x y

/-- Distance expressed in the observation's explicitly selected unit. -/
noncomputable def ambientDistanceInUnits
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    (O : PostSurgeryPointCloud T embedding sampleSize)
    (x y : O.Ambient) : ℝ :=
  O.ambientDistance x y / O.metricUnitScale

/-- The embedded geometric carrier represented by the observation model. -/
def manifoldImage
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    (O : PostSurgeryPointCloud T embedding sampleSize) : Set O.Ambient :=
  Set.range O.embed

/-- The finite support of the observed sample. -/
def sampleSupport
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    (O : PostSurgeryPointCloud T embedding sampleSize) : Set O.Ambient :=
  Set.range O.sample

end PostSurgeryPointCloud

/--
Geometric predicates supplied by the concrete smooth/metric model.  They tie
numeric scales to the actual outgoing image and surgery data.  Merely choosing
a positive real number does not produce any of these propositions.
-/
structure PointCloudGeometricSemantics
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    (O : PostSurgeryPointCloud T embedding sampleSize) where
  CoreCorrespondenceData : Type uRecovery
  FramingCorrespondenceData : Type uRecovery
  ExteriorCorrespondenceData : Type uRecovery
  CollarCorrespondenceData : Type uRecovery
  HasReachAtLeast : Set O.Ambient → ℝ → Prop
  CoreSeparatedAt :
    T.FramedEmbedding p q M → T.Manifold → ℝ → Prop
  FramingSeparatedAt :
    T.FramedEmbedding p q M → T.Manifold → ℝ → Prop
  ExteriorSeparatedAt : T.Manifold → T.Manifold → ℝ → Prop
  CollarWidthAtLeast : T.Manifold → ℝ → Prop
  CoreIdentifiableAt :
    T.FramedEmbedding p q M → T.Manifold → ℝ →
      CoreCorrespondenceData → Prop
  FramingIdentifiableAt :
    T.FramedEmbedding p q M → T.Manifold → ℝ →
      FramingCorrespondenceData → Prop
  ExteriorIdentifiableAt :
    T.Manifold → T.Manifold → ℝ →
      ExteriorCorrespondenceData → Prop
  CollarIdentifiableAt :
    T.Manifold → ℝ → CollarCorrespondenceData → Prop

/--
Quantitative hypotheses for one reconstruction scale.  The two directed
closeness conditions distinguish coverage from observation noise.  The strict
inequalities in `Admissible` keep the chosen radius below the reach and keep
the geometric features separated at the reconstruction resolution.  Separate
proof fields certify that each numeric scale has its intended geometry.
-/
structure PointCloudReconstructionHypotheses
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    (O : PostSurgeryPointCloud T embedding sampleSize)
    (G : PointCloudGeometricSemantics O) where
  reachLowerBound : ℝ
  coverageRadius : ℝ
  noiseRadius : ℝ
  reconstructionRadius : ℝ
  coreFeatureScale : ℝ
  framingFeatureScale : ℝ
  exteriorSeparationScale : ℝ
  collarWidth : ℝ
  coreCorrespondence : G.CoreCorrespondenceData
  framingCorrespondence : G.FramingCorrespondenceData
  exteriorCorrespondence : G.ExteriorCorrespondenceData
  collarCorrespondence : G.CollarCorrespondenceData
  manifold_covered :
    ∀ x : O.Point, ∃ i : Fin sampleSize,
      O.ambientDistanceInUnits (O.embed x) (O.sample i) ≤ coverageRadius
  sample_near_manifold :
    ∀ i : Fin sampleSize, ∃ x : O.Point,
      O.ambientDistanceInUnits (O.sample i) (O.embed x) ≤ noiseRadius
  reach_certified :
    G.HasReachAtLeast O.manifoldImage reachLowerBound
  core_separation_certified :
    G.CoreSeparatedAt embedding (T.surgery embedding) coreFeatureScale
  framing_separation_certified :
    G.FramingSeparatedAt embedding (T.surgery embedding) framingFeatureScale
  exterior_separation_certified :
    G.ExteriorSeparatedAt M (T.surgery embedding) exteriorSeparationScale
  collar_width_certified :
    G.CollarWidthAtLeast (T.surgery embedding) collarWidth
  core_identifiable :
    G.CoreIdentifiableAt
      embedding (T.surgery embedding) coreFeatureScale coreCorrespondence
  framing_identifiable :
    G.FramingIdentifiableAt
      embedding (T.surgery embedding) framingFeatureScale framingCorrespondence
  exterior_identifiable :
    G.ExteriorIdentifiableAt
      M (T.surgery embedding) exteriorSeparationScale exteriorCorrespondence
  collar_identifiable :
    G.CollarIdentifiableAt
      (T.surgery embedding) collarWidth collarCorrespondence

namespace PointCloudReconstructionHypotheses

/--
The complete numerical corridor required by the abstract reconstruction
capability.  No one inequality is silently inferred from another.
-/
def Admissible
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    (H : PointCloudReconstructionHypotheses O G) : Prop :=
  0 < H.reachLowerBound ∧
  0 ≤ H.coverageRadius ∧
  0 ≤ H.noiseRadius ∧
  0 < H.reconstructionRadius ∧
  H.coverageRadius + H.noiseRadius < H.reconstructionRadius ∧
  H.reconstructionRadius + H.noiseRadius < H.reachLowerBound ∧
  2 * (H.coverageRadius + H.noiseRadius) < H.coreFeatureScale ∧
  2 * (H.coverageRadius + H.noiseRadius) < H.framingFeatureScale ∧
  2 * H.reconstructionRadius < H.exteriorSeparationScale ∧
  2 * H.reconstructionRadius < H.collarWidth

/-- The reach number is backed by the declared predicate on the outgoing image. -/
theorem reconstruction_has_reach
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    (H : PointCloudReconstructionHypotheses O G) :
    G.HasReachAtLeast O.manifoldImage H.reachLowerBound :=
  H.reach_certified

/-- The core scale is backed by separation of the selected surgery core. -/
theorem reconstruction_core_separated
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    (H : PointCloudReconstructionHypotheses O G) :
    G.CoreSeparatedAt embedding (T.surgery embedding) H.coreFeatureScale :=
  H.core_separation_certified

/-- The framing scale is backed by separation of the selected framing data. -/
theorem reconstruction_framing_separated
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    (H : PointCloudReconstructionHypotheses O G) :
    G.FramingSeparatedAt
      embedding (T.surgery embedding) H.framingFeatureScale :=
  H.framing_separation_certified

/-- The exterior scale is backed by a source/outgoing separation predicate. -/
theorem reconstruction_exterior_separated
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    (H : PointCloudReconstructionHypotheses O G) :
    G.ExteriorSeparatedAt
      M (T.surgery embedding) H.exteriorSeparationScale :=
  H.exterior_separation_certified

/-- The collar number is backed by a collar-width predicate on the outgoing manifold. -/
theorem reconstruction_has_collar_width
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    (H : PointCloudReconstructionHypotheses O G) :
    G.CollarWidthAtLeast (T.surgery embedding) H.collarWidth :=
  H.collar_width_certified

/-- Coverage is the directed error from the represented carrier to the sample. -/
theorem carrier_to_sample_error_le
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    (H : PointCloudReconstructionHypotheses O G)
    (x : O.Point) :
    ∃ i : Fin sampleSize,
      O.ambientDistanceInUnits (O.embed x) (O.sample i) ≤ H.coverageRadius :=
  H.manifold_covered x

/-- Noise is the opposite directed error, from each sample to the carrier. -/
theorem sample_to_carrier_error_le
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    (H : PointCloudReconstructionHypotheses O G)
    (i : Fin sampleSize) :
    ∃ x : O.Point,
      O.ambientDistanceInUnits (O.sample i) (O.embed x) ≤ H.noiseRadius :=
  H.sample_near_manifold i

/-- The core label is backed by an explicit quantitative identifiability predicate. -/
theorem reconstruction_core_identifiable
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    (H : PointCloudReconstructionHypotheses O G) :
    G.CoreIdentifiableAt embedding (T.surgery embedding)
      H.coreFeatureScale H.coreCorrespondence :=
  H.core_identifiable

/-- Framing correspondence is not inferred from core identification. -/
theorem reconstruction_framing_identifiable
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    (H : PointCloudReconstructionHypotheses O G) :
    G.FramingIdentifiableAt embedding (T.surgery embedding)
      H.framingFeatureScale H.framingCorrespondence :=
  H.framing_identifiable

/-- Exterior correspondence has its own target and separation scale. -/
theorem reconstruction_exterior_identifiable
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    (H : PointCloudReconstructionHypotheses O G) :
    G.ExteriorIdentifiableAt M (T.surgery embedding)
      H.exteriorSeparationScale H.exteriorCorrespondence :=
  H.exterior_identifiable

/-- Collar correspondence remains distinct from the exterior relation. -/
theorem reconstruction_collar_identifiable
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    (H : PointCloudReconstructionHypotheses O G) :
    G.CollarIdentifiableAt (T.surgery embedding)
      H.collarWidth H.collarCorrespondence :=
  H.collar_identifiable

end PointCloudReconstructionHypotheses

/--
The target vocabulary for reconstruction.  Each component has its own matching
relation, so recovering an ambient carrier cannot be mistaken for recovering
the framed core, the exterior identification, or collar data.
-/
structure PointCloudRecoverySemantics
    (T : SmoothFramedSurgeryTheory)
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M) where
  ManifoldCandidate : Type uRecovery
  CoreCandidate : Type uRecovery
  FramingCandidate : Type uRecovery
  ExteriorCandidate : Type uRecovery
  CollarCandidate : Type uRecovery
  CoreTarget : Type uRecovery
  FramingTarget : Type uRecovery
  ExteriorTarget : Type uRecovery
  CollarTarget : Type uRecovery
  targetCore : CoreTarget
  targetFraming : FramingTarget
  targetExterior : ExteriorTarget
  targetCollar : CollarTarget
  manifoldMatches : ManifoldCandidate → T.Manifold → Prop
  coreMatches : CoreCandidate → CoreTarget → Prop
  framingMatches : FramingCandidate → FramingTarget → Prop
  exteriorMatches : ExteriorCandidate → ExteriorTarget → Prop
  collarMatches : CollarCandidate → CollarTarget → Prop

/-- All five independently checked outputs of one reconstruction. -/
structure PointCloudRecovery
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    (S : PointCloudRecoverySemantics T embedding) where
  manifold : S.ManifoldCandidate
  core : S.CoreCandidate
  framing : S.FramingCandidate
  exterior : S.ExteriorCandidate
  collar : S.CollarCandidate
  manifoldCorrect : S.manifoldMatches manifold (T.surgery embedding)
  coreCorrect : S.coreMatches core S.targetCore
  framingCorrect : S.framingMatches framing S.targetFraming
  exteriorCorrect : S.exteriorMatches exterior S.targetExterior
  collarCorrect : S.collarMatches collar S.targetCollar

/--
An explicit conversion from the geometric correspondence labels appearing in
`H` to the exact target objects named by `S`.  The maps prevent a label that is
merely called “core” or “framing” from being used as evidence about an
unrelated recovery target; each selected label must map definitionally, up to
the displayed equality, to the target used in the recovery conclusion.
-/
structure PointCloudCorrespondenceBridge
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    (H : PointCloudReconstructionHypotheses O G)
    (S : PointCloudRecoverySemantics T embedding) where
  coreTargetOf : G.CoreCorrespondenceData → S.CoreTarget
  framingTargetOf : G.FramingCorrespondenceData → S.FramingTarget
  exteriorTargetOf : G.ExteriorCorrespondenceData → S.ExteriorTarget
  collarTargetOf : G.CollarCorrespondenceData → S.CollarTarget
  core_target_eq : coreTargetOf H.coreCorrespondence = S.targetCore
  framing_target_eq : framingTargetOf H.framingCorrespondence = S.targetFraming
  exterior_target_eq : exteriorTargetOf H.exteriorCorrespondence = S.targetExterior
  collar_target_eq : collarTargetOf H.collarCorrespondence = S.targetCollar

namespace PointCloudCorrespondenceBridge

variable
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    {H : PointCloudReconstructionHypotheses O G}
    {S : PointCloudRecoverySemantics T embedding}

/--
An explicit correspondence bridge supplies all four target equalities.  The
bridge is a material premise of this theorem rather than data recovered
implicitly from a reconstruction capability.
-/
theorem all_target_correspondences_exact
    (B : PointCloudCorrespondenceBridge H S) :
    B.coreTargetOf H.coreCorrespondence = S.targetCore ∧
      B.framingTargetOf H.framingCorrespondence = S.targetFraming ∧
      B.exteriorTargetOf H.exteriorCorrespondence = S.targetExterior ∧
      B.collarTargetOf H.collarCorrespondence = S.targetCollar :=
  ⟨B.core_target_eq,
    B.framing_target_eq,
    B.exterior_target_eq,
    B.collar_target_eq⟩

end PointCloudCorrespondenceBridge

/--
An explicit reconstruction theorem supplied by a concrete sampling model.
The abstract surgery layer has no constructor for this record.
-/
structure PointCloudReconstructionCapability
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    (O : PostSurgeryPointCloud T embedding sampleSize)
    (G : PointCloudGeometricSemantics O)
    (H : PointCloudReconstructionHypotheses O G)
    (S : PointCloudRecoverySemantics T embedding) where
  targetBridge : PointCloudCorrespondenceBridge H S
  reconstruct : H.Admissible → PointCloudRecovery S

namespace PointCloudReconstructionCapability

variable
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    {H : PointCloudReconstructionHypotheses O G}
    {S : PointCloudRecoverySemantics T embedding}

/-- The post-surgery manifold is recovered only through the supplied capability. -/
theorem manifold_recovered
    (C : PointCloudReconstructionCapability O G H S)
    (h : H.Admissible) :
    S.manifoldMatches (C.reconstruct h).manifold (T.surgery embedding) :=
  (C.reconstruct h).manifoldCorrect

/-- The selected surgery core is recovered at the declared feature scale. -/
theorem core_recovered
    (C : PointCloudReconstructionCapability O G H S)
    (h : H.Admissible) :
    S.coreMatches (C.reconstruct h).core S.targetCore :=
  (C.reconstruct h).coreCorrect

/-- Core recovery and the exact interpretation of the input core label. -/
theorem core_recovered_with_target_bridge
    (C : PointCloudReconstructionCapability O G H S)
    (h : H.Admissible) :
    S.coreMatches (C.reconstruct h).core S.targetCore ∧
      G.CoreIdentifiableAt embedding (T.surgery embedding)
        H.coreFeatureScale H.coreCorrespondence ∧
      C.targetBridge.coreTargetOf H.coreCorrespondence = S.targetCore :=
  ⟨(C.reconstruct h).coreCorrect, H.core_identifiable,
    C.targetBridge.core_target_eq⟩

/-- The framing is a distinct recovered object, not a consequence of carrier recovery. -/
theorem framing_recovered
    (C : PointCloudReconstructionCapability O G H S)
    (h : H.Admissible) :
    S.framingMatches (C.reconstruct h).framing S.targetFraming :=
  (C.reconstruct h).framingCorrect

/-- Framing recovery and the exact interpretation of the input framing label. -/
theorem framing_recovered_with_target_bridge
    (C : PointCloudReconstructionCapability O G H S)
    (h : H.Admissible) :
    S.framingMatches (C.reconstruct h).framing S.targetFraming ∧
      G.FramingIdentifiableAt embedding (T.surgery embedding)
        H.framingFeatureScale H.framingCorrespondence ∧
      C.targetBridge.framingTargetOf H.framingCorrespondence = S.targetFraming :=
  ⟨(C.reconstruct h).framingCorrect, H.framing_identifiable,
    C.targetBridge.framing_target_eq⟩

/-- The common exterior is recovered under its explicit separation inequality. -/
theorem exterior_recovered
    (C : PointCloudReconstructionCapability O G H S)
    (h : H.Admissible) :
    S.exteriorMatches (C.reconstruct h).exterior S.targetExterior :=
  (C.reconstruct h).exteriorCorrect

/-- Exterior recovery and the exact interpretation of the input exterior label. -/
theorem exterior_recovered_with_target_bridge
    (C : PointCloudReconstructionCapability O G H S)
    (h : H.Admissible) :
    S.exteriorMatches (C.reconstruct h).exterior S.targetExterior ∧
      G.ExteriorIdentifiableAt M (T.surgery embedding)
        H.exteriorSeparationScale H.exteriorCorrespondence ∧
      C.targetBridge.exteriorTargetOf H.exteriorCorrespondence = S.targetExterior :=
  ⟨(C.reconstruct h).exteriorCorrect, H.exterior_identifiable,
    C.targetBridge.exterior_target_eq⟩

/-- Collar recovery is retained separately from exterior recovery. -/
theorem collar_recovered
    (C : PointCloudReconstructionCapability O G H S)
    (h : H.Admissible) :
    S.collarMatches (C.reconstruct h).collar S.targetCollar :=
  (C.reconstruct h).collarCorrect

/-- Collar recovery and the exact interpretation of the input collar label. -/
theorem collar_recovered_with_target_bridge
    (C : PointCloudReconstructionCapability O G H S)
    (h : H.Admissible) :
    S.collarMatches (C.reconstruct h).collar S.targetCollar ∧
      G.CollarIdentifiableAt (T.surgery embedding)
        H.collarWidth H.collarCorrespondence ∧
      C.targetBridge.collarTargetOf H.collarCorrespondence = S.targetCollar :=
  ⟨(C.reconstruct h).collarCorrect, H.collar_identifiable,
    C.targetBridge.collar_target_eq⟩

/-- All reconstruction conclusions, with no omitted framing or boundary data. -/
theorem all_recovered
    (C : PointCloudReconstructionCapability O G H S)
    (h : H.Admissible) :
    S.manifoldMatches (C.reconstruct h).manifold (T.surgery embedding) ∧
      S.coreMatches (C.reconstruct h).core S.targetCore ∧
      S.framingMatches (C.reconstruct h).framing S.targetFraming ∧
      S.exteriorMatches (C.reconstruct h).exterior S.targetExterior ∧
      S.collarMatches (C.reconstruct h).collar S.targetCollar :=
  ⟨(C.reconstruct h).manifoldCorrect,
    (C.reconstruct h).coreCorrect,
    (C.reconstruct h).framingCorrect,
    (C.reconstruct h).exteriorCorrect,
    (C.reconstruct h).collarCorrect⟩

/--
The four labeled geometric hypotheses are connected to exactly the four target
objects used by the recovery conclusions.  This theorem is the explicit
anti-name-matching bridge required before a concrete reconstruction capability
can be treated as recovering surgery data.
-/
theorem all_target_correspondences_exact
    (C : PointCloudReconstructionCapability O G H S) :
    C.targetBridge.coreTargetOf H.coreCorrespondence = S.targetCore ∧
      C.targetBridge.framingTargetOf H.framingCorrespondence = S.targetFraming ∧
      C.targetBridge.exteriorTargetOf H.exteriorCorrespondence = S.targetExterior ∧
      C.targetBridge.collarTargetOf H.collarCorrespondence = S.targetCollar :=
  C.targetBridge.all_target_correspondences_exact

end PointCloudReconstructionCapability

/-! ## Exact finite graph and continuum spectral models -/

/-- The normalization convention is part of every graph-Laplacian claim. -/
inductive GraphLaplacianNormalization where
  | unnormalized
  | randomWalk
  | symmetric
  | pointIntegral
  | declared (name : String)
  deriving DecidableEq, Repr

/-- The continuum boundary condition cannot be reconstructed from eigenvalues alone. -/
inductive LaplaceBoundaryCondition where
  | closed
  | dirichlet
  | neumann
  | mixed
  | declared (name : String)
  deriving DecidableEq, Repr

/-- The source of sampling estimates used by a finite-error comparison theorem. -/
inductive SpectralSamplingRegime where
  | deterministicTransportBound
  | independentIdenticallyDistributed
  | stratified
  | declared (name : String)
  deriving DecidableEq, Repr

/-- Sign convention for the declared continuum operator. -/
inductive SpectralOperatorSign where
  | nonnegative
  | nonpositive
  | declared (name : String)
  deriving DecidableEq, Repr

/--
An exact weighted graph Laplacian on a finite vertex set, together with a
declared eigenfamily.  No spanning or linear-independence claim is made.  The
operator formula fixes the sign and normalization.
-/
structure FiniteGraphLaplacian (vertexCount : Nat) where
  normalization : GraphLaplacianNormalization
  bandwidth : ℝ
  bandwidth_pos : 0 < bandwidth
  vertexMass : Fin vertexCount → ℝ
  vertexMass_pos : ∀ i, 0 < vertexMass i
  kernelWeight : Fin vertexCount → Fin vertexCount → ℝ
  normalizationCoefficient : Fin vertexCount → ℝ
  normalizationCoefficient_pos : ∀ i, 0 < normalizationCoefficient i
  normalizedWeight : Fin vertexCount → Fin vertexCount → ℝ
  normalizedWeight_formula :
    ∀ i j, normalizedWeight i j =
      normalizationCoefficient i * kernelWeight i j * vertexMass j
  weight_symmetric : ∀ i j, normalizedWeight i j = normalizedWeight j i
  weight_nonnegative : ∀ i j, 0 ≤ normalizedWeight i j
  innerProduct :
    (Fin vertexCount → ℝ) → (Fin vertexCount → ℝ) → ℝ
  innerProduct_apply :
    ∀ f g, innerProduct f g =
      ∑ i : Fin vertexCount, vertexMass i * f i * g i
  laplacian :
    (Fin vertexCount → ℝ) →L[ℝ] (Fin vertexCount → ℝ)
  laplacian_apply :
    ∀ f i, laplacian f i =
      ∑ j : Fin vertexCount,
        normalizedWeight i j * (f i - f j)
  laplacian_weighted_self_adjoint :
    ∀ f g, innerProduct (laplacian f) g = innerProduct f (laplacian g)
  eigenvalue : Fin vertexCount → ℝ
  eigenvector : Fin vertexCount → (Fin vertexCount → ℝ)
  eigenvector_ne_zero : ∀ k, eigenvector k ≠ 0
  eigen_equation :
    ∀ k, laplacian (eigenvector k) = eigenvalue k • eigenvector k

namespace FiniteGraphLaplacian

/-- Every declared discrete eigenvector is nonzero. -/
theorem eigenvector_nonzero
    {vertexCount : Nat}
    (graph : FiniteGraphLaplacian vertexCount)
    (k : Fin vertexCount) :
    graph.eigenvector k ≠ 0 :=
  graph.eigenvector_ne_zero k

/-- The declared discrete inner product uses the exact positive vertex masses. -/
theorem inner_product_formula
    {vertexCount : Nat}
    (graph : FiniteGraphLaplacian vertexCount)
    (f g : Fin vertexCount → ℝ) :
    graph.innerProduct f g =
      ∑ i : Fin vertexCount, graph.vertexMass i * f i * g i :=
  graph.innerProduct_apply f g

/-- The graph operator is fixed exactly, including its sign and normalized weights. -/
theorem operator_formula
    {vertexCount : Nat}
    (graph : FiniteGraphLaplacian vertexCount)
    (f : Fin vertexCount → ℝ)
    (i : Fin vertexCount) :
    graph.laplacian f i =
      ∑ j : Fin vertexCount,
        graph.normalizedWeight i j * (f i - f j) :=
  graph.laplacian_apply f i

/--
The finite graph operator is self-adjoint for the exact weighted inner product
declared by `vertexMass`.  This field is explicit because symmetry of a bare
kernel matrix is not, by itself, weighted self-adjointness for arbitrary
vertex masses.
-/
theorem weighted_self_adjoint
    {vertexCount : Nat}
    (graph : FiniteGraphLaplacian vertexCount)
    (f g : Fin vertexCount → ℝ) :
    graph.innerProduct (graph.laplacian f) g =
      graph.innerProduct f (graph.laplacian g) :=
  graph.laplacian_weighted_self_adjoint f g

end FiniteGraphLaplacian

/--
A declared Laplace--Beltrami spectral model.  The Laplacian is represented by
Mathlib's `LinearPMap`, hence has an actual linear domain rather than a nominal
set attached to an everywhere-defined bounded operator.  `self_adjoint` is
Mathlib's unbounded-operator predicate and therefore entails that this domain
is dense.  A selected shifted inverse is supplied as a bounded compact
operator, with both inverse equations tying it to the unbounded Laplacian.

The function space, density, sign, boundary condition, self-adjoint
realization, and compact resolvent are all explicit inputs; topology alone
does not construct this analytic object.
-/
structure LaplaceBeltramiSpectralModel
    (FunctionSpace : Type uFunction)
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace] where
  DensityData : Type uFunction
  density : DensityData
  DensityPositive : DensityData → Prop
  density_positive : DensityPositive density
  DensityBoundedBetween : DensityData → ℝ → ℝ → Prop
  boundaryCondition : LaplaceBoundaryCondition
  operatorSign : SpectralOperatorSign
  laplacian : FunctionSpace →ₗ.[ℝ] FunctionSpace
  BoundaryConditionRealized :
    LaplaceBoundaryCondition → Submodule ℝ FunctionSpace → Prop
  boundary_realized :
    BoundaryConditionRealized boundaryCondition laplacian.domain
  self_adjoint : IsSelfAdjoint laplacian
  resolventShift : ℝ
  resolvent : FunctionSpace →L[ℝ] FunctionSpace
  resolvent_maps_to_domain :
    ∀ f, resolvent f ∈ laplacian.domain
  shifted_operator_resolvent :
    ∀ f,
      laplacian ⟨resolvent f, resolvent_maps_to_domain f⟩ -
          resolventShift • resolvent f = f
  resolvent_shifted_operator :
    ∀ u : laplacian.domain,
      (⟨resolvent (laplacian u - resolventShift • (u : FunctionSpace)),
          resolvent_maps_to_domain
            (laplacian u - resolventShift • (u : FunctionSpace))⟩ :
        laplacian.domain) = u
  resolvent_compact : IsCompactOperator resolvent
  eigenvalue : Nat → ℝ
  eigenvalue_nonnegative : ∀ k, 0 ≤ eigenvalue k
  eigenvalue_monotone : Monotone eigenvalue
  eigenfunction : Nat → laplacian.domain
  eigenfunction_ne_zero : ∀ k, (eigenfunction k : FunctionSpace) ≠ 0
  eigen_equation :
    ∀ k, laplacian (eigenfunction k) =
      eigenvalue k • (eigenfunction k : FunctionSpace)

namespace LaplaceBeltramiSpectralModel

/--
The selected continuum operator is genuinely self-adjoint, hence has a dense
domain, realizes the selected boundary condition, and has an actual compact
shifted inverse.
-/
theorem analytic_semantics
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    (continuum : LaplaceBeltramiSpectralModel FunctionSpace) :
    continuum.DensityPositive continuum.density ∧
      Dense (continuum.laplacian.domain : Set FunctionSpace) ∧
      continuum.BoundaryConditionRealized
        continuum.boundaryCondition continuum.laplacian.domain ∧
      IsSelfAdjoint continuum.laplacian ∧
      IsCompactOperator continuum.resolvent :=
  ⟨continuum.density_positive, continuum.self_adjoint.dense_domain,
    continuum.boundary_realized, continuum.self_adjoint,
    continuum.resolvent_compact⟩

/-- The selected compact resolvent is tied to the unbounded operator in both directions. -/
theorem compact_resolvent_semantics
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    (continuum : LaplaceBeltramiSpectralModel FunctionSpace) :
    IsCompactOperator continuum.resolvent ∧
      (∀ f,
        continuum.laplacian
              ⟨continuum.resolvent f, continuum.resolvent_maps_to_domain f⟩ -
            continuum.resolventShift • continuum.resolvent f = f) ∧
      (∀ u : continuum.laplacian.domain,
        (⟨continuum.resolvent
              (continuum.laplacian u -
                continuum.resolventShift • (u : FunctionSpace)),
            continuum.resolvent_maps_to_domain
              (continuum.laplacian u -
                continuum.resolventShift • (u : FunctionSpace))⟩ :
          continuum.laplacian.domain) = u) :=
  ⟨continuum.resolvent_compact,
    continuum.shifted_operator_resolvent,
    continuum.resolvent_shifted_operator⟩

/-- Each declared eigenfunction belongs to the actual operator domain. -/
theorem eigenfunction_mem_domain
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    (continuum : LaplaceBeltramiSpectralModel FunctionSpace)
    (k : Nat) :
    (continuum.eigenfunction k : FunctionSpace) ∈ continuum.laplacian.domain :=
  (continuum.eigenfunction k).property

/-- The declared continuum eigenpair equation is evaluated on the actual operator domain. -/
theorem eigenfunction_equation
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    (continuum : LaplaceBeltramiSpectralModel FunctionSpace)
    (k : Nat) :
    continuum.laplacian (continuum.eigenfunction k) =
      continuum.eigenvalue k •
        (continuum.eigenfunction k : FunctionSpace) :=
  continuum.eigen_equation k

/-- Every declared continuum eigenfunction is nonzero in the ambient Hilbert space. -/
theorem eigenfunction_nonzero
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    (continuum : LaplaceBeltramiSpectralModel FunctionSpace)
    (k : Nat) :
    (continuum.eigenfunction k : FunctionSpace) ≠ 0 :=
  continuum.eigenfunction_ne_zero k

end LaplaceBeltramiSpectralModel

/--
Transported eigenspace and projector descriptors used for quantitative
comparison.  Interpolation and restriction are continuous linear maps between
actual normed spaces.  Descriptor distances are not arbitrary labels: each is
certified to be the operator norm of the difference of the represented
projectors.  Separate representation predicates tie graph and continuum
descriptors to the exact Laplacians and eigenvalues declared above.
-/
structure SpectralComparisonData
    {vertexCount : Nat}
    (graph : FiniteGraphLaplacian vertexCount)
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    (continuum : LaplaceBeltramiSpectralModel FunctionSpace)
    (EigenspaceDescriptor : Type uEigenspace)
    (ProjectorDescriptor : Type uProjector) where
  interpolate : (Fin vertexCount → ℝ) →L[ℝ] FunctionSpace
  restrict : FunctionSpace →L[ℝ] (Fin vertexCount → ℝ)
  restrict_interpolate : Function.LeftInverse restrict interpolate
  graphNorm : (Fin vertexCount → ℝ) → ℝ
  continuumNorm : FunctionSpace → ℝ
  graphNorm_nonnegative : ∀ f, 0 ≤ graphNorm f
  graphNorm_eq_sqrt_innerProduct :
    ∀ f, graphNorm f = Real.sqrt (graph.innerProduct f f)
  continuumNorm_eq_norm : ∀ f, continuumNorm f = ‖f‖
  normCompatibilityError : (Fin vertexCount → ℝ) → ℝ
  normCompatibilityError_nonnegative : ∀ f, 0 ≤ normCompatibilityError f
  interpolation_norm_error_le :
    ∀ f, |continuumNorm (interpolate f) - graphNorm f| ≤
      normCompatibilityError f
  graphEigenspace : Fin vertexCount → EigenspaceDescriptor
  continuumEigenspace : Nat → EigenspaceDescriptor
  /-- The exact transported graph cluster subspace selected by each mode. -/
  graphClusterSubspace : Fin vertexCount → Submodule ℝ FunctionSpace
  /-- The exact continuum eigenspace selected by each mode. -/
  continuumClusterSubspace : Nat → Submodule ℝ FunctionSpace
  /--
  Membership in a graph cluster is exactly interpolation of an eigenvector of
  the declared graph operator at the declared eigenvalue.
  -/
  graphClusterSubspace_spec : ∀ k f,
    f ∈ graphClusterSubspace k ↔
      ∃ v : Fin vertexCount → ℝ,
        graph.laplacian v = graph.eigenvalue k • v ∧ interpolate v = f
  /--
  Membership in a continuum cluster is exactly an eigenvector in the domain
  of the declared unbounded operator at the declared eigenvalue.
  -/
  continuumClusterSubspace_spec : ∀ k f,
    f ∈ continuumClusterSubspace k ↔
      ∃ u : continuum.laplacian.domain,
        continuum.laplacian u =
            continuum.eigenvalue k • (u : FunctionSpace) ∧
          (u : FunctionSpace) = f
  eigenspaceProjector :
    EigenspaceDescriptor → FunctionSpace →L[ℝ] FunctionSpace
  eigenspaceDistance : EigenspaceDescriptor → EigenspaceDescriptor → ℝ
  eigenspaceDistance_eq_operatorNorm :
    ∀ E F, eigenspaceDistance E F =
      ‖eigenspaceProjector E - eigenspaceProjector F‖
  graphProjector : Fin vertexCount → ProjectorDescriptor
  continuumProjector : Nat → ProjectorDescriptor
  projectorOperator :
    ProjectorDescriptor → FunctionSpace →L[ℝ] FunctionSpace
  projectorDistance : ProjectorDescriptor → ProjectorDescriptor → ℝ
  projectorDistance_eq_operatorNorm :
    ∀ P Q, projectorDistance P Q =
      ‖projectorOperator P - projectorOperator Q‖
  /-- The graph descriptor is an idempotent operator, rather than a free label. -/
  graphProjector_idempotent : ∀ k,
    IsIdempotentElem (projectorOperator (graphProjector k))
  /-- The graph descriptor is self-adjoint, hence an orthogonal projector. -/
  graphProjector_self_adjoint : ∀ k,
    IsSelfAdjoint (projectorOperator (graphProjector k))
  /-- Its actual operator range is exactly the stated graph cluster subspace. -/
  graphProjector_range_eq_cluster : ∀ k,
    LinearMap.range (projectorOperator (graphProjector k) :
      FunctionSpace →ₗ[ℝ] FunctionSpace) = graphClusterSubspace k
  /-- The continuum descriptor is an idempotent operator, rather than a free label. -/
  continuumProjector_idempotent : ∀ k,
    IsIdempotentElem (projectorOperator (continuumProjector k))
  /-- The continuum descriptor is self-adjoint, hence an orthogonal projector. -/
  continuumProjector_self_adjoint : ∀ k,
    IsSelfAdjoint (projectorOperator (continuumProjector k))
  /-- Its actual operator range is exactly the stated continuum cluster subspace. -/
  continuumProjector_range_eq_cluster : ∀ k,
    LinearMap.range (projectorOperator (continuumProjector k) :
      FunctionSpace →ₗ[ℝ] FunctionSpace) = continuumClusterSubspace k
  GraphEigenspaceRepresents :
    EigenspaceDescriptor →
      ((Fin vertexCount → ℝ) →L[ℝ] (Fin vertexCount → ℝ)) → ℝ → Prop
  ContinuumEigenspaceRepresents :
    EigenspaceDescriptor →
      (FunctionSpace →ₗ.[ℝ] FunctionSpace) → ℝ → Prop
  graphEigenspace_represents : ∀ k,
    GraphEigenspaceRepresents (graphEigenspace k)
      graph.laplacian (graph.eigenvalue k)
  continuumEigenspace_represents : ∀ k,
    ContinuumEigenspaceRepresents (continuumEigenspace k)
      continuum.laplacian (continuum.eigenvalue k)
  GraphProjectorRepresents :
    ProjectorDescriptor →
      ((Fin vertexCount → ℝ) →L[ℝ] (Fin vertexCount → ℝ)) → ℝ → Prop
  ContinuumProjectorRepresents :
    ProjectorDescriptor →
      (FunctionSpace →ₗ.[ℝ] FunctionSpace) → ℝ → Prop
  graphProjector_represents : ∀ k,
    GraphProjectorRepresents (graphProjector k)
      graph.laplacian (graph.eigenvalue k)
  continuumProjector_represents : ∀ k,
    ContinuumProjectorRepresents (continuumProjector k)
      continuum.laplacian (continuum.eigenvalue k)
  GraphClusterIsolated :
    ((Fin vertexCount → ℝ) →L[ℝ] (Fin vertexCount → ℝ)) →
      ℝ → ℝ → Prop
  ContinuumClusterIsolated :
    (FunctionSpace →ₗ.[ℝ] FunctionSpace) → ℝ → ℝ → Prop

namespace SpectralComparisonData

/-- Interpolation and restriction are exact on discrete functions. -/
theorem restrict_interpolate_apply
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    {EigenspaceDescriptor : Type uEigenspace}
    {ProjectorDescriptor : Type uProjector}
    (D : SpectralComparisonData graph continuum
      EigenspaceDescriptor ProjectorDescriptor)
    (f : Fin vertexCount → ℝ) :
    D.restrict (D.interpolate f) = f :=
  D.restrict_interpolate f

/-- Norm compatibility is an explicit fixed-error statement, not a limit claim. -/
theorem interpolation_norm_error_bound
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    {EigenspaceDescriptor : Type uEigenspace}
    {ProjectorDescriptor : Type uProjector}
    (D : SpectralComparisonData graph continuum
      EigenspaceDescriptor ProjectorDescriptor)
    (f : Fin vertexCount → ℝ) :
    |D.continuumNorm (D.interpolate f) - D.graphNorm f| ≤
      D.normCompatibilityError f :=
  D.interpolation_norm_error_le f

/-- The continuum side of the compatibility estimate uses the Hilbert norm. -/
theorem interpolation_actual_norm_error_bound
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    {EigenspaceDescriptor : Type uEigenspace}
    {ProjectorDescriptor : Type uProjector}
    (D : SpectralComparisonData graph continuum
      EigenspaceDescriptor ProjectorDescriptor)
    (f : Fin vertexCount → ℝ) :
    |‖D.interpolate f‖ - D.graphNorm f| ≤ D.normCompatibilityError f := by
  rw [← D.continuumNorm_eq_norm (D.interpolate f)]
  exact D.interpolation_norm_error_le f

/-- Eigenspace distance is the norm of a difference of represented projectors. -/
theorem eigenspace_distance_eq_operatorNorm
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    {EigenspaceDescriptor : Type uEigenspace}
    {ProjectorDescriptor : Type uProjector}
    (D : SpectralComparisonData graph continuum
      EigenspaceDescriptor ProjectorDescriptor)
    (E F : EigenspaceDescriptor) :
    D.eigenspaceDistance E F =
      ‖D.eigenspaceProjector E - D.eigenspaceProjector F‖ :=
  D.eigenspaceDistance_eq_operatorNorm E F

/-- Projector distance is the actual continuous-operator norm difference. -/
theorem projector_distance_eq_operatorNorm
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    {EigenspaceDescriptor : Type uEigenspace}
    {ProjectorDescriptor : Type uProjector}
    (D : SpectralComparisonData graph continuum
      EigenspaceDescriptor ProjectorDescriptor)
    (P Q : ProjectorDescriptor) :
    D.projectorDistance P Q =
      ‖D.projectorOperator P - D.projectorOperator Q‖ :=
  D.projectorDistance_eq_operatorNorm P Q

/--
The selected graph projector is an actual orthogonal projector: it is
idempotent and self-adjoint, and its operator range is exactly the transported
eigenspace of the declared graph operator at the declared eigenvalue.
-/
theorem graph_projector_is_actual_orthogonal_cluster_projector
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    {EigenspaceDescriptor : Type uEigenspace}
    {ProjectorDescriptor : Type uProjector}
    (D : SpectralComparisonData graph continuum
      EigenspaceDescriptor ProjectorDescriptor)
    (k : Fin vertexCount) :
    IsIdempotentElem (D.projectorOperator (D.graphProjector k)) ∧
      IsSelfAdjoint (D.projectorOperator (D.graphProjector k)) ∧
      LinearMap.range (D.projectorOperator (D.graphProjector k) :
        FunctionSpace →ₗ[ℝ] FunctionSpace) = D.graphClusterSubspace k ∧
      ∀ f, f ∈ D.graphClusterSubspace k ↔
        ∃ v : Fin vertexCount → ℝ,
          graph.laplacian v = graph.eigenvalue k • v ∧ D.interpolate v = f :=
  ⟨D.graphProjector_idempotent k,
    D.graphProjector_self_adjoint k,
    D.graphProjector_range_eq_cluster k,
    D.graphClusterSubspace_spec k⟩

/--
The selected continuum projector is an actual orthogonal projector onto the
eigenspace of the exact unbounded operator and exact selected eigenvalue.
-/
theorem continuum_projector_is_actual_orthogonal_cluster_projector
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    {EigenspaceDescriptor : Type uEigenspace}
    {ProjectorDescriptor : Type uProjector}
    (D : SpectralComparisonData graph continuum
      EigenspaceDescriptor ProjectorDescriptor)
    (k : Nat) :
    IsIdempotentElem (D.projectorOperator (D.continuumProjector k)) ∧
      IsSelfAdjoint (D.projectorOperator (D.continuumProjector k)) ∧
      LinearMap.range (D.projectorOperator (D.continuumProjector k) :
        FunctionSpace →ₗ[ℝ] FunctionSpace) = D.continuumClusterSubspace k ∧
      ∀ f, f ∈ D.continuumClusterSubspace k ↔
        ∃ u : continuum.laplacian.domain,
          continuum.laplacian u =
              continuum.eigenvalue k • (u : FunctionSpace) ∧
            (u : FunctionSpace) = f :=
  ⟨D.continuumProjector_idempotent k,
    D.continuumProjector_self_adjoint k,
    D.continuumProjector_range_eq_cluster k,
    D.continuumClusterSubspace_spec k⟩

end SpectralComparisonData

/--
All scale, density, normalization, boundary, and sampling assumptions for one
finite-mode spectral comparison.
-/
structure SpectralComparisonHypotheses
    {vertexCount : Nat}
    (graph : FiniteGraphLaplacian vertexCount)
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    (continuum : LaplaceBeltramiSpectralModel FunctionSpace) where
  requiredNormalization : GraphLaplacianNormalization
  normalization_matches : graph.normalization = requiredNormalization
  requiredBoundaryCondition : LaplaceBoundaryCondition
  boundary_matches :
    continuum.boundaryCondition = requiredBoundaryCondition
  requiredOperatorSign : SpectralOperatorSign
  operator_sign_matches : continuum.operatorSign = requiredOperatorSign
  samplingRegime : SpectralSamplingRegime
  sampleResolution : ℝ
  samplingError : ℝ
  geometryScale : ℝ
  densityLowerBound : ℝ
  densityUpperBound : ℝ
  density_bounds_certified :
    continuum.DensityBoundedBetween
      continuum.density densityLowerBound densityUpperBound
  kernelNormalizationLaw : Prop
  kernel_normalized : kernelNormalizationLaw

namespace SpectralComparisonHypotheses

/-- The bandwidth corridor and density bounds required by the comparison. -/
def Admissible
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    (H : SpectralComparisonHypotheses graph continuum) : Prop :=
  0 ≤ H.sampleResolution ∧
  0 ≤ H.samplingError ∧
  H.sampleResolution + H.samplingError < graph.bandwidth ∧
  graph.bandwidth < H.geometryScale ∧
  0 < H.densityLowerBound ∧
  H.densityLowerBound ≤ H.densityUpperBound

/-- The graph normalization used by the theorem is explicit. -/
theorem selected_normalization
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    (H : SpectralComparisonHypotheses graph continuum) :
    graph.normalization = H.requiredNormalization :=
  H.normalization_matches

/-- The continuum boundary condition used by the theorem is explicit. -/
theorem selected_boundary_condition
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    (H : SpectralComparisonHypotheses graph continuum) :
    continuum.boundaryCondition = H.requiredBoundaryCondition :=
  H.boundary_matches

/-- The sign convention is part of the selected continuum operator semantics. -/
theorem selected_operator_sign
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    (H : SpectralComparisonHypotheses graph continuum) :
    continuum.operatorSign = H.requiredOperatorSign :=
  H.operator_sign_matches

/-- The numerical density bounds are tied to the continuum model's actual density data. -/
theorem selected_density_bounds
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    (H : SpectralComparisonHypotheses graph continuum) :
    continuum.DensityBoundedBetween
      continuum.density H.densityLowerBound H.densityUpperBound :=
  H.density_bounds_certified

end SpectralComparisonHypotheses

/--
A checked comparison of finitely many graph and continuum modes.  Repeated
eigenvalues are handled through the eigenspace and projector descriptors;
individual eigenvector convergence is not silently inferred.
-/
structure FiniteModeSpectralComparisonCertificate
    {vertexCount : Nat}
    (graph : FiniteGraphLaplacian vertexCount)
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    (continuum : LaplaceBeltramiSpectralModel FunctionSpace)
    {EigenspaceDescriptor : Type uEigenspace}
    {ProjectorDescriptor : Type uProjector}
    (comparison :
      SpectralComparisonData graph continuum
        EigenspaceDescriptor ProjectorDescriptor)
    (modeCount : Nat) where
  modeCount_le_vertices : modeCount ≤ vertexCount
  graphMode : Fin modeCount → Fin vertexCount
  continuumMode : Fin modeCount → Nat
  eigenvalueErrorBound : Fin modeCount → ℝ
  eigenspaceErrorBound : Fin modeCount → ℝ
  projectorErrorBound : Fin modeCount → ℝ
  graphEigengap : Fin modeCount → ℝ
  continuumEigengap : Fin modeCount → ℝ
  eigenvalueErrorBound_nonnegative : ∀ k, 0 ≤ eigenvalueErrorBound k
  eigenspaceErrorBound_nonnegative : ∀ k, 0 ≤ eigenspaceErrorBound k
  projectorErrorBound_nonnegative : ∀ k, 0 ≤ projectorErrorBound k
  graphEigengap_pos : ∀ k, 0 < graphEigengap k
  continuumEigengap_pos : ∀ k, 0 < continuumEigengap k
  graphClusterIsolated :
    ∀ k, comparison.GraphClusterIsolated graph.laplacian
      (graph.eigenvalue (graphMode k)) (graphEigengap k)
  continuumClusterIsolated :
    ∀ k, comparison.ContinuumClusterIsolated continuum.laplacian
      (continuum.eigenvalue (continuumMode k)) (continuumEigengap k)
  eigenvalue_error_le :
    ∀ k, |graph.eigenvalue (graphMode k) -
      continuum.eigenvalue (continuumMode k)| ≤ eigenvalueErrorBound k
  eigenspace_error_le :
    ∀ k,
      comparison.eigenspaceDistance
        (comparison.graphEigenspace (graphMode k))
        (comparison.continuumEigenspace (continuumMode k)) ≤
          eigenspaceErrorBound k
  projector_error_le :
    ∀ k,
      comparison.projectorDistance
        (comparison.graphProjector (graphMode k))
        (comparison.continuumProjector (continuumMode k)) ≤
          projectorErrorBound k

/--
An analytic comparison capability with fixed, explicit error bounds.  Its input
includes an admissible bandwidth/sampling corridor; smooth surgery and homotopy
data do not inhabit this type.  No limiting convergence statement is implied.
-/
structure FiniteModeSpectralComparisonCapability
    {vertexCount : Nat}
    (graph : FiniteGraphLaplacian vertexCount)
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    (continuum : LaplaceBeltramiSpectralModel FunctionSpace)
    {EigenspaceDescriptor : Type uEigenspace}
    {ProjectorDescriptor : Type uProjector}
    (comparison :
      SpectralComparisonData graph continuum
        EigenspaceDescriptor ProjectorDescriptor)
    (hypotheses : SpectralComparisonHypotheses graph continuum)
    (modeCount : Nat) where
  compare : hypotheses.Admissible →
    FiniteModeSpectralComparisonCertificate
      graph continuum comparison modeCount

namespace FiniteModeSpectralComparisonCapability

variable
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    {EigenspaceDescriptor : Type uEigenspace}
    {ProjectorDescriptor : Type uProjector}
    {comparison :
      SpectralComparisonData graph continuum
        EigenspaceDescriptor ProjectorDescriptor}
    {hypotheses : SpectralComparisonHypotheses graph continuum}
    {modeCount : Nat}

/-- Every selected eigenvalue has the explicit certified error bound. -/
theorem eigenvalue_error_le
    (C : FiniteModeSpectralComparisonCapability
      graph continuum comparison hypotheses modeCount)
    (h : hypotheses.Admissible)
    (k : Fin modeCount) :
    |graph.eigenvalue ((C.compare h).graphMode k) -
      continuum.eigenvalue ((C.compare h).continuumMode k)| ≤
        (C.compare h).eigenvalueErrorBound k :=
  (C.compare h).eigenvalue_error_le k

/-- Every selected eigenspace has the explicit certified distance bound. -/
theorem eigenspace_error_le
    (C : FiniteModeSpectralComparisonCapability
      graph continuum comparison hypotheses modeCount)
    (h : hypotheses.Admissible)
    (k : Fin modeCount) :
    comparison.eigenspaceDistance
        (comparison.graphEigenspace ((C.compare h).graphMode k))
        (comparison.continuumEigenspace ((C.compare h).continuumMode k)) ≤
      (C.compare h).eigenspaceErrorBound k :=
  (C.compare h).eigenspace_error_le k

/-- Every selected spectral projector has the explicit certified distance bound. -/
theorem projector_error_le
    (C : FiniteModeSpectralComparisonCapability
      graph continuum comparison hypotheses modeCount)
    (h : hypotheses.Admissible)
    (k : Fin modeCount) :
    comparison.projectorDistance
        (comparison.graphProjector ((C.compare h).graphMode k))
        (comparison.continuumProjector ((C.compare h).continuumMode k)) ≤
      (C.compare h).projectorErrorBound k :=
  (C.compare h).projector_error_le k

/-- The three finite-mode estimates are retained together without conflation. -/
theorem all_spectral_errors_bounded
    (C : FiniteModeSpectralComparisonCapability
      graph continuum comparison hypotheses modeCount)
    (h : hypotheses.Admissible)
    (k : Fin modeCount) :
    |graph.eigenvalue ((C.compare h).graphMode k) -
        continuum.eigenvalue ((C.compare h).continuumMode k)| ≤
          (C.compare h).eigenvalueErrorBound k ∧
      comparison.eigenspaceDistance
          (comparison.graphEigenspace ((C.compare h).graphMode k))
          (comparison.continuumEigenspace ((C.compare h).continuumMode k)) ≤
            (C.compare h).eigenspaceErrorBound k ∧
      comparison.projectorDistance
          (comparison.graphProjector ((C.compare h).graphMode k))
          (comparison.continuumProjector ((C.compare h).continuumMode k)) ≤
            (C.compare h).projectorErrorBound k :=
  ⟨(C.compare h).eigenvalue_error_le k,
    (C.compare h).eigenspace_error_le k,
    (C.compare h).projector_error_le k⟩

/-- Projector/eigenspace bounds are indexed only by explicitly isolated clusters. -/
theorem selected_clusters_isolated
    (C : FiniteModeSpectralComparisonCapability
      graph continuum comparison hypotheses modeCount)
    (h : hypotheses.Admissible)
    (k : Fin modeCount) :
    comparison.GraphClusterIsolated graph.laplacian
        (graph.eigenvalue ((C.compare h).graphMode k))
        ((C.compare h).graphEigengap k) ∧
      comparison.ContinuumClusterIsolated continuum.laplacian
        (continuum.eigenvalue ((C.compare h).continuumMode k))
        ((C.compare h).continuumEigengap k) ∧
      0 < (C.compare h).graphEigengap k ∧
      0 < (C.compare h).continuumEigengap k :=
  ⟨(C.compare h).graphClusterIsolated k,
    (C.compare h).continuumClusterIsolated k,
    (C.compare h).graphEigengap_pos k,
    (C.compare h).continuumEigengap_pos k⟩

/--
The four selected descriptors are certified against the exact graph and
continuum operators and selected eigenvalues; they are not free names.
-/
theorem selected_descriptors_represent_operators
    (C : FiniteModeSpectralComparisonCapability
      graph continuum comparison hypotheses modeCount)
    (h : hypotheses.Admissible)
    (k : Fin modeCount) :
    comparison.GraphEigenspaceRepresents
        (comparison.graphEigenspace ((C.compare h).graphMode k))
        graph.laplacian
        (graph.eigenvalue ((C.compare h).graphMode k)) ∧
      comparison.ContinuumEigenspaceRepresents
        (comparison.continuumEigenspace ((C.compare h).continuumMode k))
        continuum.laplacian
        (continuum.eigenvalue ((C.compare h).continuumMode k)) ∧
      comparison.GraphProjectorRepresents
        (comparison.graphProjector ((C.compare h).graphMode k))
        graph.laplacian
        (graph.eigenvalue ((C.compare h).graphMode k)) ∧
      comparison.ContinuumProjectorRepresents
        (comparison.continuumProjector ((C.compare h).continuumMode k))
        continuum.laplacian
        (continuum.eigenvalue ((C.compare h).continuumMode k)) :=
  ⟨comparison.graphEigenspace_represents _,
    comparison.continuumEigenspace_represents _,
    comparison.graphProjector_represents _,
    comparison.continuumProjector_represents _⟩

end FiniteModeSpectralComparisonCapability

end Surface.SmoothFramedSurgery
