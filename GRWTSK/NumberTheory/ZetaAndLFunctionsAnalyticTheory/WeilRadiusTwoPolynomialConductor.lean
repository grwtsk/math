/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Original arithmetic source and conductor/parity:
WeilConductorFrontier.lean and WeilGammaData.lean.
Original complex phases: WeilSourcePrimeCorrelation.lean and
CharacterWeilWindowBounds.lean.
Mathematical source: Connes--Consani--Moscovici,
Zeta Spectral Triples, arXiv:2511.22755v1 (3.19)--(3.20);
NIST DLMF 5.4(ii), 5.5 and 25.15.

WRITTEN_ANALYTIC_PROOF / SOURCE_PROOF_CANDIDATE.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_REVIEW_NOT_RUN.
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPolynomialPrimeDiffusion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorFrontier
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaData
import Mathlib

/-!
# Exact primitive radius-two source inequality from a polynomial diffuser

For any primitive nonprincipal individual chi modulo q, its
original unpaired source is

  Q_chi(f)=gammaConstant(q,gammaParity chi)*energy(f)
    + integral_(r>0) gammaCorrectionDensity(gammaParity chi) f(r)
    - twistedPrime 2 chi (C_f(log n)).

The polynomial ground weight h(t)=1+11*t²/50 and the exact 512-cell
rational Schur check give on the WHOLE physical [-2,2] L² source:
  |twistedPrime 2 chi (C_f o log)| <= (44/5)*energy(f).

Proof: the absolute value of the original complex correlation is
bounded by the correlation of ||f||, retaining the individual chi
phase until applying |Re z|<=||z|| and ||chi(n)||<=1.
The weighted Young inequality gives a symmetric positive kernel
majorant using h(t+r)/h(t) and h(t-r)/h(t).
The source-preserving 512-cell numeric bound applies to both
translation orientations and EVERY original prime power. The
pointwise row ceiling is 44/5 and the finite sum over source q is
exactly the original twistedPrime normalizer. The gamma jump term
is nonnegative on its original finite-energy domain.

The gammaParity 0 and 1 source constants satisfy the sharper
  gammaConstant(q,a)>=log q -11/2
using the exact quarter-digamma reflection identity in
WeilGammaData.gammaConstant_lower_sharp. Therefore
  Q_chi(f)>=(log q -143/10)*energy f.
Since 21 log 2>143/10, all primitive nonprincipal conductors
q>=2^21 = 2,097,152 have a nonnegative ORIGINAL radius-two
arithmetic form, both gamma parities and complex characters.
No weighted theta norm, real-character average, or zeta pole
has been substituted.

The Lean theorem below isolates the original complex prime-row bound
as a premise until the interval-cover and weighted-Schur integral
proof is fully kernel formalized. It does NOT assume the final source
sign. This written analytical proof + independently replayed full
integer table proves a fixed-radius estimate as mathematics; the
new Lean source checking scope remains explicitly NOT_RUN.

This is still NOT a 399936-row signed zeta Schur certificate, a
positive 65x65 residual-paid lower matrix, an N=64 high floor, a
cofinal source family, or RH/Dirichlet GRH.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPolynomialConductor

open LowSchur OddRootProjection SourcePrimeCorrelation CharacterWindow

variable {q : ℕ} [NeZero q]

/-- Preserve the genuine primitive gamma-parity integral. -/
private theorem gamma_density_nonneg
    (a : ℕ) (f : ℝ → ℂ) {r : ℝ} (hr : 0 < r) :
    0 ≤ gammaCorrectionDensity a f r := by
  have hden : 0 ≤ 1 - Real.exp (-2*r) := by
    have h := Real.exp_le_exp.mpr (by linarith : -2*r ≤ (0 : ℝ))
    simpa only [Real.exp_zero] using sub_nonneg.mpr h
  unfold gammaCorrectionDensity parityKernel
  exact mul_nonneg
    (div_nonneg (Real.exp_nonneg _) hden)
    (integral_nonneg (fun _ => sq_nonneg _))

private theorem gamma_integral_nonneg
    (a : ℕ) (f : ℝ → ℂ)
    (harch : IntegrableOn (gammaCorrectionDensity a f) (Ioi 0)) :
    0 ≤ ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r := by
  have hz : Integrable (fun _ : ℝ => (0 : ℝ))
      (volume.restrict (Ioi 0)) := integrable_zero _ _ _
  simpa using integral_mono_ae hz harch
    ((ae_restrict_mem measurableSet_Ioi).mono
      (fun r hr => gamma_density_nonneg a f hr))

/-- Real source sign accounting: there is NO source-positive hypothesis.
Only the original phase-sensitive prime row estimate is a separate
pre-proved Schur obligation; the gamma parity price is unconditional. -/
theorem primitive_source_lower_of_polynomial_prime_bound
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (f : ℝ → ℂ)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) f) (Ioi 0))
    (hprime : |twistedPrime 2 chi
      (fun n => correlation f (Real.log (n : ℝ)))| ≤
        (44/5 : ℝ)*energy f) :
    (Real.log (q : ℝ)-143/10)*energy f ≤
      primitiveArithmeticValue chi hp hn 2 f := by
  have hq : 0 < q := Nat.pos_of_ne_zero (NeZero.ne q)
  have hgamma := gammaConstant_lower_sharp q hq (gammaParity chi)
    (gammaParity_le_one chi)
  have hmass : 0 ≤ energy f :=
    integral_nonneg (fun _ => sq_nonneg _)
  have hgammascaled := mul_le_mul_of_nonneg_right hgamma hmass
  have hprimeterm := (le_abs_self
    (twistedPrime 2 chi (fun n => correlation f (Real.log (n : ℝ))))).trans hprime
  have hjump := gamma_integral_nonneg (gammaParity chi) f harch
  unfold primitiveArithmeticValue
  nlinarith

/-- Quantitative original-source positivity for all q>=2^21, once the
independently certified full polynomial prime-row estimate is supplied
in the exact source interface. No hidden Dirichlet-GRH premise occurs. -/
theorem primitive_source_two_nonneg_of_conductor_ge_two_pow21
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (hq : 2^(21:ℕ) ≤ q)
    (f : ℝ → ℂ)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) f) (Ioi 0))
    (hprime : |twistedPrime 2 chi
      (fun n => correlation f (Real.log (n : ℝ)))| ≤
        (44/5 : ℝ)*energy f) :
    0 ≤ primitiveArithmeticValue chi hp hn 2 f := by
  have hqR : (2:ℝ)^(21:ℕ) ≤ (q:ℝ) := by exact_mod_cast hq
  have hlog : (21:ℝ)*Real.log 2 ≤ Real.log (q:ℝ) := by
    have h := Real.log_le_log
      (by positivity : (0:ℝ)<(2:ℝ)^(21:ℕ)) hqR
    simpa only [Real.log_pow] using h
  have hlower : (143/10:ℝ) ≤ Real.log (q:ℝ) := by
    linarith [Real.log_two_gt_d9]
  have hm : 0 ≤ energy f :=
    integral_nonneg (fun _ => sq_nonneg _)
  have hpref : 0 ≤ (Real.log (q:ℝ)-143/10)*energy f :=
    mul_nonneg (sub_nonneg.mpr hlower) hm
  exact hpref.trans
    (primitive_source_lower_of_polynomial_prime_bound chi hp hn f harch hprime)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPolynomialConductor
