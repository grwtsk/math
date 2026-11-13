/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOptimizedShortWindow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilExactGammaTail
import Mathlib.Tactic

/-!
# Twelve exact gamma-tail terms: direct source positivity at a prime-free window

MSC2020: 11M26 (primary), 11M41, 33B15.

This source does NOT truncate the physical gamma form as a new definition.
The native ExactGammaTail.tailMass_eq_prefix_add_remainder retains the exact
positive remainder of the genuine archimedean kernel. Apply exp(-x)>=1-x
to each of twelve terms, and use the preceding original C1 gamma source
return to bound the full physical archimedean integral without an harch
certificate or a guessed finite-interval quadrature.

The resulting WRITTEN, not-yet-Lean-checked theorem is:
  0<A<=1/50, primitive q>1: Q_chi,A(f)>=E(f)/8;
  q=1 zeta: Q_zeta,A(f)>=E(f)/16 with BOTH signed pole orientations.
This improves the coercivity coefficient over the older 1/21 estimate on
the overlapping subwindow, but is NOT a larger support interval than
the existing WRITTEN A<=1/32 cubic refinement. No novelty claimed.

The Lean consumers below cover the precise finite prefix lower bound,
genuine source gamma lower bound, exact finite rational parity floors
and direct primitive nonprincipal source arithmetic inequality.
The separate zeta pole Cauchy budget and full two-pole result remain
WRITTEN mathematics, NOT a new Lean declaration in this module.

SOURCE_PROOF_CANDIDATE. Elaboration/full dependency build, fresh kernel
replay, transitive axiom audit, certified numerics, independent review
NOT_RUN. No RH/GRH assumption, new axiom, sorry or admit.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FiniteGammaPrefixFloor

open OddRootProjection SourcePrimeCorrelation ExactGammaTail
open GammaHeadIntegrability OptimizedShortWindow
open LowSchur CharacterWindow ShortWindow

/-- The exact twelve-term method works at any natural prefix length and
parity rate, using the true native gamma rates a+2j+1/2. -/
def affinePrefix (a n : ℕ) (A : ℝ) : ℝ :=
  ∑ j ∈ Finset.range n,
    (2 / (((a + 2 * j : ℕ) : ℝ) + 1 / 2) - 4 * A)

/-- A lower bound on the ACTUAL finite tailPrefix, not on a substitute
kernel. The exponential lower bound is applied term by term. -/
theorem affinePrefix_le_tailPrefix (a n : ℕ) (A : ℝ) :
    affinePrefix a n A ≤ tailPrefix a n (2 * A) := by
  unfold affinePrefix tailPrefix
  apply Finset.sum_le_sum
  intro j hj
  let b : ℝ := ((a + 2 * j : ℕ) : ℝ) + 1 / 2
  have hb : 0 < b := by
    dsimp [b]
    positivity
  have hexp : 1 - b * (2 * A) ≤ Real.exp (-b * (2 * A)) := by
    have h := Real.add_one_le_exp (-b * (2 * A))
    linarith
  have hid : (2 / b - 4 * A) * b = 2 * (1 - b * (2 * A)) := by
    field_simp [ne_of_gt hb]
    ring
  have hmul : (2 / b - 4 * A) * b ≤
      2 * Real.exp (-b * (2 * A)) := by
    rw [hid]
    linarith
  have hbound : 2 / b - 4 * A ≤
      2 * Real.exp (-b * (2 * A)) / b :=
    (le_div_iff₀ hb).2 hmul
  simpa only [b] using hbound

/-- Source-exact positive-remainder return:
each finite rational exponential prefix is below the TRUE full tail. -/
theorem affinePrefix_le_tailMass (a n : ℕ) {A : ℝ} (hA : 0 < A) :
    affinePrefix a n A ≤ tailMass a (2 * A) := by
  have hpos : 0 < 2 * A := by positivity
  exact (affinePrefix_le_tailPrefix a n A).trans
    (tailMass_finite_enclosure a n hpos).1.le

/-- The original smooth complex source's COMPLETE gamma integral
dominates the rational finite prefix. Genuine integrability and
nonnegative omitted head are supplied by OptimizedShortWindow. -/
theorem originalGamma_ge_affinePrefix (a n : ℕ)
    {A : ℝ} (hA : 0 < A) {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f)
    (hs : ∀ t, t ∉ Icc (-A) A → f t = 0) :
    affinePrefix a n A * energy f ≤
      ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r := by
  have henergy : 0 ≤ energy f := by
    unfold energy
    exact integral_nonneg (fun t => sq_nonneg _)
  have htail := affinePrefix_le_tailMass a n hA
  exact (mul_le_mul_of_nonneg_right htail henergy).trans
    (gammaIntegral_ge_exact_tail_of_contDiff a hf hA hs)

/-- Finite exact rational check, all 12 even rates (4j+1).
No floating point approximation or fixed tolerance is involved. -/
private theorem even_fixed_rational :
    (45 / 8 : ℝ) ≤ affinePrefix 0 12 (1 / 50) := by
  unfold affinePrefix
  norm_num [Finset.sum_range_succ]

/-- Finite exact rational check, all 12 odd rates (4j+3). -/
private theorem odd_fixed_rational :
    (21 / 8 : ℝ) ≤ affinePrefix 1 12 (1 / 50) := by
  unfold affinePrefix
  norm_num [Finset.sum_range_succ]

private theorem affinePrefix_antitone_in_radius (a n : ℕ)
    {A B : ℝ} (hAB : A ≤ B) :
    affinePrefix a n B ≤ affinePrefix a n A := by
  unfold affinePrefix
  apply Finset.sum_le_sum
  intro j hj
  linarith

