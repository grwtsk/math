/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.MeasureAndIntegration.TwoDensityResidualIdentity

/-!
# Centered covariance of a normalized two-kernel density

Exact signed cancellation precedes estimates. The normalizer is the actual
integral, with nonzero required explicitly; it is not set to one. Positivity
and actual Wilson applicability remain separate obligations.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay, transitive axiom audit and
expected-interface checks NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Integration.TwoDensityCovarianceIdentity
open MeasureTheory TwoDensityResidualIdentity
variable {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ] (J K : C(X × X, ℝ))

def normalizer : ℝ := ∫ x, ∫ y, density J K (x,y) ∂μ ∂μ

def crossResidual : ℝ := ∫ x, ∫ y, residualProduct J K (x,y) ∂μ ∂μ

def leftResidual (O : C(X, ℝ)) : ℝ :=
  ∫ x, ∫ y, O x * residualProduct J K (x,y) ∂μ ∂μ

def rightResidual (P : C(X, ℝ)) : ℝ :=
  ∫ x, ∫ y, P y * residualProduct J K (x,y) ∂μ ∂μ

def jointResidual (O P : C(X, ℝ)) : ℝ :=
  ∫ x, ∫ y, O x * P y *
    ((J (x,y)-1) + (K (y,x)-1) + residualProduct J K (x,y)) ∂μ ∂μ

/-- Normalized expression; a probability interpretation additionally needs positivity. -/
def normalizedCovariance (O P : C(X, ℝ)) : ℝ :=
  (∫ x, ∫ y, O x * P y * density J K (x,y) ∂μ ∂μ) / normalizer μ J K -
    ((∫ x, ∫ y, O x * density J K (x,y) ∂μ ∂μ) / normalizer μ J K) *
    ((∫ x, ∫ y, P y * density J K (x,y) ∂μ ∂μ) / normalizer μ J K)

theorem normalizer_eq
    (hJ : ∀ x, (∫ y, J (x,y) ∂μ) = 1)
    (hK : ∀ x, (∫ y, K (y,x) ∂μ) = 1) :
    normalizer μ J K = 1 + crossResidual μ J K :=
  normalizer_identity μ J K hJ hK

/-- The constant term cancels by product integration and the centered means. -/
theorem centered_joint_numerator (O P : C(X, ℝ))
    (hO : (∫ x, O x ∂μ) = 0) (hP : (∫ y, P y ∂μ) = 0) :
    (∫ x, ∫ y, O x * P y * density J K (x,y) ∂μ ∂μ) =
      jointResidual μ J K O P := by
  let W : C(X × X, ℝ) :=
    ⟨fun p => O p.1 * P p.2,
      (O.continuous.comp continuous_fst).mul (P.continuous.comp continuous_snd)⟩
  let V : C(X × X, ℝ) :=
    ⟨fun p => W p * ((J p-1) + (K p.swap-1) + residualProduct J K p),
      W.continuous.mul (((J.continuous.sub continuous_const).add
        ((K.continuous.comp continuous_swap).sub continuous_const)).add
          (residualProduct J K).continuous)⟩
  let U : C(X × X, ℝ) :=
    ⟨fun p => W p * density J K p, W.continuous.mul (density J K).continuous⟩
  have hpoint : (fun p => U p) = (fun p => V p + W p) := by
    funext p
    dsimp [U, V, W, density, residualProduct]
    ring
  have hw : (∫ p, W p ∂(μ.prod μ)) = 0 := by
    change (∫ p, O p.1 * P p.2 ∂(μ.prod μ)) = 0
    rw [integral_prod_mul, hO, hP, zero_mul]
  have heq : (∫ p, U p ∂(μ.prod μ)) = ∫ p, V p ∂(μ.prod μ) := by
    rw [hpoint, integral_add (pair_integrable μ V) (pair_integrable μ W), hw, add_zero]
  rw [integral_prod _ (pair_integrable μ U),
    integral_prod _ (pair_integrable μ V)] at heq
  exact heq

/-- Exact centered covariance with all four row/column hypotheses retained. -/
theorem normalizedCovariance_eq
    (hJrow : ∀ x, (∫ y, J (x,y) ∂μ) = 1)
    (hJcol : ∀ y, (∫ x, J (x,y) ∂μ) = 1)
    (hKrow : ∀ y, (∫ x, K (y,x) ∂μ) = 1)
    (hKcol : ∀ x, (∫ y, K (y,x) ∂μ) = 1)
    (O P : C(X, ℝ)) (hO : (∫ x, O x ∂μ) = 0)
    (hP : (∫ y, P y ∂μ) = 0) (hZ : normalizer μ J K ≠ 0) :
    normalizedCovariance μ J K O P =
      jointResidual μ J K O P / normalizer μ J K -
        leftResidual μ J K O * rightResidual μ J K P / (normalizer μ J K)^2 := by
  unfold normalizedCovariance
  rw [centered_joint_numerator μ J K O P hO hP,
    centered_left_marginal μ J K hJrow hKcol O hO,
    centered_right_marginal μ J K hJcol hKrow P hP]
  change jointResidual μ J K O P / normalizer μ J K -
    (leftResidual μ J K O / normalizer μ J K) *
      (rightResidual μ J K P / normalizer μ J K) = _
  field_simp [hZ]
  <;> ring

end GRWTSK.Analysis.Integration.TwoDensityCovarianceIdentity
