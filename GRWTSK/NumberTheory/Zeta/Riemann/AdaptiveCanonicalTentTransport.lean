import GRWTSK.NumberTheory.Zeta.Riemann.AdaptiveCanonicalTentCertificate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.CanonicalSquareTentFiniteUniformTail

set_option autoImplicit false

/-!
# Exact transport between the two canonical square-tent finite heads

Copyright (c) 2026 grwtsk contributors. MIT.

The existing finite-test uniformity uses the *complete* trivial-zero correction
and truncates the nontrivial divisor. The adaptive four-channel certificate
instead truncates both families. Their difference is exactly the signed
trivial-zero prefix defect, not a new remainder or a replacement source.

No all-scale grid, good-scale transfer, endpoint quadrature or analytic RH
return is reconstructed here. The pickup energy observable and the canonical
square-tent prime-power observable remain distinct.

SOURCE_CANDIDATE / COMPILATION NOT_RUN / KERNEL NOT_RUN / AXIOM AUDIT NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.AdaptiveCanonicalTentTransport

open scoped BigOperators
open GRWTSK.NumberTheory.Zeta.Riemann.AdaptiveCanonicalTentCertificate
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentZetaApproximation
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Chebyshev.CountedTentTail
open GRWTSK.NumberTheory.Chebyshev.TrivialZeroTentSeries
open GRWTSK.NumberTheory.Chebyshev.SignedTentCorrection
open GRWTSK.Analysis.RealAnalysis.TentRationalCorrection
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.RiemannHypothesis.TrivialZeroResidues

noncomputable section

/-- The finite adaptive head differs from the previously formalized complete
trivial-correction head by exactly one *signed* prefix correction. -/
theorem finiteHead_eq_existingHead_add_prefix_defect
    (f : CanonicalSquareTentTest) (K N : ℕ) :
    finiteSquareTentHead (testStage f) (zeroHeightCutoff K) N =
      finiteSpectralValue K f +
        ((correctionPrefix N (squareCenter (testStage f))
          (squareRadius (testStage f)) -
          rationalTentCorrection (squareCenter (testStage f))
            (squareRadius (testStage f)) : ℝ) : ℂ) := by
  rw [show (∑ k ∈ Finset.range N,
      -tentKernel (squareCenter (testStage f))
        (squareRadius (testStage f)) (trivialPoint k)) =
      (correctionPrefix N (squareCenter (testStage f))
        (squareRadius (testStage f)) : ℂ) from
      finite_trivial_coefficients N (squareCenter (testStage f))
        (squareRadius (testStage f))
        (squareRadius_pos (testStage f))
        (square_tent_domain (testStage f) (testStage_ge_two f))]
  unfold finiteSquareTentHead finiteSpectralValue
  push_cast
  ring

/-- Both source-specific finite heads approximate the same literal arithmetic
square-tent value, with the new trivial tail paid in addition to the already
proved canonical nontrivial tail. -/
theorem existingHead_to_adaptive_bound
    (f : CanonicalSquareTentTest) (K N : ℕ) :
    ‖(squareTentMangoldt (testStage f) : ℂ) -
      finiteSquareTentHead (testStage f) (zeroHeightCutoff K) N‖ ≤
      lowerDefect K f +
      squareTrivialBudget (testStage f) *
        (1 / (testStage f : ℝ) ^ 4) ^ N := by
  simpa only [lowerDefect] using
    norm_source_sub_finiteHead_le (testStage f) (testStage_ge_two f)
      (zeroHeightCutoff K) (zeroHeightCutoff_ge_two K) N

/-- One pair of cutoffs controls the *actual* signed two-tail source for a
fixed finite family, at every larger pair. The signed remainder itself is
not claimed monotone: only its independent nonnegative majorants are used. -/
theorem finite_family_two_tail_uniform
    (F : Finset CanonicalSquareTentTest) (epsilon : ℝ)
    (hepsilon : 0 < epsilon) :
    ∃ K N : ℕ, ∀ k n : ℕ, K ≤ k → N ≤ n →
      ∀ f ∈ F,
        ‖(squareTentMangoldt (testStage f) : ℂ) -
          finiteSquareTentHead (testStage f) (zeroHeightCutoff k) n‖ ≤ epsilon := by
  classical
  have htrivial (f : CanonicalSquareTentTest) :
      ∃ N : ℕ, ∀ n : ℕ, N ≤ n →
        squareTrivialBudget (testStage f) *
          (1 / (testStage f : ℝ) ^ 4) ^ n ≤ epsilon / 2 := by
    have hn : (2 : ℝ) ≤ testStage f := by
      exact_mod_cast testStage_ge_two f
    have hp : (0 : ℝ) < testStage f := by linarith
    have hr0 : 0 ≤ 1 / (testStage f : ℝ) ^ 4 := by positivity
    have hr1 : 1 / (testStage f : ℝ) ^ 4 < 1 := by
      apply (div_lt_one (pow_pos hp 4)).2
      nlinarith
    have ht : Filter.Tendsto
        (fun n : ℕ => squareTrivialBudget (testStage f) *
          (1 / (testStage f : ℝ) ^ 4) ^ n)
        Filter.atTop (nhds 0) := by
      simpa using (tendsto_const_nhds
        (x := squareTrivialBudget (testStage f))).mul
          (tendsto_pow_atTop_nhds_zero_of_lt_one hr0 hr1)
    have he : ∀ᶠ n : ℕ in Filter.atTop,
        squareTrivialBudget (testStage f) *
          (1 / (testStage f : ℝ) ^ 4) ^ n ≤ epsilon / 2 :=
      ht.eventually (eventually_le_nhds (le_of_lt (half_pos hepsilon)))
    exact Filter.eventually_atTop.1 he
  have hfamily :
      ∃ N : ℕ, ∀ n : ℕ, N ≤ n → ∀ f ∈ F,
        squareTrivialBudget (testStage f) *
          (1 / (testStage f : ℝ) ^ 4) ^ n ≤ epsilon / 2 := by
    induction F using Finset.induction_on with
    | empty =>
        refine ⟨0, ?_⟩
        intro n hn f hf
        simp at hf
    | @insert a s ha ih =>
        obtain ⟨N₀, h₀⟩ := ih
        obtain ⟨N₁, h₁⟩ := htrivial a
        refine ⟨max N₀ N₁, ?_⟩
        intro n hn f hf
        rcases Finset.mem_insert.mp hf with rfl | hf'
        · exact h₁ n ((le_max_right _ _).trans hn)
        · exact h₀ n ((le_max_left _ _).trans hn) f hf'
  obtain ⟨K, hK⟩ :=
    GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFiniteUniformTail.finite_test_tail_uniform
      F (epsilon / 2) (half_pos hepsilon)
  obtain ⟨N, hN⟩ := hfamily
  refine ⟨K, N, ?_⟩
  intro k n hk hn f hf
  have hb := existingHead_to_adaptive_bound f k n
  have h₁ := hK k hk f hf
  have h₂ := hN n hn f hf
  linarith


end
end GRWTSK.NumberTheory.Zeta.Riemann.AdaptiveCanonicalTentTransport
