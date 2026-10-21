# Max-per-scale aligned-dyadic control of two-point Möbius prefixes

Issue: #461. Direct parent witness: #460 / draft PR #462. Coordinate parent:
#458 / draft PR #459. Generic finite maximal parent: #437 / draft PR #449.
Canonical maximal-prefix consumer: #410 / draft PR #411. Endpoint-information
loss witness: #430 / draft PR #432. Route owner: #335 / #334 RH-E02.
Canonical target: #15.

Evidence state: **SOURCE_DRAFT**. No Lean or Lake execution, parsing,
elaboration, kernel acceptance, trust audit, external replay, arithmetic
Carleson estimate, new damping, or RH claim is represented by this note.

## 1. Exact repository binding

The inspected default branch is

```text
main revision: 5abfeefa6ee8dd9b02077cc77239d17f32f1fd6c
main tree:     8aa3904165d91f97952789fa6c0042636a40cc10
```

The direct stacked parent is the exact head of draft PR #462:

```text
parent branch: research/rh-tree-singleton-mass-witness-460-20261021
parent head:   01d47ed94dc9c50ecfbfa028d496647a420049b2
parent tree:   77357cad7d635a1040d7b25ab65a7909cd6d44d4
```

The dedicated branch is

```text
research/rh-scale-max-carleson-461-20261021
```

The theorem source commit is

```text
c57d47eaee0809d5034281807360ecf1e3e9a4b3
```

with tree

```text
8b6d8af18bfb6f7354fe2966f9f7ddd6c7b10921
```

and source blob

```text
49b4826bdfe4a2922e529866eb2124400ca5c4b6.
```

No existing source file, public aggregate import, dependency pin, workflow,
executor, or held branch is modified. The branch is stacked after the
singleton-mass witness because that witness determines which observable must
be rejected. The current source imports the witness stack, but the new finite
maximal theorem uses only the inherited aligned-block and zero-padding
interfaces.

If PR #462 or an earlier stacked parent moves or changes the relevant types,
this branch must be reconciled before acceptance.

## 2. Exact terminal consumer

The terminal RH-facing declaration remains

```lean
GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.
  riemannHypothesis_of_subpolynomialDyadicMaximalMertensTwoPointEnergy :
  SubpolynomialDyadicMaximalMertensTwoPointEnergy ->
    _root_.RiemannHypothesis
```

from the active PR #411 stack. It is RH-implying and conditional, not asserted
RH-equivalent.

Its arithmetic premise controls

```text
sum_(1 <= h < 2^(j+1))
  max_(0 <= N <= 2^(j+1)-h-1)
    |sum_(0 <= n < N) mu(n+1)mu(n+1+h)|^2
```

at every dyadic scale with a subpolynomial budget. This increment does not
prove that budget. It supplies a corrected finite comparison interface whose
fine-scale mass is compatible with such a budget.

## 3. Why the complete tree was rejected

PR #459 expands the recursive tree energy into

```text
sum_(0 <= r <= m)
  sum_(0 <= q < 2^(m-r)) B_a(r,q)^2,
```

where

```text
B_a(r,q) = sum_(q*2^r <= n < (q+1)*2^r) a(n).
```

Issue #460 and draft PR #462 record that, for the zero-padded two-point Möbius
family, the scale-zero part sums every singleton position over every shift.
It reindexes to all squarefree pairs below the dyadic endpoint and has
quadratic mass. Therefore the complete unweighted sum over all block positions
cannot satisfy the proposed subpolynomial arithmetic budget.

That obstruction does not refute the finite prefix-to-tree comparison. It
shows that the observable retained far more information than the consumer can
afford.

## 4. Candidate-supplier comparison

Three finite observables were compared.

| Candidate | Exact consumer | Candidate conclusion | Formal distance | Failure value |
|---|---|---|---:|---|
| Max-per-scale aligned block energy | canonical prefix maximum | every prefix square is at most `m+1` times the sum of one maximum square per scale | selected; finite induction and Cauchy only | singleton cost remains linear after summing shifts |
| One selected binary path for each prefix | canonical prefix maximum | each individual prefix is controlled by its own selected block squares | finite but consumer-dependent; does not expose one source-side observable without another supremum | clarifies the decomposition but is less reusable as an arithmetic supplier |
| Weighted Carleson packing or variation norm | canonical prefix maximum | a weighted packing/variation estimate controls all prefixes | additional weights, stopping rules, or variation theorems required | may be useful if max-per-scale remains arithmetically too strong |

The max-per-scale observable is the weakest of these that is independent of a
particular prefix, controls every prefix, and removes the known singleton-mass
obstruction without importing a probabilistic or asymptotic theorem.

No classical Carleson embedding theorem is imported. “Carleson energy” is the
repository name for this finite max-per-scale square observable.

## 5. Canonical observable

For `a : Nat -> Real`, ambient depth `m`, scale `r`, and aligned block index
`q`, define

```text
B_a(r,q)
  = sum_(q*2^r <= n < (q+1)*2^r) a(n).
```

The scale maximum is

```text
M_a(m,r)
  = max_(q < 2^(m-r)) |B_a(r,q)|.
```

The source implements the maximum as `Finset.sup'` over the nonempty range
`q < 2^(m-r)`:

```lean
alignedDyadicScaleMaximum m r a.
```

The proper-scale energy and complete energy are

```text
E_proper(m,a) = sum_(0 <= r < m) M_a(m,r)^2,
E_Carl(m,a)   = sum_(0 <= r <= m) M_a(m,r)^2.
```

They are implemented as

```lean
alignedDyadicProperCarlesonEnergy
alignedDyadicCarlesonEnergy.
```

Domain: finite real sequences represented by functions `Nat -> Real`, consumed
only on `[0,2^m)`.

Codomain: `Real`.

Normalization: signed summation occurs inside each aligned block; absolute
value and squaring occur only after the signed block sum is formed.

Sign convention: every scale maximum and both energies are nonnegative.

There is no limiting process, probability space, martingale, kernel, measure,
trace, spectral operator, or external certificate in the finite theorem.

## 6. Exact binary decomposition in recursive form

The proof isolates proper prefixes because a full prefix `[0,2^m)` is best
represented by the single top block. For `N < 2^m`, the source proves

```lean
finitePrefixSum_sq_le_properCarlesonEnergy :
  finitePrefixSum a N ^ 2
    <= m * alignedDyadicProperCarlesonEnergy m a.
```

The induction has two cases at the midpoint `H=2^m`.

### Left case

If `N < H`, the prefix remains in the left half. Each old scale maximum is
bounded by the corresponding maximum in the successor interval:

```lean
alignedDyadicScaleMaximum_le_succ.
```

The old proper energy therefore embeds into the successor proper energy.

### Midpoint-crossing case

If

```text
H <= N < 2H,
```

then the remainder `N-H` is a proper right-half prefix and

```text
S_a(N)
  = S_a(H) + S_(shift_H a)(N-H).
```

The left term is one complete aligned block at scale `m`. The proper right
prefix uses only scales below `m`. The source proves the exact containment

```lean
topBlock_sq_add_shiftedProperEnergy_le_succ.
```

The required right-half block reindexing is

```text
B_(shift_(2^m) a)(r,q)
  = B_a(r,2^(m-r)+q),
```

with the visible condition `r <= m`.

The scalar step is

```text
y^2 <= kE,  k >= 0
  -> (x+y)^2 <= (k+1)(x^2+E).
```

For `k>0`, after multiplication by `k`, the gap is controlled by

```text
(kx-y)^2 + (k+1)(kE-y^2).
```

The `k=0` base case is handled separately. Thus no division-by-zero or hidden
strict-positivity premise is introduced.

A full prefix uses the top scale directly. Combining the proper and full cases
gives

```lean
finitePrefixSum_sq_le_alignedDyadicCarlesonEnergy :
  N <= 2^m ->
  finitePrefixSum a N ^ 2
    <= (m+1) * alignedDyadicCarlesonEnergy m a.
```

Taking the exact finite prefix maximum yields

```lean
dyadicPrefixMaximum_sq_le_alignedDyadicCarlesonEnergy :
  dyadicPrefixMaximum m a ^ 2
    <= (m+1) * alignedDyadicCarlesonEnergy m a.
```

This is exact deterministic finite algebra.

## 7. Fine-scale hostile control

At scale zero,

```text
B_a(0,q)=a(q),
M_a(m,0)=max_(q<2^m)|a(q)|.
```

The source proves the generic coefficient-bound adapter

```lean
alignedDyadicScaleMaximum_zero_le_of_abs_le.
```

For the actual zero-padded Möbius source, each coefficient is either zero or

```text
mu(n+1) * mu(n+1+h).
```

Mathlib’s inherited coefficient theorem gives

```text
|mu(n)| <= 1.
```

The source therefore proves

```lean
abs_paddedTwoPointMoebius_le_one
mertensTwoPointCarlesonScaleZeroMaximum_le_one.
```

After squaring and summing all positive shifts,

```lean
mertensTwoPointCarlesonSingletonSum_le_endpoint :
  singleton-scale max-square sum <= 2^(j+1).
```

This is the key hostile control distinguishing the new observable from the
refuted complete tree:

```text
max-per-scale singleton cost: O(2^(j+1)),
complete all-position singleton cost: Theta(2^(2j)) at positive density.
```

The linear upper bound does not prove the full Carleson energy is small. It
only removes the deterministic fine-scale contradiction.

## 8. Two-point Möbius adapter

For the exact zero-padded source from the parent stack, define

```text
twoPointCarlesonEnergy(f,g,j,h)
  = E_Carl(j+1,paddedTwoPointSequence(f,g,j,h)),

twoPointCarlesonEnergySum(f,g,j)
  = sum_(1 <= h < 2^(j+1))
      twoPointCarlesonEnergy(f,g,j,h).
```

The inherited padding theorem identifies every admissible arithmetic prefix
with the corresponding generic finite prefix. The source proves

```lean
mertensTwoPointPrefixMax_sq_le_twoPointCarlesonEnergy :
  mertensTwoPointPrefixMax j h ^ 2
    <= (j+2) * twoPointCarlesonEnergy(mu,mu,j,h).
```

Summing every positive shift gives

```lean
mertensTwoPointMaximalQuadraticEnergy_le_carlesonEnergySum :
  mertensTwoPointMaximalQuadraticEnergy j
    <= (j+2) * twoPointCarlesonEnergySum(mu,mu,j).
```

The depth factor `j+2` remains explicit. It is not silently absorbed.

## 9. Conditional all-scale supplier

The source-facing premise is

```lean
SubpolynomialDyadicTwoPointCarlesonEnergyWithDepthCost f g.
```

For every `delta>0`, it requires a nonnegative `A_delta` such that, at every
scale,

```text
(j+2) * twoPointCarlesonEnergySum(f,g,j)
  <= (A_delta * (2^j)^delta)^2 * 2^(j+1).
```

The Möbius specialization is

```lean
SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost.
```

The source proves only the conditional reductions

```text
Möbius max-per-scale Carleson supplier
  -> canonical maximal two-point energy
  -> Riemann Hypothesis.
```

The declarations are

```lean
subpolynomialDyadicMaximalMertensTwoPointEnergy_of_carleson
riemannHypothesis_of_mertensTwoPointCarlesonEnergy.
```

No value inhabiting the Carleson supplier is constructed.

## 10. Positivity classification

The finite source proves:

```text
0 <= M_a(m,r),
0 <= E_proper(m,a),
0 <= E_Carl(m,a).
```

These are nonnegativity statements for finite maxima of absolute values and
finite sums of real squares. They are not:

- strict positivity for every nonzero sequence;
- positive semidefiniteness of a separately specified analytic form;
- positivity of a kernel, measure, trace, state, or spectral measure;
- averaged or asymptotic arithmetic positivity;
- finite-height Weil positivity;
- positivity after an analytic truncation;
- global positivity.

No smallness conclusion is inferred from nonnegativity.

## 11. Failure boundaries

The theorem preserves the following distinctions.

- A terminal endpoint is still insufficient; witness #430 remains operative.
- Summing every block position is still rejected; witness #460 remains
  operative.
- At most one selected block per scale is charged for each proper prefix.
- The midpoint-crossing decomposition uses disjoint left and right pieces.
- Signed summation occurs before absolute value and squaring.
- The factor `m+1`, and hence `j+2`, is retained.
- The finite maximal comparison is not an arithmetic cancellation estimate.
- A linear singleton cost does not control the larger scales.
- Fixed-form, logarithmic, averaged, almost-all-scale, dynamical, or spectral
  results do not automatically supply the every-scale Carleson premise.
- Successful source elaboration, if later obtained, would not discharge the
  arithmetic premise or prove RH.

## 12. Dependency path

```text
endpoint-information-loss witness #430
  rules out
terminal-only recovery

complete-tree singleton witness #460
  rules out
sum over every block position

this increment
  proves
max-per-scale finite maximal comparison

open arithmetic Carleson estimate
  would supply
canonical maximal two-point energy

canonical maximal two-point energy
  conditionally supplies
Riemann Hypothesis.
```

## 13. Provenance and attribution

```text
grwtsk contributors
  supplies
mathematical direction, dependency selection, and source-specific objective

OpenAI ChatGPT
  supplies
formalization and repository packet assistance

Mathlib
  supplies
finite sums, finite suprema, order, square roots, Cauchy algebra,
Möbius coefficient bounds, and pinned foundational dependencies

PR #449
  supplies
finite-prefix and aligned-block interfaces

PR #455
  supplies
zero-padded two-point source and canonical maximal adapter

PR #459
  supplies
right-half aligned block reindexing

PR #462
  diagnoses
complete-tree singleton-mass obstruction

this source
  supplies
max-per-scale comparison and conditional Möbius Carleson adapter.
```

No scalar contributor weights are assigned. Imported declarations retain their
existing authorship and licenses.

## 14. Evidence state

Established:

```text
SOURCE_DRAFT
```

Not established:

```text
LITERATURE_REVIEWED
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANALYTIC_PREMISES_DISCHARGED
```

No Lean/Lake/native process was run. There is no parser result, elaborator
result, proof-term acceptance, generated/private declaration reconciliation,
transitive axiom/native/unsafe/opaque audit, repository test, independent
replay, merge, public-root admission, or issue closure.

## 15. RH consequence

Classification:

```text
SUPPLIES_REUSABLE_FINITE_COMPARISON_INTERFACE
CONDITIONAL_REDUCTION_ONLY
```

The increment repairs a deterministic observable defect and supplies a direct
interface to the existing RH-facing maximal criterion. It does not prove an
arithmetic estimate, a zero-free region, finite-height RH, or RH.

## 16. Exact next obstruction

The remaining theorem is:

> For every `delta>0`, prove a nonnegative constant `A_delta` such that for
> every dyadic scale `j`,
>
> ```text
> (j+2) * sum_(1 <= h < 2^(j+1))
>   sum_(0 <= r <= j+1)
>     max_(q < 2^(j+1-r))
>       |sum_(n in aligned block (r,q))
>          padded_mu_two_point(j,h,n)|^2
>   <= (A_delta * (2^j)^delta)^2 * 2^(j+1).
> ```

The singleton scale now satisfies the required linear-order budget. The first
unresolved arithmetic work is control of the positive scales, uniformly over
all shifts, scales, and aligned positions.
