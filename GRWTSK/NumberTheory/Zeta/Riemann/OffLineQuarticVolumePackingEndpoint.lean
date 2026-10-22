/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuarticVolumePackingEnclosure
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Off-line-only quartic volume-packing endpoint

The previous all-zero scale claim was too strong at the level of its auxiliary
normalization: on a critical-line zero, the totalized normalized axial and
transverse coefficients are identically zero, so they cannot converge after
scaling to a positive finite limit.

RH does not require a certificate for zeros already known to lie on the line.
The correct contradiction scope is:

  for every actual nontrivial zero with a = Re(s)-1/2 != 0,
  construct the scale data.

That is enough.  The resulting certificate forces Re(s)=1/2, contradicting the
off-line premise.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
OFFLINE_CERTIFICATE_SCOPE_CORRECTED / SCALE_SUPPLIER_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open CanonicalZeroDivisor

/-- At zero horizontal defect, the totalized normalized axial coefficient is
identically zero. -/
theorem safeAxialQuarticCoefficient_eq_zero_of_zeroDefect
    (z : ZeroPoint)
    (ha : zeroDefect z.1 = 0)
    (n : ℕ) :
    safeAxialQuarticCoefficient z n = 0 := by
  unfold safeAxialQuarticCoefficient
  change
    ((safeAxialNormalizedPackingSequence z).packingAt n).gramVolume = 0
  apply ThreePointPacking.gramVolume_eq_zero_of_y_zero
  · simp [safeAxialNormalizedPackingSequence, safeAxialNormalizedPoint,
      safeAxialNormalizedY, ha]
  · simp [safeAxialNormalizedPackingSequence, safeAxialNormalizedPoint,
      safeAxialNormalizedY, ha]
  · simp [safeAxialNormalizedPackingSequence, safeAxialNormalizedPoint,
      safeAxialNormalizedY, ha]

/-- Therefore the current auxiliary scale-data type cannot be inhabited on a
critical-line zero with a positive limit coefficient. This is why its terminal
quantifier must be off-line-only. -/
theorem no_quarticVolumePackingScaleData_of_zeroDefect
    (z : ZeroPoint)
    (ha : zeroDefect z.1 = 0) :
    ¬ QuarticVolumePackingScaleDataAtZero z := by
  intro data
  have hzero :
      Tendsto
        (fun n => data.scale n * safeAxialQuarticCoefficient z n)
        atTop (𝓝 0) := by
    have hfun :
        (fun n => data.scale n * safeAxialQuarticCoefficient z n) =
          (fun _ => (0 : ℝ)) := by
      funext n
      rw [safeAxialQuarticCoefficient_eq_zero_of_zeroDefect z ha n]
      ring
    rw [hfun]
    exact tendsto_const_nhds
  have heq : data.limitCoefficient = 0 :=
    tendsto_nhds_unique data.axial_scaled_tendsto hzero
  exact data.limitCoefficient_pos.ne' heq

/-- Correct terminal supplier: scale data are required only for a hypothetical
off-line zero. -/
def OffLineQuarticVolumePackingScaleClaim : Prop :=
  ∀ z : ZeroPoint,
    zeroDefect z.1 ≠ 0 →
      Nonempty (QuarticVolumePackingScaleDataAtZero z)

/-- Equivalent direct certificate-level formulation. -/
def OffLineQuarticVolumePackingClaim : Prop :=
  ∀ z : ZeroPoint,
    zeroDefect z.1 ≠ 0 →
      Nonempty (QuarticVolumePackingCertificateAtZero z)

theorem offLineQuarticVolumePackingClaim_of_scale
    (scaleData : OffLineQuarticVolumePackingScaleClaim) :
    OffLineQuarticVolumePackingClaim := by
  intro z ha
  obtain ⟨data⟩ := scaleData z ha
  exact ⟨data.toCertificate⟩

/-- Off-line-only packing certificates suffice for the exact Mathlib RH target. -/
theorem riemannHypothesis_of_offLineQuarticVolumePacking
    (packing : OffLineQuarticVolumePackingClaim) :
    _root_.RiemannHypothesis := by
  intro s hz htrivial hpole
  let z : ZeroPoint := ⟨s, hz, htrivial, hpole⟩
  by_contra hline
  have ha : zeroDefect z.1 ≠ 0 := by
    intro hzero
    apply hline
    unfold zeroDefect at hzero
    dsimp [z] at hzero
    linarith
  obtain ⟨certificate⟩ := packing z ha
  have hforced := certificate.forces_critical_line
  exact hline (by simpa [z] using hforced)

/-- Scale-only version of the corrected endpoint. -/
theorem riemannHypothesis_of_offLineQuarticVolumePackingScale
    (scaleData : OffLineQuarticVolumePackingScaleClaim) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_offLineQuarticVolumePacking
    (offLineQuarticVolumePackingClaim_of_scale scaleData)

end GRWTSK.RiemannHypothesis
