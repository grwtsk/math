import GRWTSK.NumberTheory.CanonicalTentExplicitFormula
import GRWTSK.NumberTheory.SignedTentCorrection
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.TrivialZeroTentSeries
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.AdaptiveExplicitFormulaErrorBudget

set_option autoImplicit false

/-!
# Actual-source adaptive certificates for the canonical square-tent explicit formula

Copyright (c) 2026 grwtsk contributors. MIT.

The complete arithmetic source, full canonical nontrivial divisor, actual
negative-even trivial-zero residues, analytic multiplicities, and their finite
heads are fixed by imported theorems. This module does not substitute an
arbitrary zero inventory. The source identity is the *smoothed* square-tent
formula: its contour and boundary residuals have already been discharged in
that exact identity. They are zero here for that reason only, not in a
general pointwise or unsmoothed explicit formula.

The two independent truncation errors are bounded by their existing
source-derived budgets, and both bounds tend to zero at a fixed square stage.
The finite head remains an exact, noncomputable source-defined head; the
existence theorem is not a numerical evaluation algorithm.

SOURCE_CANDIDATE / COMPILATION NOT_RUN / KERNEL NOT_RUN / AXIOM AUDIT NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.AdaptiveCanonicalTentCertificate

open Filter
open scoped Topology BigOperators
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Chebyshev.CountedTentTail
open GRWTSK.NumberTheory.Chebyshev.CanonicalTentAbsolute
open GRWTSK.NumberTheory.Chebyshev.CanonicalTentExplicitFormula
open GRWTSK.NumberTheory.Chebyshev.SignedTentCorrection
open GRWTSK.NumberTheory.Chebyshev.TrivialZeroTentSeries
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.TrivialZeroResidues
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.NumberTheory.Zeta.Riemann.AdaptiveExplicitFormulaErrorBudget

noncomputable section

/-- The finite approximation preserves the canonical positive radius, signed
nontrivial zero head, and actual negative-even trivial-zero residue head. -/
def finiteSquareTentHead (n : ℕ) (T : ℝ) (N : ℕ) : ℂ :=
  (squareRadius n : ℂ) -
    (∑ z ∈ heightHead T, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1) +
    (∑ k ∈ Finset.range N,
      -tentKernel (squareCenter n) (squareRadius n) (trivialPoint k))

/-- A four-channel certificate built from the *actual* signed divisor and
trivial-zero residue series. The contour and endpoint components vanish only
because the imported complete square-tent identity has already handled them.
The two truncation tails are distinct and neither is silently discarded. -/
def squareTentCertificate (n : ℕ) (hn : 2 ≤ n) (T : ℝ)
    (hT : 2 ≤ T) (N : ℕ) : ResidualCertificate where
  omittedNontrivial :=
    -((∑' z : ZeroPoint, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1) -
      ∑ z ∈ heightHead T, (multiplicity z : ℂ) *
        tentKernel (squareCenter n) (squareRadius n) z.1)
  omittedTrivial :=
    (∑' k : ℕ, -tentKernel (squareCenter n) (squareRadius n)
      (trivialPoint k)) -
    ∑ k ∈ Finset.range N,
      -tentKernel (squareCenter n) (squareRadius n) (trivialPoint k)
  contour := 0
  endpoint := 0
  boundNontrivial := canonicalTailBudget (squareCenter n) (squareRadius n) T
  boundTrivial := squareTrivialBudget n * (1 / (n : ℝ) ^ 4) ^ N
  boundContour := 0
  boundEndpoint := 0
  hNontrivial := by
    change ‖-((∑' z : ZeroPoint, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1) -
      ∑ z ∈ heightHead T, (multiplicity z : ℂ) *
        tentKernel (squareCenter n) (squareRadius n) z.1)‖ ≤
      canonicalTailBudget (squareCenter n) (squareRadius n) T
    rw [norm_neg]
    exact norm_full_sub_head_le (squareCenter n) (squareRadius n) T
      (squareRadius_pos n) (square_tent_domain n hn) hT
  hTrivial := by
    change ‖(∑' k : ℕ, -tentKernel (squareCenter n) (squareRadius n)
      (trivialPoint k)) -
      ∑ k ∈ Finset.range N,
        -tentKernel (squareCenter n) (squareRadius n) (trivialPoint k)‖ ≤
      squareTrivialBudget n * (1 / (n : ℝ) ^ 4) ^ N
    rw [tsum_trivial_tent_coefficients (squareCenter n) (squareRadius n)
      (squareRadius_pos n) (square_tent_domain n hn),
      finite_trivial_coefficients N (squareCenter n) (squareRadius n)
        (squareRadius_pos n) (square_tent_domain n hn),
      ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
    have hb := square_correctionPrefix_error N n hn
    rw [abs_of_nonpos (by linarith [hb.1])]
    simpa only [neg_sub] using hb.2
  hContour := by norm_num
  hEndpoint := by norm_num

/-- Exact signed source accounting, before taking norms. This identity uses
the complete canonical square-tent formula and the complete trivial-zero
residue series; no freely chosen remainder can close it. -/
theorem source_sub_finiteHead_eq_total (n : ℕ) (hn : 2 ≤ n)
    (T : ℝ) (hT : 2 ≤ T) (N : ℕ) :
    (squareTentMangoldt n : ℂ) - finiteSquareTentHead n T N =
      (squareTentCertificate n hn T hT N).total := by
  simp only [squareTentCertificate, ResidualCertificate.total, add_zero]
  unfold finiteSquareTentHead
  rw [canonical_square_source_eq_tsum n hn,
    ← tsum_trivial_tent_coefficients (squareCenter n) (squareRadius n)
      (squareRadius_pos n) (square_tent_domain n hn)]
  ring

/-- The actual arithmetic square-tent source has a finite-head error
bounded by the sum of its independently proved zero-series budgets. -/
theorem norm_source_sub_finiteHead_le (n : ℕ) (hn : 2 ≤ n)
    (T : ℝ) (hT : 2 ≤ T) (N : ℕ) :
    ‖(squareTentMangoldt n : ℂ) - finiteSquareTentHead n T N‖ ≤
      canonicalTailBudget (squareCenter n) (squareRadius n) T +
      squareTrivialBudget n * (1 / (n : ℝ) ^ 4) ^ N := by
  calc
    _ = ‖(squareTentCertificate n hn T hT N).total‖ :=
      congrArg norm (source_sub_finiteHead_eq_total n hn T hT N)
    _ ≤ _ := by
      simpa [ResidualCertificate.budget, squareTentCertificate] using
        (squareTentCertificate n hn T hT N).norm_total_le_budget

/-- For every fixed square stage and every positive tolerance there is
an analytic height and a trivial-zero prefix length satisfying the complete
four-channel budget. The dependence on n is explicit: no uniform-in-n
convergence is asserted. -/
theorem exists_squareTent_certified_cutoff (n : ℕ) (hn : 2 ≤ n)
    (epsilon : ℝ) (hepsilon : 0 < epsilon) :
    ∃ (T : ℝ) (hT : 2 ≤ T) (N : ℕ),
      (squareTentCertificate n hn T hT N).budget < epsilon := by
  have hheight : ∀ᶠ T : ℝ in atTop,
      canonicalTailBudget (squareCenter n) (squareRadius n) T <
        epsilon / 2 :=
    (canonicalTailBudget_tendsto_zero (squareCenter n) (squareRadius n)).eventually
      (eventually_lt_nhds (half_pos hepsilon))
  obtain ⟨T, hT, hshort⟩ :=
    ((eventually_ge_atTop (2 : ℝ)).and hheight).exists
  have hnR : (2 : ℝ) ≤ n := by exact_mod_cast hn
  have hnpos : (0 : ℝ) < n := by linarith
  have hr0 : 0 ≤ 1 / (n : ℝ) ^ 4 := by positivity
  have hr1 : 1 / (n : ℝ) ^ 4 < 1 := by
    apply (div_lt_one (pow_pos hnpos 4)).2
    have hs : (1 : ℝ) < (n : ℝ) ^ 2 := by nlinarith
    nlinarith [sq_nonneg ((n : ℝ) ^ 2 - 1)]
  have hpow : Tendsto (fun N : ℕ => (1 / (n : ℝ) ^ 4) ^ N) atTop (𝓝 0) :=
    tendsto_pow_atTop_nhds_zero_of_lt_one hr0 hr1
  have hprefix : Tendsto
      (fun N : ℕ => squareTrivialBudget n * (1 / (n : ℝ) ^ 4) ^ N)
      atTop (𝓝 0) := by
    simpa using (tendsto_const_nhds (x := squareTrivialBudget n)).mul hpow
  have hNsmall : ∀ᶠ N : ℕ in atTop,
      squareTrivialBudget n * (1 / (n : ℝ) ^ 4) ^ N < epsilon / 2 :=
    hprefix.eventually (eventually_lt_nhds (half_pos hepsilon))
  obtain ⟨N, hN⟩ := hNsmall.exists
  refine ⟨T, hT, N, ?_⟩
  change canonicalTailBudget (squareCenter n) (squareRadius n) T +
    squareTrivialBudget n * (1 / (n : ℝ) ^ 4) ^ N + 0 + 0 < epsilon
  linarith

/-- The finite-head approximation is arbitrarily accurate at each fixed
square stage, with the complete source and both zero families unchanged.
This is not a certified numerical zero list or a proof of RH. -/
theorem exists_squareTent_finiteHead_approximation (n : ℕ) (hn : 2 ≤ n)
    (epsilon : ℝ) (hepsilon : 0 < epsilon) :
    ∃ (T : ℝ) (_hT : 2 ≤ T) (N : ℕ),
      ‖(squareTentMangoldt n : ℂ) - finiteSquareTentHead n T N‖ < epsilon := by
  obtain ⟨T, hT, N, hbudget⟩ :=
    exists_squareTent_certified_cutoff n hn epsilon hepsilon
  refine ⟨T, hT, N, ?_⟩
  calc
    _ = ‖(squareTentCertificate n hn T hT N).total‖ :=
      congrArg norm (source_sub_finiteHead_eq_total n hn T hT N)
    _ ≤ (squareTentCertificate n hn T hT N).budget :=
      (squareTentCertificate n hn T hT N).norm_total_le_budget
    _ < epsilon := hbudget

end
end GRWTSK.NumberTheory.Zeta.Riemann.AdaptiveCanonicalTentCertificate
