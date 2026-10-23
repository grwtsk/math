# Quantitative sandwich for the pinned prime-weight ratio

Issue: #799  
Parent: #790 / draft PR #794  
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

## 1. The actual pinned amplitude

On the literal prime window

```text
P_X = {p prime : X < p <= 2X},
```

the repository uses

```text
A_X = sum_{p in P_X}
      (log p / p) * (|theta(p)-p|+1).
```

All summands are nonnegative. Bertrand's postulate supplies at least one
prime `p` in `(X,2X]` whenever `X>0`.

The preceding packet used this only to prove `A_X>0`. The new source makes the
result quantitative.

## 2. Explicit Bertrand floor

For a Bertrand witness `p`,

```text
p >= 2,
p <= 2X.
```

Therefore

```text
log 2 <= log p,
1/(2X) <= 1/p,
```

and hence

```text
log 2/(2X) <= log p/p.
```

Since the theta-error factor is at least one and all other terms are
nonnegative,

```text
BertrandFloor(X)
  := log 2/(2X)
  <= A_X.
```

Thus

```text
BertrandFloor(X)^2 <= A_X^2.
```

This is a genuine arithmetic lower bound for the repository's actual pinned
sum. It uses no prime number theorem, zero-density estimate, zero-free region,
explicit formula, or RH premise.

## 3. Current-envelope ceiling

Suppose a current-octave envelope gives

```text
|theta(u)-u|+1 <= B
```

for every `u in [X,2X]`, with `B>=0`.

The pinned coefficient mass satisfies the already proved estimate

```text
sum_{p in P_X} log p/p <= 2 log 4.
```

Consequently

```text
A_X <= (2 log 4) B.
```

The lower and upper bounds therefore give

```text
log 2/(2X)
  <= A_X
  <= (2 log 4) B.
```

The two inequalities have very different roles. The left inequality prevents
the denominator from vanishing. The right inequality records the largest
response compatible with the current-octave theta envelope.

## 4. Exact ratio sandwich

Let

```text
T(v,E)=max(0, |theta(v)-v|+1-E)
```

be the positive target remaining after the admitted error allowance, and let

```text
C_req(X,v,E)=X*T(v,E)/A_X^2.
```

The new source defines

```text
EnvelopeMinorant(X,B,v,E)
  = X*T(v,E)/((2 log 4)B)^2,

BertrandMajorant(X,v,E)
  = X*T(v,E)/(log 2/(2X))^2.
```

For `X>0`, `B>0`, and the current-octave envelope,

```text
EnvelopeMinorant(X,B,v,E)
  <= C_req(X,v,E)
  <= BertrandMajorant(X,v,E).
```

The left inequality is the ratio form of the quadratic recurrence
obstruction: a bounded ratio requires the next-octave remaining target to be
controlled by the square of a current-octave envelope, divided by the scale.

The right inequality is what Bertrand occupancy alone supplies.

## 5. Cubic loss of the Bertrand-only estimate

The Bertrand majorant has the exact normalization

```text
BertrandMajorant(X,v,E)
  = 4 X^3 T(v,E)/(log 2)^2.
```

Thus the one-prime lower bound is quantitatively far weaker than the desired
uniform ratio theorem. It removes division by zero, but replaces the unknown
ratio by a cubic-scale majorant.

In particular, Bertrand's theorem alone would yield a scale-independent ratio
only if

```text
T(v,E) = O(X^-3),
```

which is not supplied by the present analytic route. This observation is not
an impossibility theorem for stronger arithmetic inputs. It identifies the
precise limitation of the Bertrand-only denominator estimate.

## 6. Relation to the `7/8 -> 3/4 -> 1/2` descent

At the first transition the admitted error has the target exponent

```text
3/4 + eta/2.
```

At the second transition it has exponent

```text
1/2 + eta/2.
```

For either transition, the remaining unresolved theorem is not denominator
nonvanishing and not coefficient optimization. It is a cross-scale estimate
showing that

```text
X*T(v,E) <= C*A_X^2
```

with one fixed `C` on all sufficiently late stages and all next-octave target
points.

The ratio sandwich makes both sides of this obligation auditable:

- the envelope minorant shows the necessary quadratic scale;
- the Bertrand majorant shows the weakness of occupancy alone.

## 7. Nonclaims

This packet does not prove:

- a uniform required-capacity ratio bound;
- the ratio criterion at `7/8`;
- the ratio criterion at `3/4`;
- an explicit-formula, detector, or safe-shift coefficient law;
- a complexity-to-zeta theorem transfer;
- a Lean/Lake or kernel-checked result;
- the Riemann Hypothesis.

## 8. Evidence state

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
BERTRAND_AMPLITUDE_FLOOR_DEFINED
CURRENT_ENVELOPE_CEILING_DEFINED
EXACT_RATIO_SANDWICH_DEFINED
CUBIC_LOSS_NORMALIZATION_DEFINED
UNIFORM_RATIO_BOUND_OPEN
COEFFICIENT_SOURCE_LAW_OPEN
SEVEN_EIGHTHS_RATIO_CRITERION_OPEN
THREE_QUARTERS_RATIO_CRITERION_OPEN
NO_COMPLEXITY_TO_ZETA_TRANSFER
NO_RH_CLAIM
```
