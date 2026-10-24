# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Surgery.Variant9530671048a12ec6c64552afebd896e330b298c89db34958a9638521b06897a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40a1015b0537339a38b745ae9011256544a1656a` · SHA-256 `76d0e84fc2937a53b2e266c50feb924f04383465e11b986cd2590fa0d4cf749d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CubicFrobeniusRewriteBase.Variant0c7bfc13942d6cdb74cb82fc592fb936377d6e310ee2b8e6b1279c77a20855d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c7bfc13942d6cdb74cb82fc592fb936377d6e310ee2b8e6b1279c77a20855d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Algorithms.SourceCorpus.CubicFrobeniusRewriteBase.Variant0c7bfc13942d6cdb74cb82fc592fb936377d6e310ee2b8e6b1279c77a20855d7","mathematical_subject":"Computation.Algorithms","original_sha256":"0c7bfc13942d6cdb74cb82fc592fb936377d6e310ee2b8e6b1279c77a20855d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:f13889d0f3ef14b80c705f2f/workspace/lib/Surface/Core/TypeII/Surgery.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeVaughanDelta
public import Surface.Core.TypeII.Interaction
import Mathlib.Tactic

/-!
# Finite Type II incidence flow and surgery interfaces

This module formalizes a finite surgery *program surface* for the
conductor-three Type II interaction complex.  The evolution law is named
`CombinatorialIncidenceFlowSegment`: it is an explicit finite edge-weight
equation and is not smooth Ricci flow.

An operation-level cubic Frobenius rewrite interface is kept separate from
the Euclidean packet geometry.  It is not advertised as a construction of a
free delta-ring or a Bhatt--Scholze prism.  Its only checked analytic content
is exact preservation under the supplied complex realization.

The neck/transversality trichotomy and all global analytic estimates are
named propositions below.  No inhabitant is supplied, no final Type II bound
is stored in a structure, and no combinatorial move is converted into smooth
PDE, topological-sphere, prismatic, Wang--Zahl, or GRH authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CubicFrobeniusRewriteBase.Variant0c7bfc13942d6cdb74cb82fc592fb936377d6e310ee2b8e6b1279c77a20855d7

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators ENNReal
open Surface.Core.PrimeWalkSpatialEncoding
open Surface.Core.PrimeWalkLosslessSpatial
open Surface.Core.PrimeWalkWangZahlGeometry
open Surface.Core.ConductorThreeVaughanTubeScaffold
open Surface.Core.ConductorThreeVaughanDelta
open Surface.Core.ConductorThreeTwistedVaughan

/-! ## Operation-level cubic Frobenius rewrites -/

/-- Minimal algebraic rewrite surface used by the finite surgery bookkeeping.

The displayed cubic formula is only the operation needed by this interface.
It does not assert the full delta-ring identities and therefore is
intentionally not named `DeltaRing`.
-/
structure CubicFrobeniusRewriteBase
    (N : ℕ) (A : Type*) [CommRing A] where
  delta : A → A
  frobenius : A →+* A
  frobenius_formula : ∀ value,
    frobenius value = value ^ 3 + (3 : A) * delta value
  universalCoefficient : PacketAtom N → A
  realization : A →+* ℂ
  realizesCoefficient : ∀ atom,
    realization (universalCoefficient atom) = coefficientSection atom
  realization_frobenius : ∀ value,
    realization (frobenius value) = realization value

/-- Canonical adapter from the checked Vaughan delta-operation base.

The universal value of `(m,k)` is exactly `-(L_m * R_k)`.  This adapter
connects algebraic normalization to the finite surgery state without
importing a legacy prismatic namespace or changing the meaning of the
complex realization.
-/
@[expose]
def deltaTypeIICoefficientBaseAdapter {N : ℕ}
    (base : DeltaTypeIICoefficientBase N) :
    CubicFrobeniusRewriteBase N base.A where
  delta := base.threeTypical.delta
  frobenius := base.threeTypical.phi
  frobenius_formula := base.threeTypical.phi_apply
  universalCoefficient := fun atom ↦
    -(base.leftVariable atom.1.1 * base.rightVariable atom.1.2)
  realization := base.realization
  realizesCoefficient := by
    intro atom
    simp only [map_neg, map_mul, base.realization_left,
      base.realization_right, coefficientSection, vaughanFactorCoefficient]
    push_cast
    ring
  realization_frobenius := base.realization_phi

@[surface_novel, surface_published]
theorem deltaTypeIICoefficientBaseAdapter_universalCoefficient
    {N : ℕ} (base : DeltaTypeIICoefficientBase N)
    (atom : PacketAtom N) :
    (deltaTypeIICoefficientBaseAdapter base).universalCoefficient atom =
      -(base.leftVariable atom.1.1 * base.rightVariable atom.1.2) :=
  rfl

/-- Universal finite prefix for a selected atom set. -/
@[expose]
def universalPrefix {N : ℕ} {A : Type*} [CommRing A]
    (base : CubicFrobeniusRewriteBase N A)
    (activeAtoms : Finset (PacketAtom N)) (x : ℕ) : A :=
  ∑ atom ∈ activeAtoms,
    if atomEntryTime atom ≤ x then base.universalCoefficient atom else 0

/-- Exact realization of the universal prefix as the fixed conductor-three
coefficient section. -/
@[surface_novel, surface_published]
theorem realization_universalPrefix {N : ℕ} {A : Type*} [CommRing A]
    (base : CubicFrobeniusRewriteBase N A)
    (activeAtoms : Finset (PacketAtom N)) (x : ℕ) :
    base.realization (universalPrefix base activeAtoms x) =
      coefficientPrefix activeAtoms x := by
  simp only [universalPrefix, coefficientPrefix, map_sum]
  apply Finset.sum_congr rfl
  intro atom hatom
  by_cases hentry : atomEntryTime atom ≤ x
  · simp [hentry, base.realizesCoefficient]
  · simp [hentry]

/-- Iterated cubic Frobenius normalization. -/
@[expose]
def iterateFrobenius {N : ℕ} {A : Type*} [CommRing A]
    (base : CubicFrobeniusRewriteBase N A) : ℕ → A → A
  | 0, value => value
  | iterations + 1, value => base.frobenius (iterateFrobenius base iterations value)

/-- Frobenius normalization preserves only the supplied realization.  This
theorem gives no Archimedean improvement of the realized absolute value. -/
@[surface_novel, surface_published]
theorem realization_iterateFrobenius {N : ℕ} {A : Type*} [CommRing A]
    (base : CubicFrobeniusRewriteBase N A)
    (iterations : ℕ) (value : A) :
    base.realization (iterateFrobenius base iterations value) =
      base.realization value := by
  induction iterations with
  | zero => rfl
  | succ iterations inductionHypothesis =>
      rw [iterateFrobenius, base.realization_frobenius,
        inductionHypothesis]

/-! ## Finite state and lexicographic complexity -/

/-- Complexity used to justify recursive finite surgery. -/
structure TypeIIComplexity where
  unresolvedClusters : ℕ
  concentrationRank : ℕ
  activeCells : ℕ
deriving DecidableEq, Repr

/-- Explicit lexicographic decrease relation. -/
@[expose]
def TypeIIComplexity.Decreases
    (child parent : TypeIIComplexity) : Prop :=
  child.unresolvedClusters < parent.unresolvedClusters ∨
    (child.unresolvedClusters = parent.unresolvedClusters ∧
      child.concentrationRank < parent.concentrationRank) ∨
    (child.unresolvedClusters = parent.unresolvedClusters ∧
      child.concentrationRank = parent.concentrationRank ∧
      child.activeCells < parent.activeCells)

@[surface_novel, surface_published]
theorem TypeIIComplexity.not_decreases_self (complexity : TypeIIComplexity) :
    ¬ complexity.Decreases complexity := by
  intro h
  rcases h with h | h | h <;> omega

/-- One finite coefficient-sensitive surgery state.

`exactReadoutDecomposition` is an exact identity only.  It stores no decay
estimate and no potential bound.
-/
structure TypeIISurgeryState
    (N : ℕ) (A : Type*) [CommRing A]
    (base : CubicFrobeniusRewriteBase N A) where
  correlation : CorrelationData N
  interaction : FiniteInteractionComplex N
  activeAtoms_agree : interaction.activeAtoms = correlation.activeAtoms
  readout : SpatialL2 →L[ℂ] ℂ
  exactReadoutDecomposition : ∀ x, x ≤ 2 * N →
    coefficientPrefix correlation.activeAtoms x =
      readout
          (coefficientPacketState correlation.realization
            correlation.activeAtoms x) + correlation.residual x
  epsilonSpent : ℝ
  epsilonSpent_nonneg : 0 ≤ epsilonSpent
  complexity : TypeIIComplexity
  complexity_activeCells :
    complexity.activeCells = correlation.activeAtoms.card

/-- The complex residual is the same residual whose squared norm is charged
to `correlation.residualBudget`; there is no second unrelated state field. -/
@[expose]
def TypeIISurgeryState.residual
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (state : TypeIISurgeryState N A base) : ℕ → ℂ :=
  state.correlation.residual

@[surface_novel, surface_published]
theorem TypeIISurgeryState.residual_norm_sq_le_budget
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (state : TypeIISurgeryState N A base) (x : ℕ) :
    ‖state.residual x‖ ^ 2 ≤ state.correlation.residualBudget x :=
  state.correlation.residualBudget_covers x

/-- Universal expression attached to one state. -/
@[expose]
def TypeIISurgeryState.universalPrefix
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (state : TypeIISurgeryState N A base) (x : ℕ) : A :=
  Surface.Core.TypeII.universalPrefix base state.correlation.activeAtoms x

@[surface_novel, surface_published]
theorem TypeIISurgeryState.realization_universalPrefix
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (state : TypeIISurgeryState N A base) (x : ℕ) :
    base.realization (state.universalPrefix x) =
      coefficientPrefix state.correlation.activeAtoms x :=
  Surface.Core.TypeII.realization_universalPrefix
    base state.correlation.activeAtoms x

/-! ## Explicit finite incidence curvature and evolution -/

/-- Number of threshold interactions incident to one active atom. -/
@[expose]
def FiniteInteractionComplex.interactionDegree {N : ℕ}
    (complex : FiniteInteractionComplex N) (atom : PacketAtom N) : ℕ := by
  classical
  exact (complex.activeAtoms.filter fun other ↦ complex.Interacts atom other).card

/-- Weighted incidence degree of one active atom. -/
@[expose]
def FiniteInteractionComplex.weightedDegree {N : ℕ}
    (complex : FiniteInteractionComplex N) (atom : PacketAtom N) : ℝ :=
  ∑ other ∈ complex.activeAtoms, complex.edgeWeight atom other

/-- A fixed Forman-style weighted combinatorial edge curvature.

This is the finite graph expression
`2*g(left,right) - degree_g(left) - degree_g(right)`.  It is not the Ricci
tensor of a smooth metric.
-/
@[expose]
def FiniteInteractionComplex.combinatorialEdgeCurvature {N : ℕ}
    (complex : FiniteInteractionComplex N)
    (left right : PacketAtom N) : ℝ :=
  2 * complex.edgeWeight left right -
    complex.weightedDegree left - complex.weightedDegree right

/-- Weighted degree for a time-dependent finite edge metric. -/
@[expose]
def pathWeightedDegree {N : ℕ}
    (activeAtoms : Finset (PacketAtom N))
    (metricPath : ℝ → PacketAtom N → PacketAtom N → ℝ)
    (time : ℝ) (atom : PacketAtom N) : ℝ :=
  ∑ other ∈ activeAtoms, metricPath time atom other

/-- The same explicit weighted combinatorial curvature evaluated along a
continuous edge-metric path. -/
@[expose]
def pathCombinatorialEdgeCurvature {N : ℕ}
    (activeAtoms : Finset (PacketAtom N))
    (metricPath : ℝ → PacketAtom N → PacketAtom N → ℝ)
    (time : ℝ) (left right : PacketAtom N) : ℝ :=
  2 * metricPath time left right -
    pathWeightedDegree activeAtoms metricPath time left -
    pathWeightedDegree activeAtoms metricPath time right

/-- One explicit finite incidence-metric flow segment.

The equation is an Euler edge-weight update using the combinatorial
curvature above.  Existence, positivity preservation, and convergence are
not inferred from the name of the structure.
-/
structure CombinatorialIncidenceFlowSegment
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (before after : TypeIISurgeryState N A base) where
  duration : ℝ
  duration_pos : 0 < duration
  activeAtoms_fixed :
    after.interaction.activeAtoms = before.interaction.activeAtoms
  packet_fixed : ∀ atom,
    after.correlation.realization.packet atom =
      before.correlation.realization.packet atom
  shading_fixed : ∀ atom,
    after.correlation.realization.family.shading atom =
      before.correlation.realization.family.shading atom
  incidenceEvolution : ∀ left right,
    before.interaction.Interacts left right →
    after.interaction.edgeWeight left right =
      before.interaction.edgeWeight left right -
        2 * duration *
          before.interaction.combinatorialEdgeCurvature left right

/-- Continuous finite combinatorial Ricci-flow certificate.

The name requested by the research program is reserved for this exact
edgewise ODE certificate.  It asserts neither existence nor any smooth
three-manifold Ricci flow.  Packet labels, packets, and shadings are fixed
along the certified interval.
-/
structure CombinatorialRicciFlow
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (initial : TypeIISurgeryState N A base) where
  finalTime : ℝ
  finalTime_pos : 0 < finalTime
  metricPath : ℝ → PacketAtom N → PacketAtom N → ℝ
  metric_symm : ∀ time left right,
    metricPath time left right = metricPath time right left
  metric_self : ∀ time atom, metricPath time atom atom = 0
  initial_metric : ∀ left right,
    metricPath 0 left right = initial.interaction.edgeWeight left right
  metric_pos : ∀ time, time ∈ Set.Icc (0 : ℝ) finalTime →
    ∀ left right, initial.interaction.Interacts left right →
      0 < metricPath time left right
  edgewise_equation : ∀ time,
    time ∈ Set.Ioo (0 : ℝ) finalTime →
      ∀ left right,
        initial.interaction.Interacts left right →
        HasDerivAt (fun flowTime ↦ metricPath flowTime left right)
          (-2 * pathCombinatorialEdgeCurvature
            initial.interaction.activeAtoms metricPath time left right) time
  packetPath : ℝ → PacketAtom N → SpatialL2
  packet_fixed : ∀ time, time ∈ Set.Icc (0 : ℝ) finalTime →
    ∀ atom, packetPath time atom =
      initial.correlation.realization.packet atom
  shadingPath : ℝ → PacketAtom N →
    Set Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
  shading_fixed : ∀ time, time ∈ Set.Icc (0 : ℝ) finalTime →
    ∀ atom, shadingPath time atom =
      initial.correlation.realization.family.shading atom

/-- Local backward control for a supplied combinatorial flow segment.  The
error and dissipation estimates remain explicit proof obligations. -/
structure CombinatorialFlowCorrelationControl
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (before after : TypeIISurgeryState N A base) where
  segment : CombinatorialIncidenceFlowSegment before after
  integratedDissipation : ℝ
  deformationError : ℝ
  integratedDissipation_nonneg : 0 ≤ integratedDissipation
  deformationError_nonneg : 0 ≤ deformationError
  backwardPotentialControl :
    before.correlation.maxPotential ≤
      after.correlation.maxPotential +
        integratedDissipation + deformationError

/-! ## Finite surgery moves and controls -/

/-- Procedural finite moves.  `incidenceFlow` names the finite equation
above and deliberately avoids the term smooth Ricci flow. -/
inductive TypeIISurgeryMove (N : ℕ)
  | incidenceFlow (duration : ℝ)
  | neckCut (cluster : Finset (PacketAtom N))
  | cap (boundary : Finset (PacketAtom N))
  | grainSplit (coarseScale : ℝ)
  | transverseSeparate (angularScale : ℝ)
  | cubicFrobeniusNormalize (iterations : ℕ)
  | terminateDiffuse

