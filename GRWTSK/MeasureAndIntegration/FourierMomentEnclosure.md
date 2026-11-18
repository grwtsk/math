# Finite moments for the literal complex Fourier transform

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020: 42A38; secondary 65G20.
Owner: [FourierMomentEnclosure.lean](FourierMomentEnclosure.lean).
Consumer: [WeilZeroMomentEvaluation](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilZeroMomentEvaluation.lean).
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801),
[iteration scope](https://github.com/grwtsk/math/issues/1801#issuecomment-6985225508).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty UNASSESSED. This is an elementary local consequence of pinned mathlib,
not a new paper theorem, an executed quadrature, or a proof of RH/GRH.

## FME-1: exact moments and a uniform remainder

Let f : R -> C be Lebesgue integrable, T,C >= 0, and f(t)=0 for |t|>T.
Let B be any certified bound on integral |f|. The source remains the literal
plus-sign transform

    F_f(c) = integral_R f(t) exp(i c t) dt.

For k >= 0 define the raw moment m_k=integral_R f(t)t^k dt and, for n >= 0,

    P_n(c;m) = sum_{0<=k<n} (i c)^k m_k/k!.

These moments are actual convergent integrals: |f(t)t^k| <= T^k |f(t)|
on the support, and they vanish off it. The continuous monomial is measurable,
so this integrable majorant supplies integrability, not merely a formal symbol.

Put R=T*C and assume R/(n+1) <= 1/2. Then for EVERY c in C with |c|<=C,

    |F_f(c)-P_n(c;m)| <= K_n(T,C,B) := 2 R^n B/n!.       (FME-1)

### Primary analytical argument

For w=i c t on the support, |w|<=R. Taylor's series, with n terms retained,
has the remainder estimate

    |exp(w)-sum_{k<n}w^k/k!| <= 2 |w|^n/n! <= 2 R^n/n!.

The first inequality follows from the factorial comparison
(n+j)! >= n! (n+1)^j and the geometric series with ratio |w|/(n+1)<=1/2.
It is exactly the pinned theorem `Complex.exp_bound'`. The source establishes
integrability of each monomial term and of the original exponential kernel,
interchanges only the FINITE sum and integral, and bounds the integral of the
remainder by 2 R^n integral|f|/n! <= K_n. No infinite sum/integral interchange
or totalized integral outside the integrability domain is used.

For n=0 the sum is empty and the stated order condition is R<=1/2; the bound
is still valid, but not small. At C=0 and n>=1, the polynomial equals m_0 and
the Taylor remainder is zero. There is no division by c, T, C or a moment.
The denominator is n!, and the order condition uses the positive integer n+1.

### A distinct hostile check on the order condition

It cannot simply be erased. At the kernel level, n=1 and w=3 give remainder
exp(3)-1, greater than 6, while 2 |w|^n/n! equals 6. For example the first
four positive exponential terms already give exp(3)>=13. This is an exact
algebraic/series check, not a numerical experiment or an L-function example.

## FME-2: supplied moment uncertainty and rounded finite arithmetic

Let mu_k be approximate complex moments, with certified real errors eta_k:

    |m_k-mu_k| <= eta_k,  0<=k<n.

These inequalities imply eta_k>=0 on the finite range. Define

    E_data(C,n,eta) = sum_{k<n} C^k eta_k/k!,
    E_eval(T,C,B,n,eta) = K_n + E_data.

The finite triangle inequality and |(i c)^k/k!|=|c|^k/k! give

    |P_n(c;m)-P_n(c;mu)| <= E_data,
    |F_f(c)-P_n(c;mu)| <= E_eval.                        (FME-2)

If a finite computation supplies |P_n(c;mu)-a|<=r, then

    |F_f(c)-a| <= E_eval+r.                             (FME-3)

Thus the previous literal-center-integral premise is now supplied from a
finite moment table, a factorial remainder and finite polynomial arithmetic.
Moment certificates are STILL INPUTS. Their numerical generation, certification
of B, and outward evaluation of these budgets are not implemented here.
For rational real/imaginary parts of c and mu, P_n has rational real/imaginary
parts and can be evaluated by exact rational arithmetic; this observation is
not an executed computation or a formalized rational evaluator in this file.

The coefficient weights cannot be dropped. Take the zero test, n=2, c=C=2,
mu_0=0, mu_1=1, eta_0=0, eta_1=1. The polynomial error is exactly 2, not 1.
This is a counterexample to an unweighted tolerance formula, not to FME-2.

## Accuracy and quantifiers

For each FIXED T,C,B, K_n tends to zero as n tends to infinity. The Lean
candidate uses `Real.summable_pow_div_factorial (T*C)` and the fact that terms
of a summable series tend to zero. Independently, once n+1>=2R, consecutive
factorial terms have ratio R/(n+1)<=1/2, so a geometric envelope gives decay.
Both arguments use the same factorial structure; no independent review is claimed.

For every epsilon>0 there exists an n satisfying BOTH the order condition and
K_n<epsilon. This is proved explicitly in the source, uniformly for |c|<=C.
This result does not say that E_data tends to zero. For example a fixed error
eta_0>0 contributes eta_0 at every order. Increasing n alone cannot repair it.

If moment certificates are available at arbitrary prescribed accuracy, finite
error allocation is elementary: for n>0 and weights w_k=C^k/k!, requesting
eta_k<=epsilon/(2*n*(1+w_k)) gives E_data<epsilon/2. Combine with a Taylor
charge below epsilon/2. This conditional allocation argument is written here,
not an additional Lean theorem or proof that the moment oracle exists.

Constants/order/precision may depend on T,C,B,epsilon and the test. No uniform
all-height, all-character or all-test arithmetic sign certificate follows.
At large C the unshifted moment expansion may need large n and high precision;
this development asserts validity and tail convergence, not computational efficiency.

## Individual source-to-declaration records

All local declarations below have prefix
`GRWTSK.MeasureAndIntegration.FourierMomentEnclosure`.
Each is a local consequence, not a direct paper formalization. For EACH record,
elaboration, exact expected type, fresh kernel replay, transitive axiom audit,
certified computation and independent analytic review are NOT_RUN.

### `integrable_monomial`
Statement: for each k, f(t)t^k is integrable under the exact L1/support domain.
Source: the displayed domination proof; mathlib `Integrable.mono'`, continuity
of monomials and measurable products. Consumer: finite integral interchange in
FME-1. No moment integrability is added as an unproved hypothesis.

### `norm_fourier_sub_exact_momentPolynomial_le`
Statement: FME-1, all c with |c|<=C, the explicit order condition and L1 bound.
Source: `Complex.exp_bound'` in the pinned `Exponential.lean`; mathlib
`MeasureTheory.integral_finsetSum`, `integral_const_mul`, and the Bochner norm
bound. Canonical kernel integrability is supplied by
`FourierCollisionBound.integrable_fourier_integrand`, blob
`b8c381894a5227ebfce2b15ac3d0279a1ce7dc889` (source dependency, not a fresh receipt).
Consumer: finite-moment center evaluation. No numerical or positivity claim.

### `norm_momentPolynomial_sub_le`
Statement: the polynomial error part of FME-2 for arbitrary finite moment data.
Source: finite triangle inequality and the exact complex coefficient norms;
written proof above. Consumer: FME-2. It retains every eta_k and the C^k/k!
weights. It does not assert that the supplied moments match any test.

### `norm_fourier_sub_momentPolynomial_le`
Statement: FME-2 for the literal transform and raw moments of that same f.
Source: the preceding two local theorems and the triangle inequality.
Consumer: FME-3. The exact per-moment bounds remain hypotheses.

### `norm_fourier_sub_rounded_momentPolynomial_le`
Statement: FME-3 with a separately supplied finite-polynomial rounding enclosure.
Source: FME-2 and the triangle inequality. Consumer: both reflected centers in
`WeilZeroMomentEvaluation.abs_primitiveArithmeticValue_sub_moment_estimate_le`.
This is not a floating-point backend or a proof that a given computation rounded outward.

### `momentTaylorBudget_tendsto_zero`
Statement: K_n -> 0 at natural-number infinity for fixed T,C,B.
Source: pinned `Real.summable_pow_div_factorial` in `SpecificLimits/Normed.lean`,
`Summable.tendsto_atTop_zero` and continuity of constant multiplication.
Consumer: arbitrary Taylor-tail accuracy; not convergence of moment-data errors.

### `exists_order_momentTaylorBudget_lt`
Statement: every epsilon>0 admits a finite n satisfying the order condition and
K_n<epsilon. Source: the preceding limit, an Archimedean natural bound on 2TC,
and intersection of eventual conditions. Consumer: selecting a valid Taylor
order on a prescribed frequency ball. No universal Weil positivity is asserted.

## Exact source pins and comparison

Inspected math base: `71a70edea2007e6f5c1c408189e10862499139e9`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

- [Exponential.lean, `Complex.exp_bound'`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/Exponential.lean):
  blob `33157375f0b14cae92abf333dadef21ebbfce756`.
- [Bochner/Basic.lean, finite-sum interchange and integral norms](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/Bochner/Basic.lean):
  blob `5abe07ae60e8bdfe5d99a7e68c681a5b052ef4f2`.
- [SpecificLimits/Normed.lean, `Real.summable_pow_div_factorial`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecificLimits/Normed.lean):
  blob `b033d8917bbd2c274f2bb55e6b07c46c9204db5b`.

Dated comparison, 2026-11-18: FourierDiskEnclosure supplied location transport
but assumed both center transforms were enclosed. This increment supplies those
enclosures from finite moments. Basic Taylor integration and factorial decay are
established mathematics, not claimed discoveries. The limited repository search
returned no `fourierMoment` result; this does not establish absence or novelty.

No root imports or dependency pins are changed. The intended target build is
`lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilZeroMomentEvaluation`.
It is NOT_RUN, not passing. The canonical execution skill was inaccessible at
Noe `e55ef9e67b6ab5a0556d5e66809cad9dceca1010`; no dependent execution was dispatched.
Ordinary publication evidence belongs in #1801, not in a proof-execution receipt.
