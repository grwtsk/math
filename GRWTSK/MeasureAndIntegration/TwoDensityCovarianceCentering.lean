/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.MeasureAndIntegration.TwoDensityCovarianceIdentity

/-!
# Constant-shift invariance for the actual normalized two-density covariance

No row/column normalization is required. The sole denominator hypothesis is
that the actual integral normalizer is nonzero. Stationary centering does not
assert that either biased two-density marginal mean vanishes.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay, transitive axiom audit and
expected-interface checks NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Integration.TwoDensityCovarianceCentering
open MeasureTheory TwoDensityResidualIdentity TwoDensityCovarianceIdentity
variable {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ] (J K : C(X × X, ℝ))

def shift (O : C(X, ℝ)) (a : ℝ) : C(X, ℝ) :=
  ⟨fun x => O x-a, O.continuous.sub continuous_const⟩

def centered (O : C(X, ℝ)) : C(X, ℝ) := shift O (∫ x, O x ∂μ)

theorem centered_mean (O : C(X, ℝ)) : (∫ x, centered μ O x ∂μ) = 0 := by
  have hi := O.continuous.integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)
  change (∫ x, O x - (∫ y, O y ∂μ) ∂μ) = 0
  rw [integral_sub hi (integrable_const _)]
  simp

/-- Linear weighted pair moment with the actual denominator. -/
def moment (A : C(X × X, ℝ)) : ℝ :=
  (∫ p, A p * density J K p ∂(μ.prod μ)) / normalizer μ J K

theorem moment_add (A B : C(X × X, ℝ)) :
    moment μ J K (A+B) = moment μ J K A + moment μ J K B := by
  unfold moment
  simp only [ContinuousMap.add_apply, add_mul]
  rw [integral_add (pair_integrable μ (A * density J K))
    (pair_integrable μ (B * density J K)), add_div]

theorem moment_sub (A B : C(X × X, ℝ)) :
    moment μ J K (A-B) = moment μ J K A - moment μ J K B := by
  unfold moment
  simp only [ContinuousMap.sub_apply, sub_mul]
  rw [integral_sub (pair_integrable μ (A * density J K))
    (pair_integrable μ (B * density J K)), sub_div]

theorem moment_const_mul (a : ℝ) (A : C(X × X, ℝ)) :
    moment μ J K (ContinuousMap.const _ a * A) = a * moment μ J K A := by
  unfold moment
  simp only [ContinuousMap.mul_apply, ContinuousMap.const_apply, mul_assoc]
  rw [integral_const_mul]
  ring

theorem moment_const (a : ℝ) (hZ : normalizer μ J K ≠ 0) :
    moment μ J K (ContinuousMap.const _ a) = a := by
  unfold moment
  simp only [ContinuousMap.const_apply]
  rw [integral_const_mul, integral_prod _ (pair_integrable μ (density J K))]
  change (a * normalizer μ J K) / normalizer μ J K = a
  exact mul_div_cancel_right₀ a hZ

def left (O : C(X, ℝ)) : C(X × X, ℝ) :=
  ⟨fun p => O p.1, O.continuous.comp continuous_fst⟩

def right (P : C(X, ℝ)) : C(X × X, ℝ) :=
  ⟨fun p => P p.2, P.continuous.comp continuous_snd⟩

theorem covariance_as_moments (O P : C(X, ℝ)) :
    normalizedCovariance μ J K O P =
      moment μ J K (left O * right P) - moment μ J K (left O) * moment μ J K (right P) := by
  unfold normalizedCovariance moment
  rw [integral_prod _ (pair_integrable μ ((left O * right P) * density J K)),
    integral_prod _ (pair_integrable μ (left O * density J K)),
    integral_prod _ (pair_integrable μ (right P * density J K))]
  rfl

/-- Constant shifts preserve covariance without replacing the loop marginal by μ. -/
theorem normalizedCovariance_shift (O P : C(X, ℝ)) (a b : ℝ)
    (hZ : normalizer μ J K ≠ 0) :
    normalizedCovariance μ J K (shift O a) (shift P b) =
      normalizedCovariance μ J K O P := by
  have hl : left (shift O a) = left O - ContinuousMap.const _ a := by ext p; rfl
  have hr : right (shift P b) = right P - ContinuousMap.const _ b := by ext p; rfl
  have hprod : left (shift O a) * right (shift P b) =
      ((left O * right P - ContinuousMap.const _ b * left O) -
        ContinuousMap.const _ a * right P) + ContinuousMap.const _ (a*b) := by
    ext p
    dsimp [left, right, shift]
    ring
  rw [covariance_as_moments μ J K (shift O a) (shift P b),
    covariance_as_moments μ J K O P, hprod, hl, hr]
  rw [moment_add, moment_sub, moment_sub, moment_const_mul, moment_const_mul,
    moment_const μ J K (a*b) hZ, moment_sub, moment_const μ J K a hZ,
    moment_sub, moment_const μ J K b hZ]
  ring

theorem normalizedCovariance_centered (O P : C(X, ℝ))
    (hZ : normalizer μ J K ≠ 0) :
    normalizedCovariance μ J K (centered μ O) (centered μ P) =
      normalizedCovariance μ J K O P :=
  normalizedCovariance_shift μ J K O P (∫ x, O x ∂μ) (∫ y, P y ∂μ) hZ

end GRWTSK.Analysis.Integration.TwoDensityCovarianceCentering
