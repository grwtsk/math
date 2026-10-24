/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ThreePointVolumeQuarticExtraction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Sequential three-point volume packing

Instead of an unrelated family of positive triples, retain one infinite source
sequence. Stage n uses exactly the sliding window p_n,p_(n+1),p_(n+2).
Consecutive stages therefore share two points definitionally.

This is the smallest state needed by the proposed positive packing mechanism.
The signed-quartic comparison remains a separate analytic theorem.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SEQUENTIAL_SOURCE_MAP_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open GRWTSK.Polynomial.ConjugateQuartic

/-- One source sequence carrying a point and prime-power label at every stage. -/
structure SequentialThreePointPrimePacking where
  point : ℕ → PackingPoint
  source : ℕ → ℕ
  IsPrimePowerSource : ℕ → Prop
  source_ok : ∀ n, IsPrimePowerSource (source n)

namespace SequentialThreePointPrimePacking

/-- The sliding three-point window at stage n. -/
def packingAt (seq : SequentialThreePointPrimePacking) (n : ℕ) :
    ThreePointPacking where
  first := seq.point n
  second := seq.point (n + 1)
  third := seq.point (n + 2)

/-- Positive quartic value at stage n. -/
def valueAt (seq : SequentialThreePointPrimePacking) (n : ℕ) : ℝ :=
  (seq.packingAt n).gramVolume

/-- Every sequential stage is nonnegative by the volume/Gram identity. -/
theorem valueAt_nonnegative
    (seq : SequentialThreePointPrimePacking) (n : ℕ) :
    0 ≤ seq.valueAt n :=
  (seq.packingAt n).gramVolume_nonnegative

/-- The first point of the next window is the second point of the current one. -/
@[simp]
theorem packingAt_succ_first
    (seq : SequentialThreePointPrimePacking) (n : ℕ) :
    (seq.packingAt (n + 1)).first = (seq.packingAt n).second := by
  rfl

/-- The second point of the next window is the third point of the current one. -/
@[simp]
theorem packingAt_succ_second
    (seq : SequentialThreePointPrimePacking) (n : ℕ) :
    (seq.packingAt (n + 1)).second = (seq.packingAt n).third := by
  rfl

/-- All three labels in every sliding window satisfy the selected prime-power
source predicate. -/
theorem window_source_ok
    (seq : SequentialThreePointPrimePacking) (n : ℕ) :
    seq.IsPrimePowerSource (seq.source n) ∧
      seq.IsPrimePowerSource (seq.source (n + 1)) ∧
        seq.IsPrimePowerSource (seq.source (n + 2)) :=
  ⟨seq.source_ok n, seq.source_ok (n + 1), seq.source_ok (n + 2)⟩

/-- The sequential positive value has the exact 2x2 Gram determinant form. -/
theorem valueAt_eq_gramDet
    (seq : SequentialThreePointPrimePacking) (n : ℕ) :
    seq.valueAt n =
      ((seq.packingAt n).edge01.normSq * (seq.packingAt n).edge12.normSq) -
        ((seq.packingAt n).edge01.dot (seq.packingAt n).edge12) ^ 2 := by
  exact (seq.packingAt n).gramVolume_eq_gramDet

end SequentialThreePointPrimePacking

/-- Sequential three-point extraction for one actual nontrivial zero. -/
structure SequentialThreePointVolumeExtractionAtZero (s : ℂ) where
  sequence : SequentialThreePointPrimePacking
  weight : ℕ → ℝ
  residual : PrimeQuarticResidualLedger
  limitWeight : ℝ
  limitWeight_pos : 0 < limitWeight
  identity :
    ∀ n,
      sequence.valueAt n =
        weight n * witnessTrace (s.re - 1 / 2) s.im + residual.total n
  weight_tendsto : Tendsto weight atTop (𝓝 limitWeight)

/-- Forget sequential coherence only after it has supplied the positive values
and exact shared-window semantics. -/
def SequentialThreePointVolumeExtractionAtZero.toQuarticExtraction
    {s : ℂ} (data : SequentialThreePointVolumeExtractionAtZero s) :
    QuarticExtractionAtZero s where
  W := data.sequence.valueAt
  weight := data.weight
  residual := data.residual
  limitWeight := data.limitWeight
  limitWeight_pos := data.limitWeight_pos
  identity := data.identity
  nonnegative := data.sequence.valueAt_nonnegative
  weight_tendsto := data.weight_tendsto

/-- Exact all-zero claim for one coherent sliding source sequence. -/
def SequentialThreePointVolumeQuarticClaim : Type :=
  ∀ s : ℂ, NontrivialZetaZero s →
    SequentialThreePointVolumeExtractionAtZero s

/-- Source-bound audited sequential packing supplier. -/
structure SourceBoundSequentialThreePointVolumeExtraction where
  sourceIdentity : String
  normalization : String
  pntIndependent :
    PNTIndependentDependencyAudit SequentialThreePointVolumeQuarticClaim

/-- Direct conditional terminal theorem for the coherent sequence supplier. -/
theorem riemannHypothesis_of_sourceBoundSequentialThreePointVolumeExtraction
    (extraction : SourceBoundSequentialThreePointVolumeExtraction) :
    _root_.RiemannHypothesis := by
  apply GRWTSK.NumberTheory.Zeta.Riemann.riemannHypothesis_of_trace_extraction
  intro s hs
  let data := extraction.pntIndependent.theoremTerm s hs
  exact
    ⟨data.sequence.valueAt, data.weight, data.residual.total,
      data.limitWeight, data.limitWeight_pos, data.identity,
      data.sequence.valueAt_nonnegative,
      data.weight_tendsto, data.residual.total_tendsto⟩

/-- The remaining arithmetic adapter from one local mechanism witness to one
coherent point/label sequence. -/
structure LocalSequentialThreePointExtractor (Local : Type*) where
  extract : Local → SourceBoundSequentialThreePointVolumeExtraction

/-- The accepted mechanism reaches the sequential packing supplier only through
the explicit source adapter. -/
def SourceBoundMechanismBridgeAccepted.toSequentialThreePointExtraction
    {Source Local : Type*}
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local]
    (accepted : SourceBoundMechanismBridgeAccepted Source Local)
    (extractor : LocalSequentialThreePointExtractor Local) :
    SourceBoundSequentialThreePointVolumeExtraction :=
  extractor.extract accepted.bridge.localWitness

end GRWTSK.RiemannHypothesis
