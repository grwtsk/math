/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPiecewiseSchurData
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorFrontier
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaData
import Mathlib

/-!
# A stronger source-exact primitive conductor bound at radius two

Keep the original gammaConstant, gammaParity, gammaCorrectionDensity,
twistedPrime, complex whole-line correlation and primitiveArithmeticValue
on physical L2(dt) with support [-2,2]. ALL prime-power phases are
retained in twistedPrime until justified complex absolute domination.
The genuine positive prime source inequality proved analytically by
the weighted Schur argument and the exact 512-cell source data in
WeilRadiusTwoPiecewiseSchurData is

  |twistedPrime 2 chi (correlation f o log)| <= (202/25)*energy f

for every chi and every supported complex L2 test f.
The hprime premises in the statements below denote precisely this
SOURCE-PRIME inequality. They do not assert the final quadratic sign.
The continuum source-return formalization is separate; no absent
Lean kernel check is claimed.

The existing even-parity gamma result:
  gammaConstant(q,0) >= log q-11/2.
Consequently for primitive nonprincipal even chi:
  primitiveArithmeticValue chi hp hn 2 f >=
    (log q-679/50)*energy f,
so q>=2^20 suffices (20 log2>679/50).

For odd character parity (NOT parity of test f), improve the SOURCE
gamma constant using the exact quarter-digamma reflection:
  gammaConstant(q,1)=log q-log pi-gamma_E+pi/2-3 log 2.

The bound gamma_E<61/100 follows from Mathlib's
  Real.eulerMascheroniConstant_lt_eulerMascheroniSeq' 16
and H_16=2436559/720720 with log 16=4 log 2.
The already pinned Mathlib Real.log_two_gt_d9 gives
  H_16-4 log 2 <61/100.
The pinned bounds Real.pi_gt_d2 (pi>3.14),
Real.pi_lt_d2 (pi<3.15) and Real.log_two_lt_d9,
together with 3.15<exp(23/20), give log pi<23/20.
Hence gammaConstant(q,1)>log q-227/100.
The same real gamma jump density remains nonnegative.
This gives the ORIGINAL odd-character lower bound
  primitiveArithmeticValue chi hp hn 2 f >=
    (log q-207/20)*energy f.
For q>=2^15, 15*log 2>207/20, so this is nonnegative.

Both conclusions are fixed-T arithmetic-form estimates. They are not
a cofinal family in T for any fixed small conductor. The principal
zeta pole, literal signed radius-two 65x65 residual-paid matrix,
high-floor N=64, universal cofinal support stages and completed
zero-source identities remain independent open proof obligations.

The two ingredients (positive Schur source and gamma constant) share
the ORIGINAL Weil explicit-formula normalization, not a new sign
axiom. The elementary gamma proof and finite arithmetic have
independent written calculations. This Lean file is a PROOF CANDIDATE:
compilation/fresh kernel/transitive axiom audit/independent analytic
review NOT_RUN. No RH or DirichletGRH conclusion is asserted.
Source pin: grwtsk/math@56e17f24cef3ffaab1ca4cee85cdc439a713092f.
Primary source: Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, (3.19)--(3.20); NIST DLMF 5.4, 5.5, 25.15.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPiecewiseConductor

open LowSchur OddRootProjection SourcePrimeCorrelation CharacterWindow

variable {q : ℕ} [NeZero q]

/-- Tight rational upper bound on Euler--Mascheroni, from the ACTUAL
Mathlib harmonic limit. No approximate decimal Gamma value is assumed. -/
theorem eulerMascheroni_lt_sixty_one_hundredths :
    Real.eulerMascheroniConstant < (61/100 : ℝ) := by
  have h := Real.eulerMascheroniConstant_lt_eulerMascheroniSeq' 16
  have hH : (harmonic 16 : ℝ) = 2436559 / 720720 := by
    norm_num [harmonic, Finset.sum_range_succ]
  have hlog : Real.log (16 : ℝ) = 4*Real.log 2 := by
    rw [show (16 : ℝ) = 2^4 by norm_num, Real.log_pow]
    ring
  have hseq : Real.eulerMascheroniSeq' 16 =
      (2436559 / 720720 : ℝ) - 4*Real.log 2 := by
    simp only [Real.eulerMascheroniSeq', if_neg (by decide : (16 : ℕ) ≠ 0)]
    rw [hH, hlog]
  rw [hseq] at h
  linarith [Real.log_two_gt_d9]

/-- The pinned pi bounds and a short strictly lower exponential
polynomial prove log(pi)<23/20 with exact rational arithmetic. -/
theorem log_pi_lt_twenty_three_twentieths :
    Real.log Real.pi < (23/20 : ℝ) := by
  have hSum : (63/20 : ℝ) <
      ∑ i ∈ Finset.range 6,
        (23/20 : ℝ)^i / (i.factorial : ℝ) := by
    norm_num [Finset.sum_range_succ, Nat.factorial_succ]
  have hExp := Real.sum_le_exp_of_nonneg
    (show 0 ≤ (23/20 : ℝ) by norm_num) 6
  have hpi : Real.pi < Real.exp (23/20 : ℝ) :=
    Real.pi_lt_d2.trans (hSum.trans_le hExp)
  exact (Real.log_lt_iff_lt_exp Real.pi_pos).2 hpi

/-- Actual primitive ODD gamma parity gains exactly pi over the
conductor-one even constant. This is NOT an odd-test assumption. -/
theorem odd_gamma_lower_two_hundred_twenty_seven
    (q : ℕ) (hq : 0 < q) :
    Real.log (q : ℝ) - 227/100 < gammaConstant q 1 := by
  have hEven := gammaConstant_even_eq_log_add q hq
  have hOdd := gammaConstant_odd_eq_even_add_pi q
  have hBase := gammaConstant_one_zero_eq
  have hE := eulerMascheroni_lt_sixty_one_hundredths
  have hP := log_pi_lt_twenty_three_twentieths
  have hPi := Real.pi_gt_d2
  have hTwo := Real.log_two_lt_d9
  rw [hOdd, hEven, hBase]
  linarith

/-- Genuine source gamma jump is nonnegative for every positive shift,
with integrability explicitly retained on the original domain. -/
private theorem gamma_density_nonneg
    (a : ℕ) (f : ℝ → ℂ) {r : ℝ} (hr : 0 < r) :
    0 ≤ gammaCorrectionDensity a f r := by
  have hden : 0 ≤ 1-Real.exp (-2*r) := by
    have h := Real.exp_le_exp.mpr (by linarith : -2*r ≤ (0 : ℝ))
    simpa only [Real.exp_zero] using sub_nonneg.mpr h
  unfold gammaCorrectionDensity parityKernel
  exact mul_nonneg (div_nonneg (Real.exp_nonneg _) hden)
    (integral_nonneg (fun _ => sq_nonneg _))

private theorem gamma_integral_nonneg (a : ℕ) (f : ℝ → ℂ)
    (harch : IntegrableOn (gammaCorrectionDensity a f) (Ioi 0)) :
    0 ≤ ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r := by
  have hz : Integrable (fun _ : ℝ => (0 : ℝ))
      (volume.restrict (Ioi 0)) := integrable_zero _ _ _
  simpa using integral_mono_ae hz harch
    ((ae_restrict_mem measurableSet_Ioi).mono
      (fun r hr => gamma_density_nonneg a f hr))

/-- Every source-supported complex primitive EVEN character, actual
complete gamma + original twisted prime source. -/
theorem even_primitive_source_lower
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (heven : gammaParity chi = 0)
    (f : ℝ → ℂ)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) f) (Ioi 0))
    (hprime : |twistedPrime 2 chi
      (fun n => correlation f (Real.log (n : ℝ)))| ≤
        (202/25 : ℝ)*energy f) :
    (Real.log (q : ℝ)-679/50)*energy f ≤
      primitiveArithmeticValue chi hp hn 2 f := by
  have hq : 0 < q := Nat.pos_of_ne_zero (NeZero.ne q)
  have hgamma : Real.log (q : ℝ)-11/2 ≤
      gammaConstant q (gammaParity chi) := by
    rw [heven]
    exact gammaConstant_lower_sharp q hq 0 (by norm_num)
  have hm : 0 ≤ energy f := integral_nonneg (fun _ => sq_nonneg _)
  have hscaled := mul_le_mul_of_nonneg_right hgamma hm
  have hpbound := (le_abs_self
    (twistedPrime 2 chi (fun n => correlation f (Real.log (n : ℝ))))).trans
      hprime
  have hjump := gamma_integral_nonneg (gammaParity chi) f harch
  unfold primitiveArithmeticValue
  nlinarith

