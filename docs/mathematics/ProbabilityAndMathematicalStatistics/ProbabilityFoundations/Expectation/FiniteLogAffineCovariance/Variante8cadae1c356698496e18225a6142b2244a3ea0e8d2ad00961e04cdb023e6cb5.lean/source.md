# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FiniteLogAffineCovariance.Variante8cadae1c356698496e18225a6142b2244a3ea0e8d2ad00961e04cdb023e6cb5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22d15677767a47acf85877275f21f3daaed0f576` · SHA-256 `e8cadae1c356698496e18225a6142b2244a3ea0e8d2ad00961e04cdb023e6cb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.AffineReconstruction
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Analysis.SpecialFunctions.Exp

/-!
# Finite log-affine covariance geometry

This module adds the first concrete probabilistic Phase-I model.

A finite log-affine positive family consists of positive base weights and
continuous linear sufficient statistics. At each parameter theta, the
unnormalized weight is

  w_i(theta) = a_i * exp(L_i(theta)),

the partition function is

  Z(theta) = sum_i w_i(theta),

and the normalized positive object is

  p_i(theta) = w_i(theta) / Z(theta).

The module proves positivity and normalization of p, defines its centroid, and
constructs the covariance bilinear form

  Cov_theta(u,v)
    = sum_i p_i(theta)
        (L_i(u) - mu_theta(u))
        (L_i(v) - mu_theta(v)),

as a PositiveForm.

A realization structure then connects this finite log-affine family to an
AnalyticDispersionReconstruction. From that certificate the atlas obtains the
pointwise identity

  Hessian Psi = dispersion = covariance.

This PR does not yet derive the analytic derivative identities of the
log-partition function from the finite sum. That calculation remains a separate
formal layer.
-/

namespace FormalResearch.PositiveAtlas

universe u v

variable {I : Type u} [Fintype I] [Nonempty I]
variable {E : Type v} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- A finite log-affine positive family with strictly positive base weights and
linear sufficient statistics. -/
structure FiniteLogAffineFamily (I : Type u) (E : Type v)
    [Fintype I] [Nonempty I]
    [NormedAddCommGroup E] [NormedSpace ℝ E] where
  baseWeight : I → ℝ
  baseWeight_pos : ∀ i, 0 < baseWeight i
  statistic : I → (E →L[ℝ] ℝ)

namespace FiniteLogAffineFamily

variable (F : FiniteLogAffineFamily I E)

/-- Unnormalized log-affine weight. -/
def unnormalizedWeight (theta : E) (i : I) : ℝ :=
  F.baseWeight i * Real.exp (F.statistic i theta)

/-- Every unnormalized weight is strictly positive. -/
theorem unnormalizedWeight_pos (theta : E) (i : I) :
    0 < F.unnormalizedWeight theta i :=
  mul_pos (F.baseWeight_pos i) (Real.exp_pos _)

/-- Partition function of the finite log-affine family. -/
def partition (theta : E) : ℝ :=
  ∑ i : I, F.unnormalizedWeight theta i

/-- The finite partition function is strictly positive. -/
theorem partition_pos (theta : E) :
    0 < F.partition theta := by
  classical
  exact Finset.sum_pos
    (fun i _ => F.unnormalizedWeight_pos theta i)
    Finset.univ_nonempty

/-- Log-partition potential. -/
def logPartition (theta : E) : ℝ :=
  Real.log (F.partition theta)

/-- The log-partition exponentiates back to the partition function. -/
theorem exp_logPartition (theta : E) :
    Real.exp (F.logPartition theta) = F.partition theta := by
  rw [logPartition, Real.exp_log (F.partition_pos theta)]

/-- Normalized positive weight. -/
def probability (theta : E) (i : I) : ℝ :=
  F.unnormalizedWeight theta i / F.partition theta

/-- Every normalized weight is strictly positive. -/
theorem probability_pos (theta : E) (i : I) :
    0 < F.probability theta i :=
  div_pos (F.unnormalizedWeight_pos theta i) (F.partition_pos theta)

/-- Every normalized weight is nonnegative. -/
theorem probability_nonnegative (theta : E) (i : I) :
    0 ≤ F.probability theta i :=
  le_of_lt (F.probability_pos theta i)

/-- The normalized weights sum to one. -/
theorem probability_sum (theta : E) :
    ∑ i : I, F.probability theta i = 1 := by
  classical
  simp_rw [probability]
  rw [← Finset.sum_div]
  change F.partition theta / F.partition theta = 1
  exact div_self (ne_of_gt (F.partition_pos theta))

/-- The centroid covector of the sufficient statistics. -/
def centroid (theta : E) : E →L[ℝ] ℝ :=
  ∑ i : I, (F.probability theta i) • F.statistic i

@[simp]
theorem centroid_apply (theta u : E) :
    F.centroid theta u =
      ∑ i : I, F.probability theta i * F.statistic i u := by
  classical
  simp [centroid]

/-- Centered sufficient-statistic covector. -/
def centeredStatistic (theta : E) (i : I) : E →L[ℝ] ℝ :=
  F.statistic i - F.centroid theta

@[simp]
theorem centeredStatistic_apply (theta : E) (i : I) (u : E) :
    F.centeredStatistic theta i u =
      F.statistic i u - F.centroid theta u := by
  simp [centeredStatistic]

