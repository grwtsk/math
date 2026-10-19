# Exponential scaling for the existing finite interval evaluator

Owner #194; consumers #189/#209/#261. Additive extension of draft #274.
Parent `25d295c73997faa262a74a51f90b7a0f44c4e74b`, tree
`16d79cc2d108e9c2395ec6a782e3844a6c478fda`. Mathlib remains pinned to
`db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** The Lean files are proof
candidates. The following written derivations and auxiliary tests do not
establish elaboration, transitive trust acceptance, or an executable numerical
implementation. Scaling and squaring is classical; no novelty claim is made.
Prior sources, statements, roots, targets and unresolved hypotheses are retained.

## 1. Reduce the exponent, not just the logarithm interval

The preceding increment has already reduced t=2^k*r, retaining the shared
log-two error, and constructed a nonnegative logarithm center c and radius eta.
This increment keeps that construction and replaces the exponential approximation.
The logarithm scale k and exponential scale s have different meanings.

For a complex exponent w with Re(w)<=0, a proved norm majorant |w|<=B, and
K=2^s>0, define the exact finite expressions

    y = w/K,
    p_0 = T_M(y),     T_M(y)=sum_(j<M) y^j/j!,
    p_(j+1) = p_j^2.

The existing exponential-tail theorem, at the DIVIDED argument, gives

    |exp(y)-p_0| <= delta = 2(B/K)^M/M!,
    provided (B/K)/(M+1)<=1/2.

The exact reconstruction is exp(y)^K=exp(w), derived from Mathlib's exp_nat_mul
and the nonzero dyadic denominator. The final value is p_s, not p_0. The source
exposes precisely s squarings via squaredValue_succ. Zero squarings means K=1
and ordinary Taylor evaluation; it is not an empty interval or an empty sum.

## 2. Reconstruction amplifies seed error; retain the quadratic term

The true value u_j=exp(y)^(2^j) has norm at most one, since Re(y)<=0. The
approximation p_j need NOT have norm at most one. If |u_j-p_j|<=e_j then

    |p_j| <= 1+e_j,
    |u_j^2-p_j^2| = |u_j-p_j| |u_j+p_j| <= e_j(2+e_j).

Thus an exact-squaring allowance is derived by

    e_0=delta,       e_(j+1)=2e_j+e_j^2.

It has the exact finite solution

    e_s=(1+delta)^K-1.

It is incorrect to reuse delta as the final error, or simply to replace the
recurrence by K*delta. At delta=1/10 one square costs an allowance 21/100,
strictly more than 2delta. A control with true value 2 shows that the unit-disk
hypothesis cannot be silently removed. These are algebraic scope controls,
not zeta examples or arithmetic prime certificates.

The new scaled_exp_error candidate consequently targets

    |exp(w)-[T_M(w/K)]^K| <= (1+2(B/K)^M/M!)^K-1,
    Re(w)<=0 and the divided-argument tail guard.

No artificial unit-disk constraint is imposed on the computed Taylor value.

## 3. Admissibility and useful precision are different finite tests

For delta>=0 the elementary induction

    (1+delta)^n (1-n*delta) <= 1

gives, when K*delta<1,

    e_s <= K*delta/(1-K*delta).

The source then derives a convenient precision test

    K*delta<=1/2  ==>  e_s<=2K*delta.

This extra smallness condition is separate from Taylor-tail admissibility.
It is an exact finite arithmetic test, not an empirical stopping heuristic.
Algebraically its upper bound is

    2K*delta = 4 B^M/(M! K^(M-1)),  M>=1.

For fixed B and M>=2 this expression improves with the exponential scale.
Neither the statement nor the implementation assumes fixed-rounding errors
vanish when s grows. No simultaneous stage/height/runtime limit is exchanged.

An exact allowance comparison at B=100 illustrates the difference. The old
unscaled M=200 tail satisfies its ratio guard but is about 2.5359539e25.
With s=10, K=1024 and M=16, both new finite guards hold, and

    2K*delta =
    186264514923095703125 /
    13905579034527572224261233778768299969944223744
    < 2/10^26.

Its approximate decimal value is 1.3394948492299433e-26. This compares only
exponential truncation/reconstruction ALLOWANCES. It is not the total node,
quadrature, divisor-tail or prime-margin error and not a measured speedup.
A degree-15 polynomial plus ten squarings is the mathematical evaluation path;
exact rational numerator/denominator sizes can grow strongly during squaring.

## 4. Rounded seeds and rounded squares have separate, propagated charges

For an approximate arithmetic trace A_j require

    |T_M(y)-A_0|<=sigma_seed,
    |A_(j+1)-A_j^2|<=sigma_j,  every j<s.

The source derives

    E_0=delta+sigma_seed,
    E_(j+1)=2E_j+E_j^2+sigma_j,
    |exp(w)-A_s|<=E_s.

An early square error is amplified by later squares; sum(sigma_j) alone is
not its output allowance. The seed error must cover any approximate exponent
division and polynomial arithmetic by comparison with T_M at the EXACT divided
argument. The source supplies no floating library, serialization validation,
rounded-operation proof, or automatic choice of sigma values. Missing steps
cannot be assigned zero error. No claims about unused future trace entries are
required: every entry used by the finite conclusion has a local norm bound.

## 5. Substitute the scaled exponential into the unchanged Mellin density

For t>=1, Re(z)<=1 and the previous nonnegative center c, put

    w=(z-1)c,
    q=|Re(z-1)|+|Im(z-1)|,
    B=q|c|,      K=2^s.

The true exponent w has nonpositive real part. The previous ray estimate gives

    |exp((z-1)log t)-exp((z-1)c)|<=q*eta.

Combining this with the new scaling theorem gives the actual sample bound

    |density(z,t)-[T_M((z-1)c/K)]^K| <= q*eta+e_s.

The logarithm-input error is paid ONCE in this triangle path; it is not
incorrectly divided by K and forgotten, nor propagated again as a seed error.
The rounded trace variant replaces e_s by E_s with the same q*eta term.
Increasing M or s alone does not improve the fixed logarithm uncertainty.
Both horizontal coordinates are retained; this is not a critical-line projection.
Centers above Re(z)=1 require a different applicable theorem.

The new kernel_scaled_error substitutes the constructed values into the existing
covered-partition quadrature. For ordered nodes and cell lengths l_i it yields

    |F - sum_i l_i*value_i| <= (q/2)sum_i l_i^2 + sum_i l_i*node_error_i.

The separate outer accumulation theorem reuses the parent's zero-initialized,
weighted-step error argument. These outer sum errors must not be confused with
the inner squaring trace: the latter propagate nonlinearly before the weighted
sum. The new node trace theorem can instead provide the old sample predicate
for a separately checked rounded-node implementation.

No kernel, density, square endpoint, Chebyshev count, prime-power correction,
zero index set, multiplicity, or full-target remainder is redefined. The prior
same-family and exact-endpoint requirements remain. The distinct triangular
observable receives no source/tail theorem by importing this evaluator.

## 6. Acceptance and remaining work

The new owners are ComplexExpScaling and IntervalMellinScaledExponential, with
isolated root GRWTSK.Interfaces.QuadraticIntervalExpScalingCore and target
verification/quadratic-interval-exp-scaling-v0.1.toml. Source identities and
required names are static inventory, not elaborated types or replay evidence.
The public root and every previous target stay unchanged.

Still required: pinned elaboration and source repairs, full transitive trust
review, inherited/control replay, and a checked finite-arithmetic implementation.
Precision allocation across log, quadrature, node squaring and final summation
must retain actual costs and all required local errors. Exact rational formulas
do not qualify a parser, arithmetic package, generated code or worker.

Complete arithmetic source normalization, actual zero/multiplicity/coverage,
useful omitted-divisor tails and uniformly strict prime margins remain separate
analytic obligations. This increment proves no new prime distribution estimate
and no unconditional Legendre/RH statement. No worker qualification, F06 release,
execution request, merge or issue closure is attached.

Pinned upstream ingredients: Mathlib.Analysis.Complex.Exponential (exp_nat_mul,
exp_bound'), Mathlib.Analysis.SpecialFunctions.Exp (norm_exp), and
Mathlib.Data.Complex.Basic (div_natCast_re). Existing repository log/Taylor/ray
proofs are reused at the parent revision. Their acceptance obligations persist.
