# Rational logarithm suppliers for the canonical tent evaluator

Parent: `bfae54cddc39c420e9b7cf87667af60127109992`, draft PR #305.
Pinned Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`.
Owners: #189 / #261, under #257.
Status: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.

The source drafts in this increment replace the externally supplied real-logarithm
bounds in the endpoint-power evaluator by finite rational formulas. They do not
validate a zero database, execute Lean, establish a strict prime margin, or change
the existing canonical zero head, multiplicity, kernel or omitted-tail coefficient.

## 1. Actual logarithm and exact rational data

For a rational q >= 1 define

    r(q) = (q-1)/(q+1),
    L_K(q) = 2 sum_(j<K) r(q)^(2j+1)/(2j+1),
    W_K(q) = 2 r(q)^(2K+1)/(1-r(q)^2).

All three expressions use rational arithmetic, integer powers and finite sums.
The domain implies 0 <= r(q) < 1, so the remainder denominator is positive.
Exact reconstruction gives (1+r)/(1-r)=q.

Pinned Mathlib `Real.sum_range_le_log_div` and
`Real.log_div_le_sum_range_add` apply to this actual real parameter. They derive

    L_K(q) <= log(q) <= L_K(q)+W_K(q).

This is the classical odd-power logarithm expansion, not a new logarithm
identity. The remainder is complete and deliberately conservative; it is not the
first omitted term. The pinned proof uses an explicit derivative of the remainder
and a mean-value bound. No sampled real logarithm value or unproved infinite
sum interchange is an input to the new theorem.

At q=1 every center and width is zero, even with K=0. At q=2, K=0 the interval
is [0,3/4], not [0,0]. With one term, its lower endpoint is 2/3 and its width
is 1/12. The domain q>=1 is checked before using these expressions: totalized
rational arithmetic at q=0, q=-1 or arbitrary negative values is not a certificate.
The current supplier deliberately does not cover rational arguments below one.

Reference: NIST DLMF 4.6.4, https://dlmf.nist.gov/4.6.E4.
The Lean dependency is the exact pinned Mathlib source, not this web reference.

## 2. Dyadic source binding and the log(2) cost

A `DyadicInput t` contains a rational mantissa u>=1, natural exponent k,
term count K, and the exact identity

    t = 2^k u.

It does NOT contain a logarithm center, error allowance or proof of a logarithm
estimate. The source derives positivity of t and the actual identity

    log(t) = k log(2)+log(u).

The generated rational interval is

    A = k L_K(2)+L_K(u),
    W = k W_K(2)+W_K(u),
    A <= log(t) <= A+W.

Both the value of log(2) and its uncertainty are charged k times. Omitting that
uncertainty is not justified merely because the dyadic identity is exact.

The evaluator needs a center and absolute error, so compute

    lambda = A+W/2, eta=W/2,
    |log(t)-lambda| <= eta.

Halving the width without moving the center is invalid. For example, the empty
log(2) prefix centered at zero with radius 3/8 misses log(2); its first-term lower
bound 2/3 already proves the failure. The new control uses this actual lower
bound, not a floating-point comparison.

Every rational q>=1 has the direct input k=0,u=q. The `reduced q k K` constructor
uses u=q/2^k and proves its source identity by exact cast/algebra, requiring only
1<=u. An optional upper check u<=2 supplies the useful rate below. There is no
Lean implementation here that automatically searches for k or a target precision.
The diagnostic companion's exact rational repeated-halving routine is outside
the repository and is not represented as a kernel-verified reducer.

## 3. A fast uniform rate on a reduced mantissa

If 1<=u<=2, then 0<=r(u)<=1/3, and the complete width obeys

    W_K(u) <= (3/4)*(1/9)^K.

The same holds for the separate log(2) interval, giving

    eta <= (k+1)*(3/8)*(1/9)^K.

The new source drafts establish this inequality and eta->0 for a FIXED dyadic
factorization. They do not discard k+1 or claim uniform convergence while k,
the arithmetic square stage, or a represented complex coordinate also grows.
The `withTerms` operation changes only K; the exact source identity is retained.

The formula uses K odd-power terms. K is a logarithm truncation index, not the
endpoint exponential polynomial degree, the zero height cutoff, or the square
interval index.

## 4. Reuse the existing power and point evaluators

`PowerInput t z` supplies the exact dyadic input and an exponential degree d.
It computes the old logarithm center and error from lambda,eta and derives the
argument radius

    R = (|Re z|+|Im z|)*|lambda|.

The only remaining power-specific guards are the finite inequalities

    R/(d+1) <= 1/2,
    (|Re z|+|Im z|)*eta <= 1.

The source proves the argument-norm bound using the rectangular norm, then
constructs the UNCHANGED `PowerEvaluation`. Its `log_enclosure` field is filled
by the new theorem, not by caller-supplied analytic data. Its value remains the
existing finite polynomial P_d(z*lambda), with the existing complete exponential
truncation and argument-displacement errors.

A fixed-input existence lemma shows that reduced-log precision can satisfy the
displacement guard. A separate Archimedean lemma supplies some exponential
degree for each finite argument radius. Neither lemma is an efficient precision
selector, a range-reduced exponential algorithm, or a uniform moving-stage bound.

`PointInput` retains the prior exact coordinate ball, center real-part guard,
and positive lower bound for h|c||c+1|. It adds three such power inputs at the
actual endpoints x-h, x, x+h. Converting it to `PointEvaluation` changes neither
the integral-defined kernel nor its previously derived coordinate-plus-endpoint
error. At square stages the three endpoints are exact rationals n^2,
[n^2+(n+1)^2]/2, and (n+1)^2, so their source identities require only arithmetic.
No logarithmic uncertainty is silently dropped from the coordinate coefficient.

## 5. Canonical head and prime criterion

A family of these inputs is indexed by the SAME complete `heightHead T`.
Conversion feeds `evaluatedHead`, `headError`, and their existing soundness
proof, retaining every actual analytic multiplicity. New wrapper declarations
therefore derive the whole-head enclosure without an external log-enclosure
supplier.

The existing rounded-record prime criterion still requires

    h_n - Re(v_round) - E_head - epsilon_round - D_n - B_n(T) - U_n > 0,
    B_n(T)=8*kappa*(n+1)^4*(log(T)+1)/(h_n*T),
    kappa=44/log(6/5), n>=2, T>=2.

No omitted-zero budget, correction allowance or proper-prime-power term is
removed. Exact logarithm polynomials do not make finite-machine accumulation
error zero. The parent formulas and their old generic supplier interfaces remain
unchanged; only the new wrappers construct those suppliers internally.

## 6. Verification and next boundary

These are uncompiled Lean proof drafts. No Lean/Lake execution, exact-type audit,
transitive axiom/native audit, worker action, merge or execution-hold change is
represented. The isolated root does not alter `GRWTSK.lean`. Static targets bind
source identities and retain inherited obligations; they are not replay receipts.

The external bounded diagnostic suite uses Python Fraction arithmetic. It compares
these odd-series intervals with independently evaluated positive-Mercator intervals
and complete analytic tail allowances, tests dyadic identities and midpoint widths,
and checks rectangular-norm argument guards. Finite diagnostics do not prove the
analytic identities behind either reference or elaborate the Lean scripts.

Remaining suppliers include exact zero-record identity/completeness, quantitative
coordinate proofs, useful precision choices, certified accumulation, and positive
margins at the required all-input quantifiers. A byte-level certificate checker
and efficient complex exponential range reduction are absent. The rational log
supplier is useful independently of the zero database, but it cannot certify a
prime interval merely by producing narrow endpoint intervals.
