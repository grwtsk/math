import FormalResearch.PositiveAtlas.FiniteLogAffineSecondDerivative

/-!
# Third cumulant of a finite log-affine family

This module begins the higher-cumulant hierarchy beyond covariance.

For fixed directions u and v, it differentiates the covariance scalar field

  theta ↦ Cov_theta(u,v)

and proves that its derivative in direction w is the centered third joint
moment

  sum_i p_i(theta)
    Ltilde_i(u) Ltilde_i(v) Ltilde_i(w).

Equivalently, the third iterated Frechet derivative of log Z is the finite
third cumulant tensor.
-/

namespace FormalResearch.PositiveAtlas

universe u v

variable {I : Type u} [Fintype I] [Nonempty I]
variable {E : Type v} [NormedAddCommGroup E] [NormedSpace ℝ E]

namespace FiniteLogAffineFamily

variable (F : FiniteLogAffineFamily I E)

/-- One covariance slice, viewed as a covector in its first argument. -/
noncomputable def covarianceSlice
    (theta u : E) : E →L[ℝ] ℝ :=
  (ContinuousLinearMap.apply ℝ ℝ u).comp (F.covarianceOperator theta)

@[simp]
theorem covarianceSlice_apply
    (theta u w : E) :
    F.covarianceSlice theta u w =
      F.covarianceOperator theta w u :=
  rfl

/-- Derivative of a centered statistic in one fixed direction. -/
noncomputable def centeredStatisticDerivative
    (theta u : E) : E →L[ℝ] ℝ :=
  -F.covarianceSlice theta u

@[simp]
theorem centeredStatisticDerivative_apply
    (theta u w : E) :
    F.centeredStatisticDerivative theta u w =
      -F.covarianceOperator theta w u := by
  simp [centeredStatisticDerivative, covarianceSlice]

/-- Exact derivative of a centered statistic evaluated in one fixed direction. -/
theorem hasFDerivAt_centeredStatistic_apply
    (theta : E) (i : I) (u : E) :
    HasFDerivAt
      (fun x => F.centeredStatistic x i u)
      (F.centeredStatisticDerivative theta u)
      theta := by
  have hcentroid :
      HasFDerivAt
        (fun x => F.centroid x u)
        (F.covarianceSlice theta u)
        theta :=
    (ContinuousLinearMap.apply ℝ ℝ u).hasFDerivAt.comp
      theta (F.hasFDerivAt_centroid theta)
  have hconst :
      HasFDerivAt
        (fun _ : E => F.statistic i u)
        (0 : E →L[ℝ] ℝ)
        theta :=
    hasFDerivAt_const _ _
  have h := hconst.sub hcentroid
  rw [zero_sub] at h
  exact h

/-- One scalar summand of the covariance in fixed directions u and v. -/
noncomputable def covarianceSummand
    (u v : E) (i : I) (theta : E) : ℝ :=
  F.probability theta i *
    F.centeredStatistic theta i u *
    F.centeredStatistic theta i v

/-- Raw product-rule derivative of one covariance summand. -/
noncomputable def rawThirdSummandDerivative
    (theta u v : E) (i : I) : E →L[ℝ] ℝ :=
  (F.probability theta i * F.centeredStatistic theta i u) •
      F.centeredStatisticDerivative theta v +
    F.centeredStatistic theta i v •
      (F.probability theta i •
          F.centeredStatisticDerivative theta u +
        F.centeredStatistic theta i u •
          F.probabilityDerivative theta i)

/-- Product-rule derivative of one covariance summand. -/
theorem hasFDerivAt_covarianceSummand
    (theta u v : E) (i : I) :
    HasFDerivAt
      (F.covarianceSummand u v i)
      (F.rawThirdSummandDerivative theta u v i)
      theta := by
  have hp := F.hasFDerivAt_probability theta i
  have hu := F.hasFDerivAt_centeredStatistic_apply theta i u
  have hv := F.hasFDerivAt_centeredStatistic_apply theta i v
  have h := (hp.mul hu).mul hv
  exact h

/-- Covariance in two fixed directions, regarded as a scalar field of theta. -/
noncomputable def covarianceScalar (u v : E) (theta : E) : ℝ :=
  ∑ i : I, F.covarianceSummand u v i theta

@[simp]
theorem covarianceScalar_eq_covarianceForm
    (theta u v : E) :
    F.covarianceScalar u v theta =
      (F.covarianceForm theta).form u v :=
  rfl

/-- Raw derivative of the covariance scalar field. -/
noncomputable def rawThirdDerivative
    (theta u v : E) : E →L[ℝ] ℝ :=
  ∑ i : I, F.rawThirdSummandDerivative theta u v i

/-- The covariance scalar differentiates term-by-term. -/
theorem hasFDerivAt_covarianceScalar_raw
    (theta u v : E) :
    HasFDerivAt
      (F.covarianceScalar u v)
      (F.rawThirdDerivative theta u v)
      theta := by
  classical
  change
    HasFDerivAt
      (fun x : E => ∑ i : I, F.covarianceSummand u v i x)
      (F.rawThirdDerivative theta u v)
      theta
  simpa [rawThirdDerivative] using
    (HasFDerivAt.fun_sum (u := Finset.univ)
      (fun i _ => F.hasFDerivAt_covarianceSummand theta u v i))

