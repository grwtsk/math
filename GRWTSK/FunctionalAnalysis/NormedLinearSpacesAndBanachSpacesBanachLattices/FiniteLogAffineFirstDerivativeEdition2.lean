import FormalResearch.PositiveAtlas.FiniteLogAffineCovariance
import Mathlib.Analysis.Analytic.Constructions
import Mathlib.Analysis.Analytic.Linear
import Mathlib.Analysis.Calculus.FDeriv.Add
import Mathlib.Analysis.Calculus.FDeriv.Analytic
import Mathlib.Analysis.Calculus.FDeriv.Linear
import Mathlib.Analysis.Calculus.FDeriv.Mul
import Mathlib.Analysis.SpecialFunctions.Complex.Analytic
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.SpecialFunctions.Log.Deriv

/-!
# First derivative of the finite log-affine potential

This module discharges the first analytic obligations of the finite
log-affine Phase-I model.

It proves that each unnormalized weight and the partition function are analytic,
computes the Frechet derivative of the partition function, proves the
log-partition is analytic, and establishes the exact first-derivative identity

  D log Z = centroid.

Consequently the centroid field is analytic as the Frechet derivative of the
analytic log-partition potential.

The second derivative / covariance identity is intentionally left to the next
layer so that the quotient differentiation and continuous rank-one operator
algebra are built on this compiled first-moment API.
-/

namespace FormalResearch.PositiveAtlas

universe u v

variable {I : Type u} [Fintype I] [Nonempty I]
variable {E : Type v} [NormedAddCommGroup E] [NormedSpace ℝ E]

namespace FiniteLogAffineFamily

variable (F : FiniteLogAffineFamily I E)

/-- Frechet derivative of one unnormalized log-affine weight. -/
def weightDerivative (theta : E) (i : I) : E →L[ℝ] ℝ :=
  (F.unnormalizedWeight theta i) • F.statistic i

@[simp]
theorem weightDerivative_apply
    (theta : E) (i : I) (u : E) :
    F.weightDerivative theta i u =
      F.unnormalizedWeight theta i * F.statistic i u := by
  simp [weightDerivative, smul_eq_mul]

/-- Each unnormalized log-affine weight is analytic. -/
theorem analyticAt_unnormalizedWeight
    (theta : E) (i : I) :
    AnalyticAt ℝ (fun x => F.unnormalizedWeight x i) theta := by
  have hexp :
      AnalyticAt ℝ (fun x : E => Real.exp (F.statistic i x)) theta :=
    analyticAt_rexp.comp ((F.statistic i).analyticAt theta)
  simpa [unnormalizedWeight, Pi.smul_apply, smul_eq_mul] using
    (hexp.const_smul (c := F.baseWeight i))

/-- Exact Frechet derivative of one unnormalized weight. -/
theorem hasFDerivAt_unnormalizedWeight
    (theta : E) (i : I) :
    HasFDerivAt
      (fun x => F.unnormalizedWeight x i)
      (F.weightDerivative theta i)
      theta := by
  have h :=
    ((F.statistic i).hasFDerivAt.exp).const_mul (F.baseWeight i)
  simpa [unnormalizedWeight, weightDerivative, smul_smul] using h

/-- Frechet derivative of the finite partition function. -/
def partitionDerivative (theta : E) : E →L[ℝ] ℝ :=
  ∑ i : I, F.weightDerivative theta i

@[simp]
theorem partitionDerivative_apply
    (theta u : E) :
    F.partitionDerivative theta u =
      ∑ i : I,
        F.unnormalizedWeight theta i * F.statistic i u := by
  classical
  simp [partitionDerivative, weightDerivative, smul_eq_mul]

/-- The partition function is analytic. -/
theorem analyticAt_partition (theta : E) :
    AnalyticAt ℝ F.partition theta := by
  classical
  change
    AnalyticAt ℝ
      (fun x : E => ∑ i : I, F.unnormalizedWeight x i) theta
  exact Finset.univ.analyticAt_fun_sum
    (fun i _ => F.analyticAt_unnormalizedWeight theta i)