/-- A finite closed-pseudomanifold/Euler candidate for a spherical link.

These incidence checks are necessary but not sufficient for topological
recognition of `S²`; consequently this structure is named `Candidate` and
does not grant topology authority.
-/
structure SphericalLinkCandidate (N : ℕ) where
  cluster : Finset (PacketAtom N)
  cluster_nonempty : cluster.Nonempty
  vertices : Finset (PacketAtom N)
  edges : Finset (Finset (PacketAtom N))
  faces : Finset (Finset (PacketAtom N))
  vertices_active : vertices ⊆ cluster
  four_le_vertices : 4 ≤ vertices.card
  edge_card : ∀ edge ∈ edges, edge.card = 2
  edge_vertices : ∀ edge ∈ edges, edge ⊆ vertices
  face_card : ∀ face ∈ faces, face.card = 3
  face_vertices : ∀ face ∈ faces, face ⊆ vertices
  face_edges : ∀ face ∈ faces, ∀ edge,
    edge ⊆ face → edge.card = 2 → edge ∈ edges
  vertices_in_faces : ∀ vertex ∈ vertices,
    ∃ face ∈ faces, vertex ∈ face
  every_edge_two_faces : ∀ edge ∈ edges,
    (faces.filter fun face ↦ edge ⊆ face).card = 2
  oneSkeleton_connected : ∀ left ∈ vertices, ∀ right ∈ vertices,
    Relation.ReflTransGen
      (fun first second ↦ {first, second} ∈ edges) left right
  euler_count : vertices.card + faces.card = edges.card + 2

/-- The candidate link is actually a subcomplex of a supplied interaction
nerve.  This prevents an unrelated tetrahedral incidence pattern from being
used as a neck witness. -/
@[expose]
def SphericalLinkCandidate.RealizedInNerve {N : ℕ}
    (link : SphericalLinkCandidate N)
    (nerve : FiniteInteractionNerve N) : Prop :=
  link.cluster ⊆ nerve.activeAtoms ∧
    link.edges ⊆ nerve.simplices ∧
    link.faces ⊆ nerve.simplices

/-- Exact one-to-many surgery accounting.  The universal identity is
algebraic; the potential inequality is a separate analytic obligation. -/
structure SurgeryCorrelationControl
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (parent : TypeIISurgeryState N A base)
    (Child : Type*) [Fintype Child]
    (child : Child → TypeIISurgeryState N A base) where
  surgeryResidual : ℕ → A
  universalDecomposition : ∀ x,
    parent.universalPrefix x =
      (∑ index : Child, (child index).universalPrefix x) +
        surgeryResidual x
  complexityDecreases : ∀ index,
    (child index).complexity.Decreases parent.complexity
  surgeryError : ℝ
  surgeryError_nonneg : 0 ≤ surgeryError
  potentialControl :
    parent.correlation.maxPotential ≤
      (∑ index : Child, (child index).correlation.maxPotential) +
        surgeryError

/-- The realized surgery decomposition follows from the algebraic identity;
it is not an additional analytic assumption. -/
@[surface_novel, surface_published]
theorem SurgeryCorrelationControl.realizedDecomposition
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (parent : TypeIISurgeryState N A base)
    (Child : Type*) [Fintype Child]
    (child : Child → TypeIISurgeryState N A base)
    (control : SurgeryCorrelationControl parent Child child)
    (x : ℕ) :
    base.realization (parent.universalPrefix x) =
      (∑ index : Child,
        base.realization ((child index).universalPrefix x)) +
          base.realization (control.surgeryResidual x) := by
  rw [control.universalDecomposition]
  simp

/-! ## Trichotomy predicates (uninhabited research boundary) -/

/-- A diffuse state has no cluster above the supplied concentration scale. -/
@[expose]
def IsDiffuse
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (state : TypeIISurgeryState N A base) : Prop :=
  ∀ cluster : Finset (PacketAtom N), cluster.Nonempty →
    cluster ⊆ state.interaction.activeAtoms →
      state.interaction.clusterWeight cluster ≤
        state.interaction.interactionThreshold * cluster.card

