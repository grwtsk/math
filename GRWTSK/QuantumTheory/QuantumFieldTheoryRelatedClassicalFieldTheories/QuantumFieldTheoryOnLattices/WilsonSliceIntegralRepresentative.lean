/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Lp/Bochner theory retains Rémy Degenne, Sébastien Gouëzel and other
upstream authors' attribution and Apache-2.0 license. Imports retain licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceGaugeQuadratic
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.MeasureTheory.Function.LpSpace.Complete

/-!
# Distinguished real continuous representatives of the actual slice integral

The input space is the real L2 of the maintained normalized slice Haar.
L2-to-L1 uses its actual probability normalization. Equality almost everywhere
of inputs gives equality of the integral at EVERY output slice. Dominated
continuity uses |K|<=1 and the integrable norm of the input; no continuity
of an arbitrary input representative is assumed.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity

abbrev RealSliceL2 (L : ℕ) [NeZero L] := Lp ℝ 2 (sliceHaar L)

variable (L : ℕ) [NeZero L]

theorem integrable_L2 (f : RealSliceL2 L) : Integrable f (sliceHaar L) :=
  MemLp.integrable (by norm_num : (1 : ENNReal) ≤ 2) (Lp.memLp f)

/-- The actual L1 norm of every L2 representative is at most its L2 norm. -/
theorem integral_norm_le_L2 (f : RealSliceL2 L) :
    (∫ b, ‖f b‖ ∂sliceHaar L) ≤ ‖f‖ := by
  calc
    _ = (eLpNorm (f : Slice L SU2 → ℝ) 1 (sliceHaar L)).toReal := by
      rw [eLpNorm_one_eq_lintegral_enorm (Lp.aestronglyMeasurable f)]
      exact integral_norm_eq_lintegral_enorm (Lp.aestronglyMeasurable f)
    _ ≤ (eLpNorm f 2 (sliceHaar L)).toReal :=
      ENNReal.toReal_mono (Lp.eLpNorm_ne_top f)
        (eLpNorm_le_eLpNorm_of_exponent_le (by norm_num : (1 : ENNReal) ≤ 2))
    _ = ‖f‖ := rfl

theorem norm_K_le_one (β : ℝ) (hβ : 0 ≤ β) (a b : Slice L SU2) :
    ‖sliceKernel L β a b‖ ≤ 1 := by
  rw [Real.norm_eq_abs, abs_of_pos (K_pos L β hβ a b)]
  exact (K_bounds L β hβ a b).2

/-- The literal integral, initially on actual real-valued functions. -/
def kernelIntegral (β : ℝ) (u : Slice L SU2 → ℝ) (a : Slice L SU2) : ℝ :=
  ∫ b, sliceKernel L β a b * u b ∂sliceHaar L

/-- Representative independence is pointwise in the output, not merely AE. -/
theorem kernelIntegral_congr (β : ℝ) {u v : Slice L SU2 → ℝ}
    (huv : u =ᵐ[sliceHaar L] v) (a : Slice L SU2) :
    kernelIntegral L β u a = kernelIntegral L β v a := by
  apply integral_congr_ae
  filter_upwards [huv] with b hb
  rw [hb]

theorem norm_kernelIntegrand_le (β : ℝ) (hβ : 0 ≤ β)
    (u : Slice L SU2 → ℝ) (a b : Slice L SU2) :
    ‖sliceKernel L β a b * u b‖ ≤ ‖u b‖ := by
  rw [norm_mul]
  simpa only [one_mul] using mul_le_mul_of_nonneg_right
    (norm_K_le_one L β hβ a b) (norm_nonneg (u b))

theorem integrable_kernelIntegrand (β : ℝ) (hβ : 0 ≤ β)
    {u : Slice L SU2 → ℝ} (hu : Integrable u (sliceHaar L)) (a : Slice L SU2) :
    Integrable (fun b => sliceKernel L β a b * u b) (sliceHaar L) :=
  hu.bdd_mul
    (((continuous_K L β).comp (continuous_const.prodMk continuous_id)).aestronglyMeasurable)
    (ae_of_all _ (norm_K_le_one L β hβ a))

theorem norm_kernelIntegral_le_L1 (β : ℝ) (hβ : 0 ≤ β)
    {u : Slice L SU2 → ℝ} (hu : Integrable u (sliceHaar L)) (a : Slice L SU2) :
    ‖kernelIntegral L β u a‖ ≤ ∫ b, ‖u b‖ ∂sliceHaar L :=
  norm_integral_le_of_norm_le hu.norm
    (ae_of_all _ (norm_kernelIntegrand_le L β hβ u a))

/-- The L1 majorant is supplied; the input need not be continuous. -/
theorem continuous_kernelIntegral (β : ℝ) (hβ : 0 ≤ β)
    {u : Slice L SU2 → ℝ} (hu : Integrable u (sliceHaar L)) :
    Continuous (kernelIntegral L β u) := by
  apply continuous_of_dominated
    (bound := fun b => ‖u b‖)
  · intro a
    exact (integrable_kernelIntegrand L β hβ hu a).aestronglyMeasurable
  · intro a
    exact ae_of_all _ (norm_kernelIntegrand_le L β hβ u a)
  · exact hu.norm
  · exact ae_of_all _ (fun b =>
      ((continuous_K L β).comp (continuous_id.prodMk continuous_const)).mul_const (u b))

/-- This is a distinguished continuous function for the given actual L2 class. -/
def kernelRepresentative (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L) :
    C(Slice L SU2, ℝ) :=
  ⟨kernelIntegral L β f, continuous_kernelIntegral L β hβ (integrable_L2 L f)⟩

theorem kernelRepresentative_eq_of_ae (β : ℝ) (hβ : 0 ≤ β)
    (f : RealSliceL2 L) {u : Slice L SU2 → ℝ} (hu : f =ᵐ[sliceHaar L] u)
    (a : Slice L SU2) :
    kernelRepresentative L β hβ f a = kernelIntegral L β u a :=
  kernelIntegral_congr L β hu a

theorem norm_kernelRepresentative_apply_le (β : ℝ) (hβ : 0 ≤ β)
    (f : RealSliceL2 L) (a : Slice L SU2) :
    ‖kernelRepresentative L β hβ f a‖ ≤ ‖f‖ :=
  (norm_kernelIntegral_le_L1 L β hβ (integrable_L2 L f) a).trans (integral_norm_le_L2 L f)

theorem norm_kernelRepresentative_le (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L) :
    ‖kernelRepresentative L β hβ f‖ ≤ ‖f‖ :=
  (ContinuousMap.norm_le _ (norm_nonneg f)).mpr (norm_kernelRepresentative_apply_le L β hβ f)

/-- Membership follows for the actual continuous representative and actual measure. -/
theorem memLp_kernelRepresentative (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L) :
    MemLp (kernelRepresentative L β hβ f) 2 (sliceHaar L) :=
  ContinuousMap.memLp ℝ (kernelRepresentative L β hβ f)

end GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
