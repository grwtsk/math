# Bounded capacity of the pinned prime-weight response

Issue: #759  
Parent: #750 / draft PR #754  
Analytic recurrence owner: #463  
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

## Starting point

The preceding stack fixes the current-octave arithmetic amplitude

```text
A_X
 = sum_{X<p<=2X, p prime}
     (log p / p) (|thetaError(p)|+1)
```

and the normalized rank-one response

```text
M_X(c)=|c A_X^2|/X.
```

For a selected coefficient `c`, the canonical minimal residual is

```text
D_X(c;v)
 = max(0, |thetaError(v)|+1-M_X(c)).
```

The coefficient source law and the decay of this deficit remain open.

This increment solves a different, finite optimization problem exactly: what
is the best response possible when only the absolute coefficient budget

```text
|c|<=C
```

is known?

## Exact response capacity

For `C>=0`, define

```text
Cap_X(C)=C A_X^2/X.
```

Because `A_X^2>=0`, every coefficient inside the budget satisfies

```text
M_X(c)<=Cap_X(C).
```

The extremal coefficient `c=C` attains equality:

```text
M_X(C)=Cap_X(C).
```

The sign of the coefficient is irrelevant after the absolute value. The
optimization therefore has no hidden geometric or phase parameter.

## Bounded optimal deficit

Define

```text
D_X^*(C;v)
 = max(0, |thetaError(v)|+1-Cap_X(C)).
```

The source proves

```text
D_X^*(C;v)>=0,

|thetaError(v)|+1
 <= Cap_X(C)+D_X^*(C;v).
```

For every `c` satisfying `|c|<=C`,

```text
D_X^*(C;v)<=D_X(c;v).
```

Moreover,

```text
D_X(C;v)=D_X^*(C;v).
```

Thus `D_X^*` is the exact minimum canonical deficit among all coefficients
inside the budget. A more complicated bounded coefficient rule cannot improve
on the constant extremizer at the level of response magnitude.

## Necessary amplitude inequality

Suppose an admitted error `E` satisfies

```text
D_X^*(C;v)<=E.
```

Then

```text
|thetaError(v)|+1-E<=C A_X^2/X.
```

At a positive scale this is equivalent to the denominator-free necessary
condition

```text
X (|thetaError(v)|+1-E)<=C A_X^2.
```

This changes the shape of the live analytic problem. A future argument cannot
win merely by inventing a bounded target coefficient. It must show that the
actual pinned current-octave amplitude is large enough, relative to the
next-octave theta error, to satisfy this inequality.

The implication is one-way. The source does not prove such an amplitude lower
bound.

## Degenerate stages

Two exact hostile cases are recorded.

If `C=0`, then

```text
D_X^*(0;v)=|thetaError(v)|+1.
```

If `A_X=0`, then for every budget `C`,

```text
D_X^*(C;v)=|thetaError(v)|+1.
```

Therefore no bounded coefficient can manufacture a contraction at a stage
where the selected pinned amplitude vanishes. Nonvanishing alone is still
insufficient; the quantitative amplitude inequality above is the actual
requirement.

## Necessary variable-budget criterion

The predicate

```text
PinnedPrimeWeightCapacityCriterionAt(rho)
```

allows a budget `C` to depend on `eta` and requires

```text
D_X^*(C;v)
 <= R X^(Q(rho)+eta/2)
```

throughout every sufficiently late next octave.

Every immutable coefficient-rule deficit criterion implies this capacity
criterion. Hence failure of the capacity condition rules out every bounded
rule at once, regardless of how that rule was represented.

The converse is not asserted for the variable-budget condition because its
budget may vary with `eta` and it carries no source identity.

## Fixed-capacity criterion

The stronger predicate

```text
PinnedPrimeWeightFixedCapacityCriterionAt(C,rho)
```

fixes one nonnegative budget before `eta`.

Define the constant optimizer rule

```text
coefficient(j,v)=C.
```

Its metadata explicitly says that it is an analytic optimizer only and is not
derived from an explicit formula, detector, or safe shift. The source proves

```text
FixedCapacityCriterionAt(C,rho)
 <->
0<=C and RuleDeficitCriterionAt(constantRule(C),rho).
```

Consequently a fixed-capacity criterion supplies the previously typed
quadratic recurrence and, for `rho>=3/4`, one threshold descent.

This is a conditional reduction. Its hard premise is precisely the bounded
optimal-deficit estimate. The constant rule does not add arithmetic evidence.

## Clause-indexed form

The companion module defines equality-only aliases at the counted Boolean
thresholds. It records

```text
arity 3 capacity = capacity at 7/8,
arity 2 capacity = capacity at 3/4.
```

For fixed budgets it also re-expresses the conditional two-step endpoint

```text
theta input at 7/8
+ fixed-capacity estimate at 7/8
+ fixed-capacity estimate at 3/4
-> RH.
```

Every analytic premise remains explicit. Clause counting contributes no
amplitude estimate, coefficient budget, source law, or deficit decay.

## What this rules out

The finite optimization proves that none of the following can evade the live
analytic obstruction:

```text
a more elaborate coefficient with the same absolute bound;
a coefficient sign choice;
a target-independent reparameterization of the same rank-one response;
a source metadata label without an amplitude theorem.
```

Under the same budget, all such choices are bounded by `C A_X^2/X`.

## Remaining obligations

The live thresholds require either

```text
PinnedPrimeWeightFixedCapacityCriterionAt(C,7/8)
```

and

```text
PinnedPrimeWeightFixedCapacityCriterionAt(C',3/4),
```

or stronger source-derived rule criteria implying them.

For each step, the missing mathematics is now visibly an amplitude-capacity
theorem:

```text
X (|thetaError(v)|+1-E_X(v))
 <= C A_X^2,

E_X(v)
 <= R X^(Q(rho)+eta/2).
```

A genuine source route must additionally explain why its coefficient or
capacity normalization is the one produced by the selected explicit formula,
detector, safe shift, or another declared arithmetic identity.

## Nonclaims

This increment does not:

- derive a coefficient from the explicit formula;
- prove a lower bound for `A_X`;
- prove the variable or fixed capacity criterion at `7/8` or `3/4`;
- prove a canonical-deficit decay theorem;
- infer an amplitude theorem from MAX-SAT or clause counting;
- run Lean or Lake or claim kernel acceptance;
- prove an unconditional zero-free improvement or the Riemann Hypothesis.
