/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Local mathematical attribution: grwtsk contributors.
Review target: grwtsk/math@632a5066253d4fa1e7a51ab20342f1dc440497b6,
WeilShortWindowCubicRefinement.lean, issue #1700.
Integration baseline: 70cc2c47f7559279135e2889e1836c89465c944b.
COMPILATION_NOT_RUN; FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilShortWindowCubicRefinement
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorFrontier

set_option autoImplicit false
noncomputable section
open MeasureTheory Set

/-!
# Continuum review of the cubic short-window bound

Consumer: discharge the disjoint-translation part of the `hjump` supplier
using the existing COMPLEX physical source `energy` and
`gammaCorrectionDensity`. No replacement Weil form or RH predicate is defined.

## Independent analytical check

The arithmetic inventory in LowSchur is all integers 2 <= n < exp(2T),
weighted by von Mangoldt, so it includes every prime power and harmless
zero-weight non-prime-powers. At T <= 1/32 it is empty. The primary zeta
source is Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, (3.19)--(3.20). Its pole is
2 Re(fhat(i/2) conj(fhat(-i/2))) = 2|C|^2 - 2|S|^2,
C = integral cosh(t/2) f(t), S = integral sinh(t/2) f(t).
This identity holds for complex f; replacing it by two positive squares
would be incorrect. The character source is the individual primitive
source specified in CharacterWeilWindowBounds, not a paired average.

Put delta=1/16, M=integral |f|^2. For zero-extended L2[-T,T],
D_f(r)=integral |f(t+r)-f(t)|^2=2M for r>=2T, including
the endpoint up to a singleton. Thus E_a >= 2M integral_delta^infinity kappa_a.
For a=0, expand the positive geometric series and integrate by Tonelli:
2 integral_delta^infinity kappa_0 = sum_(j>=0) 2 exp(-alpha_j/16)/alpha_j,
alpha_j=2j+1/2. Taylor's integral remainder gives
exp(-x)-(1-x+x^2/2-x^3/6)
 = integral_0^x exp(-t)(x-t)^3/6 dt >=0 for x>=0.
The first thirteen terms have the exact rational sum
35793169628469661/6439406182809600 > 111/20;
the last cubic value is 8399/196608 >0. Exact independent rational
arithmetic reproduces both identities. The discarded true exponential
terms are positive. No assertion about a cubic infinite sum is used.

Gamma constants are the repository's actual digamma constants:
c_0(q)=log q-log pi-gamma-pi/2-3 log 2,
c_1(q)=c_0(q)+pi, c_0(1)>=-11/2.
The kernel difference is k(r)=1/(2 cosh(r/2)). Its Fourier transform for
exp(-i xi r) is pi/cosh(pi xi). With C_f(r)=integral conj(f(t))f(t+r),
E_0-E_1=pi M-integral_R k(r) C_f(r)dr. The last integral is real:
C_f(-r)=conj(C_f(r)); its Fourier multiplier is nonnegative. Hence the
parity comparison written in the target is valid, including complex tests.
Fubini is justified by k in L1 and |C_f|<=M, and the multiplier argument
extends from smooth tests to L2 by bounded convolution and Plancherel.

A distinct short-window route avoids Fourier positivity altogether:
2 integral_delta^infinity (kappa_0-kappa_1)
 = 2 integral_delta^infinity k <= 2 integral_0^infinity k=pi.
Consequently c_1(q)+2 integral_delta^infinity kappa_1
 >= c_0(q)+2 integral_delta^infinity kappa_0.
Both parity forms therefore dominate (1/20+log q)M directly from their
own disjoint tails. This does not assert E_1 >= E_0.

The exact pole-vector squared norm is sinh T-T. Cauchy--Schwarz gives
2|S|^2 <= 2(sinh T-T)M. On 0<=T<=1/32,
sinh T-T <= T^3: the power series has coefficient sum
sum_(n>=1) 1/(2n+1)! = sinh(1)-1 <1, and T<=1.
Thus the negative pole costs <= M/16384. Retaining the positive square,
Q_zeta >= (1/20-1/16384)M > M/21. Every primitive nonprincipal
character has q>1 and no pole, giving Q_chi>=M/20. These are physical
Lebesgue L2 bounds, not theta-weighted coordinate bounds.

## Domain and semigroup assumptions

