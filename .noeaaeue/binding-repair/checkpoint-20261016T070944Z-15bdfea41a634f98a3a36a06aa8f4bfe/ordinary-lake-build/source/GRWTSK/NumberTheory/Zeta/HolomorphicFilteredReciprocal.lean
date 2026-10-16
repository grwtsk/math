/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.ZeroFreeHalfPlaneCriteria

/-!
# exact original-transform filter consumer

This conditional analytic port retains the actual pickup transform on its
proved initial half-plane. The retained and additive channels are independently
holomorphic, and the filter is required nonzero on the entire positive complex
half-plane. Division then reconstructs an analytic continuation and returns to
actual zeta zeros through the proved original transform identity.

No channel extraction, holomorphy witness, arithmetic cancellation, polynomial
inverse norm, time-domain amplitude return, or unconditional RH proof is
provided. A separate exact fixture shows that even a bounded inverse on the
imaginary frequency axis cannot supply the required complex nonvanishing.

Research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupFilterConsumer

open ZetaPoleRegularization ArithmeticPickupLaplaceGrowth ArithmeticPickupRHConsumer
open GRWTSK.RiemannHypothesis

noncomputable section

/-- An analytic observation with an exact original-source identity on its genuine domain. -/
structure AnalyticPickupFilter where
  multiplier : ℂ → ℂ
  retained : ℂ → ℂ
  additive : ℂ → ℂ
  multiplier_holomorphic : DifferentiableOn ℂ multiplier {z : ℂ | 0 < z.re}
  retained_holomorphic : DifferentiableOn ℂ retained {z : ℂ | 0 < z.re}
  additive_holomorphic : DifferentiableOn ℂ additive {z : ℂ | 0 < z.re}
  multiplier_nonzero : ∀ z : ℂ, 0 < z.re → multiplier z ≠ 0
  original_identity : ∀ z : ℂ, (1 / 2 : ℝ) < z.re →
    retained z = multiplier z * pickupLaplace z + additive z

def AnalyticPickupFilter.reconstructed (port : AnalyticPickupFilter) (z : ℂ) : ℂ :=
  (port.retained z - port.additive z) / port.multiplier z

theorem AnalyticPickupFilter.reconstructed_holomorphic (port : AnalyticPickupFilter) :
    DifferentiableOn ℂ port.reconstructed {z : ℂ | 0 < z.re} :=
  (port.retained_holomorphic.sub port.additive_holomorphic).div
    port.multiplier_holomorphic port.multiplier_nonzero

/-- Only the genuine initially convergent transform domain is identified here. -/
theorem AnalyticPickupFilter.reconstructed_original (port : AnalyticPickupFilter)
    {z : ℂ} (hz : (1 / 2 : ℝ) < z.re) : port.reconstructed z = pickupLaplace z := by
  have positive : 0 < z.re := by linarith
  unfold AnalyticPickupFilter.reconstructed
  rw [port.original_identity z hz]
  have numerator : port.multiplier z * pickupLaplace z + port.additive z - port.additive z =
      port.multiplier z * pickupLaplace z := by ring
  rw [numerator, mul_div_cancel_left₀ _ (port.multiplier_nonzero z positive)]

/-- The initial reciprocal-zeta identity uses the actual completed signed pickup. -/
theorem AnalyticPickupFilter.initial_identity (port : AnalyticPickupFilter) :
    InitialReciprocalIdentity port.reconstructed := by
  intro z hz
  rw [port.reconstructed_original hz]
  exact original_pickup_initial_identity z hz

theorem AnalyticPickupFilter.excludes_right_zeros (port : AnalyticPickupFilter)
    {s : ℂ} (hs : (1 / 2 : ℝ) < s.re) (hsOne : s ≠ 1) : riemannZeta s ≠ 0 :=
  zeta_ne_zero_right_of_holomorphic_reciprocal
    port.reconstructed_holomorphic port.initial_identity hs hsOne

/-- These strong analytic port premises, rather than real-frequency inversion, imply RH. -/
theorem AnalyticPickupFilter.implies_rh (port : AnalyticPickupFilter) :
    _root_.RiemannHypothesis := by
  intro s zero nontrivial notOne
  have original : NontrivialZetaZero s := ⟨zero, nontrivial, notOne⟩
  have upper : s.re ≤ (1 / 2 : ℝ) := by
    by_contra! strict
    exact port.excludes_right_zeros strict notOne zero
  have lower : (1 / 2 : ℝ) ≤ s.re := by
    by_contra! strict
    have reflected := original.reflect
    have right : (1 / 2 : ℝ) < (zeroReflect s).re := by
      simp only [zeroReflect, Complex.sub_re, Complex.one_re]
      linarith
    exact port.excludes_right_zeros right reflected.2.2 reflected.1
  exact le_antisymm upper lower

namespace FrequencyAxisFixture

/-- This is an auxiliary filter, not an asserted source-zeta or arithmetic port. -/
def axisInvertibleFilter (z : ℂ) : ℂ := z - 1

theorem imaginary_axis_norm_lower (ξ : ℝ) :
    1 ≤ ‖axisInvertibleFilter (Complex.I * (ξ : ℂ))‖ := by
  have lower := Complex.abs_re_le_norm (axisInvertibleFilter (Complex.I * (ξ : ℂ)))
  simpa [axisInvertibleFilter, Complex.mul_re] using lower

theorem imaginary_axis_nonzero (ξ : ℝ) :
    axisInvertibleFilter (Complex.I * (ξ : ℂ)) ≠ 0 := by
  intro zero
  have lower := imaginary_axis_norm_lower ξ
  rw [zero, norm_zero] at lower
  norm_num at lower

theorem imaginary_axis_inverse_gain (ξ : ℝ) :
    ‖(axisInvertibleFilter (Complex.I * (ξ : ℂ)))⁻¹‖ ≤ 1 := by
  rw [norm_inv]
  exact inv_le_one_of_one_le₀ (imaginary_axis_norm_lower ξ)

theorem positive_half_plane_zero : (0 : ℝ) < (1 : ℂ).re ∧ axisInvertibleFilter 1 = 0 := by
  norm_num [axisInvertibleFilter]

/-- An exact bounded imaginary-axis inverse does not imply complex pole safety. -/
theorem axis_inverse_does_not_supply_complex_nonvanishing :
    ¬ (∀ z : ℂ, 0 < z.re → axisInvertibleFilter z ≠ 0) := by
  intro nonzero
  exact nonzero 1 positive_half_plane_zero.1 positive_half_plane_zero.2

end FrequencyAxisFixture

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupFilterConsumer
