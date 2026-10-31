/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.MeasureAndIntegration.TwoDensityCovarianceIdentity

/-!
# Quantitative two-density covariance estimate

Both signed residuals are retained until exact centering cancels the linear
normalizer and marginal terms. The denominator is bounded by 1-e*f, not assumed
one. Constants may depend on the regulator. SOURCE_PROOF_CANDIDATE; compilation,
fresh kernel replay, transitive axiom audit and interface checks NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Integration.TwoDensityCovarianceBound
open MeasureTheory TwoDensityResidualIdentity TwoDensityCovarianceIdentity
variable {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ] (J K : C(X × X, ℝ))

/-- Compact continuity supplies actual product integrability before Fubini. -/
theorem abs_double_integral_le (A : C(X × X, ℝ)) (b : ℝ)
    (hA : ∀ x y, |A (x,y)| ≤ b) :
    |∫ x, ∫ y, A (x,y) ∂μ ∂μ| ≤ b := by
  rw [← integral_prod _ (pair_integrable μ A)]
  simpa only [Real.norm_eq_abs, probReal_univ, mul_one] using
    (norm_integral_le_of_norm_le_const (μ := μ.prod μ)
      (ae_of_all _ (fun p => by simpa only [Real.norm_eq_abs] using hA p.1 p.2)))

variable {e f M N : ℝ}
variable (he : 0 ≤ e) (hf : 0 ≤ f)
variable (hJ : ∀ x y, |J (x,y)-1| ≤ e) (hK : ∀ x y, |K (y,x)-1| ≤ f)

include he hf hJ hK

theorem residual_pointwise (x y : X) :
    |residualProduct J K (x,y)| ≤ e*f := by
  change |(J (x,y)-1)*(K (y,x)-1)| ≤ e*f
  rw [abs_mul]
  exact mul_le_mul (hJ x y) (hK x y) (abs_nonneg _) he

theorem cross_bound : |crossResidual μ J K| ≤ e*f :=
  abs_double_integral_le μ (residualProduct J K) (e*f)
    (residual_pointwise J K he hf hJ hK)

theorem left_bound (O : C(X, ℝ)) (hM : 0 ≤ M)
    (hO : ∀ x, |O x| ≤ M) : |leftResidual μ J K O| ≤ M*(e*f) := by
  let A : C(X × X, ℝ) := ⟨fun p => O p.1 * residualProduct J K p,
    (O.continuous.comp continuous_fst).mul (residualProduct J K).continuous⟩
  apply abs_double_integral_le μ A
  intro x y
  change |O x * residualProduct J K (x,y)| ≤ M*(e*f)
  rw [abs_mul]
  exact mul_le_mul (hO x) (residual_pointwise J K he hf hJ hK x y)
    (abs_nonneg _) hM

theorem right_bound (P : C(X, ℝ)) (hN : 0 ≤ N)
    (hP : ∀ y, |P y| ≤ N) : |rightResidual μ J K P| ≤ N*(e*f) := by
  let A : C(X × X, ℝ) := ⟨fun p => P p.2 * residualProduct J K p,
    (P.continuous.comp continuous_snd).mul (residualProduct J K).continuous⟩
  apply abs_double_integral_le μ A
  intro x y
  change |P y * residualProduct J K (x,y)| ≤ N*(e*f)
  rw [abs_mul]
  exact mul_le_mul (hP y) (residual_pointwise J K he hf hJ hK x y)
    (abs_nonneg _) hN

theorem joint_bound (O P : C(X, ℝ)) (hM : 0 ≤ M) (hN : 0 ≤ N)
    (hO : ∀ x, |O x| ≤ M) (hP : ∀ y, |P y| ≤ N) :
    |jointResidual μ J K O P| ≤ M*N*(e+f+e*f) := by
  let S : C(X × X, ℝ) := ⟨fun p => (J p-1)+(K p.swap-1)+residualProduct J K p,
    ((J.continuous.sub continuous_const).add
      ((K.continuous.comp continuous_swap).sub continuous_const)).add
        (residualProduct J K).continuous⟩
  let A : C(X × X, ℝ) := ⟨fun p => O p.1 * P p.2 * S p,
    ((O.continuous.comp continuous_fst).mul (P.continuous.comp continuous_snd)).mul
      S.continuous⟩
  apply abs_double_integral_le μ A
  intro x y
  have hs : |S (x,y)| ≤ e+f+e*f := by
    calc
      _ ≤ |J (x,y)-1| + |K (y,x)-1| + |residualProduct J K (x,y)| :=
        (abs_add _ _).trans (add_le_add_right (abs_add _ _) _)
      _ ≤ _ := add_le_add (add_le_add (hJ x y) (hK x y))
        (residual_pointwise J K he hf hJ hK x y)
  change |O x * P y * S (x,y)| ≤ _
  rw [abs_mul, abs_mul]
  exact mul_le_mul (mul_le_mul (hO x) (hP y) (abs_nonneg _) hM) hs
    (abs_nonneg _) (mul_nonneg hM hN)

