# Prime-pair kernel criterion for quadratic theta descent

Issue: #720  
Parent: #711 / draft PR #715  
Analytic recurrence owner: #463  
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

## Why this increment is needed

The preceding stack identifies the nonlinear threshold map

```text
Q(rho)=2rho-1
```

and proves that two recurrence suppliers at `rho=7/8` and `rho=3/4` would reach
the critical threshold. It also gives those thresholds a finite clause-arity
index. Neither result constructs a cross-scale arithmetic recurrence.

The missing theorem must relate the theta error on one dyadic octave to theta
errors on the preceding octave. Positivity of a finite Gram stage does not by
itself provide such a relation.

This increment introduces one sufficient source interface with a finite theorem
behind it.

## Current and next prime windows

For a dyadic scale `X`, retain the repository's literal source window

```text
window(X)=(X,2X]
```

and filter it by primality:

```text
P_X={p in (X,2X] : p prime}.
```

For each source prime define the nonnegative current-octave amplitude

```text
a_X(p)=|thetaError(p)|+1.
```

The source proves that every member of `P_X`, viewed as a real number, lies in
`[X,2X]`. Hence any admitted current-octave envelope

```text
a_X(u)<=A for all u in [X,2X]
```

applies to every prime label in the finite kernel.

## Signed prime-pair response

A finite transition stage carries:

```text
source identity,
normalization identity,
invalidation key,
K_v(p,q) : signed real kernel,
r(v)     : residual.
```

For a target `v` in the next octave define

```text
B_X(v)=sum_{p,q in P_X} K_v(p,q) a_X(p)a_X(q),
M_X(v)=sum_{p,q in P_X} |K_v(p,q)|.
```

The proved finite estimate is

```text
|B_X(v)| <= M_X(v) A^2.
```

Its proof uses exactly:

1. the triangle inequality for the outer finite sum;
2. the triangle inequality for each inner finite sum;
3. the two envelope inequalities `a_X(p)<=A` and `a_X(q)<=A`;
4. nonnegativity of `A` and absolute kernel coefficients.

No asymptotic theorem, zeta zero statement, SAT hardness result, or positivity
of the target theta error enters this calculation.

## The three arithmetic obligations

At threshold `rho`, the new predicate

```text
PrimeThetaQuadraticKernelCriterionAt(rho)
```

requires, for every `eta>0`, uniform constants `K,R` and a late scale such that
for each transition `X_j -> X_(j+1)` there is a source-bound stage satisfying:

```text
M_X(v) <= K,

r(v) <= R X^(Q(rho)+eta/2),

|thetaError(v)|+1
  <= |B_X(v)|/X + r(v)
```

for every `v` in the next octave.

The finite estimate immediately yields

```text
|thetaError(v)|+1
  <= K A^2/X + R X^(Q(rho)+eta/2).
```

Therefore the module proves

```text
PrimeThetaQuadraticKernelCriterionAt(rho)
  -> QuadraticThetaSourceRecurrenceAt(rho).
```

For `rho>=3/4`, composition with the existing theorem also gives

```text
PrimeThetaQuadraticKernelCriterionAt(rho)
  -> QuadraticThetaDescentAt(rho).
```

## Clause-indexed form

The finite Boolean layer proved

```text
countedSuccessFraction(k-literal clause)=dyadicThreshold(k).
```

The companion module defines only the readable alias

```text
ClauseIndexedPrimeThetaKernelCriterion(p)
 := PrimeThetaQuadraticKernelCriterionAt(countedSuccessFraction(p)).
```

Thus:

```text
arity 3 criterion = prime-kernel criterion at 7/8,
arity 2 criterion = prime-kernel criterion at 3/4.
```

The conditional endpoint now has the narrower form

```text
theta input at 7/8
+ source-bound prime-kernel criterion at 7/8
+ source-bound prime-kernel criterion at 3/4
-> RH.
```

Every analytic premise remains explicit. Clause counting supplies no kernel,
mass estimate, source identity, or residual theorem.

## What was gained

The previous recurrence premise bundled several logically different tasks. They
are now separated:

1. **Source identity:** prove that the next theta amplitude is majorized by the
   signed prime-pair response plus a complete residual.
2. **Kernel analysis:** prove a uniform finite `l1` mass bound.
3. **Residual analysis:** prove that every omitted channel is already at the
   descended exponent.
4. **Finite transport:** use the theorem in this increment to obtain the
   quadratic recurrence.

This tells the prime/quartic program exactly what its next construction must
produce. A positive Gram quantity is relevant only after it is connected to
the same cross-scale response identity.

## Hostile controls

The zero response with zero residual cannot majorize

```text
|thetaError(v)|+1>0.
```

Accordingly, none of the following is accepted:

```text
small kernel mass without source majorization;
positive Gram stage without a cross-scale theta identity;
finite clause count as a prime-kernel construction;
MAX-3SAT hardness as an arithmetic estimate;
a kernel fitted after observing the target error;
an unnamed residual treated as a descended error theorem.
```

## Remaining obligations

The repository still has no construction of either required criterion:

```text
PrimeThetaQuadraticKernelCriterionAt(7/8),
PrimeThetaQuadraticKernelCriterionAt(3/4).
```

In particular, this increment does not derive a kernel from the explicit
formula, prove its mass bound, identify all residual channels, run Lean or
Lake, provide kernel acceptance, or prove RH.
