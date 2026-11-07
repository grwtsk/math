/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.

Source: Alain Connes, Caterina Consani, Henri Moscovici,
"Zeta Spectral Triples", arXiv:2511.22755v1, (3.19)--(3.20);
NIST DLMF 5.4, 5.5 (digamma special values);
M. Suzuki, "Weil's quadratic form via the screw function",
arXiv:2606.09096v3, Section 1.1 (odd-test criterion).
GRWTSK source baseline: 5fb5685e381a67aa37517935b84898736268c344.

WRITTEN_ANALYTIC_PROOF / INDEPENDENT_REVIEW_NOT_RUN
LEAN_CANDIDATE / COMPILATION_NOT_RUN
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWeightedFirstStage
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.CharacterWeilWindowBounds

/-!
# An unconditional full-source short-window floor, all primitive sectors

The theorem below is a WRITTEN analytic result, and the Lean declarations
formalize its exact arithmetic prime-elimination and scalar assembly.
The full off-support integral lower bound and the closed-form source
identification are proved in the following mathematical argument, but they
have NOT been elaborated into a Lean theorem in this module.

## Exact objects and scope

Use the SAME full pole-inclusive zero-extended zeta Weil quadratic form
Q_zeta,T on L²([-T,T],dt), with Fourier transform
  fhat(z) = integral f(t) exp(-izt) dt
and antilinear-first complex inner products. For an individual primitive
nonprincipal Dirichlet character chi of conductor q and parity a=0 or 1,
use the SAME completed-character Hermitian form Q_chi,T, with the conductor
log(q), its gamma parity, every von Mangoldt prime power and no zeta pole.

All tests below belong to the maximal finite-energy domain of the indicated
source, are zero outside [-T,T], and may be complex-valued. Set
  M = integral_R |f(t)|² dt,
  E_a = integral_{r>0} kappa_a(r)
                  integral_R |f(t+r)-f(t)|² dt dr,
  kappa_a(r) = exp(-(a+1/2)r)/(1-exp(-2r)).
For 0<T<=2^(-22), the WRITTEN mathematical conclusion is
  Q_zeta,T(f) >= (3/2) M,
  Q_chi,T(f) >= (3/2) M
for EVERY primitive nonprincipal character of EVERY conductor, not merely
for one finite list or for selected test vectors.

## Direct proof, not a certificate-acceptance assumption

For 0<r<=1/4 and a in {0,1}, exp(-x)>=1-x and
1-exp(-2r)<=2r give
  kappa_a(r) >= (5/8)/(2r) = 5/(16r).
Since f is supported in [-T,T], at every r>=2T the two translates
have disjoint supports up to a null set, including r=2T. Therefore
  integral |f(t+r)-f(t)|² dt = 2M.
The whole source jump integral, with no truncation of its positive
remainder, consequently satisfies
  E_a >= 2M integral_(2T)^(1/4) 5/(16r) dr
      = (5/8) log(1/(8T)) M
      >= (5/8)*19*log(2)*M
      >= (95/12) M,
because log(2)>2/3, e.g. from its positive atanh series.
Every prime-power shift has length >=log(2)>2T, so ALL literal finite
prime correlations are zero; there is no discarded source tail.

The exact imported gamma constant bounds are
  gammaConstant(q,a) >= log(q)-6 >= -6     (q>=1, a<=1),
  gammaConstant(1,0) >= -11/2.
For individual nonprincipal primitive characters there are no poles, so
  Q_chi,T >= (95/12-6) M = (23/12) M.
For zeta, write the combined pole as
  +2|<cosh(t/2),f>|² - 2|<sinh(t/2),f>|².
The negative part is bounded, by Cauchy--Schwarz, by
  2(sinh(T)-T)M <= 2T³ M <= (1/4)M.
Thus
  Q_zeta,T >= (95/12-11/2-1/4)M = (13/6)M.
Both exceed 3M/2. This is for the original full form, not the
pole-cancelled carrier, nor the theta-weighted L²(dnu) reference.

The nonnegative archimedean energy with its maximal finite-energy domain
is a densely defined closed form: the positive difference operators are
closed under form-Cauchy convergence by an L² almost-everywhere
subsequence and Fatou. Smooth compact tests are dense. The absent
prime form and the bounded moment terms preserve closedness on this
fixed window. Hence the corresponding exact physical-L² self-adjoint
operators exist and satisfy A_kappa,T >= (3/2)I. Their ACTUAL spectral
semigroups, by functional calculus, satisfy
  ||exp(-s A_kappa,T)|| <= exp(-3s/2), s>=0.
This is actual source heat on a small *fixed* physical window. It is
neither a finite Euler sign diagnostic nor the whole-line theta-weighted
reference semigroup.

## Dependency and evidence limits

This discharges a fixed-support component of
  obligation.cofinal-full-lower / obligation.all-character-sectors
at supports T<=2^(-22), for the indicated exact forms. It DOES NOT
give any bound for a cofinal sequence T->infinity, the missing weighted
odd half-gap, the required all-sector global sign, or RH/Dirichlet GRH.
Window inclusion only enlarges the domain and does not propagate
this lower bound to larger supports.