theorem normalizer_lower
    (hJrow : ∀ x, (∫ y, J (x,y) ∂μ) = 1)
    (hKcol : ∀ x, (∫ y, K (y,x) ∂μ) = 1) :
    1-e*f ≤ normalizer μ J K := by
  rw [normalizer_eq μ J K hJrow hKcol]
  have h := (abs_le.mp (cross_bound μ J K he hf hJ hK)).1
  linarith

/-- Actual quotient covariance estimate, conditional on both normalization directions. -/
theorem covariance_bound
    (hJrow : ∀ x, (∫ y, J (x,y) ∂μ) = 1)
    (hJcol : ∀ y, (∫ x, J (x,y) ∂μ) = 1)
    (hKrow : ∀ y, (∫ x, K (y,x) ∂μ) = 1)
    (hKcol : ∀ x, (∫ y, K (y,x) ∂μ) = 1)
    (O P : C(X, ℝ)) (hM : 0 ≤ M) (hN : 0 ≤ N)
    (hO : ∀ x, |O x| ≤ M) (hP : ∀ y, |P y| ≤ N)
    (hOm : (∫ x, O x ∂μ) = 0) (hPm : (∫ y, P y ∂μ) = 0)
    (hsmall : e*f < 1) :
    |normalizedCovariance μ J K O P| ≤
      M*N*((e+f+e*f)/(1-e*f)+(e*f)^2/(1-e*f)^2) := by
  have hzlower := normalizer_lower μ J K he hf hJ hK hJrow hKcol
  have hd : 0 < 1-e*f := by linarith
  have hz : 0 < normalizer μ J K := lt_of_lt_of_le hd hzlower
  have hc := joint_bound μ J K he hf hJ hK O P hM hN hO hP
  have ha := left_bound μ J K he hf hJ hK O hM hO
  have hb := right_bound μ J K he hf hJ hK P hN hP
  have hab : |leftResidual μ J K O * rightResidual μ J K P| ≤ M*N*(e*f)^2 := by
    rw [abs_mul]
    calc
      _ ≤ (M*(e*f))*(N*(e*f)) := mul_le_mul ha hb (abs_nonneg _)
        (mul_nonneg hM (mul_nonneg he hf))
      _ = _ := by ring
  rw [normalizedCovariance_eq μ J K hJrow hJcol hKrow hKcol O P hOm hPm (ne_of_gt hz)]
  calc
    _ ≤ |jointResidual μ J K O P / normalizer μ J K| +
        |leftResidual μ J K O * rightResidual μ J K P / (normalizer μ J K)^2| :=
      abs_sub _ _
    _ = |jointResidual μ J K O P| / normalizer μ J K +
        |leftResidual μ J K O * rightResidual μ J K P| / (normalizer μ J K)^2 := by
      rw [abs_div, abs_div, abs_of_pos hz, abs_of_nonneg (sq_nonneg _)]
    _ ≤ (M*N*(e+f+e*f))/(1-e*f) + (M*N*(e*f)^2)/(1-e*f)^2 := by
      apply add_le_add
      · exact (div_le_div_of_nonneg_right hc (le_of_lt hz)).trans
          (div_le_div_of_nonneg_left (by positivity) hd hzlower)
      · exact (div_le_div_of_nonneg_right hab (sq_nonneg _)).trans
          (div_le_div_of_nonneg_left (by positivity) (sq_pos_of_pos hd)
            (by nlinarith))
    _ = _ := by ring

end GRWTSK.Analysis.Integration.TwoDensityCovarianceBound
