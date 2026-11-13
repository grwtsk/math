/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteGammaPrefixFloor
import Mathlib.Tactic

/-!
# A stronger actual Weil form floor at the prime-free radius 1/32

MSC2020: 11M26 (primary), 11M41, 33B15.

The earlier WeilShortWindowCubicRefinement gives a WRITTEN 1/21
pole-inclusive lower floor for every primitive character at A<=1/32.
A 20-term source-exact gamma tail lower bound, using Bernoulli's
degree-12 exponential minorant, yields a stronger WRITTEN 1/16 floor
at the SAME radius. The native gamma tail's positive infinite
remainder is retained. Conductor-one zeta keeps BOTH signed poles.

The Lean source below establishes the genuine scalar exponential
minorant, its direct lower return to the native tailPrefix and
tailMass, exact rational finite coefficient floors, and the
primitive nonprincipal originalArithmeticValue lower theorem.
The separate zeta signed-pole consumer and the complete
completed-zero-sum implication are WRITTEN, not proved in this module.

SOURCE_PROOF_CANDIDATE. Elaborator, complete dependency build, fresh
kernel replay, axiom audit, certified whole-form computation and
independent mathematical review NOT_RUN. Novelty UNASSESSED.
No research axioms, sorry/admit, RH or GRH conclusion.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.BinomialGammaThirtySecond

open ExactGammaTail OptimizedShortWindow GammaHeadIntegrability
open LowSchur CharacterWindow SourcePrimeCorrelation
open OddRootProjection ShortWindow
open ImprovedShortWindow FiniteGammaPrefixFloor

/-- A rational degree-twelve lower polynomial for exp(-x) on [0,12].
It is not a substitute gamma kernel: it is used solely to lower
certify each term of the exact tailPrefix. -/
def binomialMinorant (x : ℝ) : ℝ :=
  (1 - x / 12) ^ 12

/-- Actual exponential dominates the rational polynomial, including the
required nonnegative base at x<=12. This is Bernoulli's inequality,
not a truncated nonconvergent power series. -/
theorem binomialMinorant_le_exp_neg (x : ℝ)
    (hx0 : 0 ≤ x) (hx12 : x ≤ 12) :
    binomialMinorant x ≤ Real.exp (-x) := by
  have hbase : 0 ≤ 1 - x / 12 := by linarith
  have hlin : 1 - x / 12 ≤ Real.exp (-x / 12) := by
    have h := Real.add_one_le_exp (-x / 12)
    linarith
  have hpow :
      (1 - x / 12) ^ 12 ≤ (Real.exp (-x / 12)) ^ 12 := by
    gcongr
  have hexp : (Real.exp (-x / 12)) ^ 12 = Real.exp (-x) := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  unfold binomialMinorant
  rw [hexp] at hpow
  exact hpow

/-- The exact rational lower source uses the same native gamma rates
a+2j+1/2 and a fixed support endpoint A=1/32. -/
def binomialPrefix (a : ℕ) : ℝ :=
  ∑ j ∈ Finset.range 20,
    let b : ℝ := ((a + 2 * j : ℕ) : ℝ) + 1 / 2
    (2 / b) * binomialMinorant (b / 16)

/-- For both physical parity values, the literal source tailPrefix at
each 0<=A<=1/32 dominates the rational binomialPrefix. -/
theorem binomialPrefix_le_tailPrefix (a : ℕ) (ha : a ≤ 1)
    {A : ℝ} (hA : 0 ≤ A) (hsmall : A ≤ 1 / 32) :
    binomialPrefix a ≤ tailPrefix a 20 (2 * A) := by
  unfold binomialPrefix tailPrefix
  apply Finset.sum_le_sum
  intro j hj
  let b : ℝ := ((a + 2 * j : ℕ) : ℝ) + 1 / 2
  have hb : 0 < b := by dsimp [b]; positivity
  have hj20 : j < 20 := Finset.mem_range.mp hj
  have hNat : a + 2 * j ≤ 39 := by omega
  have hb40 : b ≤ 40 := by
    have hcast : (((a + 2 * j : ℕ) : ℝ)) ≤ 39 := by
      exact_mod_cast hNat
    dsimp [b]
    linarith
  have hx : 0 ≤ b / 16 := by positivity
  have hxupper : b / 16 ≤ 12 := by linarith
  have hpoly := binomialMinorant_le_exp_neg (b / 16) hx hxupper
  have hr : -(b / 16) ≤ -(b * (2 * A)) := by
    have hm : 0 ≤ b * ((1 / 32 : ℝ) - A) :=
      mul_nonneg hb.le (sub_nonneg.mpr hsmall)
    nlinarith
  have hexp : Real.exp (-b / 16) ≤ Real.exp (-b * (2 * A)) :=
    Real.exp_le_exp.mpr (by simpa only [neg_div] using hr)
  have hbound : binomialMinorant (b / 16) ≤
      Real.exp (-b * (2 * A)) := hpoly.trans hexp
  have hmul : (2 / b) * binomialMinorant (b / 16) ≤
      (2 / b) * Real.exp (-b * (2 * A)) :=
    mul_le_mul_of_nonneg_left hbound (by positivity)
  have hresult :
      (2 / b) * binomialMinorant (b / 16) ≤
        2 * Real.exp (-b * (2 * A)) / b := by
    calc
      _ ≤ (2 / b) * Real.exp (-b * (2 * A)) := hmul
      _ = 2 * Real.exp (-b * (2 * A)) / b := by ring
  simpa only [b] using hresult

/-- Actual tailMass retains the entire positive infinite remainder,
so it dominates the finite rational binomial lower certificate. -/
theorem binomialPrefix_le_tailMass (a : ℕ) (ha : a ≤ 1)
    {A : ℝ} (hA : 0 < A) (hsmall : A ≤ 1 / 32) :
    binomialPrefix a ≤ tailMass a (2 * A) := by
  exact (binomialPrefix_le_tailPrefix a ha hA.le hsmall).trans
    (tailMass_finite_enclosure a 20 (by positivity : 0 < 2 * A)).1.le

/-- Exact rational certificate: twenty even-parity original gamma rates.
This is an integer polynomial computation, not a rounded evaluation. -/
theorem even_binomialPrefix_floor :
    (45 / 8 : ℝ) ≤ binomialPrefix 0 := by
  norm_num [binomialPrefix, binomialMinorant, Finset.sum_range_succ]

/-- Exact rational certificate for the twenty odd-parity rates.
The 41/16 floor, combined with c_odd>=-5/2, supplies 1/16 E. -/
theorem odd_binomialPrefix_floor :
    (41 / 16 : ℝ) ≤ binomialPrefix 1 := by
  norm_num [binomialPrefix, binomialMinorant, Finset.sum_range_succ]

/-- Source-exact even gamma lower bound, valid for EVERY original
compact supported C1 complex function on A<=1/32. -/
theorem even_originalGamma_ge_forty_five_eighths
    {A : ℝ} (hA : 0 < A) (hsmall : A ≤ 1 / 32)
    {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f)
    (hs : ∀ t, t ∉ Icc (-A) A → f t = 0) :
    (45 / 8 : ℝ) * energy f ≤
      ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity 0 f r := by
  have he : 0 ≤ energy f := by
    unfold energy
    exact integral_nonneg (fun t => sq_nonneg _)
  have htail := (even_binomialPrefix_floor.trans
    (binomialPrefix_le_tailMass 0 (by norm_num) hA hsmall))
  exact (mul_le_mul_of_nonneg_right htail he).trans
    (gammaIntegral_ge_exact_tail_of_contDiff 0 hf hA hs)

/-- Source-exact odd gamma floor, including actual parity, with the
constant required for uniform 1/16 arithmetic coercivity. -/
theorem odd_originalGamma_ge_forty_one_sixteenths
    {A : ℝ} (hA : 0 < A) (hsmall : A ≤ 1 / 32)
    {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f)
    (hs : ∀ t, t ∉ Icc (-A) A → f t = 0) :
    (41 / 16 : ℝ) * energy f ≤
      ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity 1 f r := by
  have he : 0 ≤ energy f := by
    unfold energy
    exact integral_nonneg (fun t => sq_nonneg _)
  have htail := (odd_binomialPrefix_floor.trans
    (binomialPrefix_le_tailMass 1 (by norm_num) hA hsmall))
  exact (mul_le_mul_of_nonneg_right htail he).trans
    (gammaIntegral_ge_exact_tail_of_contDiff 1 hf hA hs)

/-- All original von Mangoldt prime powers vanish by the literal
n<exp(2A) cutoff in this window, no phase rounding. -/
theorem activePrimePowers_empty_thirtysecond
    (A : ℝ) (hsmall : A ≤ 1 / 32) :
    activePrimePowers A = ∅ := by
  have hlog : 2 * A ≤ Real.log 2 := by
    have hh := Real.log_two_gt_d9
    linarith
  have hexp : Real.exp (2 * A) ≤ (2 : ℝ) := by
    calc
      _ ≤ Real.exp (Real.log 2) := Real.exp_le_exp.mpr hlog
      _ = 2 := Real.exp_log (by norm_num)
  exact activePrimePowers_empty_of_exp_le_two A hexp

/-- Exact native primitive NONPRINCIPAL source return at A<=1/32. -/
theorem primitiveArithmeticValue_eq_gamma_thirtysecond
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    (A : ℝ) (hsmall : A ≤ 1 / 32) (f : ℝ → ℂ) :
    primitiveArithmeticValue χ hprimitive hnonprincipal A f =
      gammaConstant q (gammaParity χ) * energy f +
        (∫ r in Ioi (0 : ℝ),
          gammaCorrectionDensity (gammaParity χ) f r) := by
  unfold primitiveArithmeticValue
  have hzero :
      twistedPrime A χ (fun n => correlation f (Real.log (n : ℝ))) = 0 := by
    simp [twistedPrime, activePrimePowers_empty_thirtysecond A hsmall]
  rw [hzero]
  ring

/-- Stronger ALL-COMPLEX-TEST nonprincipal source coercivity at the
SAME A<=1/32 radius as the previous written 1/21 result. -/
theorem primitiveArithmeticValue_ge_sixteenth_thirtysecond
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    {A : ℝ} (hA : 0 < A) (hsmall : A ≤ 1 / 32)
    {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f)
    (hs : ∀ t, t ∉ Icc (-A) A → f t = 0) :
    (1 / 16 : ℝ) * energy f ≤
      primitiveArithmeticValue χ hprimitive hnonprincipal A f := by
  have he : 0 ≤ energy f := by
    unfold energy
    exact integral_nonneg (fun t => sq_nonneg _)
  have hq : 0 < q := NeZero.pos q
  have hparity : gammaParity χ = 0 ∨ gammaParity χ = 1 := by
    have hp := gammaParity_le_one χ
    omega
  rw [primitiveArithmeticValue_eq_gamma_thirtysecond χ hprimitive
    hnonprincipal A hsmall f]
  rcases hparity with h0 | h1
  · rw [h0]
    have hc := gammaConstant_global_floor q 0 hq (by omega)
    have hce := mul_le_mul_of_nonneg_right hc he
    have hg := even_originalGamma_ge_forty_five_eighths hA hsmall hf hs
    linarith
  · rw [h1]
    have hc := gammaConstant_odd_global_floor q hq
    have hce := mul_le_mul_of_nonneg_right hc he
    have hg := odd_originalGamma_ge_forty_one_sixteenths hA hsmall hf hs
    linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.BinomialGammaThirtySecond
