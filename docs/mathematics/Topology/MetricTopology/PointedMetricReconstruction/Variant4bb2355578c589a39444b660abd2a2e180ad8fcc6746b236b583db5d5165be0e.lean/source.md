# Complete source: GRWTSK.Topology.MetricTopology.PointedMetricReconstruction.Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c0d092d1e5b1eb9a39727a3bda40bfbf1fa7d85` · SHA-256 `fb3ee4a98f5ae3532696a8912b45959ee1d8577f3219ad17b2250fd7776973de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.MetricProfileProposal.Variant25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.MetricProfileProposal.Variant25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938","mathematical_subject":"Topology.MetricSpaces","original_sha256":"25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Terrain/PointedMetricReconstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Terrain.BooleanYoneda
import Mathematics.Core.SemanticIdentity
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Topology.MetricSpace.Completion
import Mathlib.Tactic

/-!
# Pointed metric reconstruction

A single scalar `‖x‖` does not determine a space.  The exact reconstructive
datum is the complete distance profile against a separating probe family.

For a pointed metric space, the normalized full profile

`a ↦ dist a x - dist a base`

is rigid: it determines `x`, and a single coordinate witnesses every pairwise
distance.  A dense beacon family with every positive rational threshold gives
the Boolean form of the same result through `metricThresholdCode`.

This module deliberately separates:

* a proposed profile;
* existence of a realization;
* uniqueness of a realization.

Rigidity supplies uniqueness.  It never manufactures existence.
-/


namespace GRWTSK.Topology.MetricTopology.MetricProfileProposal.Variant25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938

namespace Mathematics.Terrain.PointedMetricReconstruction

open Mathematics.Terrain.BooleanYoneda
open Set

universe u v

section FullMetricProfile

variable {X : Type u} [MetricSpace X]

/--
The complete distance profile normalized at a declared base point.  The
normalization fixes an additive gauge; every point of `X` remains a probe.
-/
def pointedDistanceProfile (base point : X) : X → ℝ :=
  fun probe ↦ dist probe point - dist probe base

/--
The coordinate based at `left` witnesses the complete distance between
`left` and `right`.
-/
theorem pointedDistanceProfile_witnesses_distance
    (base left right : X) :
    |pointedDistanceProfile base left left -
        pointedDistanceProfile base right left| =
      dist left right := by
  have inside :
      pointedDistanceProfile base left left -
          pointedDistanceProfile base right left =
        -dist left right := by
    simp only [pointedDistanceProfile, dist_self, zero_sub]
    ring
  rw [inside, abs_neg, abs_of_nonneg dist_nonneg]

/--
The complete pointed distance profile is injective.  This is the elementary
metric rigidity theorem used by the extension protocol.
-/
theorem pointedDistanceProfile_injective (base : X) :
    Function.Injective (pointedDistanceProfile base) := by
  intro left right profilesAgree
  have coordinateAgree := congrFun profilesAgree left
  have zeroGap :
      |pointedDistanceProfile base left left -
          pointedDistanceProfile base right left| = 0 := by
    rw [coordinateAgree]
    simp
  have zeroDistance : dist left right = 0 := by
    rw [pointedDistanceProfile_witnesses_distance] at zeroGap
    exact zeroGap
  exact dist_eq_zero.mp zeroDistance

/--
A profile proposal is data only.  It need not be realizable by any point of
the carrier.
-/
structure MetricProfileProposal where
  distanceFromBeacon : X → ℝ
  description : String
  evidence : List String

/-- Existence evidence for one proposed complete metric profile. -/
structure FullProfileRealization
    (proposal : MetricProfileProposal (X := X)) where
  point : X
  realizes :
    ∀ probe, dist probe point = proposal.distanceFromBeacon probe

/--
If a complete profile has two realizations, they are the same point.  The
theorem proves uniqueness conditional on realization; it proves no existence.
-/
theorem FullProfileRealization.unique
    {proposal : MetricProfileProposal (X := X)}
    (left right : FullProfileRealization proposal) :
    left.point = right.point := by
  apply dist_eq_zero.mp
  rw [right.realizes left.point, ← left.realizes left.point]
  simp

end FullMetricProfile

section DenseBeaconProfile

variable {D : Type u} {X : Type v} [MetricSpace X]

