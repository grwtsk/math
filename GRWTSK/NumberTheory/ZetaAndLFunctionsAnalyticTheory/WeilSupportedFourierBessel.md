# Actual supported Fourier–Bessel theorem for the signed Weil source

Byline: grwtsk contributors. 2026-11-12. MSC2020 11M26, 42A38, 46E35.
Evidence: WRITTEN_ANALYTICAL_ARGUMENT with a seven-theorem Lean
SOURCE_PROOF_CANDIDATE. Elaboration, full build, kernel replay, transitive
axiom audit, certified computation and independent review NOT_RUN.
Novelty UNASSESSED. No RH, primitive GRH, or universal sign proof.

## Exact source, including conductor-one zeta

Fix A>=0. The canonical smoothWindow A consists of actual globally
C-infinity complex functions supported in [-A,A]; previous source
proved this implies WeilNegativeWitness.Admissible, genuine L1/L2
integrability and the literal topological-support window. Define

  F_f(xi)=integral_R f(t)*exp(-i*xi*t)dt.

The original primitive Dirichlet frequency multiplier retained in
FullFrequencyTail is, with the canonical gamma parity and conductor,

  m_chi,A(xi)=gammaConstant(q,gammaParity chi)
    +periodicMultiplier(gammaParity chi,xi)
    -2sum_(n in activePrimePowers A)primeWeight(n)
       Re(conj(chi(n))*exp(i*xi*log n)).

This includes every von Mangoldt prime power and actual complex
character phase. For complex chi it need not be even in xi.
The complete conductor-one zeta form adds BOTH signed pole
orientations W(0)+W(1); none is suppressed here.

## Actual L2 Fourier point-evaluation vector

For a real xi let g_A,xi(t)=indicator_[-A,A](t)*exp(i*xi*t).
This is a true Lebesgue L2 vector because its support has finite
measure and the phase norm is 1. Its squared energy is EXACTLY

  ||g_A,xi||²_2=integral_[-A,A]1 dt=2A.              (1)

The complex inner product is antilinear in the first factor.
For an original smooth supported complex source f, the true L2
inner product gives

  <g_A,xi,f>=integral_R conj(g_A,xi(t))*f(t)dt
            =integral_R f(t)*exp(-i*xi*t)dt=F_f(xi). (2)

No periodic surrogate or ordinate projection; no Fourier 2pi
factor enters (1), because this is a physical-space L2 norm.
The source Lean declarations windowPhase_memLp,
windowPhase_energy, angularFourier_eq_window_inner and
smoothWindow_memLp implement the actual supported vector
and its genuine original test-space pairing.

## Pointwise source Bessel and the full weighted trace

Let {f_i : i in s} be ANY finite orthonormal family in true
L2(R,C), each member an original smoothWindow A source.
The pinned classical Mathlib theorem
Orthonormal.sum_inner_products_le applied to g_A,xi and
conjugate symmetry of inner products give, FOR EVERY REAL xi,

  sum_(i in s)|F_f_i(xi)|² <= 2A.                    (3)

All complex coefficients and off-diagonal interactions are
preserved; this is not a finite numerical Gram check. The
source-candidate smoothWindow_angularFourier_bessel has (3)
as its literal conclusion.

For genuinely integrable nonnegative real w, if the finitely
many products w(xi)|F_f_i(xi)|² are integrable, integrate the
WHOLE real frequency line and interchange only the finite
summation to obtain

  sum_(i in s) integral_R w(xi)|F_f_i(xi)|²dxi
       <= 2A * integral_R w(xi)dxi.                (4)

This is smoothWindow_weighted_fourier_trace.
Its hypotheses are ordinary stated integrability, not a
lower-sign or certificate-existence premise.

Choose specifically the ORIGINAL signed-deficit weight
  w(xi)=frequencyDeficit chi A eta xi
       =max(eta-m_chi,A(xi),0).
The existing high cutoff gives compact support of w;
the full multiplier is continuous and w is integrable.
The Fourier transform of a smooth compact test is
continuous and bounded by its L1 norm, so the products
w(xi)|F_f_i(xi)|² are genuinely integrable.
The present Lean specialization
original_signed_deficit_fourier_trace states this
weighted trace with the integrability premises still
explicit, rather than assuming their formal proofs.

## Exact arithmetic consumer and first missing premise

The existing SignedDeficitNegativeIndex finite-family trace
needs this source-specific Bessel upper bound. Under the
previously WRITTEN original physical Fourier/Plancherel
identity

  Q_chi,A(f)=(1/(2pi))int_R m_chi,A(xi)|F_f(xi)|²dxi,

a genuinely negative unit-energy original test satisfies
  eta <= (1/(2pi))int_R w(xi)|F_f(xi)|²dxi.

Combining with (4) then proves the previously WRITTEN
fixed-window negative index estimate

  dim_C(negative space)*eta
     <= (A/pi)*integral_R w(xi)dxi.

The complete primitive physical Plancherel identification
and the per-negative-test lower implication are NOT Lean
theorems in this module, and neither positivity nor the
existence of sound lower-sign certificates has been proved.
For conductor-one zeta the unchanged signed pole adds
a separately treated complex rank-one negative contribution:
the canonical SmoothWindowPoleReturn/ZetaNegativeMomentCodimension
source supplies its pole signs, not universal zeta positivity.

## Edge cases, prior art, status

When A=0 there is no nonzero smooth compact supported source;
the bound is 0. For a single frequency the bound can be sharp
for L2 supported functions. The truncated exponential
g_A,xi has jumps at the support endpoints; it is used ONLY
as an L2 evaluation vector and never substituted into the
smooth Weil form. For complex nonreal chi, xi and -xi remain
different. Fourier 2pi normalization enters only at the
genuine Plancherel/integral step, not in (3).

A finite sanity check with four exactly orthonormal indicator
functions on [-1,1] passed for xi=0 and 2000 sampled nonzero
frequencies; at xi=0 equality holds with 2A=2.
Those nonsmooth fixtures test Hilbert Bessel only; they
are not admissible Weil tests, an interval certificate,
or an independent proof.

Dated comparisons: pinned Mathlib
Mathlib/Analysis/InnerProductSpace/Orthonormal.lean,
Orthonormal.sum_inner_products_le;
Mathlib/MeasureTheory/Function/L2Space.lean, L2.inner_def;
Mathlib/MeasureTheory/Measure/Lebesgue/Basic.lean,
Real.volume_Icc. E. Bombieri, Remarks on Weil's quadratic
functional, I, Rendiconti Lincei 11 (2000), pp.183-233;
Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, (3.19)-(3.20).
All are classical mathematical suppliers, not originality claims.

Inspected grwtsk/math/main at f94754aaf09a83dc693665e330dd4ea32943abda,
Lean leanprover/lean4:v4.34.1,
mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Seven source candidate declarations have adjacent individual
provenance. Root imports and pins are unchanged.
Lean elaboration NOT_RUN, complete dependency build NOT_RUN,
fresh kernel replay NOT_RUN, transitive axiom audit NOT_RUN,
numerical certification NOT_RUN, independent review NOT_RUN,
novelty UNASSESSED.

FIRST FORMAL OBLIGATION: replay exact-pinned import closure,
prove the signed-deficit weight/product integrability in Lean,
and complete the original primitive Fourier/Plancherel arithmetic
return and nonpositive-test lower bound.
FIRST ARITHMETIC OBLIGATION: show the complete signed Weil form
nonnegative at every primitive character and support window,
including conductor-one zeta with both pole orientations.
Finite negative index is not zero negative index; RH and GRH
remain unproved.
