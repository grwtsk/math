# Immutable signed source coupling for the pinned prime-weight route

Issue: #822  
Parent: #817 / draft PR #818  
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

## Purpose

The preceding route isolates the exact coefficient budget

```text
requiredCapacity(X,v,E)
  = X*max(0,|thetaError(v)|+1-E)/A_X^2,
```

where

```text
A_X
  = sum_{X<p<=2X, p prime}
      (log(p)/p)(|thetaError(p)|+1).
```

A uniform bound for this ratio is already strong enough to force the desired
quadratic threshold descent.  It remains source-free, however: it does not say
which arithmetic identity relates the next-octave theta error to the
current-octave amplitude.

This packet introduces a strictly stronger interface that can only be supplied
by an exact signed cross-scale identity plus two independent estimates.

## Immutable signed rule

A `PinnedPrimeWeightSignedSourceRule` contains immutable metadata

```text
sourceIdentity
normalization
invalidationKey
```

and two signed functions

```text
response(j,v)
signedResidual(j,v).
```

Its mathematical field is the exact identity

```text
thetaError(v)
  = response(j,v)/dyadicScale(j)
    + signedResidual(j,v)
```

for every `v` in the declared next octave.

The metadata strings retain provenance.  They do not prove the identity.  The
identity is a proof field and must be constructed from the declared arithmetic
source.

## Pointwise transport

The exact identity gives

```text
|thetaError(v)|+1
  <= |response(j,v)|/X
     + |signedResidual(j,v)|+1,
```

where `X=dyadicScale(j)`.

Suppose independently that

```text
|response(j,v)| <= C*A_X^2
```

and

```text
|signedResidual(j,v)|+1 <= E.
```

Then

```text
|thetaError(v)|+1-E
  <= |response(j,v)|/X.
```

Multiplication by the positive scale `X` yields

```text
X*(|thetaError(v)|+1-E)
  <= |response(j,v)|
  <= C*A_X^2.
```

This is exactly the previously defined amplitude requirement, and hence the
guard-free Bertrand ratio requirement.

The proof uses the actual pinned amplitude.  It does not replace the source
response by a free positive scalar.

## Rule-relative criteria

The variable criterion

```text
PinnedPrimeWeightSignedSourceCouplingCriterionAt(rule,rho)
```

fixes `rule` before every quantifier but allows the response budget `C` to
depend on `eta`, matching the existing variable ratio criterion.

The fixed criterion

```text
PinnedPrimeWeightFixedSignedSourceCouplingCriterionAt(rule,C,rho)
```

fixes both the source rule and coefficient budget before `eta`.  For every
positive `eta`, it requires one residual constant `R` and a late stage such
that

```text
|response(j,v)|
  <= C*A_(dyadicScale j)^2,
```

and

```text
|signedResidual(j,v)|+1
  <= R*(dyadicScale j)^(Q(rho)+eta/2)
```

for every next-octave point.

The formal implication chain is

```text
fixed signed source coupling
  -> fixed Bertrand ratio criterion
  -> quadratic theta source recurrence
  -> one threshold descent, when rho>=3/4.
```

The variable signed criterion similarly implies the variable Bertrand ratio
criterion.

No converse is claimed.  A ratio bound alone does not identify a signed source
response, a residual, or an exact decomposition.

## Why the signed interface is stronger

The ratio predicate records only the magnitude inequality

```text
X*T(v,E) <= C*A_X^2.
```

The signed source rule additionally records:

1. which arithmetic source creates the response;
2. its exact normalization and invalidation key;
3. the sign-sensitive response before absolute values;
4. the complete signed residual;
5. the exact equality from which the magnitude estimate is derived.

This is the minimum structure needed to distinguish a real explicit-formula or
detector argument from a target-fitted inequality.

## Hostile fixture: zero response, full residual

Define

```text
response(j,v)=0,
signedResidual(j,v)=thetaError(v).
```

Then the exact identity is true, but the complete target remains in the
residual:

```text
|signedResidual(j,v)|+1
  = |thetaError(v)|+1.
```

Therefore exact decomposition alone gives no residual decay.

## Hostile fixture: target-fitted response

Define

```text
response(j,v)=dyadicScale(j)*thetaError(v),
signedResidual(j,v)=0.
```

Since every dyadic scale is nonzero,

```text
response(j,v)/dyadicScale(j)=thetaError(v).
```

This also satisfies the exact identity, but it reads the desired target into
the response.  It is not an independently constructed arithmetic source law.
Its quadratic response bound is exactly part of the missing theorem rather
than a consequence of the definition.

These two fixtures show that all three components are essential:

```text
exact source identity
+ quadratic response bound
+ descended complete residual bound.
```

## Remaining arithmetic obligations

An actual supplier must now construct one immutable rule from a declared
explicit-formula, detector, safe-shift, or equivalent source and prove, for the
same rule:

1. the exact next-octave signed identity;
2. a scale-uniform bound
   `|response(j,v)| <= C*A_X^2` at `rho=7/8`;
3. complete residual decay at exponent `3/4+eta/2`;
4. the corresponding independent response and residual estimates at
   `rho=3/4`, with residual exponent `1/2+eta/2`;
5. all endpoint, prime-power, pole, gamma, zero, normalization, and tail
   channels required by the selected source.

The current pinned von Mangoldt L-series identity is valid in `Re(s)>1` and
supplies the arithmetic coefficient channel, but it is not by itself the full
critical-strip explicit formula required here.

## Nonclaims

- an exact decomposition does not prove its response-capacity estimate;
- an exact decomposition does not prove residual decay;
- a target-fitted response is not a source-faithful construction;
- metadata strings do not prove a source law;
- a ratio certificate does not reconstruct a signed identity;
- clause counting and MAX-SAT hardness do not supply arithmetic coupling;
- no explicit-formula or detector rule is constructed here;
- no Lean or Lake execution is reported;
- no Riemann Hypothesis result is claimed.