Representable source identity, conductor, parity, stage, finite
character tables, exact witness and error descriptions are transported
by the existing dependentProofCodec. The existing stageCoverageWeight
and stageCoverageWeight_tail cover every Encodable branch and the
entire unobserved tail. Neither coding nor branch heat certifies any
analytical inequality. No arbitrary function or infinite operator is
asserted to have a finite exact encoding.

The primary analysis uses the source form identities in GRWTSK and
standard Cauchy--Schwarz, exponential, and logarithm inequalities.
The *written* argument has not received independent review; its
integral-to-Lean formalization and fresh kernel check are NOT_RUN.
No worldwide priority or new RH theorem is asserted.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ShortWindow

open LowSchur OddRootProjection OddSineForm
open GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage
open GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory
open scoped BigOperators

/-- On a window shorter than the logarithmic 2-shift, the genuine
von Mangoldt support inventory is empty, with no endpoint exception. -/
theorem activePrimePowers_empty_of_exp_le_two (T : ℝ)
    (h : Real.exp (2 * T) ≤ 2) :
    activePrimePowers T = ∅ := by
  ext n
  simp only [Finset.mem_empty, iff_false]
  intro hn
  have hparts := (Finset.mem_filter.mp hn).2
  have h2 : (2 : ℝ) ≤ (n : ℝ) := by exact_mod_cast hparts.1
  exact (not_lt_of_ge (h2.trans h)) hparts.2

/-- The literal physical zeta prime term vanishes on this window,
not merely the first prime or a finite compression. -/
theorem primeEnergy_zero_of_exp_le_two
    (T : ℝ) (h : Real.exp (2 * T) ≤ 2) (f : ℝ → ℝ) :
    primeEnergy T f = 0 := by
  simp [primeEnergy, activePrimePowers_empty_of_exp_le_two T h]

/-- Twisted source prime phases also vanish: no character is replaced by
its real part or conductor inflated in order to prove this statement. -/
theorem twistedPrime_zero_of_exp_le_two {q : ℕ} [NeZero q]
    (T : ℝ) (h : Real.exp (2 * T) ≤ 2)
    (chi : DirichletCharacter ℂ q) (C : ℕ → ℂ) :
    CharacterWindow.twistedPrime T chi C = 0 := by
  simp [CharacterWindow.twistedPrime, activePrimePowers_empty_of_exp_le_two T h]

/-- Exact source-specific scalar return for the primitive character sector
from a genuine jump-energy lower bound. The off-support integral estimate
is established in the WRITTEN analysis above, not manufactured by this
explicit premise. -/
theorem primitive_scalar_floor_of_jump_floor
    (q a : ℕ) (hq : 0 < q) (ha : a ≤ 1)
    (M jump value : ℝ) (hM : 0 ≤ M)
    (hjump : (95 / 12 : ℝ) * M ≤ jump)
    (hvalue : value = gammaConstant q a * M + jump) :
    (3 / 2 : ℝ) * M ≤ value := by
  have hgamma := gammaConstant_lower q hq a ha
  have hgammaM := mul_le_mul_of_nonneg_right hgamma hM
  have hqReal : (1 : ℝ) ≤ (q : ℝ) := by exact_mod_cast hq
  have hlog : 0 ≤ Real.log (q : ℝ) := Real.log_nonneg hqReal
  have hlogM := mul_nonneg hlog hM
  rw [hvalue]
  linarith

/-- Exact scalar return for the FULL zeta source; the negative pole
is paid before the floor is concluded. The source pole is not replaced
with an uncharged nonnegative square. -/
theorem zeta_scalar_floor_of_jump_and_pole
    (M jump pole value : ℝ) (hM : 0 ≤ M)
    (hjump : (95 / 12 : ℝ) * M ≤ jump)
    (hpole : pole ≤ (1 / 4 : ℝ) * M)
    (hvalue : value = gammaConstant 1 0 * M + jump - pole) :
    (3 / 2 : ℝ) * M ≤ value := by
  have hgammaM :=
    mul_le_mul_of_nonneg_right gammaConstant_one_zero_ge hM
  rw [hvalue]
  linarith

/-!
## Reused required representable-data interfaces

The label is a dependent finite list of natural source/sector/parameter
tokens; the payload is a finite list of exact rational certificate and error
observations. It is not the physical source function.
-/

/-- A lossless dependent description uses the already established codec. -/
def shortWindowRecordCodec :
    Lossless (Sigma (fun _ : List ℕ => List ℚ)) ℕ :=
  rationalStageRecordCodec

/-- Exact data readback, including descriptor and payload. -/
theorem shortWindowRecord_roundtrip
    (record : Sigma (fun _ : List ℕ => List ℚ)) :
    shortWindowRecordCodec.decode (shortWindowRecordCodec.encode record) =
      some record :=
  shortWindowRecordCodec.roundtrip record

/-- The ENTIRE unobserved countable coverage tail remains explicit.
This is branch-coverage heat, not a spectral or sign certificate. -/
theorem shortWindowCoverage_tail (J : ℕ) :
    (∑' k : ℕ, stageCoverageWeight (J + k)) =
      (1 / 2 : ℝ) ^ J :=
  stageCoverageWeight_tail J

end GRWTSK.NumberTheory.WeilQuadraticForm.ShortWindow
