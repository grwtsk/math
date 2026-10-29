/- Copyright (c) 2026 grwtsk contributors. MIT.
Continuous-function Lp maps retain Rémy Degenne and Sébastien Gouëzel's
upstream attribution and Apache-2.0 license. Other imports retain licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceIntegralRepresentative

/-!
# The actual bounded real L2 slice kernel map

First construct the bounded map into continuous functions from its literal
integral and AE input laws. Then embed that actual continuous representative
in L2. The operator is defined, not supplied as a positive/spectral certificate.
Its contraction bound is unrelated to the reflection-translation form norm.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceKernelSymmetry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative

variable (L : ℕ) [NeZero L]

def representativeLinearMap (β : ℝ) (hβ : 0 ≤ β) :
    RealSliceL2 L →ₗ[ℝ] C(Slice L SU2, ℝ) where
  toFun := kernelRepresentative L β hβ
  map_add' f g := by
    ext a
    change kernelIntegral L β (f + g) a = _
    calc
      _ = ∫ b, sliceKernel L β a b * (f b + g b) ∂sliceHaar L :=
        kernelIntegral_congr L β (Lp.coeFn_add f g) a
      _ = _ := by
        simp_rw [mul_add]
        rw [integral_add (integrable_kernelIntegrand L β hβ (integrable_L2 L f) a)
          (integrable_kernelIntegrand L β hβ (integrable_L2 L g) a)]
  map_smul' r f := by
    ext a
    change kernelIntegral L β (r • f) a = _
    calc
      _ = ∫ b, sliceKernel L β a b * (r * f b) ∂sliceHaar L :=
        kernelIntegral_congr L β (Lp.coeFn_smul r f) a
      _ = r * ∫ b, sliceKernel L β a b * f b ∂sliceHaar L := by
        have he (b : Slice L SU2) : sliceKernel L β a b * (r * f b) =
            r * (sliceKernel L β a b * f b) := by ring
        simp_rw [he]
        rw [integral_const_mul]
      _ = _ := rfl

def toContinuous (β : ℝ) (hβ : 0 ≤ β) : RealSliceL2 L →L[ℝ] C(Slice L SU2, ℝ) :=
  (representativeLinearMap L β hβ).mkContinuous 1
    (fun f => by simpa only [one_mul] using norm_kernelRepresentative_le L β hβ f)

def operator (β : ℝ) (hβ : 0 ≤ β) : RealSliceL2 L →L[ℝ] RealSliceL2 L :=
  (ContinuousMap.toLp 2 (sliceHaar L) ℝ).comp (toContinuous L β hβ)

/-- L2 output equality is AE; its distinguished continuous representative is pointwise. -/
theorem operator_apply_ae (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L) :
    operator L β hβ f =ᵐ[sliceHaar L] kernelRepresentative L β hβ f :=
  ContinuousMap.coeFn_toLp (sliceHaar L) (kernelRepresentative L β hβ f)

theorem operator_apply_ae_of_representative (β : ℝ) (hβ : 0 ≤ β)
    (f : RealSliceL2 L) {u : Slice L SU2 → ℝ} (hu : f =ᵐ[sliceHaar L] u) :
    operator L β hβ f =ᵐ[sliceHaar L] kernelIntegral L β u := by
  filter_upwards [operator_apply_ae L β hβ f] with a ha
  exact ha.trans (kernelRepresentative_eq_of_ae L β hβ f hu a)

theorem norm_operator_apply_le (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L) :
    ‖operator L β hβ f‖ ≤ ‖f‖ := by
  have hb : ∀ᵐ a ∂sliceHaar L, ‖operator L β hβ f a‖ ≤ ‖f‖ := by
    filter_upwards [operator_apply_ae L β hβ f] with a ha
    rw [ha]
    exact norm_kernelRepresentative_apply_le L β hβ f a
  have h := Lp.norm_le_of_ae_bound (norm_nonneg f) hb
  simpa [measureUnivNNReal] using h

theorem norm_operator_le_one (β : ℝ) (hβ : 0 ≤ β) : ‖operator L β hβ‖ ≤ 1 :=
  ContinuousLinearMap.opNorm_le_bound _ zero_le_one
    (fun f => by simpa only [one_mul] using norm_operator_apply_le L β hβ f)

