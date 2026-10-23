# Prime theta feature norms and pair-basis saturation

Issue: #730  
Parent: #723 / draft PR #725  
Analytic recurrence owner: #463  
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

## Why this increment is necessary

The previous layer wrote the signed prime kernel as a finite separable sum

```text
K_v(p,q)=sum_r c_r(v)L_r(p)R_r(q).
```

That notation exposes source features, but finite separability alone is not a
mathematical restriction. Every kernel on a finite set has a canonical delta
basis with one factor for each ordered source pair.

Without an independent norm, rank, source, or normalization theorem, the word
“separable” can merely rename the original kernel.

## Exact pair-basis saturation

For a finite set `S` define

```text
delta_i(p)=1 when i=p, and 0 otherwise.
```

For any real kernel `kappa : S x S -> R`, its canonical pair expansion is

```text
kappa_pair(p,q)
 = sum_(i,j in S) kappa(i,j) delta_i(p) delta_j(q).
```

For every `p,q in S`, the source proves

```text
kappa_pair(p,q)=kappa(p,q).
```

Taking absolute values term-by-term gives an equally exact identity: the
complete absolute mass of the pair-basis expansion is the original kernel
`l1` mass. No cancellation or norm improvement appears.

The canonical factor set is `S x S`, with exact cardinality

```text
|S x S|=|S|^2.
```

Specializing `S` to the literal prime window shows that every
`PrimeThetaQuadraticKernelStage` already has a finite separable expansion on
its actual source support. Therefore:

```text
finite separability
  != useful compression,
  != source identity,
  != uniform kernel bound,
  != descended residual estimate.
```

This is a hostile control on the interpretation of the preceding factor layer.

## Exact one-dimensional norm factorization

For a genuine source-feature stage define

```text
leftL1(r)  = sum_(p in P_X) |L_r(p)|,
rightL1(r) = sum_(q in P_X) |R_r(q)|.
```

The complete absolute factor mass is

```text
F_X(v)
 = sum_(p,q in P_X) sum_r
     |c_r(v)L_r(p)R_r(q)|.
```

Finite Fubini and multiplicativity of absolute value give the exact identity

```text
F_X(v)
 = sum_r |c_r(v)| leftL1(r) rightL1(r).
```

This is the first decomposition in the stack that separates the uniform
kernel-mass problem into one-dimensional feature norms and target
coefficients.

## Proof-relevant norm certificate

A `PrimeThetaFeatureNormCertificate` carries nonnegative functions

```text
leftBudget(r),
rightBudget(r),
```

with proofs

```text
leftL1(r)  <= leftBudget(r),
rightL1(r) <= rightBudget(r)
```

for every retained factor.

Its certified feature budget is

```text
C_X(v)
 = sum_r |c_r(v)| leftBudget(r) rightBudget(r).
```

The exact norm factorization proves

```text
absoluteFactorMass(v) <= C_X(v).
```

The certificate is deliberately proof-relevant. A displayed normalization,
an `O(1)` label, or a source comment cannot populate its fields.

## Feature-norm criterion

The new proposition

```text
PrimeThetaFeatureNormCriterionAt(rho)
```

requires, on every sufficiently late dyadic transition:

```text
C_X(v) <= K,

residual(v)
 <= R X^(Q(rho)+eta/2),

|thetaError(v)|+1
 <= |inducedResponse_X(v)|/X + residual(v).
```

The source proves the implication chain

```text
PrimeThetaFeatureNormCriterionAt(rho)
 -> PrimeThetaSeparableKernelCriterionAt(rho)
 -> PrimeThetaQuadraticKernelCriterionAt(rho)
 -> QuadraticThetaSourceRecurrenceAt(rho).
```

For `rho>=3/4`, this also supplies the existing one-step threshold descent.

## Cardinality obstruction

The controls use one factor whose left and right features are identically one
on the prime window. Pointwise, both feature magnitudes are exactly one. But

```text
leftL1  = |P_X|,
rightL1 = |P_X|,
```

so the complete factor mass is

```text
|c(v)| |P_X|^2.
```

Thus a pointwise `O(1)` feature estimate does not yield a scale-uniform `l1`
budget. A valid source theorem needs at least one of:

- genuine `l1` normalization of the features;
- coefficient decay compensating the source-window size;
- a different source support with a proved uniform budget;
- a stronger estimate before absolute values are introduced;
- another exact argument that bounds the certified coefficient-weighted norm.

This increment does not invoke a prime-counting asymptotic or prove that the
prime-window cardinality is unbounded. The finite square-cardinality identity
already shows where the missing normalization must enter.

## Clause-indexed form

The Boolean layer supplies only

```text
countedSuccessFraction(k-literal clause)=dyadicThreshold(k).
```

Accordingly,

```text
ClauseIndexedPrimeThetaFeatureNormCriterion(p)
 := PrimeThetaFeatureNormCriterionAt(
      countedSuccessFraction(p)).
```

and the exact identifications are

```text
arity 3 = feature-norm criterion at 7/8,
arity 2 = feature-norm criterion at 3/4.
```

The conditional endpoint remains

```text
theta input at 7/8
+ independently proved feature-norm criterion at 7/8
+ independently proved feature-norm criterion at 3/4
-> RH.
```

Clause arity supplies no feature family and no norm estimate.

## Remaining obligations

The live arithmetic targets are now

```text
PrimeThetaFeatureNormCriterionAt(7/8),
PrimeThetaFeatureNormCriterionAt(3/4).
```

A valid construction must use one immutable source rule across all late scales
and prove, for the same stages:

1. the exact next-octave theta majorization;
2. the left and right feature `l1` majorants;
3. one scale-uniform coefficient-weighted certified budget;
4. the complete descended residual estimate;
5. all source, normalization, endpoint, and invalidation identities.

## Nonclaims

This increment does not:

- select an explicit-formula, safe-shift, detector, or Gram feature family;
- prove either feature-norm criterion;
- infer compression from finite separability;
- infer `l1` normalization from pointwise bounds;
- prove a prime-counting estimate;
- create a complexity-to-number-theory theorem edge;
- run Lean or Lake or claim kernel acceptance;
- prove an unconditional zero-free improvement or the Riemann Hypothesis.