/-- Quantitative separation of two deterministic Vaughan tube directions. -/
@[expose]
def DirectionSeparated {N : ℕ}
    (scale : ℝ) (left right : PacketAtom N) : Prop :=
  scale ≤
    ‖(vaughanTypeIITube left).direction -
      (vaughanTypeIITube right).direction‖

/-- A genuine two-family transverse decomposition.

Both blocks are nonempty and disjoint, they cover all active atoms, and
separation is required across the two blocks at the angular scale already
fixed in the coefficient-blind interaction geometry.  Singleton blocks can
therefore no longer make the condition vacuous.
-/
structure TransverseTwoBlockDecomposition
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (state : TypeIISurgeryState N A base) where
  leftBlock : Finset (PacketAtom N)
  rightBlock : Finset (PacketAtom N)
  left_nonempty : leftBlock.Nonempty
  right_nonempty : rightBlock.Nonempty
  blocks_disjoint : Disjoint leftBlock rightBlock
  blocks_cover :
    leftBlock ∪ rightBlock = state.interaction.activeAtoms
  cross_separated : ∀ left ∈ leftBlock, ∀ right ∈ rightBlock,
    DirectionSeparated state.interaction.angularScale left right

/-- Existence of a two-family transverse decomposition at the fixed positive
geometric scale.  This predicate still contains no bilinear estimate. -/
@[expose]
def TransverseAlternative
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (state : TypeIISurgeryState N A base) : Prop :=
  Nonempty (TransverseTwoBlockDecomposition state)

/-- A transverse alternative contains at least two active atoms; it cannot be
inhabited by an empty family or a single singleton block. -/
@[surface_novel, surface_published]
theorem TransverseAlternative.two_le_active_card
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    {state : TypeIISurgeryState N A base}
    (alternative : TransverseAlternative state) :
    2 ≤ state.interaction.activeAtoms.card := by
  rcases alternative with ⟨split⟩
  have hleft : 1 ≤ split.leftBlock.card :=
    Finset.one_le_card.mpr split.left_nonempty
  have hright : 1 ≤ split.rightBlock.card :=
    Finset.one_le_card.mpr split.right_nonempty
  rw [← split.blocks_cover,
    Finset.card_union_of_disjoint split.blocks_disjoint]
  omega

/-- Coefficient-sensitive cross term for a supplied two-block split. -/
@[expose]
def transverseCrossCorrelationAt
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (state : TypeIISurgeryState N A base)
    (split : TransverseTwoBlockDecomposition state) (x : ℕ) : ℝ :=
  ‖inner ℂ
      (coefficientPacketState state.correlation.realization split.leftBlock x)
      (coefficientPacketState state.correlation.realization split.rightBlock x)‖

/-- Separate quantitative premise needed before a transverse split can feed
a coefficient-sensitive `TT*` argument.

The budget is explicit and local to this state.  `TransverseAlternative`
does not imply this predicate, and this predicate contains no global Type II
or maximal estimate.
-/
@[expose]
def CoefficientSensitiveTTStarApplicable
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (state : TypeIISurgeryState N A base)
    (split : TransverseTwoBlockDecomposition state)
    (crossBudget : ℝ) : Prop :=
  0 ≤ crossBudget ∧
    ∀ x : ℕ, x ≤ 2 * N →
      transverseCrossCorrelationAt state split x ≤ crossBudget

/-- Supplied unsigned Wang--Zahl alternative for the fixed geometry.  It has
no coefficient-sensitive cancellation conclusion. -/
@[expose]
def WangZahlDiffuseAlternative
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (state : TypeIISurgeryState N A base) : Prop :=
  state.interaction.activeAtoms.Nonempty ∧
    state.interaction.activeAtoms =
      state.correlation.realization.family.tubes ∧
    ∃ epsilon pWZ : ℝ, 0 < epsilon ∧ 0 ≤ pWZ ∧
      ∃ wolffConstant : ℝ≥0∞, wolffConstant ≠ ∞ ∧
        KatzTaoConvexWolffAtMost
            state.correlation.realization.family wolffConstant ∧
          WangZahlUnionLowerBoundAt
            state.correlation.realization.family epsilon pWZ wolffConstant

