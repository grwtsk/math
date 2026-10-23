# Canonical deficit for the pinned prime-weight response

Issue: #750  
Parent: #737 / draft PR #743  
Analytic recurrence owner: #463  
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

## Starting point

The preceding stack fixes an actual arithmetic feature on the literal dyadic
prime window

```text
P_X={p in (X,2X] : p prime},
w_X(p)=Lambda(p)/p=log(p)/p.
```

Its weighted current-octave amplitude is

```text
A_X=sum_(p in P_X) w_X(p)(|thetaError(p)|+1).
```

The feature has the unconditional, non-PNT norm bound

```text
sum_(p in P_X)|w_X(p)| <= 2 log 4.
```

For a scalar target coefficient `c(v)`, the exact rank-one response is

```text
B_X(v)=c(v) A_X^2.
```

The prior criterion asked separately for a coefficient function, a nonnegative
residual, a coefficient bound, a residual bound, and the majorization

```text
|thetaError(v)|+1 <= |c(v)A_X^2|/X + residual(v).
```

Two ambiguities remained:

1. the residual was not canonical;
2. the coefficient could be reselected inside every epsilon and stage proof.

This increment removes both ambiguities without claiming a new analytic
estimate.

## Canonical minimal deficit

Define the normalized response magnitude

```text
M_X(c)=|c A_X^2|/X
```

and the canonical deficit

```text
D_X(c;v)=max(0, |thetaError(v)|+1-M_X(c)).
```

The source proves

```text
D_X(c;v)>=0,

|thetaError(v)|+1 <= M_X(c)+D_X(c;v).
```

More importantly, if `r>=0` and

```text
|thetaError(v)|+1 <= M_X(c)+r,
```

then

```text
D_X(c;v)<=r.
```

Thus `D_X(c;v)` is the least nonnegative residual compatible with the selected
coefficient. A residual estimate can no longer be improved by silently choosing
a different ledger term: every valid residual majorizes this canonical one.

## One immutable coefficient rule

A `PinnedPrimeWeightCoefficientRule` contains

```text
sourceIdentity,
normalization,
invalidationKey,
coefficient : Nat -> Real -> Real.
```

The coefficient is one global term. Its first argument is the dyadic stage and
its second is the target point. Crucially, the rule is fixed before the
quantifiers over `eta`, late scales, and target points.

This is stronger than choosing a fresh coefficient function inside every
stage proof. It makes cross-scale coherence visible in the theorem type.

The metadata does not prove source fidelity. An accepted rule must still be
constructed from an exact explicit-formula, detector, safe-shift, or other
arithmetic identity.

## Residual and deficit criteria

For one fixed rule, the residual criterion retains an arbitrary nonnegative
residual but uses only the rule's coefficient:

```text
PinnedPrimeWeightRuleResidualCriterionAt(rule,rho).
```

The canonical version removes the residual choice:

```text
PinnedPrimeWeightRuleDeficitCriterionAt(rule,rho).
```

It asks for uniform constants `C,R` and a late scale such that

```text
|rule.coefficient(j,v)| <= C
```

and

```text
D_(X_j)(rule.coefficient(j,v);v)
  <= R X_j^(Q(rho)+eta/2)
```

throughout every next octave.

Minimality of the deficit proves the exact equivalence

```text
RuleResidualCriterionAt(rule,rho)
  <-> RuleDeficitCriterionAt(rule,rho).
```

The forward direction replaces any residual by the smaller canonical deficit.
The reverse direction uses the canonical deficit itself as the residual.

## Transport to the nonlinear recurrence

Forgetting only the strengthened quantifier order gives the previous pinned
criterion:

```text
RuleDeficitCriterionAt(rule,rho)
  -> PinnedPrimeWeightCriterionAt(rho).
```

The existing stack then yields

```text
RuleDeficitCriterionAt(rule,rho)
  -> PrimeThetaFeatureNormCriterionAt(rho)
  -> QuadraticThetaSourceRecurrenceAt(rho).
```

For `rho>=3/4`, it also yields

```text
RuleDeficitCriterionAt(rule,rho)
  -> QuadraticThetaDescentAt(rho).
```

No estimate in this transport constructs or bounds the canonical deficit. The
analytic theorem has only been normalized.

## Target-fitting hostile control

The controls define

```text
c_fit(X,v)
  = X*(|thetaError(v)|+1)/A_X^2.
```

Whenever `X>0` and `A_X!=0`, direct algebra gives

```text
|c_fit(X,v)A_X^2|/X=|thetaError(v)|+1,
D_X(c_fit(X,v);v)=0.
```

This is not progress toward the arithmetic theorem. The coefficient was
constructed by inspecting the target value it was supposed to explain.

The hostile fixture proves a sharp logical point:

```text
zero canonical deficit
```

does not by itself imply

```text
source-faithful explicit-formula identity.
```

The rule type can hold a target-fitted term, so acceptance requires an
independent theorem deriving the coefficient from the declared arithmetic
source. The metadata labels the hostile rule as invalid but does not create
that theorem.

## Clause-indexed form

The Boolean-count layer still supplies only

```text
countedSuccessFraction(k-literal clause)=dyadicThreshold(k).
```

For a fixed rule, the clause-indexed alias is

```text
ClauseIndexedPinnedPrimeWeightDeficitCriterion(rule,p)
 := RuleDeficitCriterionAt(
      rule,
      countedSuccessFraction(p)).
```

Therefore

```text
arity 3 = rule-deficit criterion at 7/8,
arity 2 = rule-deficit criterion at 3/4.
```

The conditional terminal route is

```text
theta input at 7/8
+ immutable rule and canonical-deficit estimate at 7/8
+ immutable rule and canonical-deficit estimate at 3/4
-> RH.
```

The two rules may be different, but each is fixed globally within its own
threshold theorem. Clause arity constructs neither rule.

## Remaining analytic obligations

For at least one threshold, a later source theorem must provide all of:

1. one immutable coefficient rule;
2. an exact derivation of that rule from a declared arithmetic identity;
3. a scale-uniform coefficient bound on every late next octave;
4. decay of the canonical deficit at exponent `Q(rho)+eta/2`;
5. a complete source and invalidation audit.

The canonical deficit makes item 4 irreducible: no alternative nonnegative
residual can be smaller.

## Nonclaims

This increment does not:

- derive a coefficient rule from an explicit formula;
- prove a coefficient bound for any accepted rule;
- prove decay of the canonical deficit;
- accept the hostile target-fitted rule;
- prove either the `7/8` or `3/4` criterion;
- import MAX-SAT hardness into number theory;
- run Lean or Lake or claim kernel acceptance;
- prove an unconditional zero-free improvement or the Riemann Hypothesis.
