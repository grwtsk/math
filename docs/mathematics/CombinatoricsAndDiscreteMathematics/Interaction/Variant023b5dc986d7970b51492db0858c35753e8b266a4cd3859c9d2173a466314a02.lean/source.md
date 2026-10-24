# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Interaction.Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `094f2efd54e537b8f2d8bcd239fb0723fb68c688` · SHA-256 `22189f35b98f64622555fa7a30f34dfbbb9eb659d60d3efff0022ecf73953bce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PacketRealization.Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PacketRealization.Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"d0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/Interaction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeTwistedVaughan
public import Surface.Core.ConductorThreeVaughanTubeScaffold
public import Surface.Core.PrimeWalkLosslessSpatial
public import Surface.Core.PrimeWalkWangZahlGeometry
public import Mathlib.Data.Finset.Lattice.Fold
import Mathlib.Tactic

/-!
# Finite conductor-three Type II interaction data

This module gives the proposed *interaction geometry* a deliberately finite
meaning.  Its vertices are the already checked effective Vaughan Type II
factor atoms.  The conductor-three coefficient is a fixed section on those
vertices, while packet carriers and interaction weights are coefficient-blind
geometric data.

The correlation potential below is coefficient-sensitive: it is the squared
norm of the partial synthesis for the actual conductor-three section, plus an
explicit nonnegative residual budget.  It is not the norm of a full Gram
operator, so scalar sign conjugation cannot erase its arithmetic input.

Nothing here constructs a smooth manifold, a smooth Ricci flow, a
Bhatt--Scholze prism, a Wang--Zahl certificate, or a Type II estimate.  Those
claims remain behind separately named interfaces.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PacketRealization.Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators ENNReal
open MeasureTheory
open Surface.Core.ConductorThreeTwistedVaughan
open Surface.Core.ConductorThreeVaughanTubeScaffold
open Surface.Core.PrimeWalkLosslessSpatial
open Surface.Core.PrimeWalkSpatialEncoding
open Surface.Core.PrimeWalkWangZahlGeometry
open Surface.Core.PrimeWalkTwoScaleGrains

/-! ## Fixed arithmetic atoms and coefficient section -/

/-- The effective fourth-root Vaughan Type II pairs through scale `2 * N`. -/
abbrev PacketAtom (N : ℕ) := VaughanTypeIIFactorAtom N

local instance packetAtomFintype (N : ℕ) : Fintype (PacketAtom N) :=
  @Subtype.fintype _ (IsVaughanTypeIIFactor N)
    (by intro pair; unfold IsVaughanTypeIIFactor; infer_instance) inferInstance

/-- Arithmetic moment at which a Type II factor pair enters the prefix. -/
@[expose]
def atomEntryTime {N : ℕ} (atom : PacketAtom N) : ℕ :=
  atom.1.1.1 * atom.1.2.1

@[surface_novel, surface_published]
theorem atomEntryTime_eq_index {N : ℕ} (atom : PacketAtom N) :
    atomEntryTime atom = (vaughanTypeIIFactorIndex atom).1 :=
  rfl

/-- Every packet atom enters inside the fixed scale window. -/
@[surface_novel, surface_published]
theorem atomEntryTime_le {N : ℕ} (atom : PacketAtom N) :
    atomEntryTime atom ≤ 2 * N :=
  atom.2.1

/-- The actual conductor-three coefficient section on Type II atoms. -/
@[expose]
def coefficientSection {N : ℕ} (atom : PacketAtom N) : ℂ :=
  vaughanFactorCoefficient (.inr (.inr (.inr atom)))

/-- Finite prefix of the fixed coefficient section over a selected atom set. -/
@[expose]
def coefficientPrefix {N : ℕ}
    (activeAtoms : Finset (PacketAtom N)) (x : ℕ) : ℂ :=
  ∑ atom ∈ activeAtoms,
    if atomEntryTime atom ≤ x then coefficientSection atom else 0

/-! ## Coefficient-blind packet and incidence geometry -/

/-- A packet realization with the deterministic Vaughan tube attached to
every atom.  The family contains geometry only; the arithmetic section is the
separate definition `coefficientSection` above.

The structure deliberately does not contain a frame estimate, a signed
correlation estimate, or a maximal Type II bound.
-/
structure PacketRealization (N : ℕ) where
  family : EuclideanShadedTubeFamily (PacketAtom N)
  tubes_eq_univ : family.tubes = Finset.univ
  tube_eq_scaffold : ∀ atom, family.tube atom = vaughanTypeIITube atom
  packet : PacketAtom N → SpatialL2
  packet_normalized : ∀ atom, ‖packet atom‖ = 1
  /-- Physical localization is stated almost everywhere because `SpatialL2`
  is an a.e.-equivalence class. -/
  packet_ae_zero_outside_tube : ∀ atom,
    ∀ᵐ point : Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
        ∂(volume : Measure
          Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint),
      point ∉ (family.tube atom).carrier → packet atom point = 0

/-- Proof-carrying adapter from the fixed Type II packet family to an actual
two-scale grains certificate.  This is the coarse/fine geometric input a
`grainSplit` move must supply; an abstract nerve alone is insufficient. -/
structure GrainRefinementAdapter (N : ℕ)
    (realization : PacketRealization N) (coarseScale : ℝ) where
  CoarseTube : Type
  Grain : Type
  coarseTubeDecidableEq : DecidableEq CoarseTube
  grainDecidableEq : DecidableEq Grain
  certificate : @RobustTwoScaleGrains
    Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
    (PacketAtom N) CoarseTube Grain
    inferInstance inferInstance coarseTubeDecidableEq grainDecidableEq
    (volume : Measure
      Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint)
  coarseScale_eq : certificate.parameters.rho = coarseScale
  fineTubes_eq : certificate.fineTubes = realization.family.tubes
  fineCarrier_eq : ∀ atom,
    certificate.geometry.fineCarrier atom =
      (realization.family.tube atom).carrier
  fineShading_eq : ∀ atom,
    certificate.fineShading atom = realization.family.shading atom

/-- A finite, coefficient-blind weighted interaction complex.

`edgeWeight` can encode normalized overlap and convex-cluster penalties.  The
positive threshold and zero diagonal ensure that a vertex never interacts
with itself.  No curvature interpretation is imposed by this structure.
-/
structure FiniteInteractionComplex (N : ℕ) where
  activeAtoms : Finset (PacketAtom N)
  edgeWeight : PacketAtom N → PacketAtom N → ℝ
  edgeWeight_nonneg : ∀ left right, 0 ≤ edgeWeight left right
  edgeWeight_symm : ∀ left right, edgeWeight left right = edgeWeight right left
  edgeWeight_self : ∀ atom, edgeWeight atom atom = 0
  interactionThreshold : ℝ
  interactionThreshold_pos : 0 < interactionThreshold
  /-- Angular separation scale fixed with the coefficient-blind geometry,
  before any transverse alternative is selected. -/
  angularScale : ℝ
  angularScale_pos : 0 < angularScale
  angularScale_eq_scaffold : angularScale = vaughanTubeThickness N

/-- Thresholded interaction relation of the finite complex. -/
@[expose]
def FiniteInteractionComplex.Interacts {N : ℕ}
    (complex : FiniteInteractionComplex N)
    (left right : PacketAtom N) : Prop :=
  left ∈ complex.activeAtoms ∧ right ∈ complex.activeAtoms ∧
    complex.interactionThreshold ≤ complex.edgeWeight left right

@[surface_novel, surface_published]
theorem FiniteInteractionComplex.angularScale_fixed_by_scaffold {N : ℕ}
    (complex : FiniteInteractionComplex N) :
    complex.angularScale = vaughanTubeThickness N :=
  complex.angularScale_eq_scaffold

@[surface_novel, surface_published]
theorem FiniteInteractionComplex.interacts_symm {N : ℕ}
    (complex : FiniteInteractionComplex N) {left right : PacketAtom N}
    (h : complex.Interacts left right) :
    complex.Interacts right left := by
  rcases h with ⟨hleft, hright, hweight⟩
  refine ⟨hright, hleft, ?_⟩
  rwa [complex.edgeWeight_symm]

@[surface_novel, surface_published]
theorem FiniteInteractionComplex.not_interacts_self {N : ℕ}
    (complex : FiniteInteractionComplex N) (atom : PacketAtom N) :
    ¬ complex.Interacts atom atom := by
  intro h
  have hthreshold := h.2.2
  rw [complex.edgeWeight_self] at hthreshold
  linarith [complex.interactionThreshold_pos]

/-! ## Finite simplex closure and a separate geometric realization predicate -/

/-- A finite abstract interaction nerve.  Downward closure is part of the
data, so this is stronger than a threshold graph while remaining entirely
finite.  Empty simplices are omitted by convention. -/
structure FiniteInteractionNerve (N : ℕ) where
  activeAtoms : Finset (PacketAtom N)
  simplices : Finset (Finset (PacketAtom N))
  simplex_nonempty : ∀ simplex ∈ simplices, simplex.Nonempty
  simplex_subset_active : ∀ simplex ∈ simplices, simplex ⊆ activeAtoms
  singleton_mem : ∀ atom ∈ activeAtoms, {atom} ∈ simplices
  downward_closed : ∀ simplex ∈ simplices,
    ∀ face, face.Nonempty → face ⊆ simplex → face ∈ simplices

/-- Literal finite intersection of the shadings indexed by a simplex. -/
@[expose]
def shadingIntersection {N : ℕ}
    (realization : PacketRealization N)
    (simplex : Finset (PacketAtom N)) :
    Set Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint :=
  {point | ∀ atom ∈ simplex, point ∈ realization.family.shading atom}

/-- Adapter proposition saying that an abstract finite nerve was constructed
from measurable shading intersections at a fixed positive volume threshold.

No instance is supplied: proving this predicate for the deterministic packet
scaffold remains a geometric obligation.
-/
@[expose]
def RealizesShadingIntersectionNerve {N : ℕ}
    (realization : PacketRealization N)
    (nerve : FiniteInteractionNerve N) (threshold : ℝ) : Prop :=
  0 < threshold ∧
    nerve.activeAtoms = realization.family.tubes ∧
    ∀ simplex : Finset (PacketAtom N), simplex.Nonempty →
      simplex ⊆ nerve.activeAtoms →
        (simplex ∈ nerve.simplices ↔
          ENNReal.ofReal threshold ≤
            volume (shadingIntersection realization simplex))

/-- Compatibility between the threshold interaction graph and the
one-skeleton of a finite nerve.  Requiring this adapter prevents surgery from
using a geometrically realized but interaction-unrelated complex. -/
@[expose]
def FiniteInteractionComplex.RealizesNerveOneSkeleton {N : ℕ}
    (complex : FiniteInteractionComplex N)
    (nerve : FiniteInteractionNerve N) : Prop :=
  complex.activeAtoms = nerve.activeAtoms ∧
    ∀ left right : PacketAtom N, left ≠ right →
      (complex.Interacts left right ↔
        {left, right} ∈ nerve.simplices)

/-- Total internal interaction weight of a finite atom cluster. -/
@[expose]
def FiniteInteractionComplex.clusterWeight {N : ℕ}
    (complex : FiniteInteractionComplex N)
    (cluster : Finset (PacketAtom N)) : ℝ :=
  ∑ left ∈ cluster, ∑ right ∈ cluster, complex.edgeWeight left right

@[surface_novel, surface_published]
theorem FiniteInteractionComplex.clusterWeight_nonneg {N : ℕ}
    (complex : FiniteInteractionComplex N)
    (cluster : Finset (PacketAtom N)) :
    0 ≤ complex.clusterWeight cluster := by
  unfold FiniteInteractionComplex.clusterWeight
  apply Finset.sum_nonneg
  intro left _
  apply Finset.sum_nonneg
  intro right _
  exact complex.edgeWeight_nonneg left right

/-- A high-concentration cluster is a nonempty active cluster whose total
interaction exceeds a supplied positive scale times its cardinality.

This is a finite combinatorial predicate, not a curvature blow-up theorem.
-/
@[expose]
def FiniteInteractionComplex.IsHighConcentrationCluster {N : ℕ}
    (complex : FiniteInteractionComplex N) (scale : ℝ)
    (cluster : Finset (PacketAtom N)) : Prop :=
  0 < scale ∧ cluster.Nonempty ∧ cluster ⊆ complex.activeAtoms ∧
    scale * cluster.card ≤ complex.clusterWeight cluster

/-! ## The coefficient-sensitive correlation potential -/

/-- Partial packet synthesis for the fixed conductor-three coefficient
section.  Geometry and arithmetic remain visibly separate arguments. -/
@[expose]
def coefficientPacketState {N : ℕ}
    (realization : PacketRealization N)
    (activeAtoms : Finset (PacketAtom N)) (x : ℕ) : SpatialL2 :=
  ∑ atom ∈ activeAtoms,
    if atomEntryTime atom ≤ x then
      coefficientSection atom • realization.packet atom
    else 0

/-- Squared `L²` norm of the actual coefficient-section prefix. -/
@[expose]
def correlationEnergyAt {N : ℕ}
    (realization : PacketRealization N)
    (activeAtoms : Finset (PacketAtom N)) (x : ℕ) : ℝ :=
  ‖coefficientPacketState realization activeAtoms x‖ ^ 2

@[surface_novel, surface_published]
theorem correlationEnergyAt_nonneg {N : ℕ}
    (realization : PacketRealization N)
    (activeAtoms : Finset (PacketAtom N)) (x : ℕ) :
    0 ≤ correlationEnergyAt realization activeAtoms x := by
  unfold correlationEnergyAt
  positivity

/-- Coefficient-sensitive packet data plus an explicit residual budget. -/
structure CorrelationData (N : ℕ) where
  realization : PacketRealization N
  activeAtoms : Finset (PacketAtom N)
  residual : ℕ → ℂ
  residualBudget : ℕ → ℝ
  residualBudget_nonneg : ∀ x, 0 ≤ residualBudget x
  residualBudget_covers : ∀ x, ‖residual x‖ ^ 2 ≤ residualBudget x

/-- Correlation potential at one arithmetic moment. -/
@[expose]
def CorrelationData.potentialAt {N : ℕ}
    (data : CorrelationData N) (x : ℕ) : ℝ :=
  correlationEnergyAt data.realization data.activeAtoms x +
    data.residualBudget x

@[surface_novel, surface_published]
theorem CorrelationData.potentialAt_nonneg {N : ℕ}
    (data : CorrelationData N) (x : ℕ) :
    0 ≤ data.potentialAt x := by
  unfold CorrelationData.potentialAt
  exact add_nonneg
    (correlationEnergyAt_nonneg data.realization data.activeAtoms x)
    (data.residualBudget_nonneg x)

/-- Largest finite correlation potential through moment `2 * N`. -/
@[expose]
def CorrelationData.maxPotential {N : ℕ}
    (data : CorrelationData N) : ℝ :=
  (Finset.range (2 * N + 1)).sup' (by simp) data.potentialAt

@[surface_novel, surface_published]
theorem CorrelationData.potentialAt_le_maxPotential {N x : ℕ}
    (data : CorrelationData N) (hx : x ≤ 2 * N) :
    data.potentialAt x ≤ data.maxPotential := by
  unfold CorrelationData.maxPotential
  exact Finset.le_sup' data.potentialAt (by simp; omega)

@[surface_novel, surface_published]
theorem CorrelationData.maxPotential_nonneg {N : ℕ}
    (data : CorrelationData N) :
    0 ≤ data.maxPotential := by
  exact (data.potentialAt_nonneg 0).trans
    (data.potentialAt_le_maxPotential (by omega))

end

end Surface.Core.TypeII
```