/-- A particular cluster is a surgical-neck candidate only when its finite
link is realized inside a measured shading-intersection nerve and a proposed
child complexity strictly decreases.  Topological classification and the
surgery correlation inequality remain separate obligations. -/
@[expose]
def SurgicalNeckAt
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (state : TypeIISurgeryState N A base)
    (cluster : Finset (PacketAtom N)) : Prop :=
  ∃ scale threshold : ℝ,
    ∃ link : SphericalLinkCandidate N,
      ∃ nerve : FiniteInteractionNerve N,
        link.cluster = cluster ∧
          state.interaction.IsHighConcentrationCluster scale cluster ∧
          nerve.activeAtoms = state.interaction.activeAtoms ∧
          state.interaction.RealizesNerveOneSkeleton nerve ∧
          link.RealizedInNerve nerve ∧
          RealizesShadingIntersectionNerve
            state.correlation.realization nerve threshold ∧
          ∃ childComplexity : TypeIIComplexity,
            childComplexity.Decreases state.complexity

/-- Existence of one geometrically realized finite candidate neck. -/
@[expose]
def SurgicalNeckAlternative
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (state : TypeIISurgeryState N A base) : Prop :=
  ∃ cluster : Finset (PacketAtom N), SurgicalNeckAt state cluster

/-- The precise three-way research conclusion. -/
@[expose]
def NeckOrTransversalityAt
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (state : TypeIISurgeryState N A base) : Prop :=
  TransverseAlternative state ∨
    WangZahlDiffuseAlternative state ∨
    SurgicalNeckAlternative state

/-- Named but deliberately unproved research statement. -/
@[expose]
def NeckOrTransversalityResearchStatement
    (N : ℕ) (A : Type*) [CommRing A]
    (base : CubicFrobeniusRewriteBase N A) : Prop :=
  ∀ state : TypeIISurgeryState N A base,
    ¬ IsDiffuse state → NeckOrTransversalityAt state

/-! ## Move obligations and authority/falsification boundaries -/

/-- Local proof obligation selected by each procedural move.  These are
premises to be discharged, not constructors of a global program theorem. -/
@[expose]
def TypeIIMoveSound
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (state : TypeIISurgeryState N A base)
    (move : TypeIISurgeryMove N) : Prop :=
  match move with
  | .incidenceFlow duration =>
      0 < duration ∧
        ∃ after : TypeIISurgeryState N A base,
          ∃ control : CombinatorialFlowCorrelationControl state after,
            control.segment.duration = duration
  | .neckCut cluster =>
      SurgicalNeckAt state cluster
  | .cap boundary =>
      ∃ threshold : ℝ,
        ∃ link : SphericalLinkCandidate N,
          ∃ nerve : FiniteInteractionNerve N,
            link.vertices = boundary ∧
              nerve.activeAtoms = state.interaction.activeAtoms ∧
              state.interaction.RealizesNerveOneSkeleton nerve ∧
              link.RealizedInNerve nerve ∧
              RealizesShadingIntersectionNerve
                state.correlation.realization nerve threshold
  | .grainSplit coarseScale =>
      0 < coarseScale ∧
        Nonempty (GrainRefinementAdapter N
          state.correlation.realization coarseScale) ∧
          ∃ threshold : ℝ, 0 < threshold ∧
            ∃ nerve : FiniteInteractionNerve N,
              nerve.activeAtoms = state.interaction.activeAtoms ∧
                state.interaction.RealizesNerveOneSkeleton nerve ∧
                state.interaction.activeAtoms.card < nerve.simplices.card ∧
                  RealizesShadingIntersectionNerve
                    state.correlation.realization nerve threshold
  | .transverseSeparate scale =>
      scale = state.interaction.angularScale ∧
        TransverseAlternative state
  | .cubicFrobeniusNormalize iterations =>
      ∀ x,
        base.realization
            (iterateFrobenius base iterations (state.universalPrefix x)) =
          base.realization (state.universalPrefix x)
  | .terminateDiffuse => IsDiffuse state

/-- Claims that may be discussed by this interface. -/
inductive TypeIIClaimKind
  | finiteCoefficientBookkeeping
  | finiteIncidenceEvolutionInterface
  | smoothRicciFlow
  | topologicalSphereRecognition
  | bhattScholzePrism
  | wangZahlToSignedCancellation
  | uniformTypeIIMaximal
  | conductorThreeGRH
deriving DecidableEq, Repr

/-- Kernel/audit status, kept distinct from mathematical truth. -/
inductive TypeIIAuthorityStatus
  | checkedFiniteInterface
  | certificateRequired
  | researchOpen
  | outsideThisDomain
deriving DecidableEq, Repr

/-- Explicit authority table for this finite module. -/
@[expose]
def typeIIAuthorityStatus : TypeIIClaimKind → TypeIIAuthorityStatus
  | .finiteCoefficientBookkeeping => .checkedFiniteInterface
  | .finiteIncidenceEvolutionInterface => .checkedFiniteInterface
  | .smoothRicciFlow => .outsideThisDomain
  | .topologicalSphereRecognition => .certificateRequired
  | .bhattScholzePrism => .outsideThisDomain
  | .wangZahlToSignedCancellation => .researchOpen
  | .uniformTypeIIMaximal => .researchOpen
  | .conductorThreeGRH => .researchOpen

/-- Concrete ways a proposed adapter can be falsified before it enters the
theorem cone. -/
inductive TypeIIFalsificationCheck
  | coefficientRealizationMismatch
  | nonpositiveInteractionMetric
  | shadingEscapesFixedTube
  | arithmeticDependentGeometry
  | simplexClosureFailure
  | nondecreasingSurgeryComplexity
  | missingBackwardPotentialControl
  | unsignedGeometryUsedAsSignedCancellation
  | archimedeanBoundClaimedFromFrobeniusDepth
deriving DecidableEq, Repr

/-- Falsification checks required at each non-finite authority boundary. -/
@[expose]
def requiredFalsificationChecks : TypeIIClaimKind →
    List TypeIIFalsificationCheck
  | .finiteCoefficientBookkeeping =>
      [.coefficientRealizationMismatch]
  | .finiteIncidenceEvolutionInterface =>
      [.nonpositiveInteractionMetric, .simplexClosureFailure,
        .missingBackwardPotentialControl]
  | .smoothRicciFlow =>
      [.nonpositiveInteractionMetric, .missingBackwardPotentialControl]
  | .topologicalSphereRecognition =>
      [.simplexClosureFailure, .nondecreasingSurgeryComplexity]
  | .bhattScholzePrism =>
      [.archimedeanBoundClaimedFromFrobeniusDepth]
  | .wangZahlToSignedCancellation =>
      [.shadingEscapesFixedTube, .arithmeticDependentGeometry,
        .unsignedGeometryUsedAsSignedCancellation]
  | .uniformTypeIIMaximal =>
      [.unsignedGeometryUsedAsSignedCancellation,
        .missingBackwardPotentialControl]
  | .conductorThreeGRH =>
      [.unsignedGeometryUsedAsSignedCancellation,
        .archimedeanBoundClaimedFromFrobeniusDepth]

@[surface_novel, surface_published, simp]
theorem smoothRicciFlow_is_outside_finite_incidence_authority :
    typeIIAuthorityStatus .smoothRicciFlow = .outsideThisDomain :=
  rfl

@[surface_novel, surface_published, simp]
theorem signedTypeII_bound_remains_research_open :
    typeIIAuthorityStatus .uniformTypeIIMaximal = .researchOpen :=
  rfl

@[surface_novel, surface_published, simp]
theorem bhattScholze_prism_is_not_spatial_surgery_authority :
    typeIIAuthorityStatus .bhattScholzePrism = .outsideThisDomain :=
  rfl

end

end Surface.Core.TypeII
```
