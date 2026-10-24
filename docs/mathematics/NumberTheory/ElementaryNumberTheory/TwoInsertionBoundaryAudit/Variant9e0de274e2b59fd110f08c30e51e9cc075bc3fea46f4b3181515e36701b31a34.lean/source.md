# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.TwoInsertionBoundaryAudit.Variant9e0de274e2b59fd110f08c30e51e9cc075bc3fea46f4b3181515e36701b31a34

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5baf7f2512cbbc739d764c03e884e1ef9b34f8e` · SHA-256 `9e0de274e2b59fd110f08c30e51e9cc075bc3fea46f4b3181515e36701b31a34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeInsertion
import FormalResearch.RiemannHypothesis.SourceComparison.RoughClassReduction
import FormalResearch.RiemannHypothesis.SourceComparison.SourceSamplingDerivative

set_option autoImplicit false

namespace TwoInsertionBoundaryScratch

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimeInsertion PrimeRatioProduct CorrelationSecondMoment ThetaRemainder SourceSampling

noncomputable section

theorem rectangularContribution_const_mul (P : Finset ℕ) (g U V : ℕ)
    (c : ℝ) (E : ℕ → ℝ) :
    rectangularContribution P g U V (fun q ↦ c * E q) =
      c * rectangularContribution P g U V E := by
  unfold rectangularContribution
  rw [mul_sum]
  apply sum_congr rfl
  intro a _
  split_ifs <;> ring

theorem rectangular_rankOne_dilate_two (A : ℝ) (P : Finset ℕ) (g U V : ℕ) :
    rectangularContribution P g U V
      (fun q ↦ sourceRankOneCoefficient A / ((2 * q : ℕ) : ℝ)) =
        (1 / 2 : ℝ) * rectangularContribution P g U V
          (fun q ↦ sourceRankOneCoefficient A / (q : ℝ)) := by
  have h (q : ℕ) : sourceRankOneCoefficient A / ((2 * q : ℕ) : ℝ) =
      (1 / 2 : ℝ) * (sourceRankOneCoefficient A / (q : ℝ)) := by
    push_cast
    simp only [div_eq_mul_inv, mul_inv_rev]
    ring
  simp_rw [h]
  exact rectangularContribution_const_mul P g U V _ _

/-- The factor two cancels the dilation of the actual beta/q term, with its rectangle retained. -/
theorem rankOne_square_insert_two (A : ℝ) (P : Finset ℕ) (g T : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h2P : 2 ∉ P) :
    rectangularContribution (insert 2 P) g T T
      (fun q ↦ sourceRankOneCoefficient A / (q : ℝ)) =
        rectangularContribution P g T T
          (fun q ↦ sourceRankOneCoefficient A / (q : ℝ)) -
        (if Nat.Coprime g 2 then 1 else 0) *
          rectangularContribution P g (T / 2) T
            (fun q ↦ sourceRankOneCoefficient A / (q : ℝ)) := by
  rw [squareContribution_insert P 2 g T hP Nat.prime_two h2P,
    rectangular_rankOne_dilate_two]
  ring

