/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PrimeGramQuarticExtraction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Three-point volume packing for positive quartic extraction

Three sequential planar source points determine two consecutive displacement
vectors.  Their squared oriented area is the determinant of the corresponding
2x2 Gram matrix.  It is quartic in the point coordinates and nonnegative by
construction.

This supplies a smaller positive carrier for the open prime/quartic extraction:
only three source points are retained at each stage.  The substantive open
analytic theorem remains the comparison of this positive Gram volume with the
signed zeta quartic witness, together with the complete residual decay.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
THREE_POINT_VOLUME_SUPPLIER_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open GRWTSK.Polynomial.ConjugateQuartic

/-- Two-dimensional real point used by the packing stage. -/
structure PackingPoint where
  x : ℝ
  y : ℝ

namespace PackingPoint

def sub (p q : PackingPoint) : PackingPoint :=
  ⟨p.x - q.x, p.y - q.y⟩

def dot (p q : PackingPoint) : ℝ :=
  p.x * q.x + p.y * q.y

def normSq (p : PackingPoint) : ℝ :=
  p.dot p

end PackingPoint

/-- Three source points in sequence. -/
structure ThreePointPacking where
  first : PackingPoint
  second : PackingPoint
  third : PackingPoint

namespace ThreePointPacking

/-- First consecutive displacement. -/
def edge01 (p : ThreePointPacking) : PackingPoint :=
  PackingPoint.sub p.second p.first

/-- Second consecutive displacement. -/
def edge12 (p : ThreePointPacking) : PackingPoint :=
  PackingPoint.sub p.third p.second

/-- Signed two-dimensional volume of the consecutive edge pair. -/
def orientedVolume (p : ThreePointPacking) : ℝ :=
  (p.edge01.x * p.edge12.y) - (p.edge01.y * p.edge12.x)

/-- Positive quartic packing witness: squared oriented volume. -/
def gramVolume (p : ThreePointPacking) : ℝ :=
  (p.orientedVolume) ^ 2

/-- The packing witness is nonnegative without an analytic positivity premise. -/
theorem gramVolume_nonnegative (p : ThreePointPacking) :
    0 ≤ p.gramVolume :=
  sq_nonneg _

/-- The squared oriented area is exactly the 2x2 Gram determinant. -/
theorem gramVolume_eq_gramDet (p : ThreePointPacking) :
    p.gramVolume =
      (p.edge01.normSq * p.edge12.normSq) -
        (p.edge01.dot p.edge12) ^ 2 := by
  unfold gramVolume orientedVolume edge01 edge12 PackingPoint.sub
    PackingPoint.normSq PackingPoint.dot
  ring

/-- Degenerate consecutive edges have zero packing volume. -/
theorem gramVolume_eq_zero_of_orientedVolume_eq_zero
    {p : ThreePointPacking} (h : p.orientedVolume = 0) :
    p.gramVolume = 0 := by
  simp [gramVolume, h]

end ThreePointPacking

/-- One source-labeled positive stage retaining exactly three sequential
prime-power source points. -/
structure ThreePointPrimePackingStage where
  packing : ThreePointPacking
  source : Fin 3 → ℕ
  IsPrimePowerSource : ℕ → Prop
  source_ok : ∀ i, IsPrimePowerSource (source i)
  value : ℝ
  value_eq : value = packing.gramVolume

namespace ThreePointPrimePackingStage

/-- Positivity is inherited from the Gram determinant / squared-volume identity. -/
theorem nonnegative (stage : ThreePointPrimePackingStage) :
    0 ≤ stage.value := by
  rw [stage.value_eq]
  exact stage.packing.gramVolume_nonnegative

/-- The stage value also has the explicit Gram-determinant expression. -/
theorem value_eq_gramDet (stage : ThreePointPrimePackingStage) :
    stage.value =
      (stage.packing.edge01.normSq * stage.packing.edge12.normSq) -
        (stage.packing.edge01.dot stage.packing.edge12) ^ 2 := by
  rw [stage.value_eq, stage.packing.gramVolume_eq_gramDet]

end ThreePointPrimePackingStage

/-- Three-point volume extraction for one actual nontrivial zeta zero. -/
structure ThreePointVolumeExtractionAtZero (s : ℂ) where
  stage : ℕ → ThreePointPrimePackingStage
  weight : ℕ → ℝ
  residual : PrimeQuarticResidualLedger
  limitWeight : ℝ
  limitWeight_pos : 0 < limitWeight
  identity :
    ∀ n,
      (stage n).value =
        weight n * witnessTrace (s.re - 1 / 2) s.im + residual.total n
  weight_tendsto : Tendsto weight atTop (𝓝 limitWeight)

/-- Forget the three-point geometry only after deriving the nonnegativity
consumed by the existing signed-quartic endpoint. -/
def ThreePointVolumeExtractionAtZero.toQuarticExtraction
    {s : ℂ} (data : ThreePointVolumeExtractionAtZero s) :
    QuarticExtractionAtZero s where
  W := fun n => (data.stage n).value
  weight := data.weight
  residual := data.residual
  limitWeight := data.limitWeight
  limitWeight_pos := data.limitWeight_pos
  identity := data.identity
  nonnegative := fun n => (data.stage n).nonnegative
  weight_tendsto := data.weight_tendsto

/-- Exact all-zero claim for the three-point packing supplier. -/
def ThreePointVolumeQuarticClaim : Prop :=
  ∀ s : ℂ, NontrivialZetaZero s → ThreePointVolumeExtractionAtZero s

/-- The source-bound, theorem-audited three-point volume supplier. -/
structure SourceBoundThreePointVolumeExtraction where
  sourceIdentity : String
  normalization : String
  pntIndependent :
    PNTIndependentDependencyAudit ThreePointVolumeQuarticClaim

/-- Direct adapter from the three-point volume supplier to the existing RH
extraction theorem. -/
theorem riemannHypothesis_of_sourceBoundThreePointVolumeExtraction
    (extraction : SourceBoundThreePointVolumeExtraction) :
    _root_.RiemannHypothesis := by
  apply GRWTSK.NumberTheory.Zeta.Riemann.riemannHypothesis_of_trace_extraction
  intro s hs
  let data := extraction.pntIndependent.theoremTerm s hs
  exact
    ⟨(fun n => (data.stage n).value), data.weight, data.residual.total,
      data.limitWeight, data.limitWeight_pos, data.identity,
      (fun n => (data.stage n).nonnegative),
      data.weight_tendsto, data.residual.total_tendsto⟩

/-- Local source map from the retained mechanism witness to a three-point
packing supplier.  Constructing this map is now the next arithmetic obligation. -/
structure LocalThreePointVolumeExtractor (Local : Type*) where
  extract : Local → SourceBoundThreePointVolumeExtraction

/-- The complete source-bound mechanism trace reaches the three-point positive
carrier only through an explicit local extractor. -/
def SourceBoundMechanismBridgeAccepted.toThreePointVolumeExtraction
    {Source Local : Type*}
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local]
    (accepted : SourceBoundMechanismBridgeAccepted Source Local)
    (extractor : LocalThreePointVolumeExtractor Local) :
    SourceBoundThreePointVolumeExtraction :=
  extractor.extract accepted.bridge.localWitness

end GRWTSK.RiemannHypothesis
