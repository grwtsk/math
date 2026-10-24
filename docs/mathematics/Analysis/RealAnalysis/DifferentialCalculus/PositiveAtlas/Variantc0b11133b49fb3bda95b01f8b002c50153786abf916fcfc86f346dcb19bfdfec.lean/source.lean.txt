import FormalResearch.PositiveAtlas.FiniteConditionalExpectation
import FormalResearch.PositiveAtlas.FiniteLogAffineSecondDerivative

/-!
# The log-affine Hessian as finite projection residual energy

This bridge uses the already proved finite log-affine derivative theorems.
The new averaging construction realizes centering as an orthogonal residual.
Consequently covariance and the actual iterated derivative of log Z are the
pullback of that residual pairing. No extra derivative or covariance hypothesis
is introduced.
-/

namespace FormalResearch.PositiveAtlas

universe u v

namespace FiniteLogAffineFamily

variable {I : Type u} [Fintype I] [Nonempty I]
variable {E : Type v} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable (F : FiniteLogAffineFamily I E)

noncomputable section

/-- Normalized log-affine probabilities as one finite averaging fibre. -/
def probabilityFibre (theta : E) : FiniteFibreWeights Unit (fun _ => I) where
  weight _ i := F.probability theta i
  positive _ i := F.probability_pos theta i

/-- Realization of parameter directions as sample observables. -/
def statisticObservable : E →ₗ[ℝ] (Unit → I → ℝ) where
  toFun u _ i := F.statistic i u
  map_add' x y := by ext b i; exact map_add (F.statistic i) x y
  map_smul' a x := by ext b i; exact map_smul (F.statistic i) a x

theorem probabilityFibre_mass (theta : E) (b : Unit) :
    (F.probabilityFibre theta).mass b = 1 :=
  F.probability_sum theta

/-- The constructed average agrees with the previously defined centroid. -/
theorem averaging_statisticObservable (theta u : E) :
    (F.probabilityFibre theta).averaging (F.statisticObservable u) =
      fun _ _ => F.centroid theta u := by
  funext b i
  change (∑ i, F.probability theta i * F.statistic i u) /
    (F.probabilityFibre theta).mass b = F.centroid theta u
  rw [F.probabilityFibre_mass, div_one, F.centroid_apply]

/-- The centered statistic is the actual residual of the constructed projector. -/
def centeredObservable (theta : E) : E →ₗ[ℝ] (Unit → I → ℝ) :=
  (F.probabilityFibre theta).projector.residualMap.comp F.statisticObservable

@[simp]
theorem centeredObservable_apply (theta u : E) (b : Unit) (i : I) :
    F.centeredObservable theta u b i = F.centeredStatistic theta i u := by
  change F.statistic i u -
    (F.probabilityFibre theta).averaging (F.statisticObservable u) b i = _
  rw [F.averaging_statisticObservable]
  rfl

/-- Covariance is the weighted Gram pairing of the constructed centered observables. -/
theorem covariance_eq_residual_pairing (theta u v : E) :
    (F.covarianceForm theta).form u v =
      (F.probabilityFibre theta).positiveForm.form
        (F.centeredObservable theta u) (F.centeredObservable theta v) := by
  simp only [FiniteFibreWeights.positiveForm, probabilityFibre,
    F.centeredObservable_apply, Fintype.sum_unique, F.covarianceForm_apply]
  apply Finset.sum_congr rfl
  intro i _
  ring

/-- Literal second derivative of log Z equals the finite residual pairing. -/
theorem iterated_fderiv_logPartition_eq_residual_pairing (theta u v : E) :
    fderiv ℝ (fderiv ℝ F.logPartition) theta u v =
      (F.probabilityFibre theta).positiveForm.form
        (F.centeredObservable theta u) (F.centeredObservable theta v) := by
  rw [F.iterated_fderiv_logPartition_eq_covariance, F.covariance_eq_residual_pairing]

/-- A covariance-null direction has constant statistics, and conversely.
Strict positivity of all normalized sample weights is essential. -/
theorem covariance_null_iff_constant_statistics (theta u : E) :
    (F.covarianceForm theta).IsNull u ↔
      ∀ i j, F.statistic i u = F.statistic j u := by
  change (F.covarianceForm theta).form u u = 0 ↔ _
  rw [F.covariance_eq_residual_pairing]
  change (F.probabilityFibre theta).positiveForm.form
    (F.statisticObservable u - (F.probabilityFibre theta).averaging (F.statisticObservable u))
    (F.statisticObservable u - (F.probabilityFibre theta).averaging (F.statisticObservable u))
      = 0 ↔ _
  rw [FiniteFibreWeights.residual_zero_iff]
  simp [FiniteFibreWeights.FibreConstant, statisticObservable]

/-- The null directions of the finite log-affine covariance do not depend on the parameter. -/
theorem covariance_null_parameter_independent (theta eta u : E) :
    (F.covarianceForm theta).IsNull u ↔ (F.covarianceForm eta).IsNull u := by
  rw [F.covariance_null_iff_constant_statistics, F.covariance_null_iff_constant_statistics]

end

end FiniteLogAffineFamily

end FormalResearch.PositiveAtlas
