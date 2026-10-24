import FormalResearch.RiemannHypothesis.SourceComparison.PrimeBlockReduction
import FormalResearch.RiemannHypothesis.SourceComparison.DiagonalRemainderBudget

open MeasureTheory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison

-- Every new finite gcd-transport interface retains the original ordered square.
section GcdClassStatements
open Finset GcdClassTransport

example (N : ℕ) : coprimePairs N =
    ((Icc 1 N) ×ˢ (Icc 1 N)).filter (fun p ↦ Nat.Coprime p.1 p.2) := rfl

example (N : ℕ) : gcdClasses N =
    (coprimePairs N).sigma (fun p ↦ Icc 1 (N / max p.1 p.2)) := rfl

example (p : ℕ × ℕ) : splitPair p =
    ⟨(p.1 / Nat.gcd p.1 p.2, p.2 / Nat.gcd p.1 p.2), Nat.gcd p.1 p.2⟩ := rfl

example (s : Σ _ : ℕ × ℕ, ℕ) : joinClass s = (s.2 * s.1.1, s.2 * s.1.2) := rfl

example (N : ℕ) (p : ℕ × ℕ) (hp : p ∈ (Icc 1 N) ×ˢ (Icc 1 N)) :
    splitPair p ∈ gcdClasses N := GcdClassTransport.splitPair_mem N p hp

example (N : ℕ) (s : Σ _ : ℕ × ℕ, ℕ) (hs : s ∈ gcdClasses N) :
    joinClass s ∈ (Icc 1 N) ×ˢ (Icc 1 N) := GcdClassTransport.joinClass_mem N s hs

example (p : ℕ × ℕ) : joinClass (splitPair p) = p :=
  GcdClassTransport.joinClass_splitPair p

example (N : ℕ) (s : Σ _ : ℕ × ℕ, ℕ) (hs : s ∈ gcdClasses N) :
    splitPair (joinClass s) = s := GcdClassTransport.splitPair_joinClass N s hs

example (N : ℕ) (H : ℕ → ℕ → ℝ) :
    (∑ d ∈ Icc 1 N, ∑ e ∈ Icc 1 N, H d e) =
      ∑ p ∈ coprimePairs N, ∑ g ∈ Icc 1 (N / max p.1 p.2),
        H (g * p.1) (g * p.2) := GcdClassTransport.sum_eq_coprime_classes N H

example (N : ℕ) (E : ℕ → ℝ) :
    (∑ d ∈ Icc 1 N, ∑ e ∈ Icc 1 N,
      (ArithmeticFunction.moebius d : ℝ) * (ArithmeticFunction.moebius e : ℝ) * E (d * e)) =
      ∑ p ∈ coprimePairs N, (ArithmeticFunction.moebius (p.1 * p.2) : ℝ) *
        ∑ g ∈ Icc 1 (N / max p.1 p.2), (ArithmeticFunction.moebius g : ℝ) ^ 2 *
          (if Nat.Coprime g (p.1 * p.2) then 1 else 0) * E ((p.1 * p.2) * g ^ 2) :=
  GcdClassTransport.moebius_weighted_sum_eq_coprime_classes N E
end GcdClassStatements

-- The original selected block is defined before reindexing or zero-coefficient removal.
section PrimeSupportedBlockStatements
open Finset GcdClassTransport PrimeSupportedBlock

example (P : Finset ℕ) (i j : ℕ) : quotientSupported P i j ↔
    (i / Nat.gcd i j).primeFactors ⊆ P ∧ (j / Nat.gcd i j).primeFactors ⊆ P := Iff.rfl

example (A : ℝ) (u v : ℕ) : ratioClassContribution A u v =
    (ArithmeticFunction.moebius (u * v) : ℝ) *
      ∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max u v), (ArithmeticFunction.moebius g : ℝ) ^ 2 *
        (if Nat.Coprime g (u * v) then 1 else 0) *
          (ThetaKernelTransport.thetaKernel A ((u * v) * g ^ 2) -
            CorrelationSecondMoment.sourceRankOneCoefficient A / (((u * v) * g ^ 2 : ℕ) : ℝ)) := rfl

example (A : ℝ) (P : Finset ℕ) : primeSupportedBlock A P =
    ∑ p ∈ ((Icc 1 ⌊Real.exp A⌋₊) ×ˢ (Icc 1 ⌊Real.exp A⌋₊)).filter
      (fun p ↦ (p.1 / Nat.gcd p.1 p.2).primeFactors ⊆ P ∧
        (p.2 / Nat.gcd p.1 p.2).primeFactors ⊆ P),
      (ArithmeticFunction.moebius p.1 : ℝ) * (ArithmeticFunction.moebius p.2 : ℝ) *
        ThetaRemainder.thetaRemainder A (p.1 * p.2) := by
  classical
  unfold primeSupportedBlock quotientSupported
  apply sum_congr
  · exact filter_congr_decidable _ _ _
  · intro p _
    rfl

example (A : ℝ) (u v : ℕ) (huv : Nat.Coprime u v) :
    ratioClassContribution A u v =
      ∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max u v),
        (ArithmeticFunction.moebius (g * u) : ℝ) * (ArithmeticFunction.moebius (g * v) : ℝ) *
          ThetaRemainder.thetaRemainder A ((g * u) * (g * v)) :=
  PrimeSupportedBlock.ratioClassContribution_eq_original_sum A u v huv

example (A : ℝ) (P : Finset ℕ) : primeSupportedBlock A P =
    ∑ p ∈ (coprimePairs ⌊Real.exp A⌋₊).filter
      (fun p ↦ p.1.primeFactors ⊆ P ∧ p.2.primeFactors ⊆ P),
      ratioClassContribution A p.1 p.2 :=
  PrimeSupportedBlock.primeSupportedBlock_eq_bounded_classes A P

example (A : ℝ) (u v : ℕ) (h : ¬Squarefree (u * v)) :
    ratioClassContribution A u v = 0 :=
  PrimeSupportedBlock.ratioClassContribution_eq_zero_of_not_squarefree A u v h

example (A : ℝ) (u v : ℕ) (h : ⌊Real.exp A⌋₊ < max u v) :
    ratioClassContribution A u v = 0 :=
  PrimeSupportedBlock.ratioClassContribution_eq_zero_of_max_lt A u v h

example (A : ℝ) (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) :
    primeSupportedBlock A P =
      ∑ p ∈ PrimeRatioProduct.supportedPairs P,
        (ArithmeticFunction.moebius (p.1 * p.2) : ℝ) *
          ∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max p.1 p.2),
            (ArithmeticFunction.moebius g : ℝ) ^ 2 *
              (if Nat.Coprime g (p.1 * p.2) then 1 else 0) *
                ThetaRemainder.thetaRemainder A ((p.1 * p.2) * g ^ 2) :=
  PrimeSupportedBlock.primeSupportedBlock_eq_supportedPairs A P hP
end PrimeSupportedBlockStatements

-- Ordered disjoint prime assignments include the empty subsets and have no repetitions.
section PrimeRatioProductStatements
open Finset PrimeRatioProduct

example (P : Finset ℕ) (w : ℕ → ℝ) :
    (∑ U ∈ P.powerset, ∑ V ∈ (P \ U).powerset,
      (∏ p ∈ U, w p) * (∏ p ∈ V, w p)) = ∏ p ∈ P, (1 + 2 * w p) :=
  PrimeRatioProduct.ordered_disjoint_assignment_product P w

example (S : Finset ℕ) :
    1 / Real.sqrt ((∏ p ∈ S, p : ℕ) : ℝ) = ∏ p ∈ S, (1 / Real.sqrt (p : ℝ)) :=
  PrimeRatioProduct.reciprocal_sqrt_product S

example (S T : Finset ℕ) :
    1 / Real.sqrt (((∏ p ∈ S, p) * (∏ p ∈ T, p) : ℕ) : ℝ) =
      (∏ p ∈ S, (1 / Real.sqrt (p : ℝ))) * (∏ p ∈ T, (1 / Real.sqrt (p : ℝ))) :=
  PrimeRatioProduct.reciprocal_sqrt_products S T

