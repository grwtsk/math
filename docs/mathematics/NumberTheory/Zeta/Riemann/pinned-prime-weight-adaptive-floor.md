# Adaptive Bertrand floor and dyadic Chebyshev cancellation

Issue: #809  
Parent: #799 / draft PR #804  
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

## 1. Exact prime-window identity

The pinned source window is

```text
P_X = {p : X < p <= 2X and p is prime}.
```

It is exactly the difference of the nested prime initial segments:

```text
P_X = primesLE(2X) \ primesLE(X).
```

Consequently,

```text
sum_{p in P_X} log p = theta(2X)-theta(X).
```

This is an identity of the repository's literal source inventory. It does not estimate the difference.

## 2. Why the available global Chebyshev bounds do not give a positive window floor

At the pinned Mathlib revision the available global estimates include

```text
theta(2X)
  >= 2X*log 2 - log(2X+1)
     - 2*sqrt(2X)*log(2X),

theta(X) <= X*log 4.
```

Subtracting gives the raw dyadic-window lower expression

```text
L_Cheb(X)
 = 2X*log 2 - log(2X+1)
   - 2*sqrt(2X)*log(2X)
   - X*log 4.
```

Because

```text
log 4 = 2 log 2,
```

the leading terms cancel exactly:

```text
L_Cheb(X)
 = -log(2X+1)-2*sqrt(2X)*log(2X)
 <= 0.
```

Thus

```text
max(0,L_Cheb(X))=0.
```

The global Chebyshev lower and upper constants are individually useful, but at the ratio-two window they cannot provide a positive lower bound for

```text
theta(2X)-theta(X).
```

A positive full-window mass estimate requires a genuinely local theorem, a sharper pair of global constants, or another source.

## 3. Scale-adaptive Bertrand floor

The formal Bertrand theorem supplies a prime

```text
X < p <= 2X.
```

Since `p` is integral,

```text
X+1 <= p.
```

On a selected prime the pinned coefficient is

```text
coefficient(p)=log(p)/p.
```

Monotonicity of the logarithm and the denominator inequalities give

```text
log(X+1)/(2X)
  <= log(X+1)/p
  <= log(p)/p.
```

Define

```text
AdaptiveFloor(X)=log(X+1)/(2X).
```

For every positive `X`, the source proves

```text
0 < AdaptiveFloor(X),
AdaptiveFloor(X) <= pinnedPrimeWeightedAmplitude(X).
```

This improves the preceding constant floor

```text
log 2/(2X)
```

by replacing `log 2` with `log(X+1)`.

## 4. Logarithmically improved ratio majorant

The exact required coefficient budget is

```text
C_req(X,v,E)
 = X*T(v,E)/A_X^2,
```

where

```text
T(v,E)=max(0,|thetaError(v)|+1-E)
```

and `A_X` is the pinned weighted amplitude.

The adaptive floor gives

```text
C_req(X,v,E)
 <= X*T(v,E)/AdaptiveFloor(X)^2.
```

The right-hand side has the exact normalization

```text
AdaptiveMajorant(X,v,E)
 = 4*X^3*T(v,E)/log(X+1)^2.
```

It is no larger than the previous Bertrand majorant

```text
4*X^3*T(v,E)/(log 2)^2.
```

The gain is a factor of

```text
(log(X+1)/log 2)^2.
```

This is a genuine quantitative improvement, but it does not change the cubic power of the scale. It therefore does not supply a scale-uniform ratio bound at either live threshold.

## 5. Remaining analytic theorem

At the first descent, a fixed constant `C_3` must still satisfy

```text
X*max(0,
  |thetaError(v)|+1
  - R_3*X^(3/4+eta/2))
<= C_3*A_X^2
```

uniformly over sufficiently late stages and every next-octave target point.

The second descent requires the corresponding estimate with exponent

```text
1/2+eta/2.
```

The adaptive floor controls the denominator only from one prime. It does not couple the next-octave target to the current-octave amplitude square.

## 6. Nonclaims

- The global Chebyshev bounds do not prove a positive dyadic-window mass floor.
- The adaptive Bertrand floor does not prove a uniform required-capacity bound.
- The logarithmically improved cubic majorant does not prove threshold descent.
- The prime-window identity does not provide a cross-scale theta recurrence.
- No explicit-formula coefficient law is added.
- No SAT or MAX-3SAT theorem supplies a prime or theta estimate.
- No Lean or Lake execution is reported.
- No unconditional Riemann Hypothesis result is claimed.

## 7. Source credit

- Mathlib's formal Bertrand postulate supplies the selected prime in `(X,2X]`.
- Mathlib's Chebyshev development supplies the pinned global upper and lower estimates.
- The preceding GRWTSK packets define the pinned coefficient, amplitude, exact required capacity, and constant-floor ratio sandwich.
