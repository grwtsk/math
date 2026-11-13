/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaMultiplier
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCharacterSensitivePrimeFloor
import Mathlib.Tactic

/-!
# Full primitive-character physical Fourier multiplier: source-bound high tail

MSC2020: 11M41 (primary), 11M26, 42A38, 46E35.

For the ORIGINAL antilinear-first Weil correlation, its angular Fourier
symbol is the finite signed sum of ALL active von Mangoldt prime powers
with the genuine conjugated complex Dirichlet phases. The gamma multiplier
is the existing OddMultiplierBounds.periodicMultiplier with no changed
conductor or parity normalization. Its proved logarithmic lower bound
gives an explicit unconditional high-frequency coercivity threshold
for every character and every support window.

The companion WeilFullFrequencyTail.md proves the whole-line Fourier and
Plancherel source return, and retains both signed zeta pole orientations.
It also proves quantitative high-frequency leakage of those pole
functionals and a zeta split lower bound. Those integral and pole
proofs are WRITTEN, not Lean declarations in this module.

SOURCE_PROOF_CANDIDATE: elaboration, complete dependency build, fresh
kernel replay, transitive axiom audit, independent analytical review
and certified whole-form evaluation NOT_RUN. Novelty UNASSESSED.
No new axiom, sorry/admit, RH or primitive GRH claim.
Prior art: classical Fourier-Plancherel/Weil methods;
Bombieri (2000) and Connes--Consani--Moscovici (2025).
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FullFrequencyTail

open LowSchur OddRootProjection OddMultiplierBounds
open CharacterSensitiveFrobeniusFloor

/-- Original finite signed prime Fourier symbol: every power and phase. -/
def signedPrimeFrequency {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (A ξ : ℝ) : ℝ :=
  2 * ∑ n ∈ activePrimePowers A,
    primeWeight n *
      (conj (χ n) *
        Complex.exp (Complex.I *
          ((ξ * Real.log (n : ℝ) : ℝ) : ℂ))).re

/-- The source Fourier multiplier, not an absolute-value proxy. -/
def fullFrequencySymbol {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (A ξ : ℝ) : ℝ :=
  gammaConstant q (gammaParity χ) +
    periodicMultiplier (gammaParity χ) ξ -
      signedPrimeFrequency χ A ξ

/-- Conservative explicit frequency threshold for every character/window. -/
def highFrequencyCutoff {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (A η : ℝ) : ℝ :=
  ((gammaParity χ : ℝ) + 1 / 2) *
    Real.exp (characterPrimeMass χ A +
      |gammaConstant q (gammaParity χ)| + η)

private theorem unit_phase_norm (u : ℝ) :
    ‖Complex.exp (Complex.I * (u : ℂ))‖ = 1 := by
  rw [Complex.norm_exp]
  simp [Complex.mul_re]

/-- The complete signed prime symbol is bounded by its actual
character-sensitive finite mass, including zero character values. -/
theorem signedPrimeFrequency_le_characterPrimeMass
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (A ξ : ℝ) :
    signedPrimeFrequency χ A ξ ≤ characterPrimeMass χ A := by
  unfold signedPrimeFrequency characterPrimeMass
  apply mul_le_mul_of_nonneg_left _ (by norm_num : (0 : ℝ) ≤ 2)
  apply Finset.sum_le_sum
  intro n hn
  apply mul_le_mul_of_nonneg_left _ (primeWeight_nonneg n)
  calc
    (conj (χ n) *
        Complex.exp (Complex.I * ((ξ * Real.log (n : ℝ) : ℝ) : ℂ))).re ≤
      ‖conj (χ n) *
        Complex.exp (Complex.I * ((ξ * Real.log (n : ℝ) : ℝ) : ℂ))‖ := by
          exact (le_abs_self _).trans (Complex.abs_re_le_norm _)
    _ = ‖χ n‖ := by
      rw [norm_mul, Complex.norm_conj,
        unit_phase_norm (ξ * Real.log (n : ℝ))]
      ring

/-- Source-specific gamma logarithm minus the original finite prime sum. -/
theorem log_floor_le_fullFrequencySymbol
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (A ξ : ℝ) :
    gammaConstant q (gammaParity χ) +
        (1 / 2 : ℝ) *
          Real.log (1 + ξ ^ 2 /
            ((gammaParity χ : ℝ) + 1 / 2) ^ 2) -
        characterPrimeMass χ A ≤ fullFrequencySymbol χ A ξ := by
  have hp := signedPrimeFrequency_le_characterPrimeMass χ A ξ
  have hg := log_lower_le_periodicMultiplier (gammaParity χ) ξ
  unfold fullFrequencySymbol
  linarith

/-- Unconditional high-frequency margin for the actual Fourier symbol.
Nothing is assumed or asserted about the remaining low-frequency sign. -/
theorem fullFrequencySymbol_ge_of_highCutoff
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (A ξ η : ℝ)
    (hcut : highFrequencyCutoff χ A η ≤ |ξ|) :
    η ≤ fullFrequencySymbol χ A ξ := by
  let b : ℝ := (gammaParity χ : ℝ) + 1 / 2
  let h : ℝ := characterPrimeMass χ A +
    |gammaConstant q (gammaParity χ)| + η
  have hb : 0 < b := by
    dsimp [b]
    positivity
  have hexp : Real.exp h ≤ |ξ| / b := by
    apply (le_div_iff₀ hb).2
    simpa only [highFrequencyCutoff, b, h] using hcut
  have hratio : 0 < |ξ| / b :=
    (Real.exp_pos h).trans_le hexp
  have hlogratio : h ≤ Real.log (|ξ| / b) := by
    have hh := Real.log_le_log (Real.exp_pos h) hexp
    simpa only [Real.log_exp] using hh
  have hsq : (|ξ| / b) ^ 2 = ξ ^ 2 / b ^ 2 := by
    rw [div_pow, sq_abs]
  have hlog : Real.log ((|ξ| / b) ^ 2) ≤
      Real.log (1 + ξ ^ 2 / b ^ 2) := by
    apply Real.log_le_log (pow_pos hratio 2)
    rw [hsq]
    linarith
  have hlogpow :
      Real.log ((|ξ| / b) ^ 2) =
        2 * Real.log (|ξ| / b) := by
    rw [Real.log_pow]
    ring
  have hlogfloor :
      h ≤ (1 / 2 : ℝ) *
        Real.log (1 + ξ ^ 2 / b ^ 2) := by
    rw [hlogpow] at hlog
    linarith
  have hg := log_lower_le_periodicMultiplier (gammaParity χ) ξ
  have hgamma : h ≤ periodicMultiplier (gammaParity χ) ξ := by
    apply hlogfloor.trans
    simpa only [b] using hg
  have hp := signedPrimeFrequency_le_characterPrimeMass χ A ξ
  have habs :
      -gammaConstant q (gammaParity χ) ≤
        |gammaConstant q (gammaParity χ)| :=
    neg_le_abs _
  unfold fullFrequencySymbol
  dsimp [h] at hgamma
  linarith

/-- Zero-margin specialization, with no new low-frequency hypothesis. -/
theorem fullFrequencySymbol_nonneg_above_cutoff
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (A ξ : ℝ) (hcut : highFrequencyCutoff χ A 0 ≤ |ξ|) :
    0 ≤ fullFrequencySymbol χ A ξ :=
  fullFrequencySymbol_ge_of_highCutoff χ A ξ 0 hcut

end GRWTSK.NumberTheory.WeilQuadraticForm.FullFrequencyTail
