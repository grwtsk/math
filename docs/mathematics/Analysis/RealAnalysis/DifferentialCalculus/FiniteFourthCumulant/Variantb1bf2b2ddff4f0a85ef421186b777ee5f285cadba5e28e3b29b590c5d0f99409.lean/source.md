# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteFourthCumulant.Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9640606c4deca2edf568c65cb20b9a96bcc50dfe` · SHA-256 `b1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.FiniteThirdCumulant

/-!
# Fourth cumulant of a finite log-affine family

Order four is the first point where a cumulant is not simply a centered moment.

This module differentiates the finite third-cumulant field and proves

  D^4 log Z(u,v,w,z)
    = E[L~(u)L~(v)L~(w)L~(z)]
      - Cov(u,v) Cov(w,z)
      - Cov(u,w) Cov(v,z)
      - Cov(u,z) Cov(v,w).

The three covariance-pairing corrections are essential.  This module therefore
provides the correct boundary for a future recursive moment-cumulant hierarchy:
orders two and three happen to coincide with centered moments, whereas order
four already requires partition corrections.
-/

namespace FormalResearch.PositiveAtlas

universe u v

variable {I : Type u} [Fintype I] [Nonempty I]
variable {E : Type v} [NormedAddCommGroup E] [NormedSpace ℝ E]

namespace FiniteLogAffineFamily

variable (F : FiniteLogAffineFamily I E)

/-- Covariance symmetry at the continuous-operator level. -/
theorem covarianceOperator_symmetric
    (theta u v : E) :
    F.covarianceOperator theta u v =
      F.covarianceOperator theta v u := by
  rw [F.covarianceOperator_eq_covarianceForm,
    F.covarianceOperator_eq_covarianceForm]
  exact (F.covarianceForm theta).symmetric u v

/-- One scalar summand of the centered third moment. -/
noncomputable def thirdCumulantSummand
    (u v w : E) (i : I) (theta : E) : ℝ :=
  F.probability theta i *
    F.centeredStatistic theta i u *
    F.centeredStatistic theta i v *
    F.centeredStatistic theta i w

/-- Third cumulant in fixed directions, regarded as a scalar field of theta. -/
noncomputable def thirdCumulantScalar
    (u v w : E) (theta : E) : ℝ :=
  ∑ i : I, F.thirdCumulantSummand u v w i theta

@[simp]
theorem thirdCumulantScalar_eq_operator
    (theta u v w : E) :
    F.thirdCumulantScalar u v w theta =
      F.thirdCumulantOperator theta u v w := by
  rw [F.thirdCumulantOperator_apply]
  rfl

/-- Raw product-rule derivative of one centered third-moment summand. -/
noncomputable def rawFourthSummandDerivative
    (theta u v w : E) (i : I) : E →L[ℝ] ℝ :=
  (F.probability theta i *
      F.centeredStatistic theta i u *
      F.centeredStatistic theta i v) •
      F.centeredStatisticDerivative theta w +
    F.centeredStatistic theta i w •
      ((F.probability theta i *
          F.centeredStatistic theta i u) •
          F.centeredStatisticDerivative theta v +
        F.centeredStatistic theta i v •
          (F.probability theta i •
              F.centeredStatisticDerivative theta u +
            F.centeredStatistic theta i u •
              F.probabilityDerivative theta i))

/-- Product-rule derivative of one third-cumulant summand. -/
theorem hasFDerivAt_thirdCumulantSummand
    (theta u v w : E) (i : I) :
    HasFDerivAt
      (F.thirdCumulantSummand u v w i)
      (F.rawFourthSummandDerivative theta u v w i)
      theta := by
  have hp := F.hasFDerivAt_probability theta i
  have hu := F.hasFDerivAt_centeredStatistic_apply theta i u
  have hv := F.hasFDerivAt_centeredStatistic_apply theta i v
  have hw := F.hasFDerivAt_centeredStatistic_apply theta i w
  have h := ((hp.mul hu).mul hv).mul hw
  exact h

/-- Evaluation of one raw fourth-derivative summand. -/
theorem rawFourthSummandDerivative_apply
    (theta u v w z : E) (i : I) :
    F.rawFourthSummandDerivative theta u v w i z =
      F.probability theta i *
          F.centeredStatistic theta i u *
          F.centeredStatistic theta i v *
          F.centeredStatistic theta i w *
          F.centeredStatistic theta i z
        -
      F.covarianceOperator theta z w *
          (F.probability theta i *
            F.centeredStatistic theta i u *
            F.centeredStatistic theta i v)
        -
      F.covarianceOperator theta z v *
          (F.probability theta i *
            F.centeredStatistic theta i u *
            F.centeredStatistic theta i w)
        -
      F.covarianceOperator theta z u *
          (F.probability theta i *
            F.centeredStatistic theta i v *
            F.centeredStatistic theta i w) := by
  simp [rawFourthSummandDerivative, centeredStatisticDerivative,
    covarianceSlice, probabilityDerivative, smul_eq_mul]
  ring

/-- Raw derivative of the third-cumulant scalar field. -/
noncomputable def rawFourthDerivative
    (theta u v w : E) : E →L[ℝ] ℝ :=
  ∑ i : I, F.rawFourthSummandDerivative theta u v w i

/-- The third-cumulant scalar field differentiates term-by-term. -/
theorem hasFDerivAt_thirdCumulantScalar_raw
    (theta u v w : E) :
    HasFDerivAt
      (F.thirdCumulantScalar u v w)
      (F.rawFourthDerivative theta u v w)
      theta := by
  classical
  change
    HasFDerivAt
      (fun x : E =>
        ∑ i : I, F.thirdCumulantSummand u v w i x)
      (F.rawFourthDerivative theta u v w)
      theta
  simpa [rawFourthDerivative] using
    (HasFDerivAt.fun_sum (u := Finset.univ)
      (fun i _ =>
        F.hasFDerivAt_thirdCumulantSummand theta u v w i))

/-- Evaluation formula for the raw fourth derivative. -/
theorem rawFourthDerivative_apply
    (theta u v w z : E) :
    F.rawFourthDerivative theta u v w z =
      ∑ i : I,
        (F.probability theta i *
            F.centeredStatistic theta i u *
            F.centeredStatistic theta i v *
            F.centeredStatistic theta i w *
            F.centeredStatistic theta i z
          -
        F.covarianceOperator theta z w *
            (F.probability theta i *
              F.centeredStatistic theta i u *
              F.centeredStatistic theta i v)
          -
        F.covarianceOperator theta z v *
            (F.probability theta i *
              F.centeredStatistic theta i u *
              F.centeredStatistic theta i w)
          -
        F.covarianceOperator theta z u *
            (F.probability theta i *
              F.centeredStatistic theta i v *
              F.centeredStatistic theta i w)) := by
  classical
  simp [rawFourthDerivative, F.rawFourthSummandDerivative_apply]

/-- Continuous centered fourth-moment operator. -/
noncomputable def fourthCentralMomentOperator
    (theta : E) :
    E →L[ℝ] (E →L[ℝ] (E →L[ℝ] (E →L[ℝ] ℝ))) :=
  ∑ i : I,
    (F.probability theta i) •
      (F.centeredStatistic theta i).smulRight
        ((F.centeredStatistic theta i).smulRight
          ((F.centeredStatistic theta i).smulRight
            (F.centeredStatistic theta i)))

@[simp]
theorem fourthCentralMomentOperator_apply
    (theta u v w z : E) :
    F.fourthCentralMomentOperator theta u v w z =
      ∑ i : I,
        F.probability theta i *
          F.centeredStatistic theta i u *
          F.centeredStatistic theta i v *
          F.centeredStatistic theta i w *
          F.centeredStatistic theta i z := by
  classical
  simp [fourthCentralMomentOperator,
    ContinuousLinearMap.smulRight_apply, smul_eq_mul, mul_assoc]

/-- Fourth cumulant, curried in the final direction.

The three subtraction terms are the three pair partitions of four arguments. -/
noncomputable def fourthCumulantCovector
    (theta u v w : E) : E →L[ℝ] ℝ :=
  F.fourthCentralMomentOperator theta u v w
    -
  (F.covarianceOperator theta u v) • F.covarianceSlice theta w
    -
  (F.covarianceOperator theta u w) • F.covarianceSlice theta v
    -
  (F.covarianceOperator theta v w) • F.covarianceSlice theta u

@[simp]
theorem fourthCumulantCovector_apply
    (theta u v w z : E) :
    F.fourthCumulantCovector theta u v w z =
      (∑ i : I,
        F.probability theta i *
          F.centeredStatistic theta i u *
          F.centeredStatistic theta i v *
          F.centeredStatistic theta i w *
          F.centeredStatistic theta i z)
        -
      F.covarianceOperator theta u v *
        F.covarianceOperator theta z w
        -
      F.covarianceOperator theta u w *
        F.covarianceOperator theta z v
        -
      F.covarianceOperator theta v w *
        F.covarianceOperator theta z u := by
  simp [fourthCumulantCovector, covarianceSlice,
    F.fourthCentralMomentOperator_apply, smul_eq_mul]

/-- The weighted centered pair is the covariance. -/
theorem weighted_centered_pair_sum_eq_covariance
    (theta u v : E) :
    (∑ i : I,
      F.probability theta i *
        F.centeredStatistic theta i u *
        F.centeredStatistic theta i v) =
      F.covarianceOperator theta u v := by
  exact (F.covarianceOperator_apply theta u v).symm

