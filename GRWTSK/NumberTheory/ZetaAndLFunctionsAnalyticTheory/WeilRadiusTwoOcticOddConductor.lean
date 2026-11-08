/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
Primary references: Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, (3.19)--(3.20); NIST DLMF 5.4, 5.5, 25.15.
Inspected grwtsk/math@ce17d0c21026a26e4ed27012840b51cb7a73034f.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoOcticSchurData
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPolynomialConductor
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoComplexConductorFrontier
import Mathlib

/-!
# Fixed-window arithmetic positivity in actual primitive odd-character sectors

The source is the ORIGINAL primitiveArithmeticValue chi hp hn 2 f on
complex physical L2(dt), with all prime-power twists and the true
gammaParity chi and conductor q. The odd condition is CHARACTER
parity gammaParity chi=1; no parity on f(t) is assumed.

The source GammaData identities give:
 gammaConstant q 1 = gammaConstant q 0 + pi
 gammaConstant q 0 >= log(q)-11/2
and pi>3. Thus gammaConstant q 1 >= log(q)-5/2.
The complete gammaCorrectionDensity integral is nonnegative in its
original finite-energy domain. The new octic positive Schur source
inequality, with all 512 exact rows, supplies:
 |twistedPrime 2 chi (correlation f o log)| <= 859/100*energy f.
Consequently on physical support [-2,2] the original form obeys
 primitiveArithmeticValue chi hp hn 2 f >=
   (log(q)-1109/100)*energy f.
As 16*log(2)>1109/100, q>=2^16=65536 is sufficient for
nonnegativity in EVERY primitive nonprincipal odd-character sector.

The full continuum source Schur bound is a WRITTEN mathematical proof:
apply the weighted Young inequality to the SAME original source
prime shifts using the positive octic weight, sum all q=2,...,54,
then use the 512 rational row certificate and the source log/weight
interval comparisons. No phase is omitted before absolute domination.
The Lean hprime premise below isolates that continuum integral/interval
return until its own independent elaboration and trust-zero replay,
not a hypothesis that the desired original Weil form is positive.
The fixed-T result is not cofinal for any fixed small conductor.
The original zeta negative pole, paid 65x65 source sign and N=64
high complement are not established here; RH and DirichletGRH remain open.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoOcticOddConductor

open LowSchur OddRootProjection SourcePrimeCorrelation CharacterWindow
variable {q : ℕ} [NeZero q]

/-- Sharpen the ACTUAL odd gamma parity without changing the source. -/
theorem odd_gamma_lower (q : ℕ) (hq : 0 < q) :
    Real.log (q : ℝ)-5/2 <= gammaConstant q 1 := by
  rw [gammaConstant_odd_eq_even_add_pi q,
      gammaConstant_even_eq_log_add q hq]
  have hzeta := gammaConstant_one_zero_ge
  have hpi := Real.pi_gt_three
  linarith

private theorem gamma_density_nonneg
    (a : ℕ) (f : ℝ → ℂ) {r : ℝ} (hr : 0 < r) :
    0 <= gammaCorrectionDensity a f r := by
  have hden : 0 <= 1-Real.exp (-2*r) := by
    have he := Real.exp_le_exp.mpr (by linarith : -2*r <= (0 : ℝ))
    simpa only [Real.exp_zero] using sub_nonneg.mpr he
  unfold gammaCorrectionDensity parityKernel
  exact mul_nonneg
    (div_nonneg (Real.exp_nonneg _) hden)
    (integral_nonneg (fun _ => sq_nonneg _))

private theorem gamma_integral_nonneg (a : ℕ) (f : ℝ → ℂ)
    (harch : IntegrableOn (gammaCorrectionDensity a f) (Ioi 0)) :
    0 <= ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r := by
  have hz : Integrable (fun _ : ℝ => (0 : ℝ))
      (volume.restrict (Ioi 0)) := integrable_zero _ _ _
  simpa using integral_mono_ae hz harch
    ((ae_restrict_mem measurableSet_Ioi).mono
      (fun r hr => gamma_density_nonneg a f hr))

/-- Original-source quantitative lower bound, preserving each chi phase.
The complete PRIME-ROW estimate is an explicit separate analytic input;
no target-positive hypothesis is supplied. -/
theorem odd_primitive_source_lower
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (hodd : gammaParity chi = 1)
    (f : ℝ → ℂ)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) f) (Ioi 0))
    (hprime : |twistedPrime 2 chi
      (fun n => correlation f (Real.log (n : ℝ)))| <=
        (859/100 : ℝ)*energy f) :
    (Real.log (q : ℝ)-1109/100)*energy f <=
      primitiveArithmeticValue chi hp hn 2 f := by
  have hq : 0 < q := Nat.pos_of_ne_zero (NeZero.ne q)
  have hgamma : Real.log (q : ℝ)-5/2 <=
      gammaConstant q (gammaParity chi) := by
    rw [hodd]
    exact odd_gamma_lower q hq
  have hmass : 0 <= energy f :=
    integral_nonneg (fun _ => sq_nonneg _)
  have hgammaScaled := mul_le_mul_of_nonneg_right hgamma hmass
  have hprimeterm := (le_abs_self
    (twistedPrime 2 chi (fun n => correlation f (Real.log (n : ℝ))))).trans hprime
  have hjump := gamma_integral_nonneg (gammaParity chi) f harch
  unfold primitiveArithmeticValue
  nlinarith

/-- Original primitive odd-character value at radius two and q>=65536. -/
theorem odd_primitive_source_nonneg_of_two_pow16
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (hodd : gammaParity chi = 1)
    (hq : 2^(16 : ℕ) <= q)
    (f : ℝ → ℂ)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) f) (Ioi 0))
    (hprime : |twistedPrime 2 chi
      (fun n => correlation f (Real.log (n : ℝ)))| <=
        (859/100 : ℝ)*energy f) :
    0 <= primitiveArithmeticValue chi hp hn 2 f := by
  have hreal : (2 : ℝ)^16 <= (q : ℝ) := by
    exact_mod_cast hq
  have hlog : (16 : ℝ)*Real.log 2 <= Real.log (q : ℝ) := by
    have h := Real.log_le_log
      (by positivity : (0 : ℝ) < (2 : ℝ)^16) hreal
    simpa only [Real.log_pow] using h
  have hlower : (1109/100 : ℝ) <= Real.log (q : ℝ) := by
    linarith [Real.log_two_gt_d9]
  have hmass : 0 <= energy f :=
    integral_nonneg (fun _ => sq_nonneg _)
  have hnonneg : 0 <= (Real.log (q : ℝ)-1109/100)*energy f :=
    mul_nonneg (sub_nonneg.mpr hlower) hmass
  exact hnonneg.trans
    (odd_primitive_source_lower chi hp hn hodd f harch hprime)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoOcticOddConductor
