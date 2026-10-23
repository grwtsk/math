# Finite source-feature factorization of the prime theta kernel

Issue: #723  
Parent: #720 / draft PR #721  
Analytic recurrence owner: #463  
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

## Starting point

The preceding increment reduced one nonlinear theta-threshold step to a signed
prime-pair kernel. At scale `X`, with

```text
P_X = {p in (X,2X] : p prime},
a_X(p)=|thetaError(p)|+1,
```

that criterion uses

```text
B_X(v)=sum_(p,q in P_X) K_v(p,q)a_X(p)a_X(q),
M_X(v)=sum_(p,q in P_X)|K_v(p,q)|.
```

It requires a source majorization, a uniform bound on `M_X`, and a residual
already at the descended exponent.

The remaining phrase “construct the kernel” still hides the internal source
structure. This increment opens that phrase one level further.

## Finite separable source features

A factor stage contains a finite index set `R` and exact functions

```text
c_r(v) : target coefficient,
L_r(p) : left prime feature,
R_r(q) : right prime feature.
```

It induces the signed kernel

```text
K_v(p,q)=sum_(r in R)c_r(v)L_r(p)R_r(q).
```

This form includes finite-rank bilinear kernels, signed sums of rank-one
features, and finite Gram-style expansions after their signs and coefficients
have been made explicit. The factor index is finite at each stage; no
all-scale uniformity follows from finiteness alone.

The stage also retains

```text
source identity,
normalization identity,
invalidation key,
residual channel and residual nonnegativity.
```

These metadata fields do not prove the arithmetic source identity. They bind a
proved identity when one is eventually supplied.

## Absolute factor budget

Define the complete factor budget

```text
F_X(v)
 = sum_(p,q in P_X) sum_(r in R)
     |c_r(v)L_r(p)R_r(q)|.
```

For each prime pair, the finite triangle inequality gives

```text
|K_v(p,q)|
 <= sum_(r in R)|c_r(v)L_r(p)R_r(q)|.
```

Summing over both prime coordinates proves

```text
M_X(v) <= F_X(v).
```

This is the exact finite theorem in the increment. A displayed separable
formula is not silently treated as an `l1` estimate; the complete absolute
budget is retained.

## Factor-level criterion

The new proposition

```text
PrimeThetaSeparableKernelCriterionAt(rho)
```

requires, for every `eta>0`, constants `K,R`, a late scale, and one
source-bound factor stage for each later dyadic transition such that

```text
F_X(v) <= K,

residual(v)
 <= R X^(Q(rho)+eta/2),

|thetaError(v)|+1
 <= |B_X(v)|/X + residual(v)
```

throughout the next octave.

The proved mass comparison constructs the prior raw-kernel criterion:

```text
PrimeThetaSeparableKernelCriterionAt(rho)
 -> PrimeThetaQuadraticKernelCriterionAt(rho).
```

The existing stack then supplies

```text
PrimeThetaSeparableKernelCriterionAt(rho)
 -> QuadraticThetaSourceRecurrenceAt(rho),
```

and, for `rho>=3/4`,

```text
PrimeThetaSeparableKernelCriterionAt(rho)
 -> QuadraticThetaDescentAt(rho).
```

## Relation to the safe-shift and Gram source

Existing safe-shift modules prove exact pointwise and dyadic source
factorizations. Existing Gram modules produce positive sums of squares and
quartic channels. These are relevant candidate feature families because a
finite Gram expression can often be expanded into separable prime-pair terms.

No such adapter is asserted here.

To use an existing source, a subsequent theorem must prove all of the
following for the *same* factor family:

1. its induced kernel is the kernel appearing in a next-octave theta
   majorization;
2. every sign, normalization, endpoint and source label agrees;
3. its complete absolute factor budget is bounded by one scale-uniform
   constant;
4. all omitted channels are placed in the named residual;
5. that residual already has exponent `Q(rho)+eta/2`.

An exact safe-shift factorization at one zero, a positive Gram identity, or a
finite-rank representation is not automatically a cross-scale theta theorem.

## Clause-indexed form

The Boolean-count layer proves

```text
countedSuccessFraction(k-literal clause)=dyadicThreshold(k).
```

The companion source therefore defines only the readable alias

```text
ClauseIndexedPrimeThetaSeparableKernelCriterion(p)
 := PrimeThetaSeparableKernelCriterionAt(
      countedSuccessFraction(p)).
```

This gives the exact numerical identifications

```text
arity 3 criterion = separable criterion at 7/8,
arity 2 criterion = separable criterion at 3/4.
```

The conditional endpoint is now expressible as

```text
theta input at 7/8
+ separable source-feature criterion at 7/8
+ separable source-feature criterion at 3/4
-> RH.
```

Both factor families and every analytic estimate remain explicit arguments.
Clause counting supplies no prime feature, source majorant or residual bound.

## Hostile empty-factor control

The controls define an empty factor stage with

```text
R=empty,
K_v(p,q)=0,
F_X(v)=0,
residual(v)=0.
```

It has the smallest possible factor budget but cannot majorize

```text
|thetaError(v)|+1>0.
```

Thus a small factor budget is useful only after the independently proved
source majorization exists.

## Remaining obligations

The live arithmetic targets are now the two explicit propositions

```text
PrimeThetaSeparableKernelCriterionAt(7/8),
PrimeThetaSeparableKernelCriterionAt(3/4).
```

A valid construction must provide one immutable feature rule across all late
scales, not a kernel fitted after observing each target error. It must also
prove a uniform absolute-factor budget and a complete descended residual.

## Nonclaims

This increment does not:

- select an explicit-formula feature family;
- construct a detector, safe-shift, Gram or quartic adapter;
- prove either source majorization;
- prove a uniform factor-budget estimate;
- prove either descended residual estimate;
- infer an arithmetic feature family from clause arity or MAX-SAT hardness;
- run Lean or Lake or claim kernel acceptance;
- prove an unconditional zero-free improvement or the Riemann Hypothesis.
