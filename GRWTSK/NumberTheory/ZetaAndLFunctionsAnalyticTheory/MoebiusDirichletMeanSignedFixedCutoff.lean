/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletMeanSignedCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOriginalGramRootFloorSuppliers
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# An EVERY-POSITIVE-RATE family-MEAN signed allowance at growing moduli

The original fixed gcd cutoff is
  D_*(T)=max(1,floor(exp(T-sqrt T))).
The previous source-authored elementary scalar estimate has
  floor(exp T)/D_*(T)<=2*exp(sqrt T), T>=4.

If q>=D_*(T) is a POSITIVE character modulus, the new signed
residue-fiber mean has the exact coefficient floor(N(T)/q):
  MeanCross(q,T)<=2*floor(N(T)/q)*T²
                 <=4*T²*exp(sqrt T).

For EVERY epsilon>0 this is bounded by
  (64/epsilon²)*exp(epsilon*T)
on the explicit domain T>=max(4,16/epsilon²), because
  sqrt T<=epsilon*T/4,
  T<=(4/epsilon)*exp(epsilon*T/4).

This is an all-rate upper allowance for a q=q(T) GROWING
character family only. q≥D_*(T) cannot hold for any fixed
q at unbounded T. The result NEVER proves a signed bound
for a FIXED primitive character and NEVER implies GRH/RH.

All Lean proofs are SOURCE PROOF CANDIDATES, pending native
pinned compilation, expected type, fresh kernel and axiom
audits (NOT_RUN).
-/

namespace GRWTSK.NumberTheory.Moebius.DirichletMeanSignedFixedCutoff

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DirichletMeanSignedCross
open GRWTSK.NumberTheory.Moebius.FixedSublinearCompensatedEndpoint
open GRWTSK.NumberTheory.Moebius.OriginalGramRootFloorSuppliers

classical

/-- A character modulus at least the ORIGINAL fixed gcd cutoff
makes its source occupancy cap subexponential. No modulus is
chosen depending on the requested exponential rate. -/
theorem meanSignedCross_le_fixedCutoffEnvelope
    (q : ℕ) [NeZero q]
    {T : ℝ} (hT : 4 ≤ T)
    (hq : fixedGcdCutoff T ≤ q) :
    meanSignedCross q T ≤
      4*T^2*Real.exp (Real.sqrt T) := by
  have hqpos : (0 : ℝ) < (q : ℝ) := by
    exact_mod_cast (NeZero.pos q)
  have hDpos : (0 : ℝ) < (fixedGcdCutoff T : ℝ) := by
    exact_mod_cast (fixedGcdCutoff_pos T)
  have hN : 0 ≤ (⌊Real.exp T⌋₊ : ℝ) := by positivity
  have hqcast : (fixedGcdCutoff T : ℝ) ≤ (q : ℝ) := by
    exact_mod_cast hq
  have hcap :
      ((⌊Real.exp T⌋₊ / q : ℕ) : ℝ) ≤
        2*Real.exp (Real.sqrt T) := by
    calc
      ((⌊Real.exp T⌋₊ / q : ℕ) : ℝ) ≤
          (⌊Real.exp T⌋₊ : ℝ)/(q : ℝ) := Nat.cast_div_le
      _ ≤ (⌊Real.exp T⌋₊ : ℝ)/
          (fixedGcdCutoff T : ℝ) :=
        div_le_div_of_nonneg_left hN hDpos hqcast
      _ ≤ 2*Real.exp (Real.sqrt T) :=
        fixedGcdRatio_proof T hT
  have hmean := meanSignedCross_le_quotient_quadratic q T
    (by linarith : 0 ≤ T)
  have hscale :
      2 * ((⌊Real.exp T⌋₊ / q : ℕ) : ℝ) * T^2 ≤
        4*T^2*Real.exp (Real.sqrt T) := by
    have hh :=
      mul_le_mul_of_nonneg_right hcap (sq_nonneg T)
    nlinarith [hh]
  exact hmean.trans hscale

