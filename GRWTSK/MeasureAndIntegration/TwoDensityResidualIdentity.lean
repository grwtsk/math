/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib integration and Fubini theory retain upstream attribution and Apache-2.0 licensing. -/
import Mathlib.MeasureTheory.Integral.Prod
import Mathlib.Topology.ContinuousMap.Compact
import Mathlib.Tactic

/-!
# Exact signed residual identities for two normalized kernel densities

Row and column normalization are explicit hypotheses. Actual Wilson kernel
powers require a separate applicability proof. No mixed-difference positivity
or RH premise is used. SOURCE_PROOF_CANDIDATE; compilation, fresh replay,
transitive axioms and expected-interface checks NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Integration.TwoDensityResidualIdentity
open MeasureTheory
variable {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ] (J K : C(X × X, ℝ))

def density : C(X × X, ℝ) :=
  ⟨fun p => J p * K p.swap, J.continuous.mul (K.continuous.comp continuous_swap)⟩

def residualProduct : C(X × X, ℝ) :=
  ⟨fun p => (J p-1) * (K p.swap-1),
    (J.continuous.sub continuous_const).mul
      ((K.continuous.comp continuous_swap).sub continuous_const)⟩

theorem pair_integrable (A : C(X × X, ℝ)) : Integrable A (μ.prod μ) :=
  A.continuous.integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)

/-- At each fixed first endpoint, both first-order residuals integrate to zero. -/
theorem density_row_integral
    (hJ : ∀ x, (∫ y, J (x,y) ∂μ) = 1)
    (hK : ∀ x, (∫ y, K (y,x) ∂μ) = 1) (x : X) :
    (∫ y, density J K (x,y) ∂μ) =
      1 + ∫ y, residualProduct J K (x,y) ∂μ := by
  have hiJ : Integrable (fun y => J (x,y)) μ :=
    (J.continuous.comp (continuous_const.prodMk continuous_id)).integrable_of_hasCompactSupport
      (HasCompactSupport.of_compactSpace _)
  have hiK : Integrable (fun y => K (y,x)) μ :=
    (K.continuous.comp (continuous_id.prodMk continuous_const)).integrable_of_hasCompactSupport
      (HasCompactSupport.of_compactSpace _)
  have hiE : Integrable (fun y => residualProduct J K (x,y)) μ :=
    ((residualProduct J K).continuous.comp (continuous_const.prodMk continuous_id)).integrable_of_hasCompactSupport
      (HasCompactSupport.of_compactSpace _)
  calc
    _ = ∫ y, (residualProduct J K (x,y) + J (x,y) + K (y,x)) - 1 ∂μ := by
      apply integral_congr_ae
      exact ae_of_all _ (fun y => by dsimp [density, residualProduct]; ring)
    _ = _ := by
      rw [integral_sub ((hiE.add hiJ).add hiK) (integrable_const (1 : ℝ)),
        integral_add (hiE.add hiJ) hiK, integral_add hiE hiJ, hJ x, hK x]
      simp
      <;> ring

/-- The full normalizer error contains only the product of the two signed residuals. -/
theorem normalizer_identity
    (hJ : ∀ x, (∫ y, J (x,y) ∂μ) = 1)
    (hK : ∀ x, (∫ y, K (y,x) ∂μ) = 1) :
    (∫ x, ∫ y, density J K (x,y) ∂μ ∂μ) =
      1 + ∫ x, ∫ y, residualProduct J K (x,y) ∂μ ∂μ := by
  simp_rw [density_row_integral μ J K hJ hK]
  have hi := (pair_integrable μ (residualProduct J K)).integral_prod_left
  rw [integral_add (integrable_const (1 : ℝ)) hi]
  simp

/-- Centered first-endpoint marginal: no absolute values are taken before cancellation. -/
theorem centered_left_marginal
    (hJ : ∀ x, (∫ y, J (x,y) ∂μ) = 1)
    (hK : ∀ x, (∫ y, K (y,x) ∂μ) = 1)
    (O : C(X, ℝ)) (hO : (∫ x, O x ∂μ) = 0) :
    (∫ x, ∫ y, O x * density J K (x,y) ∂μ ∂μ) =
      ∫ x, ∫ y, O x * residualProduct J K (x,y) ∂μ ∂μ := by
  simp_rw [integral_const_mul, density_row_integral μ J K hJ hK, mul_add, mul_one]
  have hio := O.continuous.integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)
  let A : C(X × X, ℝ) := ⟨fun p => O p.1 * residualProduct J K p,
    (O.continuous.comp continuous_fst).mul (residualProduct J K).continuous⟩
  have hir : Integrable (fun x => O x * ∫ y, residualProduct J K (x,y) ∂μ) μ := by
    simpa only [A, integral_const_mul] using (pair_integrable μ A).integral_prod_left
  rw [integral_add hio hir, hO, zero_add]

/-- Centered second-endpoint marginal, with actual Fubini before exchanging endpoints. -/
theorem centered_right_marginal
    (hJ : ∀ y, (∫ x, J (x,y) ∂μ) = 1)
    (hK : ∀ y, (∫ x, K (y,x) ∂μ) = 1)
    (P : C(X, ℝ)) (hP : (∫ y, P y ∂μ) = 0) :
    (∫ x, ∫ y, P y * density J K (x,y) ∂μ ∂μ) =
      ∫ x, ∫ y, P y * residualProduct J K (x,y) ∂μ ∂μ := by
  let A : C(X × X, ℝ) := ⟨fun p => P p.2 * density J K p,
    (P.continuous.comp continuous_snd).mul (density J K).continuous⟩
  let B : C(X × X, ℝ) := ⟨fun p => P p.2 * residualProduct J K p,
    (P.continuous.comp continuous_snd).mul (residualProduct J K).continuous⟩
  rw [integral_integral_swap (pair_integrable μ A),
    integral_integral_swap (pair_integrable μ B)]
  have hh := centered_left_marginal μ K J hK hJ P hP
  simpa only [density, residualProduct, Prod.swap_prod_mk, mul_comm] using hh

end GRWTSK.Analysis.Integration.TwoDensityResidualIdentity
