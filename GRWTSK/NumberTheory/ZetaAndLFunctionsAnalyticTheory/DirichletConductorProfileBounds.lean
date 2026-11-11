/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorFrontier
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

/-!
# Conductor-normalized tail budgets and margins for the original Weil source

MSC2020: 11M06, 11M26, 11M41.

Source: grwtsk contributors, `dirichlet-conductor-uniform-v1.md`, 2026-11-10,
DCU-T1 equations (1)--(5), the radial/height paragraph, and DCU-T4 equation (11),
at research repository commit 9364603bb5453e3d71f4739ef04ba609fa541504.
Note SHA-256: 5ee31c36bbf282a56e6a9870d91974fc23653f49c4ef3d9a35895c5f9ecf14b8.
The program source is *Typed Mathematical Architecture and
Zero-Distribution-Dependent Continuity*, Edition 1.0, section 20.3.

The tail results prove algebraic properties of the EXACT displayed envelope;
they do not import Bennett--Martin--O'Bryant--Rechnitzer's zero-counting
Theorem 1.1 as a Lean theorem or prove the Stieltjes counting-to-tail identity.
In particular `tailEnvelope` is not defined to be an actual zero sum.

The form results use the EXISTING `primitiveArithmeticValue`, `gammaConstant`,
`gammaCorrectionDensity`, `energy`, `correlation`, `twistedPrime`, and
`primeMass`. No new Weil form, character type, root model, or GRH predicate
is introduced. The conductor is the actual conductor of a primitive character.
The archimedean integral domain is an explicit premise. These arithmetic-side
bounds require a separate completed explicit-formula theorem for zero-side use.
The primitive principal zeta sector and BOTH of its poles remain separate.

The existing `primitiveArithmeticValue_nonneg_of_cofinal_small_conductor_bounds`
is the backward-chain consumer. Its missing small-conductor lower bounds are
not supplied here. This file is not a proof of GRH or the numerical q>=100000
specialization in DCU-T5. No novelty is asserted for these standard consequences.

SOURCE_PROOF_CANDIDATE. Lean elaboration, fresh kernel replay, transitive axiom
audit and independent analytical review: NOT_RUN. No root import promotion.
Coordination: grwtsk/math#1804; research repository issue #50.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorProfiles

open MeasureTheory LowSchur CharacterWindow OddRootProjection SourcePrimeCorrelation

/-- The explicit envelope from DCU-T1. Its intended domain is s>1, q>1, T>=4.
The definition itself makes no claim about any arithmetic zero divisor. -/
def tailEnvelope (s q T : ℝ) : ℝ :=
  s * T ^ (1 - s) *
    (Real.log (q * (T + 2)) / (s - 1) + 1 / (s - 1) ^ 2)

/-- The conductor-independent ceiling for U_s(q,T)/log(2q), for q>=2. -/
def normalizedTailCeiling (s T : ℝ) : ℝ :=
  s * T ^ (1 - s) *
    ((1 + Real.log ((T + 2) / 2) / Real.log 4) / (s - 1) +
      1 / ((s - 1) ^ 2 * Real.log 4))

/-- Monotonicity permits replacing any admitted conductor q by its family bound Q.
It does not remove the conductor dependence from an unnormalized zero sum. -/
theorem tailEnvelope_mono_conductor {s q Q T : ℝ}
    (hs : 1 < s) (hq : 0 < q) (hqQ : q ≤ Q) (hT : 0 < T) :
    tailEnvelope s q T ≤ tailEnvelope s Q T := by
  have hd : 0 < s - 1 := by linarith
  have hlog : Real.log (q * (T + 2)) ≤ Real.log (Q * (T + 2)) :=
    Real.log_le_log (mul_pos hq (by linarith))
      (mul_le_mul_of_nonneg_right hqQ (by linarith))
  unfold tailEnvelope
  apply mul_le_mul_of_nonneg_left _
    (mul_nonneg (by linarith : 0 ≤ s) (Real.rpow_nonneg hT.le _))
  exact add_le_add_right (div_le_div_of_nonneg_right hlog hd.le) _

private theorem normalized_tail_identity {s q T : ℝ}
    (hs : 1 < s) (hq : 2 ≤ q) (hT : 0 < T) :
    tailEnvelope s q T / Real.log (2 * q) =
      s * T ^ (1 - s) *
        ((1 + Real.log ((T + 2) / 2) / Real.log (2 * q)) / (s - 1) +
          1 / ((s - 1) ^ 2 * Real.log (2 * q))) := by
  have hd : s - 1 ≠ 0 := ne_of_gt (by linarith : 0 < s - 1)
  have hL : Real.log (2 * q) ≠ 0 :=
    ne_of_gt (Real.log_pos (by linarith : 1 < 2 * q))
  have hlog : Real.log (q * (T + 2)) =
      Real.log (2 * q) + Real.log ((T + 2) / 2) := by
    rw [show q * (T + 2) = (2 * q) * ((T + 2) / 2) by ring]
    exact Real.log_mul (by linarith) (by positivity)
  unfold tailEnvelope
  rw [hlog]
  field_simp [hd, hL] <;> ring

/-- DCU-T1 (5), with no implicit constant and uniform in every real q>=2.
For arithmetic use set q to the primitive conductor; the zero-tail comparison
and the limiting decay of this ceiling are separate analytic obligations. -/
theorem tailEnvelope_normalized_le {s q T : ℝ}
    (hs : 1 < s) (hq : 2 ≤ q) (hT : 0 < T) :
    tailEnvelope s q T / Real.log (2 * q) ≤ normalizedTailCeiling s T := by
  have hd : 0 < s - 1 := by linarith
  have hfour : 0 < Real.log 4 := Real.log_pos (by norm_num)
  have hL : Real.log 4 ≤ Real.log (2 * q) :=
    Real.log_le_log (by norm_num) (by linarith)
  have hM : 0 ≤ Real.log ((T + 2) / 2) :=
    Real.log_nonneg (by linarith)
  have hratio : Real.log ((T + 2) / 2) / Real.log (2 * q) ≤
      Real.log ((T + 2) / 2) / Real.log 4 :=
    div_le_div_of_nonneg_left hM hfour hL
  have hinv : 1 / ((s - 1) ^ 2 * Real.log (2 * q)) ≤
      1 / ((s - 1) ^ 2 * Real.log 4) :=
    div_le_div_of_nonneg_left (by norm_num)
      (mul_pos (sq_pos_of_pos hd) hfour)
      (mul_le_mul_of_nonneg_left hL (sq_nonneg (s - 1)))
  rw [normalized_tail_identity hs hq hT]
  unfold normalizedTailCeiling
  apply mul_le_mul_of_nonneg_left _
    (mul_nonneg (by linarith : 0 ≤ s) (Real.rpow_nonneg hT.le _))
  exact add_le_add
    (div_le_div_of_nonneg_right (add_le_add_left hratio 1) hd.le) hinv

/-- Squared-coordinate version of the radial-to-height correction.
For z=gamma+i(1/2-beta), its squared modulus is the right side of hradial.
Taking T=sqrt(R^2-1/4) is permitted only after proving its domain and square
identity. No ordinate-only representation of the divisor is introduced. -/
theorem radial_cutoff_forces_height {beta gamma R T : ℝ}
    (hbeta0 : 0 ≤ beta) (hbeta1 : beta ≤ 1) (hT : 0 ≤ T)
    (hcutoff : T ^ 2 + 1 / 4 ≤ R ^ 2)
    (hradial : R ^ 2 < gamma ^ 2 + (1 / 2 - beta) ^ 2) :
    T < |gamma| := by
  have hdisplacement : (1 / 2 - beta) ^ 2 ≤ (1 / 4 : ℝ) := by
    nlinarith [mul_nonneg hbeta0 (sub_nonneg.mpr hbeta1)]
  by_contra h
  have habs : |gamma| ≤ T := le_of_not_gt h
  have hsquare : gamma ^ 2 ≤ T ^ 2 := by
    nlinarith [sq_abs gamma,
      mul_nonneg (sub_nonneg.mpr habs) (add_nonneg hT (abs_nonneg gamma))]
  nlinarith

/-- Real support radius and any requested margin; gammaConstant 1 0 is the
existing exact even-parity base constant, not a fitted numerical surrogate. -/
def conductorThreshold (T margin : ℝ) : ℝ :=
  Real.exp (primeMass T - gammaConstant 1 0 + margin)

private theorem source_energy_nonneg (f : ℝ → ℂ) : 0 ≤ energy f :=
  integral_nonneg (fun _ => sq_nonneg _)

private theorem gamma_integral_nonneg (a : ℕ) (f : ℝ → ℂ)
    (harch : IntegrableOn (gammaCorrectionDensity a f) (Set.Ioi 0)) :
    0 ≤ ∫ r in Set.Ioi (0 : ℝ), gammaCorrectionDensity a f r := by
  have hpoint : ∀ r ∈ Set.Ioi (0 : ℝ), 0 ≤ gammaCorrectionDensity a f r := by
    intro r hr
    have hexp : Real.exp (-2 * r) < 1 := by
      rw [← Real.exp_zero]
      apply Real.exp_lt_exp.mpr
      change 0 < r at hr
      linarith
    unfold gammaCorrectionDensity parityKernel
    exact mul_nonneg
      (div_nonneg (Real.exp_nonneg _) (sub_nonneg.mpr hexp.le))
      (source_energy_nonneg _)
  have hzero : Integrable (fun _ : ℝ => (0 : ℝ)) (volume.restrict (Set.Ioi 0)) :=
    integrable_zero _ _ _
  simpa using integral_mono_ae hzero harch
    ((ae_restrict_mem measurableSet_Ioi).mono (fun r hr => hpoint r hr))

private theorem gamma_ge_conductor_base (q : ℕ) (hq : 0 < q)
    (a : ℕ) (ha : a ≤ 1) :
    Real.log (q : ℝ) + gammaConstant 1 0 ≤ gammaConstant q a := by
  have hparity : a = 0 ∨ a = 1 := by omega
  rcases hparity with rfl | rfl
  · exact (gammaConstant_even_eq_log_add q hq).ge
  · rw [gammaConstant_odd_eq_even_add_pi, gammaConstant_even_eq_log_add q hq]
    linarith [Real.pi_pos]

/-- DCU-T4 (11) for the ORIGINAL arithmetic-side value. The nonnegative gamma
shift energy and every signed prime term are retained. Support is needed for
completed-source identification, not for this bound on the displayed cutoff value. -/
theorem primitiveArithmeticValue_lower_bound {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (harch : IntegrableOn (gammaCorrectionDensity (gammaParity chi) f) (Set.Ioi 0)) :
    (Real.log (q : ℝ) + gammaConstant 1 0 - primeMass T) * energy f ≤
      primitiveArithmeticValue chi hp hn T f := by
  have hgamma := gamma_ge_conductor_base q (Nat.pos_of_ne_zero (NeZero.ne q))
    (gammaParity chi) (gammaParity_le_one chi)
  have hscaled := mul_le_mul_of_nonneg_right hgamma (source_energy_nonneg f)
  have harch0 := gamma_integral_nonneg (gammaParity chi) f harch
  have hprime := (le_abs_self _).trans (abs_twistedPrime_le_energy chi T hf)
  unfold primitiveArithmeticValue
  nlinarith

/-- A positive margin, not just nonnegativity, for any real support radius.
The threshold is compared with chi.conductor; primitivity supplies equality
with q. An inflated imprimitive modulus cannot instantiate this theorem. -/
theorem primitiveArithmeticValue_margin_of_threshold {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T margin : ℝ) {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (harch : IntegrableOn (gammaCorrectionDensity (gammaParity chi) f) (Set.Ioi 0))
    (hfrontier : conductorThreshold T margin ≤ (chi.conductor : ℝ)) :
    margin * energy f ≤ primitiveArithmeticValue chi hp hn T f := by
  have hc : chi.conductor = q := hp
  have hfrontier' : Real.exp (primeMass T - gammaConstant 1 0 + margin) ≤ (q : ℝ) := by
    simpa only [conductorThreshold, hc] using hfrontier
  have hlog := Real.log_le_log
    (Real.exp_pos (primeMass T - gammaConstant 1 0 + margin)) hfrontier'
  rw [Real.log_exp] at hlog
  have hcoefficient : margin ≤ Real.log (q : ℝ) + gammaConstant 1 0 - primeMass T := by
    linarith
  exact (mul_le_mul_of_nonneg_right hcoefficient (source_energy_nonneg f)).trans
    (primitiveArithmeticValue_lower_bound chi hp hn T hf harch)

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorProfiles
