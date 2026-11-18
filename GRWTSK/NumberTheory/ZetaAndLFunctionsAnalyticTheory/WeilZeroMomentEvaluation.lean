/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.FourierMomentEnclosure
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilZeroDiskEvaluation

/-!
# Finite moments supply the original Weil zero-disk center evaluations

MSC2020: 11M26, 11M41, 65G20. Actual complex zeros, analytic multiplicities,
strict native height windows, missing mass and infinite tails are unchanged.
One certified moment table supplies BOTH reflected center transforms, evaluated
separately. Moment certificates, root certificates, native counts and outward
finite arithmetic remain explicit. The final consumer is primitive nonprincipal;
no pole-inclusive conductor-one RH theorem or universal sign supply is asserted.

SOURCE_PROOF_CANDIDATE. Elaboration, exact-type checks, fresh kernel replay,
transitive axiom audit, certified computation and independent review NOT_RUN.
Novelty UNASSESSED. Individual provenance and the argument are in the adjacent md.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate ContDiff

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation OddRootProjection
open GRWTSK.NumberTheory.WeilNegativeWitness
  (CriticalStripZero zeroMultiplicity spectralCoordinate heightCount heightWindow)
open GRWTSK.MeasureAndIntegration.FourierMomentEnclosure

/-- Original arithmetic enclosure from a single finite moment table. The two
center polynomial values are separate and each carries its own rounding charge.
No literal center-transform enclosure is assumed in this theorem. -/
theorem abs_primitiveArithmeticValue_sub_moment_estimate_le
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U → (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L))
    {T H : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) (hsmooth : ContDiff ℝ ∞ f)
    (J : ℕ) (hJ : (2 : ℝ) ^ J ≤ 1 + H)
    (S : Finset (CriticalStripZero χ)) (M : ℕ)
    (hS : S ⊆ heightWindow χ hp H) (hM : heightCount χ hp H ≤ M)
    (c a b : CriticalStripZero χ → ℂ) (δ r₊ r₋ : CriticalStripZero χ → ℝ)
    (hδ : ∀ ρ ∈ S, 0 ≤ δ ρ)
    (hloc : ∀ ρ ∈ S, ‖spectralCoordinate ρ.1 - c ρ‖ ≤ δ ρ)
    (C B : ℝ) (hC : 0 ≤ C) (hc : ∀ ρ ∈ S, ‖c ρ‖ ≤ C)
    (hB : (∫ t : ℝ, ‖liftReal f t‖) ≤ B)
    (n : ℕ) (horder : T * C / (n + 1 : ℕ) ≤ (1 / 2 : ℝ))
    (μ : ℕ → ℂ) (η : ℕ → ℝ)
    (hm : ∀ k < n, ‖rawMoment (liftReal f) k - μ k‖ ≤ η k)
    (ha : ∀ ρ ∈ S, ‖momentPolynomial (c ρ) n μ - a ρ‖ ≤ r₊ ρ)
    (hb : ∀ ρ ∈ S, ‖momentPolynomial (conj (c ρ)) n μ - b ρ‖ ≤ r₋ ρ)
    (v r : ℝ) (hround : |zeroDiskEstimate χ S a b - v| ≤ r) :
    |primitiveArithmeticValue χ hp hn T (liftReal f) - v| ≤
      primitiveHeightTailBudget D L (liftReal f) T J +
        partialHeightMissingBudget χ (liftReal f) T S M +
        (zeroDiskEvaluationBudget χ (liftReal f) T S c a b δ
          (fun ρ => momentEvaluationBudget T C B n η + r₊ ρ)
          (fun ρ => momentEvaluationBudget T C B n η + r₋ ρ) + r) := by
  have hi : Integrable (liftReal f) volume :=
    (Complex.ofRealCLM.contDiff.comp hsmooth).continuous.integrable_of_hasCompactSupport
      (hf.2.2.1.comp_left Complex.ofReal_zero)
  have hs : ∀ t : ℝ, T < |t| → liftReal f t = 0 := by
    intro t ht
    apply hf.2.2.2.2.2.1 t
    intro hmemb
    exact (not_le_of_gt ht) (abs_le.mpr hmemb)
  apply abs_primitiveArithmeticValue_sub_zeroDisk_estimate_le χ hp hn hD hL hcount
    hf hsmooth J hJ S M hS hM c a b δ
    (fun ρ => momentEvaluationBudget T C B n η + r₊ ρ)
    (fun ρ => momentEvaluationBudget T C B n η + r₋ ρ) hδ hloc
    ?_ ?_ v r hround
  · intro ρ hρ
    exact norm_fourier_sub_rounded_momentPolynomial_le (liftReal f) T C B hf.1.le hC hi hs hB
      (c ρ) (hc ρ hρ) n horder μ η hm (a ρ) (r₊ ρ) (ha ρ hρ)
  · intro ρ hρ
    exact norm_fourier_sub_rounded_momentPolynomial_le (liftReal f) T C B hf.1.le hC hi hs hB
      (conj (c ρ)) (by simpa only [Complex.norm_conj] using hc ρ hρ)
      n horder μ η hm (b ρ) (r₋ ρ) (hb ρ hρ)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
