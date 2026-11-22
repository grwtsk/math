/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE; imported into the ORIGINAL isolated Alpoge
Lean v4.33.1 / Mathlib 0df444a360eaa60ab8c11dca51a86af692955474,
NOT the grwtsk/math root Lean 4.34.1.
Elaboration, fresh kernel replay, transitive axiom audit: NOT_RUN.
-/
import Formalism.SharpRestriction.RamificationFrobenius.TotientGaloisClasses.ExplicitFormulaErrorOfHostConditions
import Formalism.StatementOC
import Mathlib.Tactic

/-!
# Original Level.Gm: exact signed prime powers and analytic constants

This module uses the ACTUAL Formalism.HC.Level, PChar, Level.Nt,
Level.wt, An.sumLamChi, An.gChi, An.logDerivativeAtOne, Gz, Sz,
and vonMangoldt. No final RH theorem or zero-indexed operator is imported.

The classical arithmetic expansion is valid for x >= 1, as the
positive-part max in An.sumLamChi is redundant on n <= floor x.
The exceptional chi=1 branch is impossible on Level.Nt, proved from
PChar.of_self and PChar.of_one rather than silently assumed.
All genuine conductor, parity and log-derivative data remain intact.

Source proofs are candidates until elaborated by Lean itself.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.AlpogeNativeGmNormalization

open Complex Formalism Formalism.HC
open scoped BigOperators

/-- The EXACT source multiplier, without taking absolute values of
original signed character coefficients. -/
def signedPhase (Λ : Level) (n : ℕ) : ℝ :=
  1 + ∑ ψ ∈ Λ.Nt, Λ.wt ψ * (ψ.χ n).re

/-- The literal analytic affine correction, including the actual
Euler-Mascheroni constant and nonprincipal L'/L(1,chi) values. -/
def analyticConstant (Λ : Level) : ℝ :=
  1 + Real.eulerMascheroniConstant +
    ∑ ψ ∈ Λ.Nt, Λ.wt ψ * (An.logDerivativeAtOne ψ.χ).re

/-- Exactly the real finite prime-power source in the native Gm. -/
def signedSmoothedPrimeHead (Λ : Level) (x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
    (ArithmeticFunction.vonMangoldt n : ℝ) *
      signedPhase Λ n * (x / (n : ℝ) - 1)

/-- Exact target normalization, not a zero-side spectral redefinition. -/
def normalizedGm (Λ : Level) (x : ℝ) : ℝ :=
  signedSmoothedPrimeHead Λ x - x * Real.log x +
    analyticConstant Λ * x

/-- Each member of the ORIGINAL nonprincipal character set is
genuinely nontrivial. This is not a convenience assumption. -/
theorem nontrivial_of_mem_Nt (Λ : Level) (ψ : PChar)
    (hmem : ψ ∈ Λ.Nt) : ψ.χ ≠ 1 := by
  have hne : ψ ≠ PChar.one := (Finset.mem_erase.mp hmem).1
  intro hχ
  have hp : PChar.of ψ.χ = PChar.one := by
    rw [hχ]
    exact PChar.of_one ψ.N
  exact hne ((PChar.of_self ψ).symm.trans hp)

/-- On the original closed source cutoff, max(x/n-1,0) is
definitionally equivalent to x/n-1 when x>=1. -/
theorem source_clip_eq_unclipped (x : ℝ) (hx : 1 ≤ x)
    (n : ℕ) (hn : n ∈ Finset.Icc 1 ⌊x⌋₊) :
    max (x / (n : ℝ) - 1) 0 = x / (n : ℝ) - 1 := by
  have hle : n ≤ ⌊x⌋₊ := (Finset.mem_Icc.mp hn).2
  have hpos : 0 < n := by
    have hlow := (Finset.mem_Icc.mp hn).1
    omega
  have hnx : (n : ℝ) ≤ x :=
    (Nat.le_floor_iff (by linarith)).mp hle
  have hnr : 0 < (n : ℝ) := by exact_mod_cast hpos
  have hrat : 1 ≤ x / (n : ℝ) := by
    apply (le_div_iff₀ hnr).mpr
    simpa only [one_mul] using hnx
  exact max_eq_left (sub_nonneg.mpr hrat)

/-- The actual complex An.sumLamChi arithmetic term, projected only
AFTER the original character multiplication. -/
theorem sumLamChi_real_eq_signed_head (Λ : Level) (ψ : PChar)
    (x : ℝ) (hx : 1 ≤ x) :
    (An.sumLamChi ψ.χ x).re =
      ∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
        (ArithmeticFunction.vonMangoldt n : ℝ) *
          (ψ.χ n).re * (x / (n : ℝ) - 1) := by
  unfold An.sumLamChi
  rw [Complex.re_sum]
  apply Finset.sum_congr rfl
  intro n hn
  rw [source_clip_eq_unclipped x hx n hn]
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    mul_zero, zero_mul, sub_zero]
  ring

/-- Nontrivial An.gChi uses the true complex L'/L correction;
the trivial-character G branch is proved impossible on Nt. -/
theorem gChi_real_eq_signed_head_add_correction
    (Λ : Level) (ψ : PChar) (hψ : ψ ∈ Λ.Nt)
    (x : ℝ) (hx : 1 ≤ x) :
    (An.gChi ψ.χ x).re =
      (∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
        (ArithmeticFunction.vonMangoldt n : ℝ) *
          (ψ.χ n).re * (x / (n : ℝ) - 1)) +
        x * (An.logDerivativeAtOne ψ.χ).re := by
  have hn := nontrivial_of_mem_Nt Λ ψ hψ
  rw [An.gChi, if_neg hn, Complex.add_re]
  rw [sumLamChi_real_eq_signed_head Λ ψ x hx]
  simp only [Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im, mul_zero, sub_zero]
  ring

/-- All true signed character heads are rearranged FINITELY, with
no absolute-value projection and without inventing a character.
This is an algebraic identity for the ORIGINAL Level.Nt. -/
theorem arithmetic_head_finite_rearrangement (Λ : Level) (x : ℝ) :
    (∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
      (ArithmeticFunction.vonMangoldt n : ℝ) *
        (x / (n : ℝ) - 1)) +
    (∑ ψ ∈ Λ.Nt, Λ.wt ψ *
      (∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
        (ArithmeticFunction.vonMangoldt n : ℝ) *
        (ψ.χ n).re * (x / (n : ℝ) - 1))) =
      signedSmoothedPrimeHead Λ x := by
  classical
  have hswap :
      (∑ ψ ∈ Λ.Nt, Λ.wt ψ *
          (∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
            (ArithmeticFunction.vonMangoldt n : ℝ) *
            (ψ.χ n).re * (x / (n : ℝ) - 1))) =
      ∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
        ∑ ψ ∈ Λ.Nt, Λ.wt ψ *
          ((ArithmeticFunction.vonMangoldt n : ℝ) *
            (ψ.χ n).re * (x / (n : ℝ) - 1)) := by
    simp_rw [Finset.mul_sum]
    rw [Finset.sum_comm]
  rw [hswap, ← Finset.sum_add_distrib]
  unfold signedSmoothedPrimeHead signedPhase
  apply Finset.sum_congr rfl
  intro n _
  calc
    (ArithmeticFunction.vonMangoldt n : ℝ) * (x / (n : ℝ) - 1) +
        (∑ ψ ∈ Λ.Nt, Λ.wt ψ *
           ((ArithmeticFunction.vonMangoldt n : ℝ) *
             (ψ.χ n).re * (x / (n : ℝ) - 1))) =
      (ArithmeticFunction.vonMangoldt n : ℝ) * (x / (n : ℝ) - 1) +
        (∑ ψ ∈ Λ.Nt, Λ.wt ψ * (ψ.χ n).re) *
          ((ArithmeticFunction.vonMangoldt n : ℝ) *
            (x / (n : ℝ) - 1)) := by
      rw [Finset.sum_mul]
      apply congrArg (fun z : ℝ =>
        (ArithmeticFunction.vonMangoldt n : ℝ) * (x / (n : ℝ) - 1) + z)
      apply Finset.sum_congr rfl
      intro ψ _
      ring
    _ = (ArithmeticFunction.vonMangoldt n : ℝ) *
          (1 + ∑ ψ ∈ Λ.Nt, Λ.wt ψ * (ψ.χ n).re) *
             (x / (n : ℝ) - 1) := by ring

/-- Fundamental source theorem: native Level.Gm equals its
complete finite signed prime-power sum plus the entire ORIGINAL
linear log-derivative/Euler correction, for EVERY x>=1.
No RH theorem, no positivity and no unproved zero-free conclusion. -/
theorem levelGm_eq_normalized (Λ : Level) (x : ℝ)
    (hx : 1 ≤ x) : Λ.Gm x = normalizedGm Λ x := by
  classical
  have hsource :
      (∑ ψ ∈ Λ.Nt, Λ.wt ψ * (An.gChi ψ.χ x).re) =
        (∑ ψ ∈ Λ.Nt, Λ.wt ψ *
           (∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
              (ArithmeticFunction.vonMangoldt n : ℝ) *
                 (ψ.χ n).re * (x / (n : ℝ) - 1))) +
        (∑ ψ ∈ Λ.Nt, Λ.wt ψ *
              (x * (An.logDerivativeAtOne ψ.χ).re)) := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro ψ hψ
    rw [gChi_real_eq_signed_head_add_correction Λ ψ hψ x hx]
    ring
  unfold Level.Gm Formalism.Gz Formalism.Sz normalizedGm
    analyticConstant
  rw [hsource]
  have hs := arithmetic_head_finite_rearrangement Λ x
  rw [← hs]
  rw [Finset.mul_sum]
  ring

end GRWTSK.NumberTheory.AlpogeNativeGmNormalization