/-- Exact Frechet derivative of the partition function. -/
theorem hasFDerivAt_partition (theta : E) :
    HasFDerivAt F.partition (F.partitionDerivative theta) theta := by
  classical
  change
    HasFDerivAt
      (fun x : E => ∑ i : I, F.unnormalizedWeight x i)
      (F.partitionDerivative theta)
      theta
  simpa [partitionDerivative] using
    (HasFDerivAt.fun_sum (u := Finset.univ)
      (fun i _ => F.hasFDerivAt_unnormalizedWeight theta i))

/-- The unnormalized weight is the partition times its normalized probability. -/
theorem partition_mul_probability
    (theta : E) (i : I) :
    F.partition theta * F.probability theta i =
      F.unnormalizedWeight theta i := by
  rw [probability]
  field_simp [ne_of_gt (F.partition_pos theta)]

/-- The partition derivative is the partition scalar times the centroid. -/
theorem partitionDerivative_eq_partition_smul_centroid
    (theta : E) :
    F.partitionDerivative theta =
      F.partition theta • F.centroid theta := by
  classical
  rw [partitionDerivative, centroid, Finset.smul_sum]
  apply Finset.sum_congr rfl
  intro i hi
  rw [weightDerivative, smul_smul,
    F.partition_mul_probability theta i]

/-- Dividing the partition derivative by the partition recovers the centroid. -/
theorem inv_smul_partitionDerivative_eq_centroid
    (theta : E) :
    (F.partition theta)⁻¹ • F.partitionDerivative theta =
      F.centroid theta := by
  rw [F.partitionDerivative_eq_partition_smul_centroid]
  rw [smul_smul]
  rw [inv_mul_cancel₀ (ne_of_gt (F.partition_pos theta))]
  simp

/-- The finite log-partition potential is analytic. -/
theorem analyticAt_logPartition (theta : E) :
    AnalyticAt ℝ F.logPartition theta := by
  simpa [logPartition] using
    (F.analyticAt_partition theta).log (F.partition_pos theta)

/-- Exact first derivative of the finite log-partition:
the gradient is the sufficient-statistic centroid. -/
theorem hasFDerivAt_logPartition
    (theta : E) :
    HasFDerivAt F.logPartition (F.centroid theta) theta := by
  have h :=
    (F.hasFDerivAt_partition theta).log
      (ne_of_gt (F.partition_pos theta))
  convert h using 1
  · rfl
  · exact F.inv_smul_partitionDerivative_eq_centroid theta

/-- Pointwise formula for the Frechet derivative of the log-partition. -/
theorem fderiv_logPartition_eq_centroid
    (theta : E) :
    fderiv ℝ F.logPartition theta = F.centroid theta :=
  (F.hasFDerivAt_logPartition theta).fderiv

/-- The centroid field is analytic because it is the Frechet derivative of the
analytic log-partition potential. -/
theorem analyticAt_centroid
    (theta : E) :
    AnalyticAt ℝ F.centroid theta := by
  have h :
      AnalyticAt ℝ (fderiv ℝ F.logPartition) theta :=
    (F.analyticAt_logPartition theta).fderiv
  have heq :
      fderiv ℝ F.logPartition = F.centroid := by
    funext x
    exact F.fderiv_logPartition_eq_centroid x
  simpa [heq] using h

/-- The first finite log-affine reconstruction identity in evaluation form. -/
theorem directional_derivative_logPartition
    (theta u : E) :
    fderiv ℝ F.logPartition theta u =
      ∑ i : I,
        F.probability theta i * F.statistic i u := by
  rw [F.fderiv_logPartition_eq_centroid, F.centroid_apply]

end FiniteLogAffineFamily

end FormalResearch.PositiveAtlas