/-- Evaluation formula for one raw third-derivative summand. -/
theorem rawThirdSummandDerivative_apply
    (theta u v w : E) (i : I) :
    F.rawThirdSummandDerivative theta u v i w =
      F.probability theta i *
          F.centeredStatistic theta i u *
          F.centeredStatistic theta i v *
          F.centeredStatistic theta i w
        -
      F.covarianceOperator theta w v *
          (F.probability theta i *
            F.centeredStatistic theta i u)
        -
      F.covarianceOperator theta w u *
          (F.probability theta i *
            F.centeredStatistic theta i v) := by
  simp [rawThirdSummandDerivative, centeredStatisticDerivative,
    covarianceSlice, probabilityDerivative, smul_eq_mul]
  ring

/-- Evaluation formula for the raw third derivative. -/
theorem rawThirdDerivative_apply
    (theta u v w : E) :
    F.rawThirdDerivative theta u v w =
      ∑ i : I,
        (F.probability theta i *
            F.centeredStatistic theta i u *
            F.centeredStatistic theta i v *
            F.centeredStatistic theta i w
          -
        F.covarianceOperator theta w v *
            (F.probability theta i *
              F.centeredStatistic theta i u)
          -
        F.covarianceOperator theta w u *
            (F.probability theta i *
              F.centeredStatistic theta i v)) := by
  classical
  simp [rawThirdDerivative, F.rawThirdSummandDerivative_apply]

/-- Continuous trilinear third-cumulant operator, curried as nested continuous
linear maps. -/
noncomputable def thirdCumulantOperator
    (theta : E) :
    E →L[ℝ] (E →L[ℝ] (E →L[ℝ] ℝ)) :=
  ∑ i : I,
    (F.probability theta i) •
      (F.centeredStatistic theta i).smulRight
        ((F.centeredStatistic theta i).smulRight
          (F.centeredStatistic theta i))

@[simp]
theorem thirdCumulantOperator_apply
    (theta u v w : E) :
    F.thirdCumulantOperator theta u v w =
      ∑ i : I,
        F.probability theta i *
          F.centeredStatistic theta i u *
          F.centeredStatistic theta i v *
          F.centeredStatistic theta i w := by
  classical
  simp [thirdCumulantOperator,
    ContinuousLinearMap.smulRight_apply, smul_eq_mul, mul_assoc]

/-- The raw product-rule derivative collapses to the centered third moment. -/
theorem rawThirdDerivative_eq_thirdCumulantOperator
    (theta u v : E) :
    F.rawThirdDerivative theta u v =
      F.thirdCumulantOperator theta u v := by
  apply ContinuousLinearMap.ext
  intro w
  rw [F.rawThirdDerivative_apply,
    F.thirdCumulantOperator_apply]
  have hu := F.centered_weighted_sum_eq_zero theta u
  have hv := F.centered_weighted_sum_eq_zero theta v
  rw [Finset.sum_sub_distrib, Finset.sum_sub_distrib,
    ← Finset.mul_sum, ← Finset.mul_sum, hu, hv]
  ring

/-- Derivative of covariance is the third cumulant covector. -/
theorem hasFDerivAt_covarianceScalar
    (theta u v : E) :
    HasFDerivAt
      (F.covarianceScalar u v)
      (F.thirdCumulantOperator theta u v)
      theta := by
  rw [← F.rawThirdDerivative_eq_thirdCumulantOperator theta u v]
  exact F.hasFDerivAt_covarianceScalar_raw theta u v

/-- Pointwise derivative of a covariance slice. -/
theorem fderiv_covarianceScalar_eq_thirdCumulant
    (theta u v : E) :
    fderiv ℝ (F.covarianceScalar u v) theta =
      F.thirdCumulantOperator theta u v :=
  (F.hasFDerivAt_covarianceScalar theta u v).fderiv

/-- The third cumulant is symmetric in its first two arguments. -/
theorem thirdCumulant_swap_first_two
    (theta u v w : E) :
    F.thirdCumulantOperator theta u v w =
      F.thirdCumulantOperator theta v u w := by
  rw [F.thirdCumulantOperator_apply,
    F.thirdCumulantOperator_apply]
  apply Finset.sum_congr rfl
  intro i hi
  ring

/-- The third cumulant is symmetric in its last two arguments. -/
theorem thirdCumulant_swap_last_two
    (theta u v w : E) :
    F.thirdCumulantOperator theta u v w =
      F.thirdCumulantOperator theta u w v := by
  rw [F.thirdCumulantOperator_apply,
    F.thirdCumulantOperator_apply]
  apply Finset.sum_congr rfl
  intro i hi
  ring

/-- Literal third iterated Fréchet derivative of the log-partition:
the centered third joint moment. -/
theorem third_fderiv_logPartition_eq_thirdCumulant
    (theta u v w : E) :
    fderiv ℝ
        (fun x =>
          fderiv ℝ (fderiv ℝ F.logPartition) x u v)
        theta w =
      F.thirdCumulantOperator theta u v w := by
  have heq :
      (fun x =>
        fderiv ℝ (fderiv ℝ F.logPartition) x u v) =
        F.covarianceScalar u v := by
    funext x
    exact F.iterated_fderiv_logPartition_eq_covariance x u v
  rw [heq, F.fderiv_covarianceScalar_eq_thirdCumulant]

end FiniteLogAffineFamily

end FormalResearch.PositiveAtlas
