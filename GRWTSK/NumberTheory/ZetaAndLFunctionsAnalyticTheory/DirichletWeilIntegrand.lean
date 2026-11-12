/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletLogarithmicResidues
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaData
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorFrontier
import Mathlib.NumberTheory.MulChar.Lemmas
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Exact arithmetic decomposition of the Weil contour integrand

MSC2020: 11M06, 11M26, 11M41, 30E20.
The actual completedLFunction is GammaR(s+a)*LFunction, WITHOUT N^(s/2).
Its functional equation therefore contributes the entire -log N to the
reflected logarithmic derivative. The inverse character and genuine parity
are retained. The root number is proved nonzero before it is cancelled.
The prime series is used ONLY in Re(s)>1, where its convergence and the
continued-source correspondence are supplied by pinned Mathlib.

The final weighted identity is pointwise, before integration. The adjacent
README proves the finite rectangular residue identity and evaluates its
arithmetic integrals analytically, retaining BOTH horizontal edges, vertical
tails, both zeta poles and finite-height sinc smoothing. Those contour and
inversion arguments are NOT claimed as Lean declarations in this file.

Source-return correction: the canonical twistedPrime uses conj(chi(n))*C(log n).
With W(s)=integral C(r)*exp((s-1/2)*r), the chi zero side instead gives
chi(n)*C(log n). The final adapter proves return to the UNCHANGED canonical
arithmetic value for chi inverse. A same-character identification is not asserted.

SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom
audit and independent review NOT_RUN. Novelty UNASSESSED. Issue math#1801.
No RH/GRH hypothesis, research axiom, new arithmetic target, or replacement
completion. Individual source/provenance records accompany every declaration.
-/

set_option autoImplicit false
noncomputable section

open Filter Set MeasureTheory
open scoped Topology ComplexConjugate BigOperators
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection

namespace GRWTSK.NumberTheory.WeilNegativeWitness

variable {N : ℕ} [NeZero N]

private theorem logDeriv_exp_affine (b c s : ℂ) :
    logDeriv (fun z : ℂ => Complex.exp (b * z + c)) s = b := by
  have hd : HasDerivAt (fun z : ℂ => Complex.exp (b * z + c))
      (Complex.exp (b * s + c) * b) s := by
    simpa only [mul_one] using (((hasDerivAt_id s).const_mul b).add_const c).cexp
  rw [logDeriv_apply, hd.deriv]
  field_simp [Complex.exp_ne_zero]
  <;> ring

private theorem logDeriv_cpow_affine (b : ℂ) (hb : b ≠ 0) (u v s : ℂ) :
    logDeriv (fun z : ℂ => b ^ (u * z + v)) s = Complex.log b * u := by
  have heq : (fun z : ℂ => b ^ (u * z + v)) =
      fun z : ℂ => Complex.exp ((Complex.log b * u) * z + Complex.log b * v) := by
    funext z
    rw [Complex.cpow_def_of_ne_zero hb]
    congr 1
    ring
  rw [heq, logDeriv_exp_affine]

/-- The dual character has exactly the same genuine gamma parity. -/
theorem gammaParity_inverse (chi : DirichletCharacter ℂ N) :
    gammaParity chi⁻¹ = gammaParity chi := by
  classical
  have hm : chi (-1) * chi⁻¹ (-1) = 1 := by
    rw [← MulChar.mul_apply, mul_inv_cancel]
    exact MulChar.one_apply (isUnit_one.neg)
  have he : chi⁻¹ (-1) = 1 ↔ chi (-1) = 1 := by
    constructor
    · intro h
      simpa only [h, mul_one] using hm
    · intro h
      simpa only [h, one_mul] using hm
  unfold gammaParity
  simp only [he]