Use H=L2([-T,T],dt;C), identified isometrically with its zero extensions.
D={f in H : integral_(r>0) kappa_0(r) D_f(r) dr < infinity}.
All integrals here are nonnegative extended integrals before restricting
to D. A totalized real Bochner integral outside its integrability domain
cannot represent this energy. D is dense because C_c^infinity(-T,T)
is contained in D (D_f(r)<=r^2||f'||^2 near zero and <=4M elsewhere).
For each r translation difference is bounded on whole-line L2. If f_n
is Cauchy in the form norm and converges in H to f, Fatou applied to
||tau_r(f_n-f)- (f_n-f)||^2 gives E_0(f_n-f)->0 and f in D.
This proves closedness of the maximal form without assuming a smooth
core theorem. The parity difference is bounded in absolute value by
2pi M, so both parity domains coincide and their form norms are equivalent.
Constants and the pole are bounded Hermitian perturbations on this fixed
window; the prime term is identically zero. The maximal closed form
therefore has a unique associated self-adjoint operator A>=I/21.
The spectral calculus gives ||exp(-s A)||<=exp(-s/21), s>=0.
The operator domain is generally smaller than D; it must not be identified
with the form domain. Identifying any separately constructed realization
requires equality of its closed form with this maximal source form.

## Evidence and limits

No mathematical counterexample to the fixed-window claim was found by
these checks. The source-to-completed-L-function correspondence and the
closed-form realization are analytical mathematics here, not Lean results.
The lemmas below formalize only the displayed disjoint-tail and integral
comparison bridges; they do NOT discharge the entire `hjump`, `hparity`,
or `hpole` supplier. The existing conditional consumers are unchanged.
No Lean executable is installed in this environment; elaboration,
compilation, fresh kernel replay and transitive axiom auditing are NOT_RUN.
Independent external analytical review and novelty assessment are NOT_RUN.

There is no cofinal conclusion: delta is fixed, prime terms reappear when
2T reaches log 2, and the disjoint-tail floor decreases as T increases.
No global reference half-gap, RH or Dirichlet GRH follows.
-/

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ShortWindow.ContinuumReview
open SourcePrimeCorrelation OddRootProjection

/-- Physical complex L2 disjointness, including the endpoint singleton.
The pointwise support convention agrees with the existing correlation lemma;
an a.e.-supported L2 class can be represented by its interval indicator. -/
theorem shift_energy_eq_twice_of_cutoff {f : ℝ → ℂ} {T r : ℝ}
    (hf : MemLp f 2 volume)
    (hs : ∀ t, t ∉ Icc (-T) T → f t = 0) (hr : 2 * T ≤ r) :
    energy (fun t => f (t + r) - f t) = 2 * energy f := by
  have hsq : Integrable (fun t : ℝ => ‖f t‖ ^ 2) :=
    hf.integrable_norm_pow (p := 2) (by norm_num)
  have hshift : Integrable (fun t : ℝ => ‖f (t + r)‖ ^ 2) :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hsq
  have hend : ∀ᵐ t : ℝ, t ≠ -T := by
    rw [ae_iff]
    simp
  have heq : (fun t : ℝ => ‖f (t + r) - f t‖ ^ 2) =ᵐ[volume]
      (fun t => ‖f (t + r)‖ ^ 2 + ‖f t‖ ^ 2) := by
    filter_upwards [hend] with t ht
    by_cases h : t ∈ Icc (-T) T
    · have hout : t + r ∉ Icc (-T) T := by
        intro h'
        exact ht (le_antisymm (by linarith [h'.2]) h.1)
      simp [hs _ hout]
    · simp [hs _ h]
  unfold energy
  rw [integral_congr_ae heq, integral_add hshift hsq,
    integral_add_right_eq_self (fun t : ℝ => ‖f t‖ ^ 2) r]
  ring

/-- The actual gamma density has this exact value on the disjoint tail. -/
theorem gamma_density_eq_tail {f : ℝ → ℂ} {T r : ℝ}
    (hf : MemLp f 2 volume)
    (hs : ∀ t, t ∉ Icc (-T) T → f t = 0) (hr : 2 * T ≤ r)
    (a : ℕ) :
    gammaCorrectionDensity a f r = parityKernel a r * (2 * energy f) := by
  rw [gammaCorrectionDensity, shift_energy_eq_twice_of_cutoff hf hs hr]

/-- A reusable continuum comparison for the genuine gamma density. Both
integrability premises are explicit: this does not silently assign zero to
a divergent real integral. Supply e.g. a finite exponential lower tail as g. -/
theorem gamma_integral_ge_minorant (a : ℕ) (f : ℝ → ℂ) (g : ℝ → ℝ)
    (hfull : IntegrableOn (gammaCorrectionDensity a f) (Ioi 0))
    (hg : IntegrableOn g (Ioi 0))
    (hbound : ∀ᵐ r ∂(volume.restrict (Ioi (0 : ℝ))),
      g r ≤ gammaCorrectionDensity a f r) :
    (∫ r in Ioi (0 : ℝ), g r) ≤
      ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r :=
  integral_mono_ae hg hfull hbound

/-- Return to the actual individual character source, retaining the continuum
archimedean supplier. Empty arithmetic inventory is proved by the existing
source lemma; it is not replaced by an invented zero prime response. -/
theorem primitive_source_floor_of_arch_floor
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (T : ℝ) (f : ℝ → ℂ)
    (hcut : Real.exp (2 * T) ≤ 2)
    (harch : (1 / 20 : ℝ) * energy f ≤
      gammaConstant q (gammaParity χ) * energy f +
        ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) f r) :
    (1 / 21 : ℝ) * energy f ≤ primitiveArithmeticValue χ hp hn T f := by
  have hM : 0 ≤ energy f := integral_nonneg (fun _ => sq_nonneg _)
  have hprime := ShortWindow.twistedPrime_zero_of_exp_le_two
    T hcut χ (fun n => correlation f (Real.log (n : ℝ)))
  unfold primitiveArithmeticValue
  rw [hprime, sub_zero]
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ShortWindow.ContinuumReview
