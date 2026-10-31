/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceRankOneMinorization
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceContinuousStrictPositivity

/-!
# Actual principal residual kernel and its weighted row identity

The continuous principal representative has square integral one and satisfies
the literal integral eigen-equation at every slice. Full support is used only
to compare continuous outputs, after the exact actual L2 identity is established.
Subtracting its explicit rank-one minorant produces a continuous symmetric
pointwise nonnegative kernel R with row identity
integral R(a,b) phi(b) = lambda (1-c lambda) phi(a).
This is an input to a later weighted Schur estimate, not that estimate itself.
Pointwise positivity is not quadratic operator positivity. No uniform physical
gap or continuum construction follows. SOURCE_PROOF_CANDIDATE; compile,
fresh replay, transitive axiom and expected-interface checks NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceResidualKernel
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceKernelSymmetry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceContinuousStrictPositivity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalRepresentativeBounds
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRankOneMinorization
variable (L : ℕ) [NeZero L]

theorem principal_square_integral (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L) (hn : ‖f‖ = 1)
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f) :
    (∫ a, (principalRepresentative L β hβ f a)^2 ∂sliceHaar L) = 1 := by
  have hh : inner ℝ f f =
      ∫ a, (principalRepresentative L β hβ f a)^2 ∂sliceHaar L := by
    change inner ℝ (f : RealSliceL2 L) (f : RealSliceL2 L) = _
    rw [L2.inner_def]
    apply integral_congr_ae
    filter_upwards [principalRepresentative_eq_ae L β hβ f he] with a ha
    simp only [Real.inner_apply, ha, pow_two]
  rw [← hh, real_inner_self_eq_norm_sq, hn]
  norm_num

theorem principal_integral_equation (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L)
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f)
    (a : Slice L SU2) :
    (∫ b, sliceKernel L β a b * principalRepresentative L β hβ f b ∂sliceHaar L) =
      lambda0 L β hβ.le * principalRepresentative L β hβ f a := by
  let phi := principalRepresentative L β hβ f
  have hc : ContinuousMap.toLp 2 (sliceHaar L) ℝ
      (toContinuous L β hβ.le (ContinuousMap.toLp 2 (sliceHaar L) ℝ phi)) =
      ContinuousMap.toLp 2 (sliceHaar L) ℝ (lambda0 L β hβ.le • phi) := by
    rw [map_smul]
    exact principalRepresentative_eigenvector L β hβ f he
  letI : Measure.IsOpenPosMeasure (sliceHaar L) := sliceHaar_isOpenPosMeasure L
  have hpoint : toContinuous L β hβ.le (ContinuousMap.toLp 2 (sliceHaar L) ℝ phi) =
      lambda0 L β hβ.le • phi := ContinuousMap.toLp_injective (sliceHaar L) hc
  have hv := congrArg (fun u : C(Slice L SU2, ℝ) => u a) hpoint
  change kernelRepresentative L β hβ.le (ContinuousMap.toLp 2 (sliceHaar L) ℝ phi) a =
    lambda0 L β hβ.le * phi a at hv
  rw [representative_of_continuous] at hv
  exact hv

def residualKernel (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L) :
    C(Slice L SU2 × Slice L SU2, ℝ) :=
  ⟨fun p => sliceKernel L β p.1 p.2 -
      Real.exp (-12 * β * (L : ℝ)^3) * (lambda0 L β hβ.le)^2 *
        principalRepresentative L β hβ f p.1 * principalRepresentative L β hβ f p.2,
    (continuous_K L β).sub
      ((((principalRepresentative L β hβ f).continuous.comp continuous_fst).const_mul
        (Real.exp (-12 * β * (L : ℝ)^3) * (lambda0 L β hβ.le)^2)).mul
          ((principalRepresentative L β hβ f).continuous.comp continuous_snd))⟩

theorem residualKernel_symm (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L) (a b : Slice L SU2) :
    residualKernel L β hβ f (a,b) = residualKernel L β hβ f (b,a) := by
  dsimp [residualKernel]
  rw [K_symm L β a b]
  ring

theorem residualKernel_nonnegative (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L) (hn : ‖f‖ = 1)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (a b : Slice L SU2) :
    0 ≤ residualKernel L β hβ f (a,b) :=
  sub_nonneg.mpr (kernel_rankOne_lower L β hβ f hn hf a b)

/-- Exact weighted row identity, with explicit integrability of both subtracted terms. -/
theorem residualKernel_weighted_row (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L) (hn : ‖f‖ = 1)
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f)
    (a : Slice L SU2) :
    (∫ b, residualKernel L β hβ f (a,b) * principalRepresentative L β hβ f b
      ∂sliceHaar L) =
      lambda0 L β hβ.le * (1 - Real.exp (-12 * β * (L : ℝ)^3) * lambda0 L β hβ.le) *
        principalRepresentative L β hβ f a := by
  have hk : Integrable (fun b => sliceKernel L β a b * principalRepresentative L β hβ f b)
      (sliceHaar L) := by
    apply Continuous.integrable_of_hasCompactSupport
      ((((continuous_K L β).comp (continuous_const.prodMk continuous_id)).mul
        (principalRepresentative L β hβ f).continuous))
    exact HasCompactSupport.of_compactSpace _
  have hs : Integrable (fun b => (principalRepresentative L β hβ f b)^2) (sliceHaar L) := by
    exact ((principalRepresentative L β hβ f).continuous.pow 2).integrable_of_hasCompactSupport
      (HasCompactSupport.of_compactSpace _)
  have hfun : (fun b => residualKernel L β hβ f (a,b) * principalRepresentative L β hβ f b) =
      fun b => sliceKernel L β a b * principalRepresentative L β hβ f b -
        (Real.exp (-12 * β * (L : ℝ)^3) * (lambda0 L β hβ.le)^2 *
          principalRepresentative L β hβ f a) * (principalRepresentative L β hβ f b)^2 := by
    funext b
    dsimp [residualKernel]
    ring
  rw [hfun, integral_sub hk (hs.const_mul _), integral_const_mul,
    principal_square_integral L β hβ f hn he, principal_integral_equation L β hβ f he a]
  ring

end GRWTSK.Geometry.GaugeTheory.WilsonSliceResidualKernel
