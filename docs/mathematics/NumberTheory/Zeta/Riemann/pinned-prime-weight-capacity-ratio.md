# Exact finite-capacity ratio for the pinned prime-weight route

Issue: #781  
Parent: #763 / draft PR #776  
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

## 1. Starting point

The previous layer reduced one transition to the exact amplitude requirement

```text
AmpReq(X,C,v,E):
  X * (|thetaError(v)| + 1 - E) <= C * A_X^2,
```

where

```text
A_X = sum_{X<p<=2X, p prime}
        (log p / p) * (|thetaError(p)| + 1).
```

Here `E` is the admitted descended error and `C` is a nonnegative coefficient
budget.

This form still conceals one important distinction. If the target remaining
after `E` is nonpositive, the inequality is automatic. If the remaining target
is positive, the amplitude must be nonzero and the coefficient budget must
exceed a definite ratio.

## 2. Positive remaining target

Define

```text
T(v,E) = max(0, |thetaError(v)| + 1 - E).
```

Then

```text
T(v,E) >= 0,
T(v,E) = 0
  <-> |thetaError(v)| + 1 <= E.
```

For every `C >= 0`, the source proves

```text
AmpReq(X,C,v,E)
  <-> X*T(v,E) <= C*A_X^2.
```

Thus the negative part of the target gap contributes nothing to a genuine
amplitude demand.

## 3. Required finite coefficient budget

Define the totalized real ratio

```text
C_req(X,v,E) = X*T(v,E)/A_X^2.
```

When `A_X != 0`, the source proves

```text
AmpReq(X,C,v,E)
  <-> C_req(X,v,E) <= C
```

for `C >= 0`.

Moreover, `C_req` is the least nonnegative coefficient budget satisfying the
stage inequality:

```text
0 <= C_req,
AmpReq(X,C_req,v,E),
AmpReq(X,C,v,E) and 0<=C
  -> C_req<=C.
```

There is therefore no smaller nonnegative budget hidden by the amplitude
notation.

## 4. Why the nonzero-amplitude guard is mandatory

Real division is totalized. Consequently,

```text
A_X = 0 -> C_req(X,v,E) = 0
```

regardless of the target gap.

The bare numerical value `0` is not a finite-capacity certificate. At positive
scale, the source proves

```text
A_X = 0
  ->
  (AmpReq(X,C,v,E)
    <-> |thetaError(v)|+1 <= E).
```

Thus zero amplitude supports only the vacuous branch in which the error
envelope already covers the target.

The exact guarded requirement is

```text
FiniteCap(X,C,v,E):
  |thetaError(v)|+1 <= E
  or
  (A_X != 0 and C_req(X,v,E) <= C).
```

For `X>0` and `C>=0`,

```text
AmpReq(X,C,v,E) <-> FiniteCap(X,C,v,E).
```

This prevents the field convention `0/0=0` from entering the RH dependency
path as a false certificate.

## 5. Nonvacuous stages consume two resources

Suppose

```text
E < |thetaError(v)|+1
```

and `AmpReq(X,C,v,E)` holds at `X>0`. The source proves

```text
A_X != 0,
0 < C.
```

So every genuine transition must provide both:

1. nonzero current-octave pinned amplitude;
2. a strictly positive coefficient budget large enough to dominate the exact
   required ratio.

Neither condition follows from clause counting, MAX-3SAT hardness, or the
formal definition of the ratio.

## 6. Criterion-level equivalence

The packet defines

```text
PinnedPrimeWeightCapacityRatioCriterionAt(rho)
PinnedPrimeWeightFixedCapacityRatioCriterionAt(C,rho).
```

At each stage these criteria require the guarded finite-capacity condition with
error allowance

```text
E_j = R*(2^j)^(Q(rho)+eta/2),
Q(rho)=2rho-1.
```

The source proves exact equivalences

```text
CapacityRatioCriterionAt(rho)
  <-> AmplitudeCriterionAt(rho),

FixedCapacityRatioCriterionAt(C,rho)
  <-> FixedCapacityAmplitudeCriterionAt(C,rho).
```

Hence the ratio layer does not strengthen the analytic hypothesis. It exposes
the two mutually exclusive stage branches and the exact minimum coefficient
budget in the nonvacuous branch.

A fixed ratio criterion still supplies the existing conditional chain

```text
fixed ratio criterion
  -> quadratic theta source recurrence
  -> one threshold descent, when rho>=3/4.
```

The hard input remains the proof of the ratio criterion itself.

## 7. Clause-indexed thresholds

The equality-only companion identifies

```text
arity 3 <-> rho=7/8,
arity 2 <-> rho=3/4.
```

The conditional endpoint is

```text
initial theta estimate at 7/8
+ fixed ratio criterion at 7/8
+ fixed ratio criterion at 3/4
-> RH.
```

Both ratio criteria remain explicit analytic assumptions. Clause arity supplies
only the threshold values.

## 8. Concrete remaining obligations

At the first step, prove for one fixed `C_3>=0` that every sufficiently late
stage and every target `v` in the next octave satisfies either

```text
|thetaError(v)|+1
  <= R_3*X^(3/4+eta/2),
```

or

```text
A_X != 0
and
X*max(0, |thetaError(v)|+1-R_3*X^(3/4+eta/2)) / A_X^2
  <= C_3.
```

At the second step, prove the analogous statement with exponent

```text
1/2+eta/2
```

and one fixed budget `C_2`.

The nonvacuous branch is the actual amplitude theorem. It must come from the
prime, explicit-formula, detector, safe-shift, or another declared arithmetic
source.

## 9. Nonclaims

- no pinned-amplitude lower bound is proved;
- no ratio bound at `7/8` or `3/4` is proved;
- no explicit-formula coefficient law is imported;
- no zero amplitude is treated as a finite-capacity certificate;
- no SAT theorem supplies a prime or theta estimate;
- no Lean or Lake execution is reported;
- no kernel acceptance is reported;
- no unconditional Riemann Hypothesis result is claimed.
