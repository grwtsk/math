/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuarticVolumePackingEndpoint
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Canonical edge-product enclosure for the quartic packing

For any three-point packing with consecutive edge vectors u,v,

  gramVolume = ||u||^2 ||v||^2 - <u,v>^2
             <= ||u||^2 ||v||^2.

Thus the product of the two squared edge lengths is a canonical nonnegative
enclosure of the occupied squared area.

Apply this separately to the axial and transverse safe-shift channels and use
the same 1:3 coefficient pattern as the structured quartic source.  This
constructs the enclosure field required by the volume-packing endpoint without
an additional analytic hypothesis.

The remaining supplier data are the positive renormalization, common positive
coefficient limit, and proof that the renormalized edge-product enclosure
vanishes.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
CANONICAL_EDGE_PRODUCT_ENCLOSURE_DEFINED / SCALE_AND_DECAY_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

namespace ThreePointPacking

/-- Product of consecutive edge squared norms. -/
def edgeProductEnclosure (p : ThreePointPacking) : ℝ :=
  p.edge01.normSq * p.edge12.normSq

theorem edgeProductEnclosure_nonnegative (p : ThreePointPacking) :
    0 ≤ p.edgeProductEnclosure := by
  unfold edgeProductEnclosure PackingPoint.normSq PackingPoint.dot
  positivity

/-- The squared oriented area fits inside the edge-product enclosure. -/
theorem gramVolume_le_edgeProductEnclosure (p : ThreePointPacking) :
    p.gramVolume ≤ p.edgeProductEnclosure := by
  rw [p.gramVolume_eq_gramDet]
  unfold edgeProductEnclosure
  nlinarith [sq_nonneg (p.edge01.dot p.edge12)]

end ThreePointPacking

/-- Canonical source-derived enclosure of the structured quartic occupied
volume. -/
def safeQuarticEdgeProductEnclosure
    (z : CanonicalZeroDivisor.ZeroPoint) (n : ℕ) : ℝ :=
  ((safeAxialPackingSequence z).packingAt n).edgeProductEnclosure +
    3 *
      ((safeTransversePackingSequence z).packingAt n).edgeProductEnclosure

theorem safeQuarticEdgeProductEnclosure_nonnegative
    (z : CanonicalZeroDivisor.ZeroPoint) (n : ℕ) :
    0 ≤ safeQuarticEdgeProductEnclosure z n := by
  unfold safeQuarticEdgeProductEnclosure
  positivity [
    ThreePointPacking.edgeProductEnclosure_nonnegative
      ((safeAxialPackingSequence z).packingAt n),
    ThreePointPacking.edgeProductEnclosure_nonnegative
      ((safeTransversePackingSequence z).packingAt n)]

/-- The complete occupied quartic Gram volume is bounded by the canonical
edge-product enclosure stagewise. -/
theorem safeQuarticStructuredPackingValue_le_edgeProductEnclosure
    (z : CanonicalZeroDivisor.ZeroPoint) (n : ℕ) :
    safeQuarticStructuredPackingValue z n ≤
      safeQuarticEdgeProductEnclosure z n := by
  unfold safeQuarticStructuredPackingValue
    safeQuarticEdgeProductEnclosure
  have hA :=
    ThreePointPacking.gramVolume_le_edgeProductEnclosure
      ((safeAxialPackingSequence z).packingAt n)
  have hT :=
    ThreePointPacking.gramVolume_le_edgeProductEnclosure
      ((safeTransversePackingSequence z).packingAt n)
  nlinarith

/-- The now-reduced supplier: enclosure and containment are canonical, so only
scale/limits/decay remain to be supplied analytically. -/
structure QuarticVolumePackingScaleDataAtZero
    (z : CanonicalZeroDivisor.ZeroPoint) where
  scale : ℕ → ℝ
  scale_nonnegative : ∀ n, 0 ≤ scale n
  limitCoefficient : ℝ
  limitCoefficient_pos : 0 < limitCoefficient
  axial_scaled_tendsto :
    Tendsto
      (fun n => scale n * safeAxialQuarticCoefficient z n)
      atTop (𝓝 limitCoefficient)
  transverse_scaled_tendsto :
    Tendsto
      (fun n => scale n * safeTransverseQuarticCoefficient z n)
      atTop (𝓝 limitCoefficient)
  scaledEdgeProductEnclosure_tendsto_zero :
    Tendsto
      (fun n => scale n * safeQuarticEdgeProductEnclosure z n)
      atTop (𝓝 0)

/-- Canonical constructor of the full endpoint certificate from only the
remaining scale data. -/
def QuarticVolumePackingScaleDataAtZero.toCertificate
    {z : CanonicalZeroDivisor.ZeroPoint}
    (data : QuarticVolumePackingScaleDataAtZero z) :
    QuarticVolumePackingCertificateAtZero z where
  scale := data.scale
  scale_nonnegative := data.scale_nonnegative
  enclosure := safeQuarticEdgeProductEnclosure z
  enclosure_nonnegative := safeQuarticEdgeProductEnclosure_nonnegative z
  contains := safeQuarticStructuredPackingValue_le_edgeProductEnclosure z
  scaledEnclosure_tendsto_zero :=
    data.scaledEdgeProductEnclosure_tendsto_zero
  limitCoefficient := data.limitCoefficient
  limitCoefficient_pos := data.limitCoefficient_pos
  axial_scaled_tendsto := data.axial_scaled_tendsto
  transverse_scaled_tendsto := data.transverse_scaled_tendsto

def QuarticVolumePackingScaleClaim : Prop :=
  ∀ z : CanonicalZeroDivisor.ZeroPoint,
    Nonempty (QuarticVolumePackingScaleDataAtZero z)

theorem riemannHypothesis_of_quarticVolumePackingScale
    (scaleData : QuarticVolumePackingScaleClaim) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_quarticVolumePacking
  intro z
  obtain ⟨data⟩ := scaleData z
  exact ⟨data.toCertificate⟩

end GRWTSK.RiemannHypothesis
