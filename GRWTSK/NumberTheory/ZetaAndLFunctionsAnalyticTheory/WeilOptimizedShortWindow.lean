/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilImprovedShortWindow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaHeadIntegrability
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilExactGammaTail
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic

/-!
# Source-exact optimized gamma tail and larger prime-free Weil window

MSC2020: 11M26 (primary), 11M41, 33B15.

For the ORIGINAL archimedean parity kernel, the affine lower bound
  K_a(r) >= 1/(2r) - (a+1/2)/2
holds until the numerator reaches zero, i.e. (a+1/2)*r <= 1.
For parities a=0 and a=1 this permits the COMPLETE physical ranges
(0,2] and (0,2/3], rather than the previous (0,1/4].

The exact full gamma-source return at EVERY supported C1 test is
  Gamma_a(f) >= tailMass(a,2A)*energy(f),
using the native head-integrability theorem, its actual nonnegative
head, and the exact supported energy tail. No assumption harch, no
positivity certificate and no substitute operator is introduced.

The WRITTEN companion WeilOptimizedShortWindow.md integrates this
affine comparison over [2A, 1/(a+1/2)] and proves unconditional
Q_chi,A(f)>=(1/16)*E(f) for every primitive Dirichlet character and
0<A<=1/800, including conductor-one zeta with both signed pole
orientations and stronger (1/8)*E(f) for primitive nonprincipal χ.
Those final interval-integral and zeta assertions are WRITTEN,
not Lean declarations in this file.

Individual declarations here prove the pointwise kernel inequality,
the exact full physical gamma tail return without added integrability
premises, parity-relative gamma constant, rigorous rational log
comparisons, the actual all-prime-power empty inventory, and the literal
primitive nonprincipal arithmetic return. No RH or GRH assumption.

SOURCE_PROOF_CANDIDATE; Lean elaboration, complete import build,
fresh kernel replay, transitive axiom audit, independent review and
certified whole-form computation NOT_RUN. Novelty UNASSESSED.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OptimizedShortWindow

open OddRootProjection SourcePrimeCorrelation LowSchur ShortWindow
open CharacterWindow GammaHeadIntegrability ExactGammaTail
open ImprovedShortWindow

/-- The ORIGINAL parity kernel's affine lower barrier works until
its numerator reaches zero, with no restriction to a fixed 1/4 cutoff.
In particular its natural upper shift is 2 for a=0 and 2/3 for a=1. -/
theorem parityKernel_ge_affine_of_rate_mul_le_one (a : ℕ) {r : ℝ}
    (hr : 0 < r) (hrange : ((a : ℝ) + 1 / 2) * r ≤ 1) :
    1 / (2 * r) - (((a : ℝ) + 1 / 2) / 2) ≤
      parityKernel a r := by
  let b : ℝ := (a : ℝ) + 1 / 2
  have hnum : 0 ≤ 1 - b * r := sub_nonneg.mpr hrange
  have hdenpos : 0 < 1 - Real.exp (-2 * r) := by
    have h := Real.exp_lt_exp.mpr
      (show -2 * r < (0 : ℝ) by linarith)
    simpa only [Real.exp_zero] using (sub_pos.mpr h)
  have hdenle : 1 - Real.exp (-2 * r) ≤ 2 * r := by
    have h := Real.add_one_le_exp (-2 * r)
    linarith
  have hnumle : 1 - b * r ≤ Real.exp (-b * r) := by
    have h := Real.add_one_le_exp (-b * r)
    linarith
  have hbound :
      (1 - b * r) / (2 * r) ≤
        Real.exp (-b * r) / (1 - Real.exp (-2 * r)) := by
    apply (div_le_div_iff₀ (by positivity : 0 < 2 * r) hdenpos).2
    calc
      (1 - b * r) * (1 - Real.exp (-2 * r)) ≤
          (1 - b * r) * (2 * r) :=
        mul_le_mul_of_nonneg_left hdenle hnum
      _ ≤ Real.exp (-b * r) * (2 * r) :=
        mul_le_mul_of_nonneg_right hnumle (by positivity)
  change 1 / (2 * r) - b / 2 ≤ parityKernel a r
  calc
    1 / (2 * r) - b / 2 = (1 - b * r) / (2 * r) := by
      field_simp [ne_of_gt hr]
      ring
    _ ≤ parityKernel a r := hbound