/-- Difference between the two distance coordinates observed by one beacon. -/
def probeGap (beacon : D → X) (left right : X) (index : D) : ℝ :=
  |dist left (beacon index) - dist right (beacon index)|

theorem probeGap_le_distance
    (beacon : D → X) (left right : X) (index : D) :
    probeGap beacon left right index ≤ dist left right :=
  abs_dist_sub_le left right (beacon index)

/--
Epsilon form of the exact supremum identity.  The first field is the universal
upper bound; the second says probe gaps approach the true distance
arbitrarily closely.
-/
def MetricDetermining (beacon : D → X) : Prop :=
  ∀ left right,
    (∀ index, probeGap beacon left right index ≤ dist left right) ∧
    (∀ ε, 0 < ε →
      ∃ index,
        dist left right - ε ≤ probeGap beacon left right index)

/-- Every dense beacon family is metric determining. -/
theorem denseBeacon_metricDetermining
    (beacon : D → X) (dense : DenseRange beacon) :
    MetricDetermining beacon := by
  intro left right
  constructor
  · exact fun index ↦ probeGap_le_distance beacon left right index
  · intro ε εpositive
    obtain ⟨index, nearLeft⟩ :=
      dense.exists_dist_lt left (half_pos εpositive)
    refine ⟨index, ?_⟩
    have leftNear :
        dist left (beacon index) < ε / 2 := by
      simpa [dist_comm] using nearLeft
    have triangle :
        dist left right ≤
          dist left (beacon index) + dist (beacon index) right :=
      dist_triangle left (beacon index) right
    have absoluteLower :
        dist right (beacon index) - dist left (beacon index) ≤
          probeGap beacon left right index := by
      have signed :=
        neg_le_abs (dist left (beacon index) - dist right (beacon index))
      simpa [probeGap] using signed
    rw [dist_comm (beacon index) right] at triangle
    linarith

/--
Existence evidence for a distance profile indexed by a possibly smaller
beacon family.
-/
structure BeaconProfileRealization
    (beacon : D → X) (profile : D → ℝ) where
  point : X
  realizes : ∀ index, dist (beacon index) point = profile index

/--
Dense beacons make a realized beacon profile rigid.  This is the real-valued
counterpart of Boolean rational-threshold separation.
-/
theorem BeaconProfileRealization.unique
    (beacon : D → X) (dense : DenseRange beacon)
    (profile : D → ℝ)
    (left right : BeaconProfileRealization beacon profile) :
    left.point = right.point := by
  apply metricThresholdCode_injective beacon dense
  apply (metricThresholdCode_eq_iff beacon left.point right.point).2
  intro index
  rw [left.realizes index, right.realizes index]

end DenseBeaconProfile

section FiniteAnchorApproximation

variable
    {Anchor : Type u} [DecidableEq Anchor]
    {X : Type v} [MetricSpace X]

/--
A finite certified net on a declared boundary.  The coverage error is explicit
and no finite net is called exactly metric determining without another proof.
-/
structure CertifiedFiniteAnchorNet (boundary : Set X) where
  realize : Anchor → X
  anchors : Finset Anchor
  anchorsNonempty : anchors.Nonempty
  resolution : ℝ
  resolution_nonnegative : 0 ≤ resolution
  onBoundary :
    ∀ anchor ∈ anchors, realize anchor ∈ boundary
  covers :
    ∀ point ∈ boundary,
      ∃ anchor ∈ anchors,
        dist point (realize anchor) ≤ resolution
  netCertificate : ObjectAddress
  anchorCertificate : Anchor → ObjectAddress

namespace CertifiedFiniteAnchorNet

variable
    {boundary : Set X}
    (net : CertifiedFiniteAnchorNet
      (Anchor := Anchor) boundary)

omit [DecidableEq Anchor] in
/-- Every finite-anchor coordinate difference is bounded by true distance. -/
theorem gap_upper
    (left right : X) (anchor : Anchor) :
    probeGap net.realize left right anchor ≤ dist left right :=
  probeGap_le_distance net.realize left right anchor

omit [DecidableEq Anchor] in
/--
For boundary points, one certified anchor witnesses the additive
`2 * resolution` lower bound.  Together with `gap_upper`, this is the exact
finite-anchor approximation theorem.
-/
theorem gap_lower_witness
    {left right : X}
    (leftOnBoundary : left ∈ boundary)
    (_rightOnBoundary : right ∈ boundary) :
    ∃ anchor ∈ net.anchors,
      dist left right - 2 * net.resolution ≤
        probeGap net.realize left right anchor := by
  obtain ⟨anchor, member, nearLeft⟩ :=
    net.covers left leftOnBoundary
  refine ⟨anchor, member, ?_⟩
  have triangle :
      dist left right ≤
        dist left (net.realize anchor) +
          dist (net.realize anchor) right :=
    dist_triangle left (net.realize anchor) right
  have absoluteLower :
      dist right (net.realize anchor) -
          dist left (net.realize anchor) ≤
        probeGap net.realize left right anchor := by
    have signed :=
      neg_le_abs
        (dist left (net.realize anchor) -
          dist right (net.realize anchor))
    simpa [probeGap] using signed
  rw [dist_comm (net.realize anchor) right] at triangle
  linarith

omit [DecidableEq Anchor] in
/-- Maximum distance-profile discrepancy over the finite anchor constellation. -/
def finiteProbeDistance (left right : X) : ℝ :=
  net.anchors.sup' net.anchorsNonempty
    (probeGap net.realize left right)

omit [DecidableEq Anchor] in
/-- The finite profile never expands the true boundary metric. -/
theorem finiteProbeDistance_le
    (left right : X) :
    net.finiteProbeDistance left right ≤ dist left right := by
  apply Finset.sup'_le
  intro anchor member
  exact net.gap_upper left right anchor

omit [DecidableEq Anchor] in
/-- A certified finite net recovers distance up to additive `2 * resolution`. -/
theorem distance_sub_resolution_le_finiteProbeDistance
    {left right : X}
    (leftOnBoundary : left ∈ boundary)
    (rightOnBoundary : right ∈ boundary) :
    dist left right - 2 * net.resolution ≤
      net.finiteProbeDistance left right := by
  obtain ⟨anchor, member, lower⟩ :=
    net.gap_lower_witness leftOnBoundary rightOnBoundary
  exact lower.trans (Finset.le_sup' _ member)

omit [DecidableEq Anchor] in
/-- Exact two-sided finite-anchor approximation interval. -/
theorem finiteProbeDistance_bounds
    {left right : X}
    (leftOnBoundary : left ∈ boundary)
    (rightOnBoundary : right ∈ boundary) :
    dist left right - 2 * net.resolution ≤
        net.finiteProbeDistance left right ∧
      net.finiteProbeDistance left right ≤ dist left right :=
  ⟨net.distance_sub_resolution_le_finiteProbeDistance
      leftOnBoundary rightOnBoundary,
    net.finiteProbeDistance_le left right⟩

end CertifiedFiniteAnchorNet

end FiniteAnchorApproximation

section CompletionRecovery

variable {X : Type u} [MetricSpace X]
variable {Profile : Type v} [PseudoMetricSpace Profile]

/--
A profile representation with an exact metric equation.  Dense probes produce
this equation through `denseBeacon_metricDetermining` once the concrete
supremum-profile carrier has been constructed.
-/
structure ProbeProfileEmbedding where
  profile : X → Profile
  distance_preserved :
    ∀ left right,
      dist (profile left) (profile right) = dist left right

namespace ProbeProfileEmbedding

theorem isometry (embedding : ProbeProfileEmbedding (X := X) (Profile := Profile)) :
    Isometry embedding.profile :=
  Isometry.of_dist_eq embedding.distance_preserved

/--
An exact probe profile extends isometrically to metric completions.  This is
the kernel-checked completion-recovery map; surjectivity onto a chosen concrete
profile closure remains a separate density certificate.
-/
theorem completionMap_isometry
    (embedding : ProbeProfileEmbedding (X := X) (Profile := Profile)) :
    Isometry (UniformSpace.Completion.map embedding.profile) :=
  embedding.isometry.completion_map

end ProbeProfileEmbedding

/--
An exact completion-recovery profile.

`ProbeProfileEmbedding` alone only gives a one-way isometric embedding.  The
additional dense-range field is the missing hypothesis that makes the
complete target no larger than the metric completion of `X`.
-/
structure ProbeProfileCompletionRecovery
    (Profile : Type v) [MetricSpace Profile] [CompleteSpace Profile] where
  embedding :
    ProbeProfileEmbedding
      (X := X)
      (Profile := Profile)
  denseRange : DenseRange embedding.profile

namespace ProbeProfileCompletionRecovery

variable
    {Profile : Type v} [MetricSpace Profile] [CompleteSpace Profile]

/-- The unique continuous extension of the exact profile to the completion. -/
noncomputable def extension
    (recovery :
      ProbeProfileCompletionRecovery
        (X := X) Profile) :
    UniformSpace.Completion X → Profile :=
  UniformSpace.Completion.extension recovery.embedding.profile

/-- Exact distance preservation survives completion. -/
theorem extension_isometry
    (recovery :
      ProbeProfileCompletionRecovery
        (X := X) Profile) :
    Isometry recovery.extension :=
  recovery.embedding.isometry.completion_extension

/--
The extension has dense range because it contains the already-dense original
profile image.
-/
theorem extension_denseRange
    (recovery :
      ProbeProfileCompletionRecovery
        (X := X) Profile) :
    DenseRange recovery.extension := by
  apply recovery.denseRange.mono
  rintro _ ⟨point, rfl⟩
  refine ⟨(point : UniformSpace.Completion X), ?_⟩
  exact
    UniformSpace.Completion.extension_coe
      recovery.embedding.isometry.uniformContinuous point

/--
The extension is onto: its image is both dense and closed, since its complete
domain is embedded isometrically into a metric target.
-/
theorem extension_surjective
    (recovery :
      ProbeProfileCompletionRecovery
        (X := X) Profile) :
    Function.Surjective recovery.extension := by
  let extended := recovery.extension
  have extendedIsometry : Isometry extended :=
    recovery.extension_isometry
  have closedRange : IsClosed (Set.range extended) :=
    extendedIsometry.isClosedEmbedding.isClosed_range
  have denseRange : DenseRange extended := by
    simpa [extended] using recovery.extension_denseRange
  have rangeUniv : Set.range extended = Set.univ := by
    rw [← closedRange.closure_eq, denseRange.closure_eq]
  intro point
  have member : point ∈ Set.range extended := by
    rw [rangeUniv]
    exact Set.mem_univ point
  exact member

/-- The profile carrier is canonically isometric to the metric completion. -/
noncomputable def isometryEquiv
    (recovery :
      ProbeProfileCompletionRecovery
        (X := X) Profile) :
    UniformSpace.Completion X ≃ᵢ Profile :=
  {
    Equiv.ofBijective recovery.extension
      ⟨recovery.extension_isometry.injective,
        recovery.extension_surjective⟩ with
    isometry_toFun := recovery.extension_isometry
  }

end ProbeProfileCompletionRecovery

end CompletionRecovery

section ScalarNormInsufficiency

/--
One scalar norm value does not recover a point, even in the elementary
two-dimensional product carrier.
-/
theorem scalarNorm_not_injective :
    ¬Function.Injective (fun point : ℝ × ℝ ↦ ‖point‖) := by
  intro injective
  have sameNorm :
      ‖((1, 0) : ℝ × ℝ)‖ = ‖((0, 1) : ℝ × ℝ)‖ := by
    norm_num [Prod.norm_def]
  have samePoint := injective sameNorm
  norm_num at samePoint

end ScalarNormInsufficiency

section NormProfile

variable {E : Type u} [NormedAddCommGroup E]

/--
The normed-space specialization.  The full carrier is still used as the probe
family; one scalar norm value alone is not this profile.
-/
def pointedNormProfile (base point : E) : E → ℝ :=
  fun probe ↦ ‖probe - point‖ - ‖probe - base‖

theorem pointedNormProfile_eq_distanceProfile (base point : E) :
    pointedNormProfile base point = pointedDistanceProfile base point := by
  funext probe
  simp [pointedNormProfile, pointedDistanceProfile, dist_eq_norm]

/-- The complete pointed norm profile is injective. -/
theorem pointedNormProfile_injective (base : E) :
    Function.Injective (pointedNormProfile base) := by
  have profileFamiliesAgree :
      pointedNormProfile base = pointedDistanceProfile base := by
    funext point
    exact pointedNormProfile_eq_distanceProfile base point
  rw [profileFamiliesAgree]
  exact pointedDistanceProfile_injective base

end NormProfile

end Mathematics.Terrain.PointedMetricReconstruction
```