example (S : Finset ℕ) (hS : ∀ p ∈ S, Nat.Prime p) :
    Squarefree (∏ p ∈ S, p) := PrimeRatioProduct.prime_product_squarefree S hS

example (P : Finset ℕ) : assignments P =
    P.powerset.sigma (fun U ↦ (P \ U).powerset) := rfl

example (s : Σ _ : Finset ℕ, Finset ℕ) : joinAssignment s =
    (∏ p ∈ s.1, p, ∏ p ∈ s.2, p) := rfl

example (P : Finset ℕ) : supportedPairs P =
    (assignments P).image joinAssignment := rfl

example (P : Finset ℕ) (s : Σ _ : Finset ℕ, Finset ℕ) (hs : s ∈ assignments P) :
    s.1 ⊆ P ∧ s.2 ⊆ P ∧ Disjoint s.1 s.2 := PrimeRatioProduct.assignment_subsets P s hs

example (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (s : Σ _ : Finset ℕ, Finset ℕ) (hs : s ∈ assignments P) :
    (joinAssignment s).1.primeFactors = s.1 ∧ (joinAssignment s).2.primeFactors = s.2 :=
  PrimeRatioProduct.assignment_primeFactors P hP s hs

example (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) :
    Set.InjOn joinAssignment (assignments P) := PrimeRatioProduct.joinAssignment_injOn P hP

example (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) (d e : ℕ) :
    (d, e) ∈ supportedPairs P ↔
      Squarefree d ∧ Squarefree e ∧ Nat.Coprime d e ∧
        d.primeFactors ⊆ P ∧ e.primeFactors ⊆ P :=
  PrimeRatioProduct.mem_supportedPairs_iff P hP d e

example (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) :
    (∑ p ∈ supportedPairs P, 1 / Real.sqrt ((p.1 * p.2 : ℕ) : ℝ)) =
      ∏ p ∈ P, (1 + 2 / Real.sqrt (p : ℝ)) :=
  PrimeRatioProduct.supportedPairs_weight_sum P hP

example (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) :
    (∑ p ∈ supportedPairs P,
      |(ArithmeticFunction.moebius p.1 : ℝ) * (ArithmeticFunction.moebius p.2 : ℝ)| /
        Real.sqrt ((p.1 * p.2 : ℕ) : ℝ)) =
      ∏ p ∈ P, (1 + 2 / Real.sqrt (p : ℝ)) :=
  PrimeRatioProduct.supportedPairs_moebius_weight_sum P hP

example (g u v : ℕ) (huv : Nat.Coprime u v) (hsq : ¬Squarefree (u * v)) :
    (ArithmeticFunction.moebius (g * u) : ℝ) * (ArithmeticFunction.moebius (g * v) : ℝ) = 0 :=
  PrimeRatioProduct.squareful_ratio_coefficient_zero g u v huv hsq
end PrimeRatioProductStatements

-- The common-scale sum is complete; the bound is uniform over all positive ratios.
section RatioClassBudgetStatements
open Finset PrimeSupportedBlock PrimeRatioProduct

example (A : ℝ) (hA : 1 ≤ A) :
    (∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, 1 / (g : ℝ)) ≤ 1 + A :=
  RatioClassBudget.source_harmonic_sum_le A hA

example (A : ℝ) (u v : ℕ) (hA : 1 ≤ A) (hu : 1 ≤ u) (hv : 1 ≤ v) :
    |(ArithmeticFunction.moebius (u * v) : ℝ) *
      ∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max u v), (ArithmeticFunction.moebius g : ℝ) ^ 2 *
        (if Nat.Coprime g (u * v) then 1 else 0) *
          ThetaRemainder.thetaRemainder A ((u * v) * g ^ 2)| ≤
      (24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2))) *
        (1 + A) / Real.sqrt ((u * v : ℕ) : ℝ) :=
  RatioClassBudget.ratioClass_abs_le A u v hA hu hv

example (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) (hP : ∀ p ∈ P, Nat.Prime p) :
    |∑ p ∈ supportedPairs P, ratioClassContribution A p.1 p.2| ≤
      (24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2))) *
        (1 + A) * ∏ p ∈ P, (1 + 2 / Real.sqrt (p : ℝ)) :=
  RatioClassBudget.supported_ratio_sum_abs_le A P hA hP

example (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) (hP : ∀ p ∈ P, Nat.Prime p) :
    |primeSupportedBlock A P| ≤
      (24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2))) *
        (1 + A) * ∏ p ∈ P, (1 + 2 / Real.sqrt (p : ℝ)) :=
  RatioClassBudget.primeSupportedBlock_abs_le A P hA hP
end RatioClassBudgetStatements

-- The diagonal budget does not assert a bound for the off-diagonal complement.
section DiagonalRemainderStatements
open Finset

example (g : ℕ) : (ArithmeticFunction.moebius g : ℝ) ^ 2 ≤ 1 :=
  DiagonalRemainderBudget.moebius_square_le_one g

example (A : ℝ) (hA : 1 ≤ A) :
    (∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, (g : ℝ)⁻¹) ≤ 1 + A :=
  DiagonalRemainderBudget.source_harmonic_sum_le A hA

example (A : ℝ) (hA : 1 ≤ A) :
    |∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
      ThetaRemainder.thetaRemainder A (g ^ 2)| ≤
      (24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2))) * (1 + A) :=
  DiagonalRemainderBudget.diagonal_remainder_abs_le A hA
end DiagonalRemainderStatements

-- The prime cutoff grows as (log A)^2 and retains the exact factor 1+2/sqrt(p).
section PrimeProductGrowthStatements
open Finset PrimeProductGrowth

example (P : Finset ℕ) (y : ℝ) (hy : 0 ≤ y)
    (hP : ∀ p ∈ P, 1 ≤ p ∧ (p : ℝ) ≤ y) :
    (∑ p ∈ P, 1 / Real.sqrt (p : ℝ)) ≤ 2 * Real.sqrt y :=
  PrimeProductGrowth.reciprocal_sqrt_finite_sum_le P y hy hP

example (P : Finset ℕ) (y : ℝ) (hy : 0 ≤ y)
    (hP : ∀ p ∈ P, 1 ≤ p ∧ (p : ℝ) ≤ y) :
    (∏ p ∈ P, (1 + 2 / Real.sqrt (p : ℝ))) ≤ Real.exp (4 * Real.sqrt y) :=
  PrimeProductGrowth.finite_product_le_exp_sqrt P y hy hP

example (A : ℝ) : smallRatioPrimes A =
    (Icc 1 ⌊(Real.log A) ^ 2⌋₊).filter Nat.Prime := rfl

example (A : ℝ) (p : ℕ) : p ∈ smallRatioPrimes A ↔
    Nat.Prime p ∧ (p : ℝ) ≤ (Real.log A) ^ 2 :=
  PrimeProductGrowth.mem_smallRatioPrimes_iff A p

example (A : ℝ) (p : ℕ) (hp : p ∈ smallRatioPrimes A) : Nat.Prime p :=
  PrimeProductGrowth.smallRatioPrimes_prime A p hp

example (A : ℝ) (hA : 1 ≤ A) :
    (∏ p ∈ (Icc 1 ⌊(Real.log A) ^ 2⌋₊).filter Nat.Prime,
      (1 + 2 / Real.sqrt (p : ℝ))) ≤ A ^ 4 :=
  PrimeProductGrowth.smallRatioPrimes_product_le A hA

example (A : ℝ) (hA : 1 ≤ A) :
    24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2)) ≤
      24 + 28 * Real.sqrt (65 / 3) + 520 / 3 :=
  PrimeProductGrowth.kernelBound_uniform_le A hA
end PrimeProductGrowthStatements