/-- A source-bound even tail floor valid for all 0<A<=1/50,
rather than for finitely many sampled test functions. -/
theorem even_tailMass_ge_forty_five_eighths
    {A : ℝ} (hA : 0 < A) (hsmall : A ≤ 1 / 50) :
    (45 / 8 : ℝ) ≤ tailMass 0 (2 * A) := by
  exact (even_fixed_rational.trans
    (affinePrefix_antitone_in_radius 0 12 hsmall)).trans
      (affinePrefix_le_tailMass 0 12 hA)

/-- Corresponding odd-rate bound, retaining the original parity. -/
theorem odd_tailMass_ge_twenty_one_eighths
    {A : ℝ} (hA : 0 < A) (hsmall : A ≤ 1 / 50) :
    (21 / 8 : ℝ) ≤ tailMass 1 (2 * A) := by
  exact (odd_fixed_rational.trans
    (affinePrefix_antitone_in_radius 1 12 hsmall)).trans
      (affinePrefix_le_tailMass 1 12 hA)

/-- The ORIGINAL even-parity gamma form has this full-source lower floor,
not merely a pointwise kernel or an integral with an assumed sign. -/
theorem even_originalGamma_floor
    {A : ℝ} (hA : 0 < A) (hsmall : A ≤ 1 / 50)
    {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f)
    (hs : ∀ t, t ∉ Icc (-A) A → f t = 0) :
    (45 / 8 : ℝ) * energy f ≤
      ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity 0 f r := by
  have he : 0 ≤ energy f := by
    unfold energy
    exact integral_nonneg (fun t => sq_nonneg _)
  exact (mul_le_mul_of_nonneg_right
    (even_tailMass_ge_forty_five_eighths hA hsmall) he).trans
      (gammaIntegral_ge_exact_tail_of_contDiff 0 hf hA hs)

/-- The ORIGINAL odd-parity gamma form has a sharp-enough rational
floor for the direct primitive arithmetic consumer below. -/
theorem odd_originalGamma_floor
    {A : ℝ} (hA : 0 < A) (hsmall : A ≤ 1 / 50)
    {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f)
    (hs : ∀ t, t ∉ Icc (-A) A → f t = 0) :
    (21 / 8 : ℝ) * energy f ≤
      ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity 1 f r := by
  have he : 0 ≤ energy f := by
    unfold energy
    exact integral_nonneg (fun t => sq_nonneg _)
  exact (mul_le_mul_of_nonneg_right
    (odd_tailMass_ge_twenty_one_eighths hA hsmall) he).trans
      (gammaIntegral_ge_exact_tail_of_contDiff 1 hf hA hs)

/-- At A<=1/50 no genuine prime power is active: this uses the
ORIGINAL strict n<exp(2A) inventory, not a rounded cutoff. -/
theorem activePrimePowers_empty_fiftieth (A : ℝ)
    (hsmall : A ≤ 1 / 50) : activePrimePowers A = ∅ := by
  have hlog : 2 * A ≤ Real.log 2 := by
    have hh := Real.log_two_gt_d9
    linarith
  have hexp : Real.exp (2 * A) ≤ (2 : ℝ) := by
    calc
      _ ≤ Real.exp (Real.log 2) := Real.exp_le_exp.mpr hlog
      _ = 2 := Real.exp_log (by norm_num)
  exact activePrimePowers_empty_of_exp_le_two A hexp

/-- Return directly to the unchanged primitive NONPRINCIPAL arithmetic
source, including all original parity/conductor coefficients. -/
theorem primitiveArithmeticValue_eq_gamma_fiftieth
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    (A : ℝ) (hsmall : A ≤ 1 / 50) (f : ℝ → ℂ) :
    primitiveArithmeticValue χ hprimitive hnonprincipal A f =
      gammaConstant q (gammaParity χ) * energy f +
        (∫ r in Ioi (0 : ℝ),
          gammaCorrectionDensity (gammaParity χ) f r) := by
  unfold primitiveArithmeticValue
  have hzero :
      twistedPrime A χ (fun n => correlation f (Real.log (n : ℝ))) = 0 := by
    simp [twistedPrime, activePrimePowers_empty_fiftieth A hsmall]
  rw [hzero]
  ring

/-- Genuine all-complex-test primitive NONPRINCIPAL fixed-window
coercivity; no positive-model replacement, sampled source or axiom.
The separate conductor-one zeta pole remains a WRITTEN consumer. -/
theorem primitiveArithmeticValue_ge_eighth_fiftieth
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    {A : ℝ} (hA : 0 < A) (hsmall : A ≤ 1 / 50)
    {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f)
    (hs : ∀ t, t ∉ Icc (-A) A → f t = 0) :
    (1 / 8 : ℝ) * energy f ≤
      primitiveArithmeticValue χ hprimitive hnonprincipal A f := by
  have hq : 0 < q := NeZero.pos q
  have hparity : gammaParity χ = 0 ∨ gammaParity χ = 1 := by
    have hp := gammaParity_le_one χ
    omega
  have he : 0 ≤ energy f := by
    unfold energy
    exact integral_nonneg (fun t => sq_nonneg _)
  rw [primitiveArithmeticValue_eq_gamma_fiftieth χ hprimitive
    hnonprincipal A hsmall f]
  rcases hparity with h0 | h1
  · rw [h0]
    have hc := gammaConstant_global_floor q 0 hq (by omega)
    have hcE := mul_le_mul_of_nonneg_right hc he
    have hg := even_originalGamma_floor hA hsmall hf hs
    linarith
  · rw [h1]
    have hc := gammaConstant_odd_global_floor q hq
    have hcE := mul_le_mul_of_nonneg_right hc he
    have hg := odd_originalGamma_floor hA hsmall hf hs
    linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.FiniteGammaPrefixFloor
