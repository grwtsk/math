/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaCompactCutoffs
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilExponentialBumpEvaluation

/-!
# Complete gamma admission and explicit cutoffs for the original exponential bump

MSC2020: 11M26, 11M41, 65D30, 65G20.
The earlier gamma premise is supplied by the EXISTING compact-C1 domain theorem.
The genuine bump has global Lipschitz constant 1+4*T^2 and energy at most 2*T^3.
Both omitted gamma regions receive explicit costs, uniformly in natural parity.
The old conditional evaluator is retained; a new endpoint needs no gamma oracle.
No determining-test theorem, root/count certificate or arithmetic sign is supplied.

SOURCE_PROOF_CANDIDATE. Parsing, elaboration, exact types, builds, kernel replay,
transitive axiom audit, certified computation and independent review NOT_RUN.
Novelty UNASSESSED. Individual provenance and scope correction are adjacent.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate ContDiff

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation OddRootProjection CharacterWindow GammaCompactCutoffs
open GRWTSK.NumberTheory.WeilNegativeWitness
  (CriticalStripZero zeroMultiplicity spectralCoordinate heightCount heightWindow)
open GRWTSK.MeasureAndIntegration.FourierMomentEnclosure
open GRWTSK.MeasureAndIntegration.RawMomentQuadrature
open GRWTSK.MeasureAndIntegration.ExponentialBumpCells

private theorem lift_bump_contDiff_one (T : ℝ) :
    ContDiff ℝ 1 (liftReal (oddExpBump T)) :=
  (Complex.ofRealCLM.contDiff.comp (oddExpBump_contDiff T)).of_le (by simp)

private theorem lift_bump_compact (T : ℝ) (hT : 0 ≤ T) :
    HasCompactSupport (liftReal (oddExpBump T)) :=
  (oddExpBump_hasCompactSupport T hT).comp_left Complex.ofReal_zero

private theorem lift_bump_supported (T : ℝ) (hT : 0 ≤ T) :
    ∀ t, T < |t| → liftReal (oddExpBump T) t = 0 := by
  intro t ht
  simp only [liftReal, oddExpBump_zero_of_le_abs T hT t ht.le, Complex.ofReal_zero]

/-- EBG-1. Reuse the established domain theorem, for every natural parity. -/
theorem gammaCorrectionDensity_oddExpBump_integrable (a : ℕ) (T : ℝ) (hT : 0 ≤ T) :
    IntegrableOn (gammaCorrectionDensity a (liftReal (oddExpBump T))) (Ioi 0) :=
  gammaCorrectionDensity_integrable_of_contDiff_one a
    (lift_bump_contDiff_one T) (lift_bump_compact T hT)

/-- EBG-2. Complete native admission; no sign is a field of this predicate. -/
theorem admissible_oddExpBump {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) {T : ℝ} (hT : 0 < T) :
    Admissible χ T (oddExpBump T) :=
  admissible_oddExpBump_of_gamma_integrable χ hT
    (gammaCorrectionDensity_oddExpBump_integrable (gammaParity χ) T hT.le)

/-- EBG-3. A whole-line bound, including transitions across either support endpoint. -/
theorem lift_oddExpBump_global_lipschitz (T : ℝ) (hT : 0 ≤ T) (x y : ℝ) :
    ‖liftReal (oddExpBump T) x - liftReal (oddExpBump T) y‖ ≤
      bumpDerivativeBound T * |x - y| := by
  have hb (t : ℝ) : |deriv (oddExpBump T) t| ≤ bumpDerivativeBound T := by
    by_cases ht : |t| ≤ T
    · exact abs_deriv_oddExpBump_le T hT t ht
    · have hsquare := pow_le_pow_left₀ hT (le_of_not_ge ht) 2
      rw [sq_abs] at hsquare
      rw [(hasDerivAt_oddExpBump T t).deriv]
      simp only [expNegInvGlue.zero_of_nonpos (sub_nonpos.mpr hsquare),
        mul_zero, sub_zero, abs_zero]
      dsimp [bumpDerivativeBound]
      positivity
  have h := (convex_univ : Convex ℝ (univ : Set ℝ)).norm_image_sub_le_of_norm_deriv_le
    (fun t _ => (hasDerivAt_oddExpBump T t).differentiableAt)
    (fun t _ => by simpa only [Real.norm_eq_abs] using hb t) (mem_univ y) (mem_univ x)
  change ‖(oddExpBump T x : ℂ) - (oddExpBump T y : ℂ)‖ ≤ _
  rw [← Complex.ofReal_sub, Complex.norm_real]
  simpa only [Real.norm_eq_abs] using h

/-- EBG-4. A finite algebraic mass bound for the SAME test, not a sampled surrogate. -/
theorem energy_lift_oddExpBump_le (T : ℝ) (hT : 0 ≤ T) :
    energy (liftReal (oddExpBump T)) ≤ 2 * T ^ 3 := by
  have hphi (s : ℝ) : expNegInvGlue s ≤ 1 := by
    by_cases hs : s ≤ 0
    · simp [expNegInvGlue.zero_of_nonpos hs]
    · simp only [expNegInvGlue, if_neg hs]
      exact Real.exp_le_one_iff.mpr (neg_nonpos.mpr (inv_nonneg.mpr (le_of_not_ge hs)))
  have hb (t : ℝ) : ‖liftReal (oddExpBump T) t‖ ≤ T := by
    by_cases ht : |t| ≤ T
    · change ‖((t * expNegInvGlue (T ^ 2 - t ^ 2) : ℝ) : ℂ)‖ ≤ T
      rw [Complex.norm_real, Real.norm_eq_abs, abs_mul,
        abs_of_nonneg (expNegInvGlue.nonneg _)]
      exact (mul_le_of_le_one_right (abs_nonneg t) (hphi _)).trans ht
    · rw [lift_bump_supported T hT t (lt_of_not_ge ht), norm_zero]
      exact hT
  have hf2 : MemLp (liftReal (oddExpBump T)) 2 volume :=
    (lift_bump_contDiff_one T).continuous.memLp_of_hasCompactSupport (lift_bump_compact T hT)
  have h := energy_le_support_sup hf2 T T hT (lift_bump_supported T hT) hb
  nlinarith

/-- Explicit gamma omission cost; this is not a modified Weil form. -/
def oddExpBumpGammaCutoffBudget (T eta R : ℝ) : ℝ :=
  (3 / 4 : ℝ) * (2 * T + 1) * (bumpDerivativeBound T) ^ 2 * eta ^ 2 +
    (16 * T ^ 3 / (1 - Real.exp (-2))) * Real.exp (-(1 / 2 : ℝ) * R)

/-- EBG-5. Both source gamma parities, and all larger natural parameters, are covered. -/
theorem gammaCorrectionDensity_oddExpBump_cutoff_error (a : ℕ)
    {T eta R : ℝ} (hT : 0 ≤ T) (heta : 0 < eta) (heta1 : eta ≤ 1) (hR : 1 ≤ R) :
    0 ≤ (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a (liftReal (oddExpBump T)) r) -
      (∫ r in eta..R, gammaCorrectionDensity a (liftReal (oddExpBump T)) r) ∧
    (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a (liftReal (oddExpBump T)) r) -
      (∫ r in eta..R, gammaCorrectionDensity a (liftReal (oddExpBump T)) r) ≤
        oddExpBumpGammaCutoffBudget T eta R := by
  have h := gammaCorrectionDensity_cutoff_error a (lift_bump_contDiff_one T)
    (lift_bump_compact T hT) T (bumpDerivativeBound T) (2 * T ^ 3) hT
    (lift_bump_supported T hT) (lift_oddExpBump_global_lipschitz T hT)
    (energy_lift_oddExpBump_le T hT) heta heta1 hR
  simpa only [oddExpBumpGammaCutoffBudget,
    show (8 : ℝ) * (2 * T ^ 3) = 16 * T ^ 3 by ring] using h

/-- EBG-6. Return the truncation to the ORIGINAL signed primitive arithmetic value.
The complete finite prime inventory and genuine gamma constant remain in V. -/
theorem primitiveArithmeticValue_oddExpBump_finiteLag_enclosure
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) {T eta R : ℝ}
    (hT : 0 < T) (heta : 0 < eta) (heta1 : eta ≤ 1) (hR : 1 ≤ R) :
    let g := liftReal (oddExpBump T)
    let V := gammaConstant q (gammaParity χ) * energy g +
      (∫ r in eta..R, gammaCorrectionDensity (gammaParity χ) g r) -
      twistedPrime T χ (fun n => correlation g (Real.log (n : ℝ)))
    0 ≤ primitiveArithmeticValue χ hp hn T g - V ∧
      primitiveArithmeticValue χ hp hn T g - V ≤ oddExpBumpGammaCutoffBudget T eta R := by
  intro g V
  have h := gammaCorrectionDensity_oddExpBump_cutoff_error (gammaParity χ) hT.le heta heta1 hR
  dsimp only [V, g, primitiveArithmeticValue]
  constructor <;> linarith [h.1, h.2]

/-- EBG-7. The previous complete cell evaluator now needs NO gamma-domain oracle.
Actual root associations, analytic multiplicities/counts and every rounding remain. -/
theorem abs_primitiveArithmeticValue_sub_oddExpBump_cells_le
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U → (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L))
    {T H : ℝ} (hT : 0 < T)
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
  exact abs_primitiveArithmeticValue_sub_oddExpBump_estimate_le χ hp hn hD hL hcount hT
    (gammaCorrectionDensity_oddExpBump_integrable (gammaParity χ) T hT.le)
    J hJ S M hS hM c a b δ r₊ r₋ hδ hloc C hC hc x p N hx0 hxN hgeom hpOrder hcellOrder
    n horder μ τ hmround ha hb v r hround

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