-- The complement remains on the original square, with every other source term retained.
section PrimeBlockReductionStatements
open Finset PrimeSupportedBlock PrimeBlockReduction

example (A : ℝ) (P : Finset ℕ) : roughRatioRemainder A P =
    ∑ p ∈ ((Icc 1 ⌊Real.exp A⌋₊) ×ˢ (Icc 1 ⌊Real.exp A⌋₊)).filter
      (fun p ↦ ¬((p.1 / Nat.gcd p.1 p.2).primeFactors ⊆ P ∧
        (p.2 / Nat.gcd p.1 p.2).primeFactors ⊆ P)),
      (ArithmeticFunction.moebius p.1 : ℝ) * (ArithmeticFunction.moebius p.2 : ℝ) *
        ThetaRemainder.thetaRemainder A (p.1 * p.2) := by
  classical
  simp only [roughRatioRemainder, quotientSupported]
  apply sum_congr
  · ext p
    simp
  · intro p _
    rfl

example (A : ℝ) (P : Finset ℕ) : retainedArithmetic A P =
    archimedeanValue Realization.explicitSecondDerivative A -
      4 * (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius d : ℝ) * SourceSampling.sourceSamplingKernel A d) +
      2 * (∫ x : ℝ, x * Real.exp (x / 2) *
        normalizedTest Realization.explicitSecondDerivative A x) ^ 2 *
        (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) ^ 2 +
      2 * roughRatioRemainder A P := rfl

example (A : ℝ) (P : Finset ℕ) :
    (∑ i ∈ Icc 1 ⌊Real.exp A⌋₊, ∑ j ∈ Icc 1 ⌊Real.exp A⌋₊,
      (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) *
        ThetaRemainder.thetaRemainder A (i * j)) =
      primeSupportedBlock A P + roughRatioRemainder A P :=
  PrimeBlockReduction.remainder_eq_block_add_rough A P

example (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      retainedArithmetic A P + 2 * primeSupportedBlock A P :=
  PrimeBlockReduction.sourceQuadraticValue_eq_retained_add_block A P hA

example (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) :
    |max (-sourceQuadraticValue Realization.explicitSecondDerivative A) 0 -
      max (-retainedArithmetic A P) 0| ≤ 2 * |primeSupportedBlock A P| :=
  PrimeBlockReduction.negativePart_difference_le_block A P hA

example (A : ℝ) (hA : 1 ≤ A) :
    |primeSupportedBlock A ((Icc 1 ⌊(Real.log A) ^ 2⌋₊).filter Nat.Prime)| ≤
      2 * (24 + 28 * Real.sqrt (65 / 3) + 520 / 3) * A ^ 5 :=
  PrimeBlockReduction.smallRatioPrimes_block_abs_le A hA

example (A : ℝ) (hA : 1 ≤ A) :
    |max (-sourceQuadraticValue Realization.explicitSecondDerivative A) 0 -
      max (-retainedArithmetic A ((Icc 1 ⌊(Real.log A) ^ 2⌋₊).filter Nat.Prime)) 0| ≤
      4 * (24 + 28 * Real.sqrt (65 / 3) + 520 / 3) * A ^ 5 :=
  PrimeBlockReduction.smallRatioPrimes_negativePart_difference_le A hA
end PrimeBlockReductionStatements

-- The shared coefficient is the complete three-term kernel bound already proved above.
example (A : ℝ) : ThetaKernelEstimate.kernelBound A =
    24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2)) := rfl

example (A : ℝ) (hA : 1 ≤ A) :
    0 ≤ 24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2)) :=
  ThetaKernelEstimate.kernelBound_nonneg A hA

example (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |ThetaKernelTransport.thetaKernel A q -
      (∫ x : ℝ, x * Real.exp (x / 2) *
        normalizedTest Realization.explicitSecondDerivative A x) ^ 2 / (q : ℝ)| ≤
      (24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2))) /
        Real.sqrt (q : ℝ) :=
  ThetaKernelEstimate.thetaRemainder_abs_le_kernelBound A q hA hq