/-- The raw fourth derivative is exactly the fourth cumulant covector. -/
theorem rawFourthDerivative_eq_fourthCumulantCovector
    (theta u v w : E) :
    F.rawFourthDerivative theta u v w =
      F.fourthCumulantCovector theta u v w := by
  apply ContinuousLinearMap.ext
  intro z
  rw [F.rawFourthDerivative_apply,
    F.fourthCumulantCovector_apply]
  calc
    (∑ i : I,
        (F.probability theta i *
            F.centeredStatistic theta i u *
            F.centeredStatistic theta i v *
            F.centeredStatistic theta i w *
            F.centeredStatistic theta i z
          -
        F.covarianceOperator theta z w *
            (F.probability theta i *
              F.centeredStatistic theta i u *
              F.centeredStatistic theta i v)
          -
        F.covarianceOperator theta z v *
            (F.probability theta i *
              F.centeredStatistic theta i u *
              F.centeredStatistic theta i w)
          -
        F.covarianceOperator theta z u *
            (F.probability theta i *
              F.centeredStatistic theta i v *
              F.centeredStatistic theta i w)))
        =
      (∑ i : I,
        F.probability theta i *
          F.centeredStatistic theta i u *
          F.centeredStatistic theta i v *
          F.centeredStatistic theta i w *
          F.centeredStatistic theta i z)
        -
      F.covarianceOperator theta z w *
        (∑ i : I,
          F.probability theta i *
            F.centeredStatistic theta i u *
            F.centeredStatistic theta i v)
        -
      F.covarianceOperator theta z v *
        (∑ i : I,
          F.probability theta i *
            F.centeredStatistic theta i u *
            F.centeredStatistic theta i w)
        -
      F.covarianceOperator theta z u *
        (∑ i : I,
          F.probability theta i *
            F.centeredStatistic theta i v *
            F.centeredStatistic theta i w) := by
        rw [Finset.sum_sub_distrib, Finset.sum_sub_distrib,
          Finset.sum_sub_distrib,
          ← Finset.mul_sum, ← Finset.mul_sum, ← Finset.mul_sum]
    _ =
      (∑ i : I,
        F.probability theta i *
          F.centeredStatistic theta i u *
          F.centeredStatistic theta i v *
          F.centeredStatistic theta i w *
          F.centeredStatistic theta i z)
        -
      F.covarianceOperator theta u v *
        F.covarianceOperator theta z w
        -
      F.covarianceOperator theta u w *
        F.covarianceOperator theta z v
        -
      F.covarianceOperator theta v w *
        F.covarianceOperator theta z u := by
        rw [F.weighted_centered_pair_sum_eq_covariance theta u v,
          F.weighted_centered_pair_sum_eq_covariance theta u w,
          F.weighted_centered_pair_sum_eq_covariance theta v w]
        ring

/-- Derivative of the third cumulant is the fourth cumulant. -/
theorem hasFDerivAt_thirdCumulantScalar
    (theta u v w : E) :
    HasFDerivAt
      (F.thirdCumulantScalar u v w)
      (F.fourthCumulantCovector theta u v w)
      theta := by
  rw [← F.rawFourthDerivative_eq_fourthCumulantCovector theta u v w]
  exact F.hasFDerivAt_thirdCumulantScalar_raw theta u v w

/-- Pointwise derivative of the third-cumulant field. -/
theorem fderiv_thirdCumulantScalar_eq_fourthCumulant
    (theta u v w : E) :
    fderiv ℝ (F.thirdCumulantScalar u v w) theta =
      F.fourthCumulantCovector theta u v w :=
  (F.hasFDerivAt_thirdCumulantScalar theta u v w).fderiv

/-- Explicit fourth cumulant formula: centered fourth moment minus the three
covariance pairings. -/
theorem fourthCumulant_eq_centeredFourth_sub_pairings
    (theta u v w z : E) :
    F.fourthCumulantCovector theta u v w z =
      F.fourthCentralMomentOperator theta u v w z
        -
      F.covarianceOperator theta u v *
        F.covarianceOperator theta w z
        -
      F.covarianceOperator theta u w *
        F.covarianceOperator theta v z
        -
      F.covarianceOperator theta u z *
        F.covarianceOperator theta v w := by
  rw [F.fourthCumulantCovector_apply,
    ← F.fourthCentralMomentOperator_apply,
    F.covarianceOperator_symmetric theta z w,
    F.covarianceOperator_symmetric theta z v,
    F.covarianceOperator_symmetric theta z u]
  ring

/-- Literal fourth iterated Fréchet derivative of the log-partition. -/
theorem fourth_fderiv_logPartition_eq_fourthCumulant
    (theta u v w z : E) :
    fderiv ℝ
        (fun x =>
          fderiv ℝ
            (fun y =>
              fderiv ℝ (fderiv ℝ F.logPartition) y u v)
            x w)
        theta z =
      F.fourthCumulantCovector theta u v w z := by
  have heq :
      (fun x =>
        fderiv ℝ
          (fun y =>
            fderiv ℝ (fderiv ℝ F.logPartition) y u v)
          x w) =
        F.thirdCumulantScalar u v w := by
    funext x
    rw [F.third_fderiv_logPartition_eq_thirdCumulant]
    exact (F.thirdCumulantScalar_eq_operator x u v w).symm
  rw [heq, F.fderiv_thirdCumulantScalar_eq_fourthCumulant]

end FiniteLogAffineFamily

end FormalResearch.PositiveAtlas
```