/-- Euler nonvanishing and the actual nonzero gamma factor give nonvanishing
of the continued completed source on its right boundary. -/
theorem completedLFunction_ne_zero_right_of_euler
    (chi : DirichletCharacter ℂ N) {s : ℂ} (hs : 1 < s.re) :
    DirichletCharacter.completedLFunction chi s ≠ 0 := by
  have hL : DirichletCharacter.LFunction chi s ≠ 0 := by
    rw [chi.LFunction_eq_LSeries hs]
    exact chi.LSeries_ne_zero_of_one_lt_re hs
  have hp : 0 < s.re := lt_trans (by norm_num) hs
  rw [completedLFunction_eq_LFunction_mul_gammaFactor_of_re_pos chi hp]
  exact mul_ne_zero hL (gammaFactor_regular_of_re_pos chi hp).2

/-- Nonvanishing of the root number follows from the exact functional equation
and the actual nonzero center at 2; it is not assumed as a new interface field. -/
theorem rootNumber_ne_zero_from_completed_source
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) :
    DirichletCharacter.rootNumber chi ≠ 0 := by
  intro hz
  have heq := hprim.completedLFunction_one_sub (-1 : ℂ)
  have hn := completedLFunction_ne_zero_right_of_euler chi
    (s := (2 : ℂ)) (by norm_num)
  apply hn
  simpa only [show (1 - (-1) : ℂ) = 2 by norm_num, hz, mul_zero, zero_mul] using heq

/-- The reflected left boundary is nonzero for the actual source, including zeta. -/
theorem completedLFunction_ne_zero_left_of_euler
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    {s : ℂ} (hs : 1 < s.re) :
    DirichletCharacter.completedLFunction chi (1 - s) ≠ 0 := by
  rw [hprim.completedLFunction_one_sub]
  exact mul_ne_zero
    (mul_ne_zero (Complex.cpow_ne_zero_iff.mpr (.inl (by exact_mod_cast (NeZero.ne N))))
      (rootNumber_ne_zero_from_completed_source chi hprim))
    (completedLFunction_ne_zero_right_of_euler chi⁻¹ hs)

/-- The full conductor term and the inverse-character logarithmic derivative.
No choice of logarithm of the L-function or of the root number is made. -/
theorem completedLFunction_logDeriv_dual_right
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    {s : ℂ} (hs : 1 < s.re) :
    logDeriv (DirichletCharacter.completedLFunction chi) (1 - s) =
      -(Real.log (N : ℝ) : ℂ) -
        logDeriv (DirichletCharacter.completedLFunction chi⁻¹) s := by
  have hN : (N : ℂ) ≠ 0 := by exact_mod_cast (NeZero.ne N)
  have hs0 : s ≠ 0 := by intro h; simp [h] at hs
  have hs1 : s ≠ 1 := by intro h; simp [h] at hs
  have ht0 : 1 - s ≠ 0 := sub_ne_zero.mpr hs1.symm
  have ht1 : 1 - s ≠ 1 := by
    intro h
    apply hs0
    linear_combination -h
  have hdleft := chi.differentiableAt_completedLFunction (1 - s) (.inl ht0) (.inl ht1)
  have hdright := (chi⁻¹).differentiableAt_completedLFunction s (.inl hs0) (.inl hs1)
  have hdpow : DifferentiableAt ℂ (fun z : ℂ => (N : ℂ) ^ (z - 1 / 2)) s :=
    (differentiableAt_id.sub_const (1 / 2 : ℂ)).const_cpow (.inl hN)
  have hpow : logDeriv (fun z : ℂ => (N : ℂ) ^ (z - 1 / 2)) s =
      (Real.log (N : ℝ) : ℂ) := by
    simpa only [one_mul, mul_one, sub_eq_add_neg, Complex.natCast_log] using
      logDeriv_cpow_affine (N : ℂ) hN 1 (-(1 / 2 : ℂ)) s
  have hcomp : logDeriv (fun z : ℂ =>
      DirichletCharacter.completedLFunction chi (1 - z)) s =
      -logDeriv (DirichletCharacter.completedLFunction chi) (1 - s) := by
    rw [logDeriv_fun_comp hdleft (differentiableAt_const.sub differentiableAt_id)]
    simp
  have heq : (fun z : ℂ => DirichletCharacter.completedLFunction chi (1 - z)) =
      fun z : ℂ => ((N : ℂ) ^ (z - 1 / 2) *
        DirichletCharacter.completedLFunction chi⁻¹ z) * DirichletCharacter.rootNumber chi := by
    funext z
    rw [hprim.completedLFunction_one_sub]
    ring
  have h := congrArg (fun F : ℂ → ℂ => logDeriv F s) heq
  rw [hcomp, logDeriv_mul_const s _ (rootNumber_ne_zero_from_completed_source chi hprim),
    logDeriv_fun_mul s (Complex.cpow_ne_zero_iff.mpr (.inl hN))
      (completedLFunction_ne_zero_right_of_euler chi⁻¹ hs) hdpow hdright, hpow] at h
  linear_combination -h

