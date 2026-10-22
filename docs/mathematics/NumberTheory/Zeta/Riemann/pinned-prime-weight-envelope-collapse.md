# Pinned prime-weight envelope collapse

Issue: #817  
Parent: #809 / draft PR #813  
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

## Purpose

The preceding packets reduced the pinned rank-one route to a uniform bound on
an exact required-capacity ratio.  This note records what that ratio bound
already implies once the known current-octave feature-mass ceiling is inserted.

The result is an audit of premise strength.  It is not a construction of the
missing ratio certificate.

## Actual pinned amplitude

For the literal prime window

```text
P_X = {p : X < p <= 2X, p prime},
```

the pinned amplitude is

```text
A_X = sum_{p in P_X}
      (log(p)/p) * (|thetaError(p)|+1).
```

The feature-mass packet proves that a current-octave envelope

```text
|thetaError(u)|+1 <= B
for every u in [X,2X]
```

implies

```text
A_X <= L * B,
L = primeCoefficientL1Budget = 2*log(4).
```

Consequently

```text
A_X^2 <= L^2 * B^2.
```

This is an upper bound for the actual amplitude.  It does not provide the
cross-scale lower coupling needed to establish a ratio certificate.

## Exact ratio condition

Let

```text
T(v,E) = max(0, |thetaError(v)|+1-E)
```

be the positive target left after the admitted error channel.  The exact
required capacity is

```text
C_req(X,v,E) = X*T(v,E)/A_X^2.
```

Bertrand's theorem has already proved `A_X>0` at every positive source scale,
so the guard-free stage condition is

```text
|thetaError(v)|+1 <= E
or
C_req(X,v,E) <= C.
```

For nonnegative `C`, this is equivalent to the actual amplitude inequality

```text
X*T(v,E) <= C*A_X^2.
```

## Envelope quadratic majorant

Define

```text
QEnv(X,C,B) = C*L^2*B^2/X.
```

Combining the actual amplitude inequality with the feature-mass ceiling gives

```text
X*T(v,E)
  <= C*A_X^2
  <= C*L^2*B^2.
```

At positive `X`, division yields

```text
T(v,E) <= QEnv(X,C,B).
```

The untruncated target therefore satisfies

```text
|thetaError(v)|+1
  <= E + QEnv(X,C,B).
```

This theorem retains the admitted error `E`.  The error channel is not silently
removed or merged into the quadratic term.

## Exact power normalization

Suppose the current envelope has the power-law form

```text
B = M*X^(rho+delta).
```

Then

```text
QEnv(X,C,B)
 = C*L^2*M^2 * (X^(rho+delta))^2/X.
```

Using the existing identity

```text
(X^(rho+delta))^2/X
  = X^(2*rho-1+2*delta),
```

and

```text
Q(rho)=2*rho-1,
```

the source proves

```text
QEnv(X,C,M*X^(rho+delta))
 = C*L^2*M^2*X^(Q(rho)+2*delta).
```

Therefore

```text
current envelope at rho+delta
+ fixed ratio certificate C
-> positive remaining target at Q(rho)+2*delta.
```

This is exactly the exponent transformation expected from the proposed
quadratic descent.

## Concrete threshold ladder

At the first live threshold,

```text
rho = 7/8,
Q(rho) = 3/4,
```

so the source proves

```text
T(v,E)
 <= C*L^2*M^2*X^(3/4+2*delta).
```

At the second live threshold,

```text
rho = 3/4,
Q(rho) = 1/2,
```

and hence

```text
T(v,E)
 <= C*L^2*M^2*X^(1/2+2*delta).
```

The constants `C`, `L`, and `M`, the admitted error `E`, and the current-octave
envelope all remain explicit.

## Interpretation

The uniform ratio condition is not a weak normalization that precedes the hard
analysis.  Once the current-octave upper envelope is inserted, it already
forces the desired descended-scale target estimate.

This means the missing mathematical work cannot be supplied by the
feature-mass ceiling, the adaptive Bertrand floor, or exponent bookkeeping.
The unresolved theorem must construct the ratio condition from a genuine
cross-scale arithmetic identity or another source that relates the next octave
to the actual current-octave amplitude.

The direction proved here is

```text
ratio certificate
+ current envelope
-> descended target bound.
```

The reverse direction

```text
current envelope alone
-> ratio certificate
```

is neither stated nor available.

## Nonclaims

This packet does not prove:

- either uniform ratio criterion;
- a cross-scale theta identity;
- an explicit-formula coefficient law;
- a local prime-distribution theorem;
- the seven-eighths-to-three-quarters descent unconditionally;
- the three-quarters-to-one-half descent unconditionally;
- any transfer from MAX-SAT hardness to prime or zeta estimates;
- the Riemann Hypothesis.

No Lean or Lake execution, kernel audit, replay receipt, merge, or theorem
promotion is reported.