/-- Covariance of the finite normalized log-affine sufficient statistics. -/
def covarianceForm (theta : E) : PositiveForm E where
  form u v :=
    ∑ i : I,
      F.probability theta i *
        F.centeredStatistic theta i u *
        F.centeredStatistic theta i v
  add_left x y z := by
    classical
    simp only [map_add]
    simp_rw [mul_add, add_mul]
    rw [Finset.sum_add_distrib]
  smul_left a x y := by
    classical
    simp only [map_smul, RingHom.id_apply, smul_eq_mul]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i hi
    ring
  add_right x y z := by
    classical
    simp only [map_add]
    simp_rw [mul_add]
    rw [Finset.sum_add_distrib]
  smul_right a x y := by
    classical
    simp only [map_smul, RingHom.id_apply, smul_eq_mul]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i hi
    ring
  symmetric x y := by
    classical
    apply Finset.sum_congr rfl
    intro i hi
    ring
  nonnegative x := by
    classical
    apply Finset.sum_nonneg
    intro i hi
    have h :=
      mul_nonneg (F.probability_nonnegative theta i)
        (sq_nonneg (F.centeredStatistic theta i x))
    simpa [pow_two, mul_assoc] using h

@[simp]
theorem covarianceForm_apply (theta u v : E) :
    (F.covarianceForm theta).form u v =
      ∑ i : I,
        F.probability theta i *
          F.centeredStatistic theta i u *
          F.centeredStatistic theta i v :=
  rfl

/-- Covariance energy is a weighted sum of centered squares. -/
theorem covarianceForm_diagonal (theta u : E) :
    (F.covarianceForm theta).form u u =
      ∑ i : I,
        F.probability theta i *
          (F.centeredStatistic theta i u) ^ 2 := by
  classical
  apply Finset.sum_congr rfl
  intro i hi
  ring

/-- Covariance energy is nonnegative. -/
theorem covariance_nonnegative (theta u : E) :
    0 ≤ (F.covarianceForm theta).form u u :=
  (F.covarianceForm theta).nonnegative u

end FiniteLogAffineFamily

/-- Certificate that an analytic dispersion reconstruction is realized by a
finite log-affine positive family.

The three identities are kept explicit: a later theorem may discharge these
fields directly from differentiation of the finite log-partition sum. -/
structure FiniteLogAffineCovarianceRealization
    (F : FiniteLogAffineFamily I E)
    (D : AnalyticDispersionReconstruction E) where
  potential_eq_logPartition :
    ∀ theta, D.potential theta = F.logPartition theta
  gradient_eq_centroid :
    ∀ theta, D.gradient theta = F.centroid theta
  dispersion_eq_covariance :
    ∀ theta, D.dispersion theta = F.covarianceForm theta

namespace FiniteLogAffineCovarianceRealization

variable {F : FiniteLogAffineFamily I E}
variable {D : AnalyticDispersionReconstruction E}
variable (R : FiniteLogAffineCovarianceRealization F D)

/-- The analytic Phase-I potential is the finite log-partition function. -/
theorem potential_realized_as_logPartition (theta : E) :
    D.potential theta = F.logPartition theta :=
  R.potential_eq_logPartition theta

/-- The analytic gradient is the sufficient-statistic centroid. -/
theorem gradient_realized_as_centroid (theta : E) :
    D.gradient theta = F.centroid theta :=
  R.gradient_eq_centroid theta

/-- The atlas Phase-I positive geometry is exactly finite covariance. -/
theorem geometryAt_eq_covariance (theta : E) :
    D.geometryAt theta = F.covarianceForm theta := by
  exact R.dispersion_eq_covariance theta

/-- The analytic Hessian equals the finite covariance bilinear form. -/
theorem hessian_eq_covariance
    (theta u v : E) :
    D.hessian theta u v =
      (F.covarianceForm theta).form u v := by
  rw [D.hessian_apply_eq_dispersion, R.dispersion_eq_covariance theta]

/-- The diagonal Hessian is the finite variance of the directional statistic. -/
theorem hessian_diagonal_eq_variance
    (theta u : E) :
    D.hessian theta u u =
      ∑ i : I,
        F.probability theta i *
          (F.centeredStatistic theta i u) ^ 2 := by
  rw [R.hessian_eq_covariance, F.covarianceForm_diagonal]

/-- The covariance/Hessian diagonal is nonnegative. -/
theorem hessian_covariance_nonnegative
    (theta u : E) :
    0 ≤ D.hessian theta u u := by
  rw [R.hessian_eq_covariance]
  exact (F.covarianceForm theta).nonnegative u

/-- Visibility is strict positive variance of the directional statistic. -/
theorem visible_iff_positive_variance
    (theta u : E) :
    (D.geometryAt theta).Visible u ↔
      0 <
        ∑ i : I,
          F.probability theta i *
            (F.centeredStatistic theta i u) ^ 2 := by
  unfold PositiveForm.Visible
  rw [R.geometryAt_eq_covariance, F.covarianceForm_diagonal]

/-- Nullity is zero variance of the directional statistic. -/
theorem isNull_iff_zero_variance
    (theta u : E) :
    (D.geometryAt theta).IsNull u ↔
      (∑ i : I,
          F.probability theta i *
            (F.centeredStatistic theta i u) ^ 2) = 0 := by
  unfold PositiveForm.IsNull
  rw [R.geometryAt_eq_covariance, F.covarianceForm_diagonal]

end FiniteLogAffineCovarianceRealization

end FormalResearch.PositiveAtlas
```
