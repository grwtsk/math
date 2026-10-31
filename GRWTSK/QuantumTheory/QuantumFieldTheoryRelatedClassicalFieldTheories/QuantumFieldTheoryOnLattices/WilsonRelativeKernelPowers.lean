/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonStationaryDensity
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonPartitionDiagonal

/-!
# Actual positive kernel powers under the stationary principal transform

Index m means positive length m+1 on both sides. The convolution measure is
actually phi^2 times slice Haar. SOURCE_PROOF_CANDIDATE; compile, fresh replay,
transitive axioms and expected interfaces NOT_RUN. No pointwise decay follows.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonRelativeKernelPowers
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalRepresentativeBounds
open GRWTSK.Geometry.GaugeTheory.WilsonStationaryDensity
open GRWTSK.Geometry.GaugeTheory.WilsonPartitionDiagonal
open GRWTSK.Analysis.Integration.ContinuousKernelComposition
open GRWTSK.Analysis.Integration.ContinuousKernelPowers
variable (L : ℕ) [NeZero L] (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
variable (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0)

/-- The quotient denominator never vanishes for the actual positive representative. -/
theorem denominator_ne (m : ℕ) (a b : Slice L SU2) :
    (lambda0 L β hβ.le)^(m+1) * principalRepresentative L β hβ f a *
      principalRepresentative L β hβ f b ≠ 0 :=
  mul_ne_zero (mul_ne_zero (pow_ne_zero _ (lambda0_pos L β hβ).ne')
    (principalRepresentative_pos L β hβ f hf hne a).ne')
    (principalRepresentative_pos L β hβ f hf hne b).ne'

/-- Bundle the actual one-step relative density. -/
def relativeContinuous : C(Slice L SU2 × Slice L SU2, ℝ) :=
  ⟨fun p => relativeKernel L β hβ f p.1 p.2,
    (actualKernel L β).continuous.div
      ((continuous_const.mul ((principalRepresentative L β hβ f).continuous.comp continuous_fst)).mul
        ((principalRepresentative L β hβ f).continuous.comp continuous_snd))
      (fun p => by simpa using denominator_ne L β hβ f hf hne 0 p.1 p.2)⟩

/-- Actual Wilson positive power divided by its exact endpoint and eigenvalue factors. -/
def quotientPower (m : ℕ) : C(Slice L SU2 × Slice L SU2, ℝ) :=
  ⟨fun p => positivePower (sliceHaar L) (actualKernel L β) m p /
    ((lambda0 L β hβ.le)^(m+1) * principalRepresentative L β hβ f p.1 *
      principalRepresentative L β hβ f p.2),
    (positivePower (sliceHaar L) (actualKernel L β) m).continuous.div
      ((continuous_const.mul ((principalRepresentative L β hβ f).continuous.comp continuous_fst)).mul
        ((principalRepresentative L β hβ f).continuous.comp continuous_snd))
      (fun p => denominator_ne L β hβ f hf hne m p.1 p.2)⟩

variable (hn : ‖f‖ = 1)
variable (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f)
local instance stationary_probability_instance : IsProbabilityMeasure (stationaryMeasure L β hβ f) :=
  stationary_probability L β hβ f hn he

/-- The actual transformed convolution powers agree pointwise, not merely on a test space. -/
theorem relative_positivePower (m : ℕ) :
    positivePower (stationaryMeasure L β hβ f) (relativeContinuous L β hβ f hf hne) m =
      quotientPower L β hβ f hf hne m := by
  induction m with
  | zero =>
    ext p
    simp [positivePower, relativeContinuous, relativeKernel, quotientPower]
  | succ m ih =>
    rw [positivePower_succ, ih]
    ext p
    rcases p with ⟨a,b⟩
    change (∫ z, relativeKernel L β hβ f a z *
      quotientPower L β hβ f hf hne m (z,b) ∂stationaryMeasure L β hβ f) = _
    rw [stationaryMeasure, integral_withDensity_eq_integral_toReal_smul
      (density_continuous L β hβ f).measurable.ennreal_ofReal
      (ae_of_all _ (fun _ => ENNReal.ofReal_lt_top))]
    calc
      _ = ∫ z, (actualKernel L β (a,z) * positivePower (sliceHaar L) (actualKernel L β) m (z,b)) /
          ((lambda0 L β hβ.le)^((m+1)+1) * principalRepresentative L β hβ f a *
            principalRepresentative L β hβ f b) ∂sliceHaar L := by
        apply integral_congr_ae
        refine ae_of_all _ (fun z => ?_)
        rw [ENNReal.toReal_ofReal (sq_nonneg _), smul_eq_mul]
        have ha := (principalRepresentative_pos L β hβ f hf hne a).ne'
        have hb := (principalRepresentative_pos L β hβ f hf hne b).ne'
        have hz := (principalRepresentative_pos L β hβ f hf hne z).ne'
        have hl := (lambda0_pos L β hβ).ne'
        dsimp [stationaryDensity, relativeKernel, quotientPower, actualKernel]
        simp only [pow_succ]
        field_simp [ha, hb, hz, hl]
        <;> ring
      _ = _ := by
        rw [integral_div]
        exact congrArg (fun t : ℝ => t /
          ((lambda0 L β hβ.le)^((m+1)+1) * principalRepresentative L β hβ f a *
            principalRepresentative L β hβ f b))
          (positivePower_succ_apply (sliceHaar L) (actualKernel L β) m a b).symm

end GRWTSK.Geometry.GaugeTheory.WilsonRelativeKernelPowers
