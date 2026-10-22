# Pinned dyadic prime-weight feature norm

Issue: #737  
Parent: #730 / draft PR #732  
Analytic recurrence owner: #463  
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

## Actual arithmetic source

The repository's literal discrepancy coefficient is

```text
coefficient(n)=Lambda(n)/n.
```

On a prime `p`, the pinned Mathlib theorem

```text
ArithmeticFunction.vonMangoldt_apply_prime
```

gives

```text
coefficient(p)=log(p)/p.
```

The source window used by the nonlinear recurrence program is

```text
P_X={p in (X,2X] : p prime}.
```

Thus the selected one-dimensional source feature is not arbitrary. It is the
actual logarithmic prime weight already present in the dyadic arithmetic
source.

The immutable Mathlib binding remains

```text
revision: db584cd6d46c92f209a44c0f1c829460d327499d
von Mangoldt declaration:
  ArithmeticFunction.vonMangoldt_apply_prime
Chebyshev declarations:
  Chebyshev.theta_eq_sum_primesLE_log
  Chebyshev.theta_le_log4_mul_x
```

## Uniform dyadic L1 theorem

Define

```text
W_X=sum_{p in P_X}|coefficient(p)|.
```

Every selected coefficient is nonnegative, so

```text
W_X=sum_{p in P_X}log(p)/p.
```

For `X>0` and `p in P_X`, one has `X<=p`, hence

```text
log(p)/p <= log(p)/X.
```

Consequently

```text
W_X
 <= (1/X) sum_{p in P_X}log(p)
 <= theta(2X)/X.
```

Pinned Mathlib proves the elementary Chebyshev estimate

```text
theta(y) <= log(4)*y.
```

At `y=2X`, this yields the scale-uniform source theorem

```text
W_X <= 2*log(4).
```

No prime number theorem, zero-free region, zero-density estimate, or asymptotic
formula is used. The constant is coarse but independent of the dyadic scale.

## Concrete rank-one source stage

Let `c(v)` be a target coefficient and let `r(v)>=0` be a residual. The new
source stage has one factor and uses the pinned prime coefficient on both
source legs:

```text
factorIndex={0},
L_0(p)=coefficient(p),
R_0(q)=coefficient(q),
c_0(v)=c(v).
```

Its signed kernel is

```text
K_v(p,q)=c(v) coefficient(p) coefficient(q).
```

Define the weighted current-octave statistic

```text
A_X
 = sum_{p in P_X}
     coefficient(p)(|thetaError(p)|+1).
```

Finite distributivity proves the exact response identity

```text
B_X(v)
 = sum_{p,q in P_X}
     K_v(p,q)
     (|thetaError(p)|+1)
     (|thetaError(q)|+1)
 = c(v) A_X^2.
```

This is an actual source-feature identity. It does not state that `B_X(v)` is
the next theta error or a term in a complete explicit formula.

## Concrete norm certificate

Both one-dimensional feature norms are bounded by the same pinned constant:

```text
||L_0||_1 <= 2*log(4),
||R_0||_1 <= 2*log(4).
```

The proof-relevant certificate therefore has exact certified budget

```text
C_X(v)=|c(v)|*(2*log(4))^2.
```

A separate bound

```text
|c(v)|<=C
```

gives

```text
C_X(v)<=C*(2*log(4))^2
```

uniformly in `X`. This closes the source-feature and one-dimensional norm
channels for this particular rank-one family.

It does not construct or bound `c(v)`.

## Narrowed nonlinear criterion

The new proposition

```text
PinnedPrimeWeightCriterionAt(rho)
```

requires, for every `eta>0`, one coefficient bound `C`, one residual constant
`R`, a late scale, and functions `c_j(v),r_j(v)` such that

```text
|c_j(v)|<=C,

r_j(v)
 <= R X_j^(Q(rho)+eta/2),

|thetaError(v)|+1
 <= |c_j(v) A_Xj^2|/X_j + r_j(v)
```

on the next octave.

The uniform prime-feature theorem constructs the generic feature-norm
certificate and proves

```text
PinnedPrimeWeightCriterionAt(rho)
 -> PrimeThetaFeatureNormCriterionAt(rho)
 -> QuadraticThetaSourceRecurrenceAt(rho).
```

For `rho>=3/4`, the existing threshold theorem then gives

```text
PinnedPrimeWeightCriterionAt(rho)
 -> QuadraticThetaDescentAt(rho).
```

## Clause-indexed thresholds

The finite Boolean layer gives only the equalities

```text
arity 3 fraction=7/8,
arity 2 fraction=3/4.
```

The companion module therefore introduces the readable alias

```text
ClauseIndexedPinnedPrimeWeightCriterion(p)
 := PinnedPrimeWeightCriterionAt(
      countedSuccessFraction(p)).
```

It proves only equality transport:

```text
arity 3 alias = pinned criterion at 7/8,
arity 2 alias = pinned criterion at 3/4.
```

The conditional terminal route is

```text
theta input at 7/8
+ pinned prime-weight criterion at 7/8
+ pinned prime-weight criterion at 3/4
-> RH.
```

Both analytic criteria remain explicit theorem arguments. Clause counting and
MAX-3SAT hardness supply neither one.

## Hostile zero-coefficient control

Take

```text
c(v)=0,
r(v)=0.
```

The feature family and its uniform norm certificate still exist, but

```text
B_X(v)=0.
```

It cannot majorize

```text
|thetaError(v)|+1>0.
```

Therefore the completed feature-norm theorem is not a substitute for the
missing source identity.

## Remaining obligations

An actual threshold construction must still prove, for one immutable source
normalization:

1. a source-derived formula for `c_j(v)`;
2. a scale-uniform bound for `|c_j(v)|`;
3. the next-octave majorization by `|c_j(v)A_Xj^2|/X_j` plus residual;
4. a complete residual decomposition;
5. decay of every residual channel at exponent `Q(rho)+eta/2`;
6. endpoint, prime-power, gamma, pole, trivial-zero, nontrivial-zero and tail
   compatibility with the selected explicit-formula convention.

The first two feature norms are now proved. The source majorization and
residual theorem remain the load-bearing analytic work.

## Nonclaims

This increment does not:

- prove the prime number theorem;
- prove a new Chebyshev asymptotic;
- construct an explicit-formula target coefficient;
- identify the rank-one response with the zeta explicit formula;
- prove a next-octave theta recurrence;
- prove either the `7/8` or `3/4` criterion;
- transport MAX-SAT hardness into number theory;
- run Lean or Lake or claim kernel acceptance;
- prove an unconditional zero-free improvement or the Riemann Hypothesis.
