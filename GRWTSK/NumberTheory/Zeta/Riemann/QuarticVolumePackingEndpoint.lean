/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftQuarticFactorization
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Volume-packing endpoint for the safe-shift quartic source

The positive Gram source naturally carries -witnessTrace/4, not witnessTrace.
The correct positive argument is therefore a packing/enclosure argument rather
than a direct positive-weight signed-trace identity.

For one actual nontrivial zero, suppose a source-derived positive scale r_n and
an enclosing volume C_n satisfy

  Q_n <= C_n,
  r_n C_n -> 0,

while the exact normalized axial/transverse Gram coefficients satisfy

  r_n A_n -> L,
  r_n T_n -> L,
  L > 0.

Since

  Q_n = a^4 A_n + 3 a^2 t^2 T_n,

the scaled occupied volume tends to

  L * (a^4 + 3 a^2 t^2).

But positivity and containment give

  0 <= r_n Q_n <= r_n C_n -> 0.

Hence the limiting quartic mass is zero.  Since L>0, this forces a=0.

This is the direct formal version of the volume-packing strategy.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
VOLUME_PACKING_ENDPOINT_TYPED / ENCLOSURE_SUPPLIER_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open CanonicalZeroDivisor

/-- Source-derived enclosure certificate for one actual nontrivial zero. -/
structure QuarticVolumePackingCertificateAtZero (z : ZeroPoint) where
  scale : ℕ → ℝ
  scale_nonnegative : ∀ n, 0 ≤ scale n
  enclosure : ℕ → ℝ
  enclosure_nonnegative : ∀ n, 0 ≤ enclosure n
  contains :
    ∀ n, safeQuarticStructuredPackingValue z n ≤ enclosure n
  scaledEnclosure_tendsto_zero :
    Tendsto (fun n => scale n * enclosure n) atTop (𝓝 0)
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

/-- The scaled occupied quartic volume tends to the exact positive quartic
mass determined by the zero. -/
theorem QuarticVolumePackingCertificateAtZero.scaledOccupied_tendsto
    {z : ZeroPoint}
    (certificate : QuarticVolumePackingCertificateAtZero z) :
    Tendsto
      (fun n =>
        certificate.scale n *
          safeQuarticStructuredPackingValue z n)
      atTop
      (𝓝
        (certificate.limitCoefficient *
          ((zeroDefect z.1) ^ 4 +
            3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2))) := by
  have hA := certificate.axial_scaled_tendsto
  have hT := certificate.transverse_scaled_tendsto
  have hsum :
      Tendsto
        (fun n =>
          (zeroDefect z.1) ^ 4 *
              (certificate.scale n *
                safeAxialQuarticCoefficient z n) +
            3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2 *
              (certificate.scale n *
                safeTransverseQuarticCoefficient z n))
        atTop
        (𝓝
          ((zeroDefect z.1) ^ 4 * certificate.limitCoefficient +
            3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2 *
              certificate.limitCoefficient)) := by
    exact
      (tendsto_const_nhds.mul hA).add
        (tendsto_const_nhds.mul hT)
  convert hsum using 1
  · funext n
    rw [safeQuarticStructuredPackingValue_factor]
    ring
  · ring

/-- Containment and positivity force the scaled occupied volume to zero. -/
theorem QuarticVolumePackingCertificateAtZero.scaledOccupied_tendsto_zero
    {z : ZeroPoint}
    (certificate : QuarticVolumePackingCertificateAtZero z) :
    Tendsto
      (fun n =>
        certificate.scale n *
          safeQuarticStructuredPackingValue z n)
      atTop (𝓝 0) := by
  apply squeeze_zero
  · intro n
    exact mul_nonneg (certificate.scale_nonnegative n)
      (safeQuarticStructuredPackingValue_nonnegative z n)
  · intro n
    exact mul_le_mul_of_nonneg_left
      (certificate.contains n)
      (certificate.scale_nonnegative n)
  · exact certificate.scaledEnclosure_tendsto_zero

/-- A valid volume-packing certificate forces the zero onto the critical line. -/
theorem QuarticVolumePackingCertificateAtZero.forces_critical_line
    {z : ZeroPoint}
    (certificate : QuarticVolumePackingCertificateAtZero z) :
    z.1.re = 1 / 2 := by
  have hlim := certificate.scaledOccupied_tendsto
  have hzero := certificate.scaledOccupied_tendsto_zero
  have heq :
      certificate.limitCoefficient *
          ((zeroDefect z.1) ^ 4 +
            3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2) =
        0 :=
    tendsto_nhds_unique hlim hzero
  have hquartic :
      (zeroDefect z.1) ^ 4 +
          3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2 =
        0 :=
    (mul_eq_zero.mp heq).resolve_left
      certificate.limitCoefficient_pos.ne'
  have hsq : (zeroDefect z.1) ^ 2 = 0 := by
    have ht : 0 ≤ z.1.im ^ 2 := sq_nonneg _
    have ha : 0 ≤ (zeroDefect z.1) ^ 2 := sq_nonneg _
    nlinarith [sq_nonneg ((zeroDefect z.1) ^ 2)]
  have ha : zeroDefect z.1 = 0 := by
    exact sq_eq_zero_iff.mp hsq
  unfold zeroDefect at ha
  linarith

/-- All-zero source certificate claim. -/
def QuarticVolumePackingClaim : Prop :=
  ∀ z : ZeroPoint, Nonempty (QuarticVolumePackingCertificateAtZero z)

/-- The volume-packing endpoint reaches the canonical Mathlib RH proposition
without a signed positive-weight trace identity. -/
theorem riemannHypothesis_of_quarticVolumePacking
    (packing : QuarticVolumePackingClaim) :
    _root_.RiemannHypothesis := by
  intro s hs htrivial hpole
  let z : ZeroPoint := ⟨s, hs, htrivial, hpole⟩
  obtain ⟨certificate⟩ := packing z
  exact certificate.forces_critical_line

end GRWTSK.RiemannHypothesis
