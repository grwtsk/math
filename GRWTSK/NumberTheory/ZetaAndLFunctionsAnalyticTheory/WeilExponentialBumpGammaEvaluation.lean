/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaCellEvaluation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilExponentialBumpPrimeEvaluation

/-!
# Finite middle-lag gamma evaluation for the original exponential bump

MSC2020: 11M26, 11M41, 65D30, 65G20. Consumer: the unchanged primitive
nonprincipal arithmetic value. Every lag cell uses the existing correlation
supplier with lag uncertainty equal to HALF its width. Thus the entire cell,
not just its midpoint, is covered. Kernel coefficients use finite binomials.
The complete near/far gamma allowance and signed prime response are retained.
No zero-location/count, gamma derivative or integral oracle is introduced.
Conductor-one poles, determining tests and universal lower signs remain open.

SOURCE_PROOF_CANDIDATE. Lean parsing, elaboration, exact types, builds,
kernel replay, transitive axiom audit, certified source computation and
independent review NOT_RUN. Novelty UNASSESSED. See the adjacent provenance.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation OddRootProjection CharacterWindow LowSchur CorrelationCells GammaCells
open GRWTSK.MeasureAndIntegration.ExponentialBumpCells

/-- Finite lower density on one lag cell. The exact nonnegative translation energy
allows clipping its noisy lower estimate at zero. No Weil value is clipped. -/
def bumpGammaLowerRow (a : ℕ) (T : ℝ) (x : ℕ → ℝ)
    (p : ℕ → ℕ) (w : ℕ → ℕ → ℕ) (N : ℕ) (y : ℕ → ℝ) (k : ℕ → ℕ) (j : ℕ) : ℝ :=
  let s := (y j + y (j + 1)) / 2
  let d := (y (j + 1) - y j) / 2
  let μ := (bumpCorrelationEstimate T x p p N 0).re
  let ε₀ := bumpCorrelationBudget T x p p N 0 0
  let z := bumpCorrelationEstimate T x p (w j) N s
  let ε := bumpCorrelationBudget T x p (w j) N s d
  kernelBinomialLower a (y (j + 1)) (k j) * max 0 (2 * (μ - z.re) - 2 * (ε₀ + ε))

/-- Finite upper density on the SAME cell. Endpoint orientation is reversed. -/
def bumpGammaUpperRow (a : ℕ) (T : ℝ) (x : ℕ → ℝ)
    (p : ℕ → ℕ) (w : ℕ → ℕ → ℕ) (N : ℕ) (y : ℕ → ℝ) (k : ℕ → ℕ) (j : ℕ) : ℝ :=
  let s := (y j + y (j + 1)) / 2
  let d := (y (j + 1) - y j) / 2
  let μ := (bumpCorrelationEstimate T x p p N 0).re
  let ε₀ := bumpCorrelationBudget T x p p N 0 0
  let z := bumpCorrelationEstimate T x p (w j) N s
  let ε := bumpCorrelationBudget T x p (w j) N s d
  kernelBinomialUpper a (y j) (k j) * max 0 (2 * (μ - z.re) + 2 * (ε₀ + ε))

/-- EBQ-1. Supply every analytic and sample premise on a whole positive lag cell. -/
theorem gammaCorrectionDensity_oddExpBump_cell_enclosure
    (a : ℕ) (T : ℝ) (hT : 0 ≤ T) (x : ℕ → ℝ) (p w : ℕ → ℕ) (N : ℕ)
    (hx0 : x 0 = -T) (hxN : x N = T)
    (hgeom : ∀ i < N, -T ≤ x i ∧ x i ≤ x (i + 1) ∧ x (i + 1) ≤ T)
    (hp : ∀ i < N, |(x i + x (i + 1)) / 2| < T →
      0 < p i ∧ (T ^ 2 - ((x i + x (i + 1)) / 2) ^ 2)⁻¹ ≤ (p i : ℝ))
    {l u : ℝ} (hl : 0 < l) (hlu : l ≤ u)
    (hw : ∀ i < N, |(x i + x (i + 1)) / 2 + (l + u) / 2| < T →
      0 < w i ∧ (T ^ 2 - ((x i + x (i + 1)) / 2 + (l + u) / 2) ^ 2)⁻¹ ≤ (w i : ℝ))
    (k : ℕ) (hk : 0 < k) (hkA : ((a : ℝ) + (1 / 2 : ℝ)) * u ≤ (k : ℝ))
    (hkD : 2 * u ≤ (k : ℝ))
    (r : ℝ) (hr : r ∈ Icc l u) :
    let μ := (bumpCorrelationEstimate T x p p N 0).re
    let ε₀ := bumpCorrelationBudget T x p p N 0 0
    let z := bumpCorrelationEstimate T x p w N ((l + u) / 2)
    let ε := bumpCorrelationBudget T x p w N ((l + u) / 2) ((u - l) / 2)
    kernelBinomialLower a u k * max 0 (2 * (μ - z.re) - 2 * (ε₀ + ε)) ≤
        gammaCorrectionDensity a (liftReal (oddExpBump T)) r ∧
      gammaCorrectionDensity a (liftReal (oddExpBump T)) r ≤
        kernelBinomialUpper a l k * max 0 (2 * (μ - z.re) + 2 * (ε₀ + ε)) := by
  intro μ ε₀ z ε
  have hc : Continuous (liftReal (oddExpBump T)) :=
    Complex.continuous_ofReal.comp (oddExpBump_contDiff T).continuous
  have hs : HasCompactSupport (liftReal (oddExpBump T)) :=
    (oddExpBump_hasCompactSupport T hT).comp_left Complex.ofReal_zero
  have hf : MemLp (liftReal (oddExpBump T)) 2 volume := hc.memLp_of_hasCompactSupport hs
  have hzero := norm_correlation_oddExpBump_sub_cells_le T hT x p p N hx0 hxN hgeom
    0 0 0 (by norm_num) hp (by simpa only [add_zero] using hp)
  have hE : |energy (liftReal (oddExpBump T)) - μ| ≤ ε₀ :=
    energy_error_of_correlation_zero hzero
  have hshift : |r - (l + u) / 2| ≤ (u - l) / 2 :=
    abs_le.mpr ⟨by linarith [hr.1, hr.2], by linarith [hr.1, hr.2]⟩
  have hC : ‖correlation (liftReal (oddExpBump T)) r - z‖ ≤ ε :=
    norm_correlation_oddExpBump_sub_cells_le T hT x p w N hx0 hxN hgeom
      r ((l + u) / 2) ((u - l) / 2) hshift hp hw
  have hkernel := kernelBinomial_cell_enclosure a hl hlu hr hk hkA hkD
  exact gammaCorrectionDensity_enclosure hf a r μ ε₀ ε z
    (kernelBinomialLower a u k) (kernelBinomialUpper a l k)
    hE hC hkernel.1 hkernel.2.1 hkernel.2.2

/-- EBQ-2. No midpoint-to-cell, gamma-domain or kernel-coefficient oracle remains.
All input inequalities concern cell geometry or finite integer orders. -/
theorem gammaIntegral_oddExpBump_cells_enclosure
    (a : ℕ) (T : ℝ) (hT : 0 ≤ T) (x : ℕ → ℝ)
    (p : ℕ → ℕ) (w : ℕ → ℕ → ℕ) (N : ℕ)
    (hx0 : x 0 = -T) (hxN : x N = T)
    (hgeom : ∀ i < N, -T ≤ x i ∧ x i ≤ x (i + 1) ∧ x (i + 1) ≤ T)
    (hp : ∀ i < N, |(x i + x (i + 1)) / 2| < T →
      0 < p i ∧ (T ^ 2 - ((x i + x (i + 1)) / 2) ^ 2)⁻¹ ≤ (p i : ℝ))
    (eta R : ℝ) (y : ℕ → ℝ) (k : ℕ → ℕ) (M : ℕ)
    (hy0 : y 0 = eta) (hyM : y M = R)
    (hy : ∀ j < M, 0 < y j ∧ y j ≤ y (j + 1))
    (hw : ∀ j < M, ∀ i < N,
      |(x i + x (i + 1)) / 2 + (y j + y (j + 1)) / 2| < T →
      0 < w j i ∧
        (T ^ 2 - ((x i + x (i + 1)) / 2 + (y j + y (j + 1)) / 2) ^ 2)⁻¹ ≤ (w j i : ℝ))
    (hk : ∀ j < M, 0 < k j ∧
      ((a : ℝ) + (1 / 2 : ℝ)) * y (j + 1) ≤ (k j : ℝ) ∧ 2 * y (j + 1) ≤ (k j : ℝ)) :
    lagCellSum y (bumpGammaLowerRow a T x p w N y k) M ≤
        (∫ r in eta..R, gammaCorrectionDensity a (liftReal (oddExpBump T)) r) ∧
      (∫ r in eta..R, gammaCorrectionDensity a (liftReal (oddExpBump T)) r) ≤
        lagCellSum y (bumpGammaUpperRow a T x p w N y k) M := by
  apply gammaIntegral_enclosure a (liftReal (oddExpBump T))
    (gammaCorrectionDensity_oddExpBump_integrable a T hT) eta R y
    (bumpGammaLowerRow a T x p w N y k) (bumpGammaUpperRow a T x p w N y k) M hy0 hyM hy
  intro j hj r hr
  have h := gammaCorrectionDensity_oddExpBump_cell_enclosure a T hT x p (w j) N
    hx0 hxN hgeom hp (hy j hj).1 (hy j hj).2 (hw j hj) (k j)
    (hk j hj).1 (hk j hj).2.1 (hk j hj).2.2 r hr
  simpa only [bumpGammaLowerRow, bumpGammaUpperRow] using h

/-- EBQ-3. Source return with NO unevaluated middle gamma integral in either
endpoint. Actual prime lags, coefficients/phases, gamma constant and rounding
are not silently made rational or certified. This is primitive nonprincipal. -/
theorem primitiveArithmeticValue_oddExpBump_allCells_enclosure
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprim : χ.IsPrimitive) (hnon : χ ≠ 1)
    {T eta R : ℝ} (hT : 0 < T) (heta : 0 < eta) (heta1 : eta ≤ 1) (hR : 1 ≤ R)
    (x : ℕ → ℝ) (p : ℕ → ℕ) (wp : ℕ → ℕ → ℕ) (N : ℕ) (s δ : ℕ → ℝ)
    (hx0 : x 0 = -T) (hxN : x N = T)
    (hgeom : ∀ i < N, -T ≤ x i ∧ x i ≤ x (i + 1) ∧ x (i + 1) ≤ T)
    (hp : ∀ i < N, |(x i + x (i + 1)) / 2| < T →
      0 < p i ∧ (T ^ 2 - ((x i + x (i + 1)) / 2) ^ 2)⁻¹ ≤ (p i : ℝ))
    (hwp : ∀ n ∈ activePrimePowers T, ∀ i < N, |(x i + x (i + 1)) / 2 + s n| < T →
      0 < wp n i ∧ (T ^ 2 - ((x i + x (i + 1)) / 2 + s n) ^ 2)⁻¹ ≤ (wp n i : ℝ))
    (hlog : ∀ n ∈ activePrimePowers T, |Real.log (n : ℝ) - s n| ≤ δ n)
    (wg : ℕ → ℕ → ℕ) (y : ℕ → ℝ) (k : ℕ → ℕ) (M : ℕ)
    (hy0 : y 0 = eta) (hyM : y M = R)
    (hy : ∀ j < M, 0 < y j ∧ y j ≤ y (j + 1))
    (hwg : ∀ j < M, ∀ i < N,
      |(x i + x (i + 1)) / 2 + (y j + y (j + 1)) / 2| < T →
      0 < wg j i ∧
        (T ^ 2 - ((x i + x (i + 1)) / 2 + (y j + y (j + 1)) / 2) ^ 2)⁻¹ ≤ (wg j i : ℝ))
    (hk : ∀ j < M, 0 < k j ∧
      ((gammaParity χ : ℝ) + (1 / 2 : ℝ)) * y (j + 1) ≤ (k j : ℝ) ∧
        2 * y (j + 1) ≤ (k j : ℝ)) :
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
        c * a₀.re + Gup - twistedPrime T χ A + oddExpBumpGammaCutoffBudget T eta R + E := by
  intro A e a₀ e₀ c E Glo Gup
  let Q := primitiveArithmeticValue χ hprim hnon T (liftReal (oddExpBump T))
  let G := ∫ r in eta..R, gammaCorrectionDensity (gammaParity χ) (liftReal (oddExpBump T)) r
  have hP : -E ≤ Q - (c * a₀.re + G - twistedPrime T χ A) ∧
      Q - (c * a₀.re + G - twistedPrime T χ A) ≤ oddExpBumpGammaCutoffBudget T eta R + E :=
    primitiveArithmeticValue_oddExpBump_primeCells_enclosure χ hprim hnon hT heta heta1 hR
      x p wp N s δ hx0 hxN hgeom hp hwp hlog
  have hG : Glo ≤ G ∧ G ≤ Gup :=
    gammaIntegral_oddExpBump_cells_enclosure (gammaParity χ) T hT.le x p wg N
      hx0 hxN hgeom hp eta R y k M hy0 hyM hy hwg hk
  change c * a₀.re + Glo - twistedPrime T χ A - E ≤ Q ∧
    Q ≤ c * a₀.re + Gup - twistedPrime T χ A + oddExpBumpGammaCutoffBudget T eta R + E
  constructor <;> linarith [hP.1, hP.2, hG.1, hG.2]

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
