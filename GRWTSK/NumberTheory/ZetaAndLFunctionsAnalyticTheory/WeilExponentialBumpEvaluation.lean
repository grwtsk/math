/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.ExponentialBumpCells
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteNormEvaluation
import Mathlib.MeasureTheory.Function.LpSpace.Indicator

/-!
# Explicit bump data returned to the original primitive Weil enclosure

MSC2020: 11M26, 11M41, 65G20. The actual test is oddExpBump T.
Smoothness, compact support, oddness, L2 membership, whole-cell derivative
bounds and midpoint sample enclosures are derived. The source-native gamma
integrability condition is still an explicit hypothesis. All character,
complex-zero, count, infinite-tail and finite-rounding conditions are retained.
This family is not asserted to be a determining test class for RH/GRH.

SOURCE_PROOF_CANDIDATE. Parsing, elaboration, exact types, builds, kernel
replay, transitive axiom audit, certified computation and independent review
NOT_RUN. Novelty UNASSESSED. See individual adjacent provenance records.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate ContDiff

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation OddRootProjection CharacterWindow
open GRWTSK.NumberTheory.WeilNegativeWitness
  (CriticalStripZero zeroMultiplicity spectralCoordinate heightCount heightWindow)
open GRWTSK.MeasureAndIntegration.FourierMomentEnclosure
open GRWTSK.MeasureAndIntegration.RawMomentQuadrature
open GRWTSK.MeasureAndIntegration.ExponentialBumpCells

/-- WEB-1. Derive the native domain properties except the explicitly retained
source-specific gamma integrability premise. The test is not redefined. -/
theorem admissible_oddExpBump_of_gamma_integrable
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) {T : ℝ} (hT : 0 < T)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity χ) (liftReal (oddExpBump T))) (Ioi 0)) :
    Admissible χ T (oddExpBump T) := by
  have hsm := oddExpBump_contDiff T
  have hc := oddExpBump_hasCompactSupport T hT.le
  have hcont : Continuous (liftReal (oddExpBump T)) :=
    Complex.ofRealCLM.continuous.comp hsm.continuous
  have hcompact : HasCompactSupport (liftReal (oddExpBump T)) :=
    hc.comp_left Complex.ofReal_zero
  refine ⟨hT, hsm.of_le (by simp), hc, oddExpBump_odd T,
    hcont.memLp_of_hasCompactSupport hcompact, ?_, harch⟩
  intro t hout
  have ht : T < |t| := lt_of_not_ge (fun h => hout (abs_le.mp h))
  simp only [liftReal, oddExpBump_zero_of_le_abs T hT.le t ht.le, Complex.ofReal_zero]

/-- WEB-2. Finite cell geometry and binomial orders replace the two analytic
sample/derivative oracles, while returning to exactly primitiveArithmeticValue.
The source domain's gamma condition, root/count proofs and all rounding remain. -/
theorem abs_primitiveArithmeticValue_sub_oddExpBump_estimate_le
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U → (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L))
    {T H : ℝ} (hT : 0 < T)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity χ) (liftReal (oddExpBump T))) (Ioi 0))
    (J : ℕ) (hJ : (2 : ℝ) ^ J ≤ 1 + H)
    (S : Finset (CriticalStripZero χ)) (M : ℕ)
    (hS : S ⊆ heightWindow χ hp H) (hM : heightCount χ hp H ≤ M)
    (c a b : CriticalStripZero χ → ℂ) (δ r₊ r₋ : CriticalStripZero χ → ℝ)
    (hδ : ∀ ρ ∈ S, 0 ≤ δ ρ)
    (hloc : ∀ ρ ∈ S, ‖spectralCoordinate ρ.1 - c ρ‖ ≤ δ ρ)
    (C : ℝ) (hC : 0 ≤ C) (hc : ∀ ρ ∈ S, ‖c ρ‖ ≤ C)
    (x : ℕ → ℝ) (p : ℕ → ℕ) (N : ℕ)
    (hx0 : x 0 = -T) (hxN : x N = T)
    (hgeom : ∀ j < N, -T ≤ x j ∧ x j < x (j + 1) ∧ x (j + 1) ≤ T)
    (hpOrder : ∀ j < N, 0 < p j)
    (hcellOrder : ∀ j < N,
      (T ^ 2 - ((x j + x (j + 1)) / 2) ^ 2)⁻¹ ≤ (p j : ℝ))
    (n : ℕ) (horder : T * C / (n + 1 : ℕ) ≤ (1 / 2 : ℝ))
    (μ : ℕ → ℂ) (τ : ℕ → ℝ)
    (hmround : ∀ k < n, ‖quadratureMoment x (bumpCellSamples T x p) N k - μ k‖ ≤ τ k)
    (ha : ∀ ρ ∈ S, ‖momentPolynomial (c ρ) n μ - a ρ‖ ≤ r₊ ρ)
    (hb : ∀ ρ ∈ S, ‖momentPolynomial (conj (c ρ)) n μ - b ρ‖ ≤ r₋ ρ)
    (v r : ℝ) (hround : |zeroDiskEstimate χ S a b - v| ≤ r) :
    let K := fun _ : ℕ => bumpDerivativeBound T
    let ε := midpointCellError x K (bumpCellErrors T x p)
    let B₀ := cellL1Budget x (bumpCellSamples T x p) ε N
    let B₁ := cellVariationBudget x K N
    let η := fun k : ℕ => T ^ k * cellVariationBudget x ε N + τ k
    let e₊ := fun ρ => momentEvaluationBudget T C B₀ n η + r₊ ρ
    let e₋ := fun ρ => momentEvaluationBudget T C B₀ n η + r₋ ρ
    |primitiveArithmeticValue χ hp hn T (liftReal (oddExpBump T)) - v| ≤
      finiteNormTailBudget D L T B₀ B₁ J + finiteNormMissingBudget χ T B₀ S M +
        (finiteNormZeroDiskBudget χ T B₀ S c a b δ e₊ e₋ + r) := by
  have hf := admissible_oddExpBump_of_gamma_integrable χ hT harch
  obtain ⟨he, hv, hd⟩ := oddExpBump_cell_inputs hT x p N hgeom hpOrder hcellOrder
  exact abs_primitiveArithmeticValue_sub_derivativeCell_estimate_le χ hp hn hD hL hcount
    hf (oddExpBump_contDiff T) J hJ S M hS hM c a b δ r₊ r₋ hδ hloc C hC hc
    x (bumpCellSamples T x p) (fun _ => bumpDerivativeBound T) (bumpCellErrors T x p) N
    hx0 hxN (fun j hj => ⟨(hgeom j hj).1, (hgeom j hj).2.1.le, (hgeom j hj).2.2⟩)
    (fun _ _ => by dsimp [bumpDerivativeBound]; positivity) he hd hv
    n horder μ τ hmround ha hb v r hround

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
