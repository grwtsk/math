/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's real/complex Bochner integral and L2 constructions retain their
upstream attribution and Apache-2.0 license. Other imports retain licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceGaugeHilbert
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceQuadraticPositivity

/-!
# Exact continuous quadratic agreement for the source-defined real L2 map

The actual embedded continuous real observable has the same operator
quadratic value as the real part of the maintained complex slice integral.
Thus positivity is paid on the embedded invariant continuous population.
Density of that population in the actual closed invariant L2 subspace is
NOT supplied here, so general L2 operator positivity remains unpaid.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceContinuousOperatorQuadratic

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeQuadratic
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceQuadraticPositivity

variable (L : ℕ) [NeZero L]

def complexObservable (f : C(Slice L SU2, ℝ)) : C(Slice L SU2, ℂ) :=
  ⟨fun a => (f a : ℂ), Complex.continuous_ofReal.comp f.continuous⟩

/-- The exact real-to-complex integral map, not an assumed source identification. -/
theorem complex_quadratic_eq (β : ℝ) (f : C(Slice L SU2, ℝ)) :
    sliceQuadratic L β (complexObservable L f) =
      ((∫ a, ∫ b, f a * sliceKernel L β a b * f b ∂sliceHaar L ∂sliceHaar L : ℝ) : ℂ) := by
  simp only [sliceQuadratic, complexObservable, Complex.conj_ofReal,
    ← Complex.ofReal_mul, integral_complex_ofReal]

/-- The source-defined operator's quadratic expression agrees on actual continuous inputs. -/
theorem inner_operator_of_continuous (β : ℝ) (hβ : 0 ≤ β) (f : C(Slice L SU2, ℝ)) :
    inner ℝ (ContinuousMap.toLp 2 (sliceHaar L) ℝ f)
      (operator L β hβ (ContinuousMap.toLp 2 (sliceHaar L) ℝ f)) =
        (sliceQuadratic L β (complexObservable L f)).re := by
  have he : inner ℝ (ContinuousMap.toLp 2 (sliceHaar L) ℝ f)
      (operator L β hβ (ContinuousMap.toLp 2 (sliceHaar L) ℝ f)) =
        ∫ a, ∫ b, f a * sliceKernel L β a b * f b ∂sliceHaar L ∂sliceHaar L := by
    calc
      _ = ∫ a, f a * (∫ b, sliceKernel L β a b * f b ∂sliceHaar L) ∂sliceHaar L := by
        rw [L2.inner_def]
        apply integral_congr_ae
        filter_upwards [ContinuousMap.coeFn_toLp (sliceHaar L) f (p := 2) (𝕜 := ℝ),
          operator_of_continuous L β hβ f] with a hf ha
        rw [Real.inner_apply, hf, ha]
      _ = _ := by simp only [mul_assoc, integral_const_mul]
  rw [he, complex_quadratic_eq, Complex.ofReal_re]

/-- Only embedded invariant continuous inputs are covered; density is a separate theorem. -/
theorem continuous_quadratic_nonnegative (β : ℝ) (hβ : 0 ≤ β) (f : C(Slice L SU2, ℝ))
    (hf : ∀ (g : SliceGauge L SU2) a, f (sliceGaugeAction g a) = f a) :
    0 ≤ inner ℝ (ContinuousMap.toLp 2 (sliceHaar L) ℝ f)
      (operator L β hβ (ContinuousMap.toLp 2 (sliceHaar L) ℝ f)) := by
  rw [inner_operator_of_continuous L β hβ f]
  exact sliceQuadratic_nonnegative L β hβ (complexObservable L f)
    (fun g a => congrArg (fun r : ℝ => (r : ℂ)) (hf g a))

end GRWTSK.Geometry.GaugeTheory.WilsonSliceContinuousOperatorQuadratic