/-- Pure scalar every-positive-rate payment with explicit
C_epsilon=64/epsilon², R_epsilon=max(4,16/epsilon²).
This does NOT hide a rate-dependent character cutoff. -/
theorem scalar_fixedCutoffEnvelope_everyRate
    (ε : ℝ) (hε : 0 < ε) :
    ∀ T : ℝ, max 4 (16/ε^2) ≤ T →
      4*T^2*Real.exp (Real.sqrt T) ≤
        (64/ε^2)*Real.exp (ε*T) := by
  intro T hT
  have hT0 : 0 ≤ T := by
    have hT4 : 4 ≤ T := (le_max_left _ _).trans hT
    linarith
  have hεsq : 0 < ε^2 := sq_pos_of_pos hε
  have hthr : 16/ε^2 ≤ T := (le_max_right _ _).trans hT
  have hquad : 16 ≤ T*ε^2 :=
    (div_le_iff₀ hεsq).mp hthr
  have hprod : 0 ≤ T*(T*ε^2-16) :=
    mul_nonneg hT0 (by linarith)
  have hsqrt : Real.sqrt T ≤ ε*T/4 := by
    by_contra h
    have hlt : ε*T/4 < Real.sqrt T := lt_of_not_ge h
    have hdiff : 0 < Real.sqrt T-ε*T/4 := by linarith
    have hsum : 0 < Real.sqrt T+ε*T/4 := by
      have hh : 0 ≤ ε*T/4 := by positivity
      linarith
    have hh := mul_pos hdiff hsum
    nlinarith [Real.sq_sqrt hT0, hprod]
  have hlin :
      T ≤ (4*Real.exp (ε*T/4))/ε := by
    have hx := Real.add_one_le_exp (ε*T/4)
    apply (le_div_iff₀ hε).mpr
    nlinarith [hx]
  have hlinPos : 0 ≤ (4*Real.exp (ε*T/4))/ε := by
    positivity
  have hsq :
      T^2 ≤ ((4*Real.exp (ε*T/4))/ε)^2 :=
    (sq_le_sq₀ hT0 hlinPos).mpr hlin
  have hpower :
      T^2 ≤ (16/ε^2)*Real.exp (ε*T/2) := by
    calc
      _ ≤ ((4*Real.exp (ε*T/4))/ε)^2 := hsq
      _ = (16/ε^2)*Real.exp (ε*T/2) := by
        rw [show ε*T/2=ε*T/4+ε*T/4 by ring,
          Real.exp_add]
        field_simp
        ring
  have hexp :
      Real.exp (Real.sqrt T) ≤ Real.exp (ε*T/4) :=
    Real.exp_le_exp.mpr hsqrt
  have hεT : 0 ≤ ε*T := mul_nonneg hε.le hT0
  calc
    4*T^2*Real.exp (Real.sqrt T) ≤
      4*((16/ε^2)*Real.exp (ε*T/2))*
        Real.exp (Real.sqrt T) := by
          have hh := mul_le_mul_of_nonneg_right
            hpower (Real.exp_pos _).le
          nlinarith [hh]
    _ ≤ 4*((16/ε^2)*Real.exp (ε*T/2))*
        Real.exp (ε*T/4) :=
      mul_le_mul_of_nonneg_left hexp (by positivity)
    _ = (64/ε^2)*Real.exp (3*ε*T/4) := by
      rw [show 3*ε*T/4=ε*T/2+ε*T/4 by ring,
        Real.exp_add]
      ring
    _ ≤ (64/ε^2)*Real.exp (ε*T) :=
      mul_le_mul_of_nonneg_left
        (Real.exp_le_exp.mpr (by linarith)) (by positivity)

/-- Fully quantified family-MEAN EVERY-RATE source.
The constants are INDEPENDENT of the positive modulus q
provided q>=the original fixed cutoff at that same T.
This is NOT a fixed-character theorem. -/
theorem meanSignedCross_everyRate_of_modulus_ge_fixedCutoff
    (q : ℕ) [NeZero q]
    (ε : ℝ) (hε : 0 < ε)
    {T : ℝ} (hT : max 4 (16/ε^2) ≤ T)
    (hq : fixedGcdCutoff T ≤ q) :
    meanSignedCross q T ≤
      (64/ε^2)*Real.exp (ε*T) := by
  have hT4 : 4 ≤ T := (le_max_left _ _).trans hT
  exact (meanSignedCross_le_fixedCutoffEnvelope q hT4 hq).trans
    (scalar_fixedCutoffEnvelope_everyRate ε hε T hT)

end GRWTSK.NumberTheory.Moebius.DirichletMeanSignedFixedCutoff
