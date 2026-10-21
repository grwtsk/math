# Positive-scale two-point Möbius Carleson energy

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / POSITIVE_SCALE_ARITHMETIC_SUPPLIER_OPEN`  
Owner: issue [#471](https://github.com/grwtsk/math/issues/471)  
Direct parent: issue [#466](https://github.com/grwtsk/math/issues/466) / draft PR [#469](https://github.com/grwtsk/math/pull/469)  
Carleson comparison: issue [#461](https://github.com/grwtsk/math/issues/461) / draft PR [#465](https://github.com/grwtsk/math/pull/465)  
Singleton-mass obstruction: issue [#460](https://github.com/grwtsk/math/issues/460) / draft PR [#462](https://github.com/grwtsk/math/pull/462)  
Canonical maximal consumer: issue [#410](https://github.com/grwtsk/math/issues/410) / draft PR [#411](https://github.com/grwtsk/math/pull/411)

This increment separates the already-controlled singleton scale from the genuinely open positive aligned scales in the max-per-scale two-point Möbius Carleson observable.

It proves exact finite decompositions and a conditional reduction. It supplies no positive-scale arithmetic estimate.

## 1. Exact source binding

Inspected `main` remains:

```text
revision: 5abfeefa6ee8dd9b02077cc77239d17f32f1fd6c
tree:     8aa3904165d91f97952789fa6c0042636a40cc10
```

Direct stacked parent:

```text
branch:   research/rh-carleson-conjecture-connections-466-20261021
revision: f4fea7d2e9d988613a194ff5fe427d2ef47a41c5
tree:     9f5d918e582cf50956b33ff7c53837f2efcf8504
PR:       #469
```

New theorem source:

```text
branch: research/rh-carleson-positive-scales-471-20261021
source commit: 244dd5d2815af252fd82c01cffd568d0e2547bb3
source tree:   4bd5f85418395545b55b71778b4c1dde0608e08e
source path:
  GRWTSK/NumberTheory/Moebius/TwoPointCarlesonPositiveScales.lean
source blob: ee4e0d2244d8130ccbfbf565d39388818a1f8533
```

No existing source, public root, dependency pin, workflow, executor, or held branch is modified.

## 2. Terminal consumer

The exact RH-facing chain remains

```lean
SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  -> SubpolynomialDyadicMaximalMertensTwoPointEnergy
  -> _root_.RiemannHypothesis.
```

The terminal declaration reused by this increment is

```lean
GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.
  TwoPointConjectureJunction.
  riemannHypothesis_of_mertensTwoPointCarlesonEnergy
```

This is an RH-implying conditional theorem. It is not asserted to be RH-equivalent, and its arithmetic premise is not discharged here.

## 3. Candidate comparison

Three bounded suppliers were compared.

| Candidate | Benefit | Boundary | Disposition |
| --- | --- | --- | --- |
| Pure positive-scale estimate with implicit asymptotic absorption | Short statement | Hides the proof that `(j+2)` and the singleton layer fit the same subpolynomial budget | rejected for this increment |
| Raw positive-scale estimate plus a separate depth-absorption proposition | Maximum modularity | Leaves two unresolved premises and therefore violates the one-obstruction stop condition | deferred |
| Positive-scale estimate with the singleton endpoint allowance paid literally | Exact finite reduction; no hidden asymptotics; one remaining supplier | Slightly stronger written premise | selected |

The selected premise keeps the trivial singleton payment visible rather than claiming it has been absorbed by an unproved asymptotic theorem.

## 4. Generic positive-scale observable

For a real sequence `a` on `[0,2^m)`, PR #465 defines

\[
M_a(m,r)
=
\max_{q<2^{m-r}}
\left|
\sum_{n\in[q2^r,(q+1)2^r)}a(n)
\right|,
\]

and the complete max-per-scale energy

\[
\mathcal C_m(a)=\sum_{r=0}^{m}M_a(m,r)^2.
\]

This increment defines

```lean
alignedDyadicPositiveScaleCarlesonEnergy
```

by the shifted finite range

\[
\mathcal C_m^+(a)
=
\sum_{r=0}^{m-1}M_a(m,r+1)^2
=
\sum_{s=1}^{m}M_a(m,s)^2.
\]

At `m=0` the range is empty, so the definition is total without a special convention.

The source proves

```lean
alignedDyadicPositiveScaleCarlesonEnergy_nonneg
```

and the exact identity

```lean
alignedDyadicCarlesonEnergy_eq_scaleZero_add_positive
```

or

\[
\mathcal C_m(a)=M_a(m,0)^2+\mathcal C_m^+(a).
\]

This is exact finite reindexing. No limiting argument, asymptotic estimate, probability space, or arithmetic cancellation is used.

## 5. Two-point specialization

For the exact zero-padded source

\[
a_{j,h}(n)=
\begin{cases}
\mu(n+1)\mu(n+1+h),&n<2^{j+1}-h-1,\\
0,&n\ge2^{j+1}-h-1,
\end{cases}
\]

this increment defines

```lean
twoPointPositiveScaleCarlesonEnergy
twoPointPositiveScaleCarlesonEnergySum
mertensTwoPointPositiveScaleCarlesonEnergySum.
```

The positive-scale shift sum is

\[
\mathcal C_j^+
=
\sum_{1\le h<2^{j+1}}
\sum_{1\le r\le j+1}
\max_{q<2^{j+1-r}}
\left|
\sum_{n\in I_{r,q}}a_{j,h}(n)
\right|^2.
\]

The source proves nonnegativity separately for each shift and for the complete shift sum.

## 6. Exact singleton/positive decomposition

The source proves

```lean
twoPointCarlesonEnergy_eq_scaleZero_add_positive
```

for one shift and

```lean
twoPointCarlesonEnergySum_eq_scaleZero_add_positive
```

for the complete half-open shift range.

At the actual Möbius specialization this becomes

```lean
mertensTwoPointCarlesonEnergySum_eq_singleton_add_positive
```

with mathematical statement

\[
\mathcal C_j
=
\mathcal C_{j,0}
+
\mathcal C_j^+,
\]

where `mertensTwoPointCarlesonSingletonSum j` is exactly the shift-summed scale-zero maximum square from PR #465.

The inherited theorem

```lean
mertensTwoPointCarlesonSingletonSum_le_endpoint
```

states

\[
\mathcal C_{j,0}\le 2^{j+1}.
\]

Combining the exact identity with that bound gives

```lean
mertensTwoPointCarlesonEnergySum_le_endpoint_add_positive
```

or

\[
\mathcal C_j\le2^{j+1}+\mathcal C_j^+.
\]

The singleton contribution is therefore paid by a literal linear endpoint term. It is neither deleted nor described as asymptotically negligible.

## 7. Paid-singleton finite budget

The finite interface is

```lean
DyadicMertensPositiveScaleCarlesonBudget j B
```

with exact fields

```text
0 <= B
```

and

\[
(j+2)\left(2^{j+1}+\mathcal C_j^+\right)
\le
B^2\,2^{j+1}.
\]

The theorem

```lean
completeCarlesonBudget_of_positiveScaleBudget
```

proves that this finite budget supplies

\[
(j+2)\mathcal C_j\le B^2\,2^{j+1}
\]

with the same `B`.

The proof uses only:

1. the exact singleton/positive decomposition;
2. the inherited singleton bound;
3. nonnegativity of the depth factor;
4. transitivity of finite real inequalities.

No power-growth theorem is hidden in the proof.

## 8. All-scale supplier

The new source-facing proposition is

```lean
SubpolynomialDyadicMertensPositiveScaleCarlesonWithPaidSingleton.
```

It states that for every `delta>0` there is `A>=0` such that every scale has the paid-singleton budget with

\[
B=A(2^j)^\delta.
\]

The source proves

```lean
subpolynomialMertensCarlesonEnergy_of_positiveScales
```

and then reuses the inherited chain in

```lean
subpolynomialDyadicMaximalMertensTwoPointEnergy_of_positiveScales
riemannHypothesis_of_mertensPositiveScaleCarleson.
```

The complete dependency path is

```text
SubpolynomialDyadicMertensPositiveScaleCarlesonWithPaidSingleton
  -> SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  -> SubpolynomialDyadicMaximalMertensTwoPointEnergy
  -> RiemannHypothesis.
```

Every arrow is conditional on the first premise. That premise remains open.

## 9. Positivity classification

The only order properties proved or used are:

```text
positive-scale energy >= 0;
shift-summed positive-scale energy >= 0;
scale-zero maximum squares >= 0;
budget parameter B >= 0;
depth factor j+2 >= 0.
```

These are finite scalar nonnegativity statements and finite sums of real squares. The increment proves no positive kernel, positive measure, positive trace/state, positive-semidefinite analytic form, averaged arithmetic positivity, finite-height Weil positivity, or global positivity.

Nonnegativity is not used as evidence that the energy is small.

## 10. Arithmetic reconstruction and controls

The arithmetic coefficients remain the exact signed products

\[
\mu(n+1)\mu(n+1+h).
\]

For each aligned block, the signed sum is formed before absolute value and squaring. The only exact arithmetic estimate imported is the coefficient bound already used by PR #465 to prove the scale-zero maximum is at most one.

Controls remain distinct:

```text
exact finite identities:
  scale decomposition and shift summation;

finite order bounds:
  singleton sum <= endpoint;

conditional all-scale premise:
  paid positive-scale Carleson supplier;

not present:
  interval certificates, tail estimates, differentiation under limits,
  finite-height zero computations, or asymptotic positive-scale estimates.
```

## 11. Failure and information boundaries

This increment records the following nonimplications.

- A top-scale autocorrelation estimate does not control positive aligned scales.
- A fixed-shift theorem does not supply the complete shift range.
- A terminal estimate does not supply every translated block maximum.
- The linear scale-zero bound does not estimate any positive scale.
- The complete-tree refutation does not refute the max-per-scale observable.
- The exact decomposition does not prove either summand is subpolynomial.
- Source-level proof scripts do not establish elaboration or kernel acceptance.
- The conditional RH declaration does not prove RH without the arithmetic premise.

## 12. Provenance graph

```text
Mathlib finite sums and order lemmas
  -> generic finite reindexing tools

PR #465 max-per-scale Carleson definitions and singleton bound
  -> exact scale-zero/positive decomposition
  -> paid-singleton finite budget transport

PR #469 conjecture atlas
  -> preserved top-scale and literature scope boundaries

paid positive-scale supplier
  -> inherited full Carleson supplier
  -> inherited canonical maximal energy
  -> inherited conditional RH consumer.
```

Contribution classes remain separate:

```text
inherited mathematics:
  finite max-per-scale comparison and scale-zero coefficient control;

repository-specific implementation:
  positive-scale observable, exact decomposition, and paid budget;

conceptual synthesis:
  isolating the open arithmetic content without hidden asymptotic absorption;

new theorem-level contribution at source-draft scope:
  exact positive-scale reduction and conditional supplier transport;

unproved bridge:
  the paid positive-scale all-scale arithmetic estimate.
```

No numerical contributor weights are assigned.

## 13. Evidence state

Established:

```text
SOURCE_DRAFT
```

Not established:

```text
LITERATURE_REVIEWED at this increment's new theorem scope
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANALYTIC_PREMISES_DISCHARGED
```

No Lean/Lake/native parsing or elaboration, proof-term acceptance, generated-declaration reconciliation, transitive axiom/native/unsafe/opaque audit, repository test, independent replay, merge, root admission, issue closure, or RH claim occurred.

## 14. Exact next obstruction

The one remaining arithmetic proposition is

```lean
SubpolynomialDyadicMertensPositiveScaleCarlesonWithPaidSingleton.
```

Explicitly, prove for every `delta>0` that there is `A>=0` such that for every `j`,

\[
(j+2)\left(
2^{j+1}
+
\sum_{1\le h<2^{j+1}}
\sum_{1\le r\le j+1}
\max_{q<2^{j+1-r}}
\left|
\sum_{n\in I_{r,q}}
\mu(n+1)\mu(n+1+h)
\right|^2
\right)
\le
\left(A(2^j)^\delta\right)^2 2^{j+1}.
\]

The endpoint term is already justified. The unresolved arithmetic content begins at the positive scales.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / POSITIVE_SCALE_ARITHMETIC_SUPPLIER_OPEN.**