/-- The genuine archimedean integral of ANY compact supported C1
complex source dominates its EXACT supported physical tail. This
discharges the old integral regularity and head-sign premises rather
than simply exposing them as new assumptions. Valid for every A>0. -/
theorem gammaIntegral_ge_exact_tail_of_contDiff (a : ℕ)
    {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f) {A : ℝ}
    (hA : 0 < A)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0) :
    tailMass a (2 * A) * energy f ≤
      ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r := by
  have hA0 : 0 ≤ A := le_of_lt hA
  have hR0 : 0 ≤ 2 * A := by linarith
  have hRpos : 0 < 2 * A := by linarith
  have hcompact : HasCompactSupport f :=
    HasCompactSupport.intro isCompact_Icc hsupport
  have hfLp : MemLp f 2 volume :=
    hf.continuous.memLp_of_hasCompactSupport hcompact
  obtain ⟨L, hL⟩ := exists_lipschitzWith_of_contDiff_compact hf hcompact
  have hhead : 0 ≤
      (∫ r in Ioc (0 : ℝ) (2 * A), gammaCorrectionDensity a f r) :=
    (gammaCorrection_head_budget a hL hfLp
      (A := A) (R := 2 * A) (ε := 2 * A)
      hA0 hR0 hsupport hR0 (le_refl (2 * A))).1
  have hsplit := gammaCorrection_eq_head_add_tail_of_contDiff a hf
    (A := A) (R := 2 * A) hA0 hRpos hsupport (le_refl (2 * A))
  rw [hsplit]
  linarith

/-- The exact dual-character parity shift pays the difficult odd
archimedean constant by π; no artificial gamma normalization. -/
theorem gammaConstant_odd_global_floor (q : ℕ) (hq : 0 < q) :
    -(5 / 2 : ℝ) ≤ gammaConstant q 1 := by
  have heven := gammaConstant_global_floor q 0 hq (by norm_num)
  have hodd := gammaConstant_odd_eq_even_add_pi q
  have hpi := Real.pi_gt_three
  linarith

/-- Explicit exact-rational comparison:
(exp(1)<68/25) implies exp(53/8)^8=exp(53)<(68/25)^53<800^8.
This proves the logarithmic threshold without rounded transcendental
evaluations or an approximate numerical certificate. -/
theorem exp_fifty_three_eighths_lt_eight_hundred :
    Real.exp (53 / 8 : ℝ) < 800 := by
  have he1 : Real.exp (1 : ℝ) < (68 / 25 : ℝ) :=
    Real.exp_one_lt_d9.trans (by norm_num)
  have h53pow : Real.exp (53 / 8 : ℝ) ^ 8 =
      Real.exp (53 : ℝ) := by
    have h := Real.exp_nat_mul (53 / 8 : ℝ) 8
    convert h.symm using 1 <;> norm_num
  have h53 : Real.exp (53 : ℝ) = Real.exp (1 : ℝ) ^ 53 := by
    simpa using Real.exp_nat_mul (1 : ℝ) 53
  have hpow : (Real.exp (1 : ℝ)) ^ 53 <
      (68 / 25 : ℝ) ^ 53 :=
    pow_lt_pow_left₀ he1 (by norm_num) (by norm_num)
  have hrational : (68 / 25 : ℝ) ^ 53 < 800 ^ 8 := by norm_num
  have hall : Real.exp (53 / 8 : ℝ) ^ 8 < (800 : ℝ) ^ 8 := by
    calc
      _ = Real.exp (53 : ℝ) := h53pow
      _ = Real.exp (1 : ℝ) ^ 53 := h53
      _ < (68 / 25 : ℝ) ^ 53 := hpow
      _ < 800 ^ 8 := hrational
  exact lt_of_pow_lt_pow_left₀ 8 (by norm_num : (0 : ℝ) ≤ 800) hall

/-- Exact even-parity logarithmic floor for the enlarged source radius. -/
theorem even_log_floor {A : ℝ} (hA : 0 < A)
    (hsmall : A ≤ 1 / 800) :
    (53 / 8 : ℝ) < Real.log (1 / A) := by
  have hden : 0 < A := hA
  have hratio : (800 : ℝ) ≤ 1 / A := by
    apply (le_div_iff₀ hden).2
    nlinarith [hsmall]
  exact (Real.lt_log_iff_exp_lt (by positivity)).2
    (lt_of_lt_of_le exp_fifty_three_eighths_lt_eight_hundred hratio)

/-- The odd parity's shorter optimal shift still has a large margin;
exp(5)<(68/25)^5<800/3, so log(1/(3A))>5. -/
theorem odd_log_floor {A : ℝ} (hA : 0 < A)
    (hsmall : A ≤ 1 / 800) :
    (5 : ℝ) < Real.log (1 / (3 * A)) := by
  have he1 : Real.exp (1 : ℝ) < (68 / 25 : ℝ) :=
    Real.exp_one_lt_d9.trans (by norm_num)
  have h5 : Real.exp (5 : ℝ) < (800 / 3 : ℝ) := by
    calc
      _ = Real.exp (1 : ℝ) ^ 5 := by
        simpa using Real.exp_nat_mul (1 : ℝ) 5
      _ < (68 / 25 : ℝ) ^ 5 :=
        pow_lt_pow_left₀ he1 (by norm_num) (by norm_num)
      _ < 800 / 3 := by norm_num
  have hden : 0 < 3 * A := by positivity
  have hratio : (800 / 3 : ℝ) ≤ 1 / (3 * A) := by
    apply (le_div_iff₀ hden).2
    nlinarith [hsmall]
  exact (Real.lt_log_iff_exp_lt (by positivity)).2
    (lt_of_lt_of_le h5 hratio)

/-- The ORIGINAL complete von Mangoldt inventory is empty in this
entire enlarged window, including the strict n=2 threshold. -/
theorem primeInventory_empty_optimized
    (A : ℝ) (hsmall : A ≤ 1 / 800) :
    activePrimePowers A = ∅ := by
  have hlog : 2 * A ≤ Real.log 2 := by
    have hh := Real.log_two_gt_d9
    linarith
  have hexp : Real.exp (2 * A) ≤ (2 : ℝ) := by
    calc
      _ ≤ Real.exp (Real.log 2) := Real.exp_le_exp.mpr hlog
      _ = 2 := Real.exp_log (by norm_num)
  exact activePrimePowers_empty_of_exp_le_two A hexp

/-- The original primitive NONPRINCIPAL arithmetic source has no
prime contribution here. The physical gamma integral remains literal,
not replaced by an assumed positive model or free hypothesis. -/
theorem primitiveArithmeticValue_eq_gamma_optimized {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    (A : ℝ) (hsmall : A ≤ 1 / 800) (f : ℝ → ℂ) :
    primitiveArithmeticValue χ hprimitive hnonprincipal A f =
      gammaConstant q (gammaParity χ) * energy f +
        (∫ r in Ioi (0 : ℝ),
          gammaCorrectionDensity (gammaParity χ) f r) := by
  unfold primitiveArithmeticValue
  have hzero :
      twistedPrime A χ (fun n => correlation f (Real.log (n : ℝ))) = 0 := by
    simp [twistedPrime, primeInventory_empty_optimized A hsmall]
  rw [hzero]
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.OptimizedShortWindow