/-- The finite missing half-rectangle is an explicit boundary sum, not zero. -/
theorem rectangular_difference_eq_boundary (P : Finset ℕ) (g T : ℕ) (E : ℕ → ℝ) :
    rectangularContribution P g T T E - rectangularContribution P g (T / 2) T E =
      ∑ a ∈ (supportedPairs P).filter (fun a ↦ T / 2 < a.1 ∧ a.1 ≤ T ∧ a.2 ≤ T),
        (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
          (if Nat.Coprime g (a.1 * a.2) then 1 else 0) * E ((a.1 * a.2) * g ^ 2) := by
  unfold rectangularContribution
  rw [← sum_sub_distrib, sum_filter]
  apply sum_congr rfl
  intro a _
  have hhalf : T / 2 ≤ T := Nat.div_le_self _ _
  split_ifs <;> simp_all <;> omega

/-- Odd common scales leave the actual rank-one boundary after inserting two. -/
theorem rankOne_square_insert_two_coprime (A : ℝ) (P : Finset ℕ) (g T : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h2P : 2 ∉ P) (hg : Nat.Coprime g 2) :
    rectangularContribution (insert 2 P) g T T
      (fun q ↦ sourceRankOneCoefficient A / (q : ℝ)) =
      ∑ a ∈ (supportedPairs P).filter (fun a ↦ T / 2 < a.1 ∧ a.1 ≤ T ∧ a.2 ≤ T),
        (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
          (if Nat.Coprime g (a.1 * a.2) then 1 else 0) *
            (sourceRankOneCoefficient A / (((a.1 * a.2) * g ^ 2 : ℕ) : ℝ)) := by
  rw [rankOne_square_insert_two A P g T hP h2P, if_pos hg, one_mul]
  exact rectangular_difference_eq_boundary P g T _

/-- Even common scales have no new signed placement and keep their entire old contribution. -/
theorem rankOne_square_insert_two_not_coprime (A : ℝ) (P : Finset ℕ) (g T : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h2P : 2 ∉ P) (hg : ¬Nat.Coprime g 2) :
    rectangularContribution (insert 2 P) g T T
      (fun q ↦ sourceRankOneCoefficient A / (q : ℝ)) =
        rectangularContribution P g T T
          (fun q ↦ sourceRankOneCoefficient A / (q : ℝ)) := by
  rw [rankOne_square_insert_two A P g T hP h2P, if_neg hg, zero_mul, sub_zero]

theorem rectangularContribution_sub (P : Finset ℕ) (g U V : ℕ) (E F : ℕ → ℝ) :
    rectangularContribution P g U V (fun q ↦ E q - F q) =
      rectangularContribution P g U V E - rectangularContribution P g U V F := by
  unfold rectangularContribution
  rw [← sum_sub_distrib]
  apply sum_congr rfl
  intro a _
  split_ifs <;> ring

theorem thetaRemainder_rectangle_eq (A : ℝ) (P : Finset ℕ) (g U V : ℕ) :
    rectangularContribution P g U V (thetaRemainder A) =
      rectangularContribution P g U V (ThetaKernelTransport.thetaKernel A) -
        rectangularContribution P g U V
          (fun q ↦ sourceRankOneCoefficient A / (q : ℝ)) :=
  rectangularContribution_sub P g U V _ _

/-- Actual remainder insertion keeps the complete oscillating kernel and the beta boundary. -/
theorem thetaRemainder_insert_two_coprime (A : ℝ) (P : Finset ℕ) (g T : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h2P : 2 ∉ P) (hg : Nat.Coprime g 2) :
    rectangularContribution (insert 2 P) g T T (thetaRemainder A) =
      rectangularContribution P g T T (ThetaKernelTransport.thetaKernel A) -
        2 * rectangularContribution P g (T / 2) T
          (fun q ↦ ThetaKernelTransport.thetaKernel A (2 * q)) -
      ∑ a ∈ (supportedPairs P).filter (fun a ↦ T / 2 < a.1 ∧ a.1 ≤ T ∧ a.2 ≤ T),
        (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
          (if Nat.Coprime g (a.1 * a.2) then 1 else 0) *
            (sourceRankOneCoefficient A / (((a.1 * a.2) * g ^ 2 : ℕ) : ℝ)) := by
  rw [thetaRemainder_rectangle_eq,
    rankOne_square_insert_two_coprime A P g T hP h2P hg,
    squareContribution_insert P 2 g T hP Nat.prime_two h2P,
    if_pos hg, mul_one]

theorem moebius_two_mul (d : ℕ) :
    (ArithmeticFunction.moebius (2 * d) : ℝ) =
      if Nat.Coprime d 2 then -(ArithmeticFunction.moebius d : ℝ) else 0 := by
  by_cases hd : Nat.Coprime d 2
  · rw [if_pos hd, ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hd.symm,
      ArithmeticFunction.moebius_apply_prime Nat.prime_two]
    push_cast
    ring
  · rw [if_neg hd, ArithmeticFunction.moebius_eq_zero_of_not_squarefree
      (fun h ↦ hd (Nat.coprime_of_squarefree_mul h).symm)]
    norm_num

private theorem two_dvd_of_not_coprime (d : ℕ) (hd : ¬Nat.Coprime d 2) : 2 ∣ d :=
  Nat.prime_two.dvd_iff_not_coprime.mpr (fun h ↦ hd h.symm)

theorem even_sum_reindex (N : ℕ) (F : ℕ → ℝ) :
    (∑ d ∈ (Icc 1 N).filter (fun d ↦ ¬Nat.Coprime d 2),
      (ArithmeticFunction.moebius d : ℝ) * F d) =
      ∑ k ∈ Icc 1 (N / 2), (ArithmeticFunction.moebius (2 * k) : ℝ) * F (2 * k) := by
  refine sum_bij' (fun d _ ↦ d / 2) (fun k _ ↦ 2 * k) ?_ ?_ ?_ ?_ ?_
  · intro d hd
    obtain ⟨hdI, hdc⟩ := mem_filter.mp hd
    have hi := mem_Icc.mp hdI
    have he := Nat.mul_div_cancel' (two_dvd_of_not_coprime d hdc)
    apply mem_Icc.mpr
    omega
  · intro k hk
    have hi := mem_Icc.mp hk
    refine mem_filter.mpr ⟨mem_Icc.mpr (by omega), ?_⟩
    intro h
    exact (Nat.prime_two.coprime_iff_not_dvd.mp h.symm) (dvd_mul_right 2 k)
  · intro d hd
    exact Nat.mul_div_cancel' (two_dvd_of_not_coprime d (mem_filter.mp hd).2)
  · intro k _
    omega
  · intro d hd
    rw [Nat.mul_div_cancel' (two_dvd_of_not_coprime d (mem_filter.mp hd).2)]

/-- The original signed linear family has two different finite odd cutoffs. -/
theorem moebius_sum_two_split (N : ℕ) (F : ℕ → ℝ) :
    (∑ d ∈ Icc 1 N, (ArithmeticFunction.moebius d : ℝ) * F d) =
      (∑ d ∈ (Icc 1 N).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * F d) -
      ∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * F (2 * d) := by
  have hs := sum_filter_add_sum_filter_not (Icc 1 N) (fun d ↦ Nat.Coprime d 2)
    (fun d ↦ (ArithmeticFunction.moebius d : ℝ) * F d)
  rw [even_sum_reindex] at hs
  have he : (∑ d ∈ Icc 1 (N / 2), (ArithmeticFunction.moebius (2 * d) : ℝ) * F (2 * d)) =
      -(∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * F (2 * d)) := by
    rw [sum_filter, ← sum_neg_distrib]
    apply sum_congr rfl
    intro d _
    rw [moebius_two_mul]
    split_ifs <;> ring
  rw [he] at hs
  exact hs.symm.trans (by ring)

/-- Specialization keeps the actual strict-cutoff source sampling kernel. -/
theorem sourceLinear_two_split (A : ℝ) (N : ℕ) :
    (∑ d ∈ Icc 1 N, (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) =
      (∑ d ∈ (Icc 1 N).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) -
      ∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A (2 * d : ℕ) :=
  moebius_sum_two_split N (fun d ↦ sourceSamplingKernel A d)

/-- The common odd interior contains a difference; the full upper odd band remains. -/
theorem sourceLinear_two_difference_boundary (A : ℝ) (N : ℕ) :
    (∑ d ∈ Icc 1 N, (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) =
      (∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) *
          (sourceSamplingKernel A d - sourceSamplingKernel A (2 * d : ℕ))) +
      ∑ d ∈ (Ioc (N / 2) N).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d := by
  have hfirst : ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)).filter
      (fun d ↦ d ≤ N / 2) = (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2) := by
    ext d
    simp only [mem_filter, mem_Icc]
    have hhalf := Nat.div_le_self N 2
    omega
  have hsecond : ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)).filter
      (fun d ↦ ¬d ≤ N / 2) = (Ioc (N / 2) N).filter (fun d ↦ Nat.Coprime d 2) := by
    ext d
    simp only [mem_filter, mem_Icc, mem_Ioc]
    omega
  have hs := sum_filter_add_sum_filter_not
    ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) (fun d ↦ d ≤ N / 2)
    (fun d ↦ (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d)
  rw [hfirst, hsecond] at hs
  rw [sourceLinear_two_split, ← hs]
  simp_rw [mul_sub]
  rw [sum_sub_distrib]
  ring

/-- The actual interior difference has a derivative budget, still of inverse square-root order. -/
theorem sourceSamplingKernel_two_difference_abs_le (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |sourceSamplingKernel A x - sourceSamplingKernel A (2 * x)| ≤
      (4 + 10 * Real.sqrt (65 / 3) / A + 4 * (65 / (3 * A ^ 2))) / Real.sqrt x := by
  let D : ℝ := 4 + 10 * Real.sqrt (65 / 3) / A + 4 * (65 / (3 * A ^ 2))
  have hD : 0 ≤ D := by dsimp [D]; positivity
  have hdiff : ∀ y ∈ Set.Icc x (2 * x), DifferentiableAt ℝ (sourceSamplingKernel A) y := by
    intro y hy
    exact (SourceSamplingDerivative.sourceSamplingKernel_hasDerivAt A y hA
      (hx.trans_le hy.1)).differentiableAt
  have hbound : ∀ y ∈ Set.Icc x (2 * x),
      ‖deriv (sourceSamplingKernel A) y‖ ≤ D / (x * Real.sqrt x) := by
    intro y hy
    rw [Real.norm_eq_abs]
    have hs := SourceSamplingDerivative.sourceSamplingKernel_derivative_abs_le
      A y hA (hx.trans_le hy.1)
    change |deriv (sourceSamplingKernel A) y| ≤ D / (y * Real.sqrt y) at hs
    exact hs.trans (div_le_div_of_nonneg_left hD
      (mul_pos hx (Real.sqrt_pos.mpr hx))
      (mul_le_mul hy.1 (Real.sqrt_le_sqrt hy.1) (Real.sqrt_nonneg x)
        (hx.trans_le hy.1).le))
  have hv := Convex.norm_image_sub_le_of_norm_deriv_le hdiff hbound (convex_Icc x (2 * x))
    (show x ∈ Set.Icc x (2 * x) by constructor <;> linarith)
    (show 2 * x ∈ Set.Icc x (2 * x) by constructor <;> linarith)
  rw [Real.norm_eq_abs, Real.norm_eq_abs, show 2 * x - x = x by ring, abs_of_pos hx] at hv
  calc
    _ = |sourceSamplingKernel A (2 * x) - sourceSamplingKernel A x| := abs_sub_comm _ _
    _ ≤ D / (x * Real.sqrt x) * x := hv
    _ = _ := by
      change D / (x * Real.sqrt x) * x = D / Real.sqrt x
      field_simp

/-- The rank-one Möbius sum also retains the odd upper and half-size cutoffs. -/
theorem reciprocal_moebius_two_split (N : ℕ) :
    (∑ d ∈ Icc 1 N, (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) =
      (∑ d ∈ (Icc 1 N).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) -
      (1 / 2 : ℝ) * ∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ) := by
  have hs := moebius_sum_two_split N (fun d ↦ 1 / (d : ℝ))
  simp only [mul_one_div] at hs
  rw [hs, mul_sum]
  congr 1
  apply sum_congr rfl
  intro d _
  push_cast
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- An exact Q identity: neither the two linear pieces nor the complete rough error is removed. -/
theorem sourceQuadraticValue_two_split (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      archimedeanValue Realization.explicitSecondDerivative A -
      4 * ((∑ d ∈ (Icc 1 ⌊Real.exp A⌋₊).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) -
        ∑ d ∈ (Icc 1 (⌊Real.exp A⌋₊ / 2)).filter (fun d ↦ Nat.Coprime d 2),
          (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A (2 * d : ℕ)) +
      2 * sourceRankOneCoefficient A *
        ((∑ d ∈ (Icc 1 ⌊Real.exp A⌋₊).filter (fun d ↦ Nat.Coprime d 2),
          (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) -
          (1 / 2 : ℝ) * ∑ d ∈ (Icc 1 (⌊Real.exp A⌋₊ / 2)).filter
            (fun d ↦ Nat.Coprime d 2), (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) ^ 2 +
      2 * RoughClassReduction.roughClassMean A P +
      2 * PrimeSupportedBlock.primeSupportedBlock A P +
      2 * (PrimeBlockReduction.roughRatioRemainder A P -
        RoughClassReduction.roughClassMean A P) := by
  rw [RoughClassReduction.sourceQuadraticValue_eq_mean_add_error A P hA]
  unfold RoughClassReduction.meanArithmetic
  rw [sourceLinear_two_split, reciprocal_moebius_two_split]

/-- The unchanged Q contains both the explicit linear boundary and the complete signed mean error. -/
theorem sourceQuadraticValue_two_boundary (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      archimedeanValue Realization.explicitSecondDerivative A -
      4 * ((∑ d ∈ (Icc 1 (⌊Real.exp A⌋₊ / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) *
          (sourceSamplingKernel A d - sourceSamplingKernel A (2 * d : ℕ))) +
        ∑ d ∈ (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊).filter (fun d ↦ Nat.Coprime d 2),
          (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) +
      2 * sourceRankOneCoefficient A *
        (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) ^ 2 +
      2 * RoughClassReduction.roughClassMean A P +
      2 * PrimeSupportedBlock.primeSupportedBlock A P +
      2 * (PrimeBlockReduction.roughRatioRemainder A P -
        RoughClassReduction.roughClassMean A P) := by
  rw [RoughClassReduction.sourceQuadraticValue_eq_mean_add_error A P hA]
  unfold RoughClassReduction.meanArithmetic
  rw [sourceLinear_two_difference_boundary]

end
end TwoInsertionBoundaryScratch

#print axioms TwoInsertionBoundaryScratch.rectangularContribution_const_mul
#print axioms TwoInsertionBoundaryScratch.rectangular_rankOne_dilate_two
#print axioms TwoInsertionBoundaryScratch.rankOne_square_insert_two
#print axioms TwoInsertionBoundaryScratch.rectangular_difference_eq_boundary
#print axioms TwoInsertionBoundaryScratch.rankOne_square_insert_two_coprime
#print axioms TwoInsertionBoundaryScratch.rankOne_square_insert_two_not_coprime
#print axioms TwoInsertionBoundaryScratch.rectangularContribution_sub
#print axioms TwoInsertionBoundaryScratch.thetaRemainder_rectangle_eq
#print axioms TwoInsertionBoundaryScratch.thetaRemainder_insert_two_coprime
#print axioms TwoInsertionBoundaryScratch.moebius_two_mul
#print axioms TwoInsertionBoundaryScratch.even_sum_reindex
#print axioms TwoInsertionBoundaryScratch.moebius_sum_two_split
#print axioms TwoInsertionBoundaryScratch.sourceLinear_two_split
#print axioms TwoInsertionBoundaryScratch.sourceLinear_two_difference_boundary
#print axioms TwoInsertionBoundaryScratch.sourceSamplingKernel_two_difference_abs_le
#print axioms TwoInsertionBoundaryScratch.reciprocal_moebius_two_split
#print axioms TwoInsertionBoundaryScratch.sourceQuadraticValue_two_split
#print axioms TwoInsertionBoundaryScratch.sourceQuadraticValue_two_boundary
```
