# Bertrand positivity for the pinned prime-weight ratio

Issue: #790  
Parent: #781 / draft PR #786  
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

## Result

The preceding ratio layer used

```text
A_X = sum_{X<p<=2X, p prime}
        (log p / p) * (|thetaError(p)|+1)
```

and therefore had to guard every finite-capacity statement with

```text
A_X != 0.
```

The guard is now discharged arithmetically for every positive integral scale.

The pinned Mathlib revision contains the formal Bertrand theorem

```text
Nat.exists_prime_lt_and_le_two_mul
```

which states that, for every nonzero natural number `X`, there is a prime `p`
with

```text
X < p <= 2*X.
```

This prime lies in the repository's literal source window

```text
thetaPrimeWindow X = {p in (X,2X] | p is prime}.
```

## Strict positivity of the actual source summand

On a selected prime, the existing source theorem gives

```text
coefficient(p)=log(p)/p.
```

A prime satisfies `1<p`, so

```text
log(p)>0,
p>0,
coefficient(p)>0.
```

The other factor in the pinned summand satisfies

```text
|thetaError(p)|+1>0.
```

Hence the Bertrand witness contributes a strictly positive term:

```text
0 < coefficient(p) * (|thetaError(p)|+1).
```

Every term in the complete finite sum is nonnegative. Therefore

```text
0 < pinnedPrimeWeightedAmplitude X
```

for every `X!=0`.

In particular, for every dyadic stage `j`,

```text
0 < pinnedPrimeWeightedAmplitude (dyadicScale j),

pinnedPrimeWeightedAmplitude (dyadicScale j) != 0.
```

This is an unconditional arithmetic theorem relative only to the pinned
Mathlib Bertrand result and the repository's already-defined literal prime
coefficient. It uses no prime number theorem, zero-density theorem, zero-free
region, explicit formula, or RH premise.

## Guard elimination

The previous guarded condition was

```text
FiniteCap(X,C,v,E):
  |thetaError(v)|+1 <= E
  or
  (A_X != 0 and C_req(X,v,E)<=C),
```

where

```text
C_req(X,v,E)
  = X*max(0,|thetaError(v)|+1-E)/A_X^2.
```

For `X!=0`, Bertrand positivity proves the exact equivalence

```text
FiniteCap(X,C,v,E)
<->
|thetaError(v)|+1 <= E
  or C_req(X,v,E)<=C.
```

Define the right-hand side as

```text
BertrandRatio(X,C,v,E).
```

At a positive scale and with `C>=0`, the earlier amplitude equivalence now
becomes

```text
AmpReq(X,C,v,E)
<-> BertrandRatio(X,C,v,E).
```

On a nonvacuous point

```text
E < |thetaError(v)|+1,
```

the covered-target branch is impossible. Consequently the complete stage
condition is exactly

```text
C_req(X,v,E)<=C.
```

The denominator ambiguity and zero-amplitude branch are no longer part of the
research frontier.

## Criterion-level form

The new source defines

```text
PinnedPrimeWeightBertrandRatioCriterionAt(rho)
PinnedPrimeWeightFixedBertrandRatioCriterionAt(C,rho).
```

These use the guard-free stage predicate at the existing descended error
envelope

```text
E_j = R*(2^j)^(Q(rho)+eta/2).
```

The source proves exact equivalences

```text
BertrandRatioCriterionAt(rho)
  <-> CapacityRatioCriterionAt(rho),

FixedBertrandRatioCriterionAt(C,rho)
  <-> FixedCapacityRatioCriterionAt(C,rho).
```

Thus Bertrand's theorem simplifies the proposition but does not make the
uniform quotient estimate easier by definition. A fixed Bertrand ratio
criterion still conditionally supplies the existing quadratic recurrence and,
for `rho>=3/4`, one threshold descent.

## Clause-indexed thresholds

The equality-only companion layer identifies

```text
arity 3 <-> rho=7/8,
arity 2 <-> rho=3/4.
```

The conditional endpoint is now expressible as

```text
initial theta estimate at 7/8
+ fixed Bertrand ratio criterion at 7/8
+ fixed Bertrand ratio criterion at 3/4
-> RH.
```

Clause counting contributes only the threshold labels. It does not contribute
Bertrand's theorem, the theta estimate, or either uniform ratio bound.

## What remains open

For the first transition, the actual obligation is now simply to find fixed
constants `C_3,R_3` such that, on every sufficiently late nonvacuous stage,

```text
(2^j * max(0,
   |thetaError(v)|+1
   - R_3*(2^j)^(3/4+eta/2)))
/
(pinnedPrimeWeightedAmplitude (2^j))^2
<= C_3.
```

The second transition has the same form with exponent

```text
1/2+eta/2.
```

Bertrand proves only that the denominator is positive. It gives no uniform
upper bound for either quotient.

## Nonclaims

- prime-window occupancy does not imply a uniform ratio bound;
- strict positivity does not provide a quantitatively sufficient amplitude;
- a nonzero denominator does not bound the quotient;
- Bertrand's theorem does not provide an explicit-formula coefficient law;
- clause arity does not provide a prime or theta estimate;
- MAX-3SAT hardness does not imply an arithmetic ratio estimate;
- no Lean or Lake execution is reported;
- no kernel audit is reported;
- no unconditional Riemann Hypothesis result is claimed.

## Source credit

- Mathlib formalization of Bertrand's postulate, declaration
  `Nat.exists_prime_lt_and_le_two_mul`.
- Existing GRWTSK literal dyadic prime window and pinned von Mangoldt
  coefficient source.
- Existing capacity-ratio and threshold-descent interfaces in the active RH
  stack.