/-- Odd CHARACTER parity, with the true complex phases and sharper
quarter-digamma gamma price. -/
theorem odd_primitive_source_lower
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (hodd : gammaParity chi = 1)
    (f : ℝ → ℂ)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) f) (Ioi 0))
    (hprime : |twistedPrime 2 chi
      (fun n => correlation f (Real.log (n : ℝ)))| ≤
        (202/25 : ℝ)*energy f) :
    (Real.log (q : ℝ)-207/20)*energy f ≤
      primitiveArithmeticValue chi hp hn 2 f := by
  have hq : 0 < q := Nat.pos_of_ne_zero (NeZero.ne q)
  have hgamma : Real.log (q : ℝ)-227/100 ≤
      gammaConstant q (gammaParity chi) := by
    rw [hodd]
    exact (odd_gamma_lower_two_hundred_twenty_seven q hq).le
  have hm : 0 ≤ energy f := integral_nonneg (fun _ => sq_nonneg _)
  have hscaled := mul_le_mul_of_nonneg_right hgamma hm
  have hpbound := (le_abs_self
    (twistedPrime 2 chi (fun n => correlation f (Real.log (n : ℝ))))).trans
      hprime
  have hjump := gamma_integral_nonneg (gammaParity chi) f harch
  unfold primitiveArithmeticValue
  nlinarith

/-- Fixed support T=2: conductor q>=2^20 and EVEN character parity.
The source prime estimate remains an explicit, independently computed
source-analytic premise, not an assertion of the target sign. -/
theorem even_nonnegative_of_conductor_ge_two_pow20
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (heven : gammaParity chi = 0)
    (hq : 2^(20:ℕ) ≤ q)
    (f : ℝ → ℂ)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) f) (Ioi 0))
    (hprime : |twistedPrime 2 chi
      (fun n => correlation f (Real.log (n : ℝ)))| ≤
        (202/25 : ℝ)*energy f) :
    0 ≤ primitiveArithmeticValue chi hp hn 2 f := by
  have hqReal : (2:ℝ)^20 ≤ (q:ℝ) := by exact_mod_cast hq
  have hlog : (20:ℝ)*Real.log 2 ≤ Real.log (q:ℝ) := by
    have h := Real.log_le_log (by positivity : (0:ℝ)<(2:ℝ)^20) hqReal
    simpa only [Real.log_pow] using h
  have hlower : (679/50:ℝ) ≤ Real.log (q:ℝ) := by
    linarith [Real.log_two_gt_d9]
  have hnonneg : 0 ≤ (Real.log (q:ℝ)-679/50)*energy f :=
    mul_nonneg (sub_nonneg.mpr hlower) (integral_nonneg (fun _ => sq_nonneg _))
  exact hnonneg.trans
    (even_primitive_source_lower chi hp hn heven f harch hprime)

/-- Fixed support T=2: conductor q>=2^15 and ODD character parity. -/
theorem odd_nonnegative_of_conductor_ge_two_pow15
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (hodd : gammaParity chi = 1)
    (hq : 2^(15:ℕ) ≤ q)
    (f : ℝ → ℂ)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) f) (Ioi 0))
    (hprime : |twistedPrime 2 chi
      (fun n => correlation f (Real.log (n : ℝ)))| ≤
        (202/25 : ℝ)*energy f) :
    0 ≤ primitiveArithmeticValue chi hp hn 2 f := by
  have hqReal : (2:ℝ)^15 ≤ (q:ℝ) := by exact_mod_cast hq
  have hlog : (15:ℝ)*Real.log 2 ≤ Real.log (q:ℝ) := by
    have h := Real.log_le_log (by positivity : (0:ℝ)<(2:ℝ)^15) hqReal
    simpa only [Real.log_pow] using h
  have hlower : (207/20:ℝ) ≤ Real.log (q:ℝ) := by
    linarith [Real.log_two_gt_d9]
  have hnonneg : 0 ≤ (Real.log (q:ℝ)-207/20)*energy f :=
    mul_nonneg (sub_nonneg.mpr hlower) (integral_nonneg (fun _ => sq_nonneg _))
  exact hnonneg.trans
    (odd_primitive_source_lower chi hp hn hodd f harch hprime)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPiecewiseConductor
