/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilExponentialBumpGammaEvaluation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilBinomialScalarBounds

/-!
# Arithmetic bump evaluation with finite logarithm tests and a dyadic tail

MSC2020: 11M26, 11M41, 65D30, 65G20.
Consume, without changing, the original all-cell primitive arithmetic theorem.
Actual logarithmic lags follow from finite binomial comparisons. Both omitted
gamma regions are bounded by a rational expression along a coupled cutoff sequence.
Exact gamma constants, prime weights/phases, inventory admission and evaluated
rounding remain open; this is not a fully computed rational sign certificate.

SOURCE_PROOF_CANDIDATE. Parsing, elaboration, exact types, builds, kernel replay,
transitive axiom audit, certified computation and independent review NOT_RUN.
Novelty UNASSESSED. See the adjacent individual analytical/provenance record.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation OddRootProjection CharacterWindow LowSchur
open CorrelationCells GammaCells BinomialScalars
open GRWTSK.MeasureAndIntegration.ExponentialBumpCells

/-- EBS-1. No assumed logarithm error and no transcendental omission allowance.
The original signed prime coefficients and gamma constant are NOT replaced by
rational data without their own certificates. The source is primitive nonprincipal. -/
theorem primitiveArithmeticValue_oddExpBump_binomialScalars_enclosure
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprim : χ.IsPrimitive) (hnon : χ ≠ 1)
    {T : ℝ} (hT : 0 < T) (m : ℕ) (hm : 0 < m)
    (x : ℕ → ℝ) (p : ℕ → ℕ) (wp : ℕ → ℕ → ℕ) (N : ℕ)
    (l u : ℕ → ℝ) (b : ℕ → ℕ)
    (hx0 : x 0 = -T) (hxN : x N = T)
    (hgeom : ∀ i < N, -T ≤ x i ∧ x i ≤ x (i + 1) ∧ x (i + 1) ≤ T)
    (hp : ∀ i < N, |(x i + x (i + 1)) / 2| < T →
      0 < p i ∧ (T ^ 2 - ((x i + x (i + 1)) / 2) ^ 2)⁻¹ ≤ (p i : ℝ))
    (hwp : ∀ n ∈ activePrimePowers T, ∀ i < N,
      |(x i + x (i + 1)) / 2 + (l n + u n) / 2| < T →
      0 < wp n i ∧
        (T ^ 2 - ((x i + x (i + 1)) / 2 + (l n + u n) / 2) ^ 2)⁻¹ ≤ (wp n i : ℝ))
    (hchecks : ∀ n ∈ activePrimePowers T,
      0 ≤ l n ∧ l n ≤ u n ∧ 0 < b n ∧ u n ≤ (b n : ℝ) ∧
        1 ≤ (n : ℝ) * expNegBinomialLower (l n) (b n) ∧
        (n : ℝ) * expNegBinomialUpper (u n) (b n) ≤ 1)
    (wg : ℕ → ℕ → ℕ) (y : ℕ → ℝ) (k : ℕ → ℕ) (M : ℕ)
    (hy0 : y 0 = (1 / 2 : ℝ) ^ m) (hyM : y M = 2 * (m : ℝ))
    (hy : ∀ j < M, 0 < y j ∧ y j ≤ y (j + 1))
    (hwg : ∀ j < M, ∀ i < N,
      |(x i + x (i + 1)) / 2 + (y j + y (j + 1)) / 2| < T →
      0 < wg j i ∧
        (T ^ 2 - ((x i + x (i + 1)) / 2 + (y j + y (j + 1)) / 2) ^ 2)⁻¹ ≤ (wg j i : ℝ))
    (hk : ∀ j < M, 0 < k j ∧
      ((gammaParity χ : ℝ) + (1 / 2 : ℝ)) * y (j + 1) ≤ (k j : ℝ) ∧
        2 * y (j + 1) ≤ (k j : ℝ)) :
    let s := fun n => (l n + u n) / 2
    let δ := fun n => (u n - l n) / 2
    let A := fun n => bumpCorrelationEstimate T x p (wp n) N (s n)
    let e := fun n => bumpCorrelationBudget T x p (wp n) N (s n) (δ n)
    let a₀ := bumpCorrelationEstimate T x p p N 0
    let e₀ := bumpCorrelationBudget T x p p N 0 0
    let c := gammaConstant q (gammaParity χ)
    let E := |c| * e₀ + primeCorrelationError T e
    let Glo := lagCellSum y (bumpGammaLowerRow (gammaParity χ) T x p wg N y k) M
    let Gup := lagCellSum y (bumpGammaUpperRow (gammaParity χ) T x p wg N y k) M
    c * a₀.re + Glo - twistedPrime T χ A - E ≤
        primitiveArithmeticValue χ hprim hnon T (liftReal (oddExpBump T)) ∧
      primitiveArithmeticValue χ hprim hnon T (liftReal (oddExpBump T)) ≤
        c * a₀.re + Gup - twistedPrime T χ A + dyadicGammaBudget T m + E := by
  classical
  intro s δ A e a₀ e₀ c E Glo Gup
  have hlog (n : ℕ) (hn : n ∈ activePrimePowers T) :
      |Real.log (n : ℝ) - s n| ≤ δ n := by
    have hn2 := (Finset.mem_filter.mp hn).2
    have hnR : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
    rcases hchecks n hn with ⟨hl, hlu, hb, hu, hleft, hright⟩
    exact (log_midpoint_error_of_binomial_checks hnR hl hlu hb hu hleft hright).2
  have heta : 0 < (1 / 2 : ℝ) ^ m := pow_pos (by norm_num) m
  have heta1 : (1 / 2 : ℝ) ^ m ≤ 1 := pow_le_one₀ (by norm_num) (by norm_num)
  have hmR : (1 : ℝ) ≤ (m : ℝ) := by exact_mod_cast (show 1 ≤ m by omega)
  have hR : (1 : ℝ) ≤ 2 * (m : ℝ) := by linarith
  have hbase :
      c * a₀.re + Glo - twistedPrime T χ A - E ≤
          primitiveArithmeticValue χ hprim hnon T (liftReal (oddExpBump T)) ∧
        primitiveArithmeticValue χ hprim hnon T (liftReal (oddExpBump T)) ≤
          c * a₀.re + Gup - twistedPrime T χ A +
            oddExpBumpGammaCutoffBudget T ((1 / 2 : ℝ) ^ m) (2 * (m : ℝ)) + E :=
    primitiveArithmeticValue_oddExpBump_allCells_enclosure χ hprim hnon
      hT heta heta1 hR x p wp N s δ hx0 hxN hgeom hp hwp hlog
      wg y k M hy0 hyM hy hwg hk
  have htail := oddExpBumpGammaCutoffBudget_le_dyadic hT.le hm
  exact ⟨hbase.1, hbase.2.trans (by linarith)⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