/-- The actual GammaR logarithmic derivative, with the factor 1/2 and pi normalization. -/
theorem GammaR_logDeriv_of_re_pos {s : ℂ} (hs : 0 < s.re) :
    logDeriv Complex.Gammaℝ s =
      -(Real.log Real.pi : ℂ) / 2 + Complex.digamma (s / 2) / 2 := by
  have hpi : (Real.pi : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr Real.pi_ne_zero
  have hhalf : 0 < (s / 2).re := by simpa using div_pos hs (by norm_num : (0 : ℝ) < 2)
  have hG0 := Complex.Gamma_ne_zero_of_re_pos hhalf
  have hdG : DifferentiableAt ℂ Complex.Gamma (s / 2) :=
    Complex.differentiableAt_Gamma _ (by
      intro n hn
      have hr := congrArg Complex.re hn
      simp only [Complex.neg_re, Complex.natCast_re] at hr
      linarith [Nat.cast_nonneg (α := ℝ) n])
  have hdP : DifferentiableAt ℂ (fun z : ℂ => (Real.pi : ℂ) ^ (-z / 2)) s :=
    (differentiableAt_id.neg.div_const (2 : ℂ)).const_cpow (.inl hpi)
  have hp : logDeriv (fun z : ℂ => (Real.pi : ℂ) ^ (-z / 2)) s =
      -(Real.log Real.pi : ℂ) / 2 := by
    have he : (fun z : ℂ => (Real.pi : ℂ) ^ (-z / 2)) =
        fun z : ℂ => (Real.pi : ℂ) ^ ((-1 / 2) * z + 0) := by
      funext z
      congr 1
      ring
    rw [he, logDeriv_cpow_affine _ hpi,
      ← Complex.ofReal_log Real.pi_pos.le]
    ring
  have hg : logDeriv (fun z : ℂ => Complex.Gamma (z / 2)) s =
      Complex.digamma (s / 2) / 2 := by
    rw [logDeriv_fun_comp hdG (differentiableAt_id.div_const (2 : ℂ)),
      ← Complex.digamma_def]
    simp
  change logDeriv (fun z : ℂ => (Real.pi : ℂ) ^ (-z / 2) * Complex.Gamma (z / 2)) s = _
  rw [logDeriv_fun_mul s (Complex.cpow_ne_zero_iff.mpr (.inl hpi)) hG0 hdP
    (hdG.comp s (differentiableAt_id.div_const (2 : ℂ))), hp, hg]

/-- Both gamma parities use the same formula with the exact existing parity shift. -/
theorem gammaFactor_logDeriv_of_re_pos
    (chi : DirichletCharacter ℂ N) {s : ℂ} (hs : 0 < s.re) :
    logDeriv (DirichletCharacter.gammaFactor chi) s =
      -(Real.log Real.pi : ℂ) / 2 +
        Complex.digamma ((s + (gammaParity chi : ℂ)) / 2) / 2 := by
  have hp : 0 < (s + (gammaParity chi : ℂ)).re := by
    simp only [Complex.add_re, Complex.natCast_re]
    linarith [Nat.cast_nonneg (α := ℝ) (gammaParity chi)]
  have hd : DifferentiableAt ℂ Complex.Gammaℝ (s + (gammaParity chi : ℂ)) := by
    simpa only [inv_inv] using
      (Complex.differentiable_Gammaℝ_inv (s + (gammaParity chi : ℂ))).inv
        (inv_ne_zero (Complex.Gammaℝ_ne_zero_of_re_pos hp))
  have he : DirichletCharacter.gammaFactor chi =
      fun z : ℂ => Complex.Gammaℝ (z + (gammaParity chi : ℂ)) :=
    funext (gammaFactor_eq_gammaParity chi)
  rw [he, logDeriv_fun_comp hd (differentiableAt_id.add_const _)]
  simpa using GammaR_logDeriv_of_re_pos hp

/-- Exact prime-power series of the original continued L-function in Re(s)>1.
The coefficient is the actual von Mangoldt function, with no prime cutoff. -/
theorem LFunction_logDeriv_eq_primeSeries
    (chi : DirichletCharacter ℂ N) {s : ℂ} (hs : 1 < s.re) :
    logDeriv (DirichletCharacter.LFunction chi) s =
      -LSeries (fun n : ℕ => chi n * (ArithmeticFunction.vonMangoldt n : ℂ)) s := by
  have h := chi.LSeries_twist_vonMangoldt_eq hs
  rw [← chi.deriv_LFunction_eq_deriv_LSeries hs, ← chi.LFunction_eq_LSeries hs] at h
  change LSeries (fun n : ℕ => chi n * (ArithmeticFunction.vonMangoldt n : ℂ)) s =
    -deriv (DirichletCharacter.LFunction chi) s / DirichletCharacter.LFunction chi s at h
  rw [logDeriv_apply, h]
  ring

/-- Prime-power, gamma, and parity decomposition of the actual completed source.
There is no conductor half-term here: the pinned completion omits N^(s/2). -/
theorem completedLFunction_logDeriv_eq_prime_gamma
    (chi : DirichletCharacter ℂ N) {s : ℂ} (hs : 1 < s.re) :
    logDeriv (DirichletCharacter.completedLFunction chi) s =
      -(Real.log Real.pi : ℂ) / 2 +
        Complex.digamma ((s + (gammaParity chi : ℂ)) / 2) / 2 -
        LSeries (fun n : ℕ => chi n * (ArithmeticFunction.vonMangoldt n : ℂ)) s := by
  have hp : 0 < s.re := lt_trans (by norm_num) hs
  have hs1 : s ≠ 1 := by intro h; simp [h] at hs
  have hL : DirichletCharacter.LFunction chi s ≠ 0 := by
    rw [chi.LFunction_eq_LSeries hs]
    exact chi.LSeries_ne_zero_of_one_lt_re hs
  have he : DirichletCharacter.completedLFunction chi =ᶠ[𝓝 s]
      fun z => DirichletCharacter.LFunction chi z * DirichletCharacter.gammaFactor chi z := by
    filter_upwards [(Complex.continuous_re.tendsto s).eventually (eventually_gt_nhds hp)] with z hz
    exact completedLFunction_eq_LFunction_mul_gammaFactor_of_re_pos chi hz
  rw [(logDeriv_congr_nhds he).self_of_nhds,
    logDeriv_fun_mul s hL (gammaFactor_regular_of_re_pos chi hp).2
      (chi.differentiableAt_LFunction s (.inl hs1))
      (gammaFactor_regular_of_re_pos chi hp).1.differentiableAt,
    LFunction_logDeriv_eq_primeSeries chi hs, gammaFactor_logDeriv_of_re_pos chi hp]
  ring

/-- Both oriented vertical integrands after reflection, with the inverse
character and the ENTIRE conductor contribution retained. This is pointwise;
the accompanying analytical proof supplies, but does not formally encode,
the rectangle residue theorem and the justified integral interchanges. -/
theorem weighted_completed_logDeriv_pair
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (W : ℂ → ℂ) {s : ℂ} (hs : 1 < s.re) :
    W s * logDeriv (DirichletCharacter.completedLFunction chi) s -
      W (1 - s) * logDeriv (DirichletCharacter.completedLFunction chi) (1 - s) =
      (Real.log (N : ℝ) : ℂ) * W (1 - s) +
      (W s + W (1 - s)) *
        (-(Real.log Real.pi : ℂ) / 2 +
          Complex.digamma ((s + (gammaParity chi : ℂ)) / 2) / 2) -
      W s * LSeries (fun n : ℕ => chi n * (ArithmeticFunction.vonMangoldt n : ℂ)) s -
      W (1 - s) * LSeries (fun n : ℕ => chi⁻¹ n * (ArithmeticFunction.vonMangoldt n : ℂ)) s := by
  rw [completedLFunction_logDeriv_dual_right chi hprim hs,
    completedLFunction_logDeriv_eq_prime_gamma chi hs,
    completedLFunction_logDeriv_eq_prime_gamma chi⁻¹ hs,
    gammaParity_inverse]
  ring

/-- Conductor-one specialization is literally completedRiemannZeta.
Its poles at 0 and 1 are not removed by this right-half-plane formula. -/
theorem completedZeta_logDeriv_eq_prime_gamma {s : ℂ} (hs : 1 < s.re) :
    logDeriv completedRiemannZeta s =
      -(Real.log Real.pi : ℂ) / 2 + Complex.digamma (s / 2) / 2 -
        LSeries (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) s := by
  have ha : gammaParity (1 : DirichletCharacter ℂ 1) = 0 := by
    simp [gammaParity, MulChar.one_apply (isUnit_of_subsingleton _)]
  simpa only [DirichletCharacter.completedLFunction_modOne_eq, ha, Nat.cast_zero,
    add_zero, MulChar.one_apply (isUnit_of_subsingleton _), one_mul] using
    completedLFunction_logDeriv_eq_prime_gamma (1 : DirichletCharacter ℂ 1) hs

/-- Conjugating the inverse character recovers the original coefficient,
INCLUDING nonunits. This does not replace character phases by their real parts. -/
theorem conj_inverse_character_apply (chi : DirichletCharacter ℂ N) (n : ℕ) :
    conj (chi⁻¹ n) = chi n := by
  simpa only [RCLike.star_def, inv_inv] using (MulChar.star_apply' chi⁻¹ (n : ZMod N))

/-- Exact orientation adapter to the existing prime inventory. The plus-sign
contour for chi returns to the canonical twistedPrime for chi inverse. -/
theorem twistedPrime_inverse_eq_plus_phase (chi : DirichletCharacter ℂ N)
    (T : ℝ) (C : ℕ → ℂ) :
    GRWTSK.NumberTheory.WeilQuadraticForm.CharacterWindow.twistedPrime T chi⁻¹ C =
      2 * ∑ n ∈ GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur.activePrimePowers T,
        GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur.primeWeight n * (chi n * C n).re := by
  unfold GRWTSK.NumberTheory.WeilQuadraticForm.CharacterWindow.twistedPrime
  simp only [conj_inverse_character_apply]

/-- Return to the literal canonical nonprincipal arithmetic value with its
CORRECT dual-character index. This is a definition/phase identification, not
an assertion that the zero sum equals that value without the contour remainder.
Primitivity of the inverse is derived from conductor invariance. -/
theorem primitiveArithmeticValue_dual_orientation
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) (hnon : chi ≠ 1)
    (T : ℝ) (f : ℝ → ℂ) :
    GRWTSK.NumberTheory.WeilQuadraticForm.primitiveArithmeticValue chi⁻¹
      (by simpa only [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv]
            using hprim)
      (by simpa only [ne_eq, inv_eq_one] using hnon) T f =
      gammaConstant N (gammaParity chi) *
        GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.energy f +
      (∫ r in Set.Ioi (0 : ℝ),
        GRWTSK.NumberTheory.WeilQuadraticForm.gammaCorrectionDensity (gammaParity chi) f r) -
      2 * ∑ n ∈ GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur.activePrimePowers T,
        GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur.primeWeight n *
          (chi n * GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.correlation f
            (Real.log (n : ℝ))).re := by
  unfold GRWTSK.NumberTheory.WeilQuadraticForm.primitiveArithmeticValue
  rw [gammaParity_inverse, twistedPrime_inverse_eq_plus_phase]

end GRWTSK.NumberTheory.WeilNegativeWitness