/-- Exact pointwise agreement with the literal integral of a continuous observable. -/
theorem representative_of_continuous (β : ℝ) (hβ : 0 ≤ β)
    (f : C(Slice L SU2, ℝ)) (a : Slice L SU2) :
    kernelRepresentative L β hβ (ContinuousMap.toLp 2 (sliceHaar L) ℝ f) a =
      ∫ b, sliceKernel L β a b * f b ∂sliceHaar L :=
  kernelRepresentative_eq_of_ae L β hβ _ (ContinuousMap.coeFn_toLp (sliceHaar L) f) a

/-- An actual continuous real input has exactly the claimed L2 integral output. -/
theorem operator_of_continuous (β : ℝ) (hβ : 0 ≤ β) (f : C(Slice L SU2, ℝ)) :
    operator L β hβ (ContinuousMap.toLp 2 (sliceHaar L) ℝ f) =ᵐ[sliceHaar L]
      (fun a => ∫ b, sliceKernel L β a b * f b ∂sliceHaar L) :=
  operator_apply_ae_of_representative L β hβ _ (ContinuousMap.coeFn_toLp (sliceHaar L) f)

def mean (f : RealSliceL2 L) : ℝ := ∫ a, f a ∂sliceHaar L

def oneVector : RealSliceL2 L :=
  ContinuousMap.toLp 2 (sliceHaar L) ℝ (ContinuousMap.const (Slice L SU2) 1)

theorem representative_zero (f : RealSliceL2 L) (a : Slice L SU2) :
    kernelRepresentative L 0 (by norm_num) f a = mean L f := by
  simp only [kernelRepresentative, kernelIntegral, K_zero, one_mul, mean]

/-- Beta0 is the actual mean map, not a strictly positive operator. -/
theorem operator_zero_mean (f : RealSliceL2 L) :
    operator L 0 (by norm_num) f = mean L f • oneVector L := by
  apply Lp.ext
  filter_upwards [operator_apply_ae L 0 (by norm_num) f,
    Lp.coeFn_smul (mean L f) (oneVector L),
    ContinuousMap.coeFn_toLp (sliceHaar L) (ContinuousMap.const (Slice L SU2) (1 : ℝ))]
      with a ha hs ho
  rw [ha, representative_zero, hs]
  change mean L f = mean L f * oneVector L a
  rw [ho, mul_one]

theorem mean_zero : mean L (0 : RealSliceL2 L) = 0 := by
  calc
    _ = ∫ _a : Slice L SU2, (0 : ℝ) ∂sliceHaar L :=
      integral_congr_ae (Lp.coeFn_zero ℝ 2 (sliceHaar L))
    _ = 0 := by simp

theorem mean_oneVector : mean L (oneVector L) = 1 := by
  unfold mean
  rw [integral_congr_ae
    (ContinuousMap.coeFn_toLp (sliceHaar L) (ContinuousMap.const (Slice L SU2) (1 : ℝ)))]
  simp [integral_const, probReal_univ]

theorem mean_smul (r : ℝ) (f : RealSliceL2 L) : mean L (r • f) = r * mean L f := by
  calc
    _ = ∫ a, r * f a ∂sliceHaar L := integral_congr_ae (Lp.coeFn_smul r f)
    _ = _ := integral_const_mul r _

theorem oneVector_ne_zero : oneVector L ≠ 0 := by
  intro h
  have hm := mean_oneVector L
  rw [h, mean_zero] at hm
  norm_num at hm

/-- The exact nonzero one-dimensional range at beta0, stated constructively. -/
theorem operator_zero_range :
    Set.range (operator L 0 (by norm_num)) = Set.range (fun r : ℝ => r • oneVector L) := by
  ext y
  constructor
  · rintro ⟨f, rfl⟩
    exact ⟨mean L f, (operator_zero_mean L f).symm⟩
  · rintro ⟨r, rfl⟩
    refine ⟨r • oneVector L, ?_⟩
    rw [operator_zero_mean, mean_smul, mean_oneVector, mul_one]

end GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator
