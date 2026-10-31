/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.MeasureAndIntegration.WeightedRealKernelQuadratic
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceResidualKernel

/-!
# Weighted absolute quadratic bound for the actual Wilson residual kernel

This instantiates the weighted integral theorem on the literal continuous R,
its actual normalized principal representative and its proved weighted row.
The L2 operator here is the actual integral operator of that residual kernel.
Identification with invariantOperator minus the principal rank-one operator,
and the resulting operator-norm/spectral estimate, remain separate consumers.
No pointwise-to-quadratic positivity inference, regulator-uniform physical gap
or continuum construction is claimed. SOURCE_PROOF_CANDIDATE; compile,
fresh replay, transitive axiom and expected-interface checks NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceResidualQuadraticBound
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalRepresentativeBounds
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivityImproving
open GRWTSK.Geometry.GaugeTheory.WilsonSliceResidualKernel
variable (L : ℕ) [NeZero L]

/-- The positive weight has an explicit strictly positive uniform lower bound. -/
theorem principal_weight_lower_bound (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L) (hn : ‖f‖ = 1)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) :
    ∃ d : ℝ, 0 < d ∧ ∀ a : Slice L SU2, d ≤ principalRepresentative L β hβ f a := by
  have hne : f ≠ 0 := by
    intro hz
    simpa [hz] using hn
  have hcoe : (f : RealSliceL2 L) ≠ 0 := fun hz => hne (Subtype.ext hz)
  refine ⟨Real.exp (-12 * β * (L : ℝ)^3) *
    (∫ b, (f : RealSliceL2 L) b ∂sliceHaar L) / lambda0 L β hβ.le, ?_, ?_⟩
  · exact div_pos (mul_pos (Real.exp_pos _)
      (integral_pos_of_nonnegative_ne_zero L f hf hcoe))
        (GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal.lambda0_pos L β hβ)
  · exact fun a => (principalRepresentative_bounds L β hβ f hf a).1

/-- Actual residual integral operator, on arbitrary real L2 test inputs. -/
theorem actual_residual_absolute_quadratic (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L) (hn : ‖f‖ = 1)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b)
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f)
    (x : RealSliceL2 L) :
    |inner ℝ x (GRWTSK.Analysis.Integration.ContinuousKernelL2Bound.operator
        (sliceHaar L) (residualKernel L β hβ f) x)| ≤
      (lambda0 L β hβ.le * (1 - Real.exp (-12 * β * (L : ℝ)^3) * lambda0 L β hβ.le)) *
        ‖x‖^2 := by
  obtain ⟨d, hd, hphi⟩ := principal_weight_lower_bound L β hβ f hn hf
  exact GRWTSK.Analysis.Integration.WeightedRealKernelQuadratic.abs_inner_operator_le
    (sliceHaar L) (residualKernel L β hβ f) (principalRepresentative L β hβ f)
    (fun a => hd.trans_le (hphi a))
    (residualKernel_nonnegative L β hβ f hn hf)
    (residualKernel_symm L β hβ f) _ (residualKernel_weighted_row L β hβ f hn he) x

end GRWTSK.Geometry.GaugeTheory.WilsonSliceResidualQuadraticBound
