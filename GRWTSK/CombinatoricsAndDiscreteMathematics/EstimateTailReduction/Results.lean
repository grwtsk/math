import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateReduction

/-!
# RH estimate: exact tail-to-global reduction

A finite-prefix lower bound is proved directly from the unchanged strict
prime-power cutoff. No continuity of the arithmetic quadratic family is
needed.

Consequently an eventual constant lower bound for the actual signed pairing is
already sufficient for the exact all-scale estimate obligation: the integrated
analytic correction lower bound controls the tail, and the finite prime budget
controls the bounded prefix.

The eventual signed-pairing estimate itself remains open.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction

open FormalResearch.RiemannHypothesis.SourcePairing
open CorrelationAssembly
open EstimateReduction

noncomputable section

def primeIndices (A : ℝ) : Finset ℕ :=
  (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter
    (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * A))

theorem mem_primeIndices_iff
    (A : ℝ) (n : ℕ) :
    n ∈ primeIndices A ↔
      2 ≤ n ∧ (n : ℝ) < Real.exp (2 * A) := by
  simp only [primeIndices, Finset.mem_filter,
    Finset.mem_Icc,
    Nat.le_floor_iff (Real.exp_pos (2 * A)).le]
  exact
    ⟨fun h ↦ ⟨h.1.1, h.2⟩,
      fun h ↦ ⟨⟨h.1, h.2.le⟩, h.2⟩⟩

theorem primeIndices_mono
    {A R : ℝ} (hAR : A ≤ R) :
    primeIndices A ⊆ primeIndices R := by
  intro n hn
  rw [mem_primeIndices_iff] at hn ⊢
  exact
    ⟨hn.1,
      hn.2.trans_le
        (Real.exp_le_exp.mpr (by linarith))⟩

theorem prime_contribution_le_finite_budget
    (A R : ℝ) (hA : 1 ≤ A) (hAR : A ≤ R) :
    primePowerContribution
        Realization.explicitSecondDerivative A ≤
      ∑ n ∈ primeIndices R,
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n| := by
  change
    (∑ n ∈ primeIndices A,
      ArithmeticFunction.vonMangoldt n / Real.sqrt n *
        sourceCorrelation Realization.explicitSecondDerivative A
          (Real.log n)) ≤ _
  calc
    _ ≤
        ∑ n ∈ primeIndices A,
          |ArithmeticFunction.vonMangoldt n / Real.sqrt n| := by
      apply Finset.sum_le_sum
      intro n hn
      calc
        ArithmeticFunction.vonMangoldt n / Real.sqrt n *
              sourceCorrelation Realization.explicitSecondDerivative A
                (Real.log n)
            ≤
          |ArithmeticFunction.vonMangoldt n / Real.sqrt n *
              sourceCorrelation Realization.explicitSecondDerivative A
                (Real.log n)| :=
          le_abs_self _
        _ =
          |ArithmeticFunction.vonMangoldt n / Real.sqrt n| *
            |sourceCorrelation Realization.explicitSecondDerivative A
              (Real.log n)| := abs_mul _ _
        _ ≤
          |ArithmeticFunction.vonMangoldt n / Real.sqrt n| * 1 := by
          exact mul_le_mul_of_nonneg_left
            (EstimateCorrelation.actual_correlation_abs_le_one
              A (Real.log n) hA)
            (abs_nonneg _)
        _ = _ := mul_one _
    _ ≤ _ :=
      Finset.sum_le_sum_of_subset_of_nonneg
        (primeIndices_mono hAR)
        (fun _ _ _ ↦ abs_nonneg _)

theorem bounded_radius_lower
    (R : ℝ) :
    ∃ lower : ℝ,
      ∀ A : ℝ, 1 ≤ A → A ≤ R →
        lower ≤
          sourceQuadraticValue
            Realization.explicitSecondDerivative A := by
  refine
    ⟨archimedeanMultiplier 0 -
      2 * ∑ n ∈ primeIndices R,
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n|,
      ?_⟩
  intro A hA hAR
  have hp :=
    prime_contribution_le_finite_budget A R hA hAR
  have ha :=
    SourceCorrectionEstimate.actual_archimedean_lower A hA
  unfold sourceQuadraticValue
  linarith

def QuadraticTailLowerBound : Prop :=
  ∃ lower R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A →
      lower ≤
        sourceQuadraticValue
          Realization.explicitSecondDerivative A

def SignedPairingTailLowerBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A →
        -C ≤
          signedPairing
            Realization.explicitSecondDerivative A

theorem quadratic_tail_of_signed_pairing_tail
    (h : SignedPairingTailLowerBound) :
    QuadraticTailLowerBound := by
  obtain ⟨C, hC, R, hR, hpair⟩ := h
  refine
    ⟨archimedeanMultiplier 0 -
        6 * Real.sqrt 2 - 2 * C,
      R, hR, ?_⟩
  intro A hRA
  have hA : 1 ≤ A := hR.trans hRA
  have hcorr :=
    SourceCorrectionEstimate.actual_correction_lower A hA
  have hp := hpair A hRA
  rw [source_arithmetic_representation A hA]
  linarith

theorem estimate_of_quadratic_tail_lower_bound
    (h : QuadraticTailLowerBound) :
    EstimateObligation := by
  obtain ⟨tailLower, R, hR, htail⟩ := h
  obtain ⟨prefixLower, hprefix⟩ :=
    bounded_radius_lower R
  refine ⟨min prefixLower tailLower, ?_⟩
  intro A hA
  by_cases hRA : R ≤ A
  · exact (min_le_right _ _).trans (htail A hRA)
  · exact
      (min_le_left _ _).trans
        (hprefix A hA (le_of_lt (lt_of_not_ge hRA)))

theorem estimate_of_signed_pairing_tail_lower_bound
    (h : SignedPairingTailLowerBound) :
    EstimateObligation :=
  estimate_of_quadratic_tail_lower_bound
    (quadratic_tail_of_signed_pairing_tail h)

theorem estimate_obligation_iff_quadratic_tail :
    EstimateObligation ↔ QuadraticTailLowerBound := by
  constructor
  · rintro ⟨lower, hlower⟩
    exact ⟨lower, 1, le_rfl, fun A hA ↦ hlower A hA⟩
  · exact estimate_of_quadratic_tail_lower_bound

theorem signed_pairing_uniform_implies_tail
    (h : SignedPairingUniformLowerBound) :
    SignedPairingTailLowerBound := by
  obtain ⟨C, hC, hp⟩ := h
  exact ⟨C, hC, 1, le_rfl, hp⟩

def TailReductionCheckpoint : Prop :=
  (∀ R : ℝ,
    ∃ lower : ℝ,
      ∀ A : ℝ, 1 ≤ A → A ≤ R →
        lower ≤
          sourceQuadraticValue
            Realization.explicitSecondDerivative A) ∧
  (SignedPairingTailLowerBound → EstimateObligation) ∧
  (EstimateObligation ↔ QuadraticTailLowerBound)

theorem tail_reduction_checkpoint :
    TailReductionCheckpoint :=
  ⟨bounded_radius_lower,
    estimate_of_signed_pairing_tail_lower_bound,
    estimate_obligation_iff_quadratic_tail⟩

end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction
