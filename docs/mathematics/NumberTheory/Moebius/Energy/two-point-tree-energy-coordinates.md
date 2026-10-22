# Explicit scale–block coordinates for the two-point tree energy

Issue: #458. Direct parent: #453 / draft PR #455. Generic finite parent:
#437 / draft PR #449. Upstream maximal consumer: #410 / draft PR #411.
Endpoint-information-loss witness: #430 / draft PR #432.

Evidence state: **SOURCE_DRAFT**. No Lean or Lake execution, elaboration,
kernel acceptance, trust audit, external replay, arithmetic estimate, or RH
claim is represented by this note.

## Repository binding

The inspected default branch remains

```text
main revision: 5abfeefa6ee8dd9b02077cc77239d17f32f1fd6c
main tree:     8aa3904165d91f97952789fa6c0042636a40cc10
```

The direct stacked parent is the exact head of draft PR #455:

```text
parent branch: research/rh-two-point-junction-453-20261021
parent head:   9753ce756e6c445ba55ad0097fe9e83ae091a224
parent tree:   c4b6998fee0782bd0ef0de7f7a74c21ab9b90830
```

The dedicated branch is

```text
research/rh-dyadic-tree-coordinates-458-20261021
```

The theorem source commit is

```text
821dd19336a0e9138ee3a74482cf5b5d0fc9fd26
```

with tree

```text
62d9be58b0953bf45cea3daee28656a9ac1f0220
```

and source blob

```text
ed9c52ed2b1eca1d73fdd87a8494aab0ad34a7b4.
```

No existing source, public aggregate import, dependency pin, workflow,
executor, or held branch is modified.

If PR #455 moves, is rejected, or changes the two-point source definitions,
this branch must be reconciled against the new exact parent. Importing a source
draft does not confer elaboration or kernel evidence.

## Objective

The parent stack has already established the exact conditional path

```text
Möbius aligned-dyadic tree energy with depth cost
  -> canonical maximal two-point prefix energy
  -> Riemann Hypothesis.
```

The tree energy in that path is recursively defined. The present increment
proves that the recursive object is exactly the conventional finite sum over
aligned scale and block coordinates.

This is a representation theorem. It does not show that the energy is small.

## Generic coordinate observable

For a real sequence `a : Nat -> Real`, the inherited signed block sum is

```text
B_a(r,q)
  = sum_(q*2^r <= n < (q+1)*2^r) a(n).
```

The source defines the energy at one scale:

```text
ScaleEnergy(m,r,a)
  = sum_(0 <= q < 2^(m-r)) B_a(r,q)^2.
```

The complete coordinate energy is

```text
CoordinateEnergy(m,a)
  = sum_(0 <= r <= m) ScaleEnergy(m,r,a).
```

The range `r < m+1` enforces `r <= m`. Natural subtraction `m-r` is not used as
an algebraic equality outside that range.

Every block is signed before squaring. The observable is not

```text
sum blocks (sum |a(n)|)^2
```

and it is not a terminal endpoint statistic.

## Exact right-half alignment

At a fixed scale `r <= m`, translating the source by the left-half length
`2^m` changes the block index by exactly `2^(m-r)`:

```lean
alignedDyadicBlockSum_shifted_half :
  alignedDyadicBlockSum (shiftedSequence a (2^m)) r q
    = alignedDyadicBlockSum a r (2^(m-r)+q).
```

The arithmetic identity behind this theorem is

```text
2^(m-r) * 2^r = 2^m,
```

which is used only with the visible hypothesis `r <= m`.

This theorem records the precise information needed to partition the
successor-depth blocks into the left and right subtrees. It rules out an
off-by-one block offset or a shift by the wrong dyadic length.

## Scale splitting

For every `r <= m`, the source proves

```lean
alignedDyadicScaleSquareEnergy_succ :
  ScaleEnergy(m+1,r,a)
    = ScaleEnergy(m,r,a)
      + ScaleEnergy(m,r,shift_(2^m) a).
```

At successor depth there are

```text
2^(m+1-r) = 2^(m-r) + 2^(m-r)
```

blocks at scale `r`. The first half is the complete left scale energy. The
second half is converted to the right scale energy by the exact alignment
lemma above.

At the new top scale there is only one block:

```lean
alignedDyadicScaleSquareEnergy_top :
  ScaleEnergy(m,m,a) = B_a(m,0)^2.
```

Thus the complete coordinate energy satisfies the same recursion as the
inherited tree energy:

```text
CoordinateEnergy(m+1,a)
  = B_a(m+1,0)^2
    + CoordinateEnergy(m,a)
    + CoordinateEnergy(m,shift_(2^m) a).
```

No block is omitted or counted twice.

## Generic representation theorem

The central theorem is

```lean
dyadicTreeSquareEnergy_eq_coordinate :
  dyadicTreeSquareEnergy m a
    = alignedDyadicCoordinateSquareEnergy m a.
```

Its literal expanded form is

```lean
dyadicTreeSquareEnergy_eq_doubleSum :
  dyadicTreeSquareEnergy m a
    = sum_(0 <= r <= m)
        sum_(0 <= q < 2^(m-r))
          alignedDyadicBlockSum a r q ^ 2.
```

The proof is induction on `m`:

1. At depth zero, both sides are the square of the singleton block.
2. At successor depth, the recursive tree definition retains the root, left
   subtree, and right subtree.
3. The coordinate successor theorem presents exactly the same three terms.
4. The induction hypotheses identify the two subtree energies.

This is an equality of finite real expressions. There is no convergence,
limit, probability, spectral, or arithmetic hypothesis.

## Two-point specialization

The parent module defines the exact zero-padded source

```text
a_(j,h)(n) =
  f(n+1)g(n+1+h),  n < 2^(j+1)-h-1,
  0,                 otherwise.
```

The current source defines

```text
twoPointCoordinateBlockEnergy(f,g,j,h)
  = CoordinateEnergy(j+1,a_(j,h)).
```

and

```text
twoPointCoordinateBlockEnergySum(f,g,j)
  = sum_(1 <= h < 2^(j+1))
      twoPointCoordinateBlockEnergy(f,g,j,h).
```

The exact one-shift identity is

```lean
twoPointTreeEnergy_eq_coordinateBlockEnergy :
  twoPointTreeEnergy f g j h
    = twoPointCoordinateBlockEnergy f g j h.
```

The literal coordinate formula is

```text
twoPointTreeEnergy(f,g,j,h)
  = sum_(0 <= r <= j+1)
      sum_(0 <= q < 2^(j+1-r))
        B_(a_(j,h))(r,q)^2.
```

Summing over all positive shifts gives

```lean
twoPointTreeEnergySum_eq_coordinateBlockEnergySum :
  twoPointTreeEnergySum f g j
    = twoPointCoordinateBlockEnergySum f g j.
```

Every cutoff, zero-padded term, scale, and shift remains explicit.

## Supplier equivalence

The coordinate-form all-scale premise is

```lean
SubpolynomialDyadicTwoPointCoordinateEnergyWithDepthCost f g.
```

It states that for every `delta > 0`, some nonnegative constant `A_delta`
satisfies

```text
(j+2) * CoordinateEnergySum(f,g,j)
  <= (A_delta * (2^j)^delta)^2 * 2^(j+1)
```

at every scale.

The source proves the exact equivalence

```lean
SubpolynomialDyadicTwoPointCoordinateEnergyWithDepthCost f g
  <->
SubpolynomialDyadicTwoPointTreeEnergyWithDepthCost f g.
```

This equivalence follows only from the finite representation identity. It does
not prove either side.

For the actual Möbius source the coordinate premise is named

```lean
SubpolynomialDyadicMertensTwoPointCoordinateEnergyWithDepthCost.
```

The inherited conditional chain becomes

```text
explicit Möbius coordinate-energy supplier
  -> recursive Möbius tree-energy supplier
  -> canonical maximal-prefix supplier
  -> Riemann Hypothesis.
```

The final theorem

```lean
riemannHypothesis_of_mertensTwoPointCoordinateEnergy
```

is therefore conditional. Its premise remains open.

## Positivity classification

The only positivity used here is nonnegativity of finite sums of squares:

```text
0 <= CoordinateEnergy(m,a).
```

This is not:

- strict positivity for every nonzero source;
- an arithmetic cancellation estimate;
- positive semidefiniteness of a separately specified analytic form;
- positivity of a kernel, measure, trace, state, or spectral measure;
- averaged or asymptotic positivity;
- finite-height Weil positivity;
- global positivity.

The equality between recursive and coordinate energy preserves the exact
finite nonnegative quantity. It does not decrease it.

## Failure boundaries

The source explicitly preserves the following distinctions:

- A terminal endpoint is not a maximal-prefix observable.
- A maximal-prefix comparison is not an arithmetic estimate.
- Recursive presentation and coordinate presentation are equal, not merely
  asymptotically comparable.
- Termwise absolute values are not introduced inside signed blocks.
- The right subtree starts at exactly `2^m`.
- The right-half block-index offset is exactly `2^(m-r)`.
- The depth cost `j+2` remains visible in the arithmetic premise.
- The sum over shifts remains half-open: `1 <= h < 2^(j+1)`.
- Fixed-shift, logarithmic, averaged, or almost-all results do not automatically
  supply the every-scale coordinate-energy bound.

The endpoint-information-loss witness in #430 remains relevant: the complete
coordinate energy retains intermediate blocks precisely because the terminal
correlation can erase an earlier excursion.

## Provenance graph

```text
PR #449 finite dyadic maximal comparison
  defines
recursive tree energy and aligned block sums

issue #458 / this source
  proves
recursive tree energy = explicit scale-block double sum

PR #455 two-point junction
  defines
zero-padded two-point source and conditional tree-energy path

this source
  specializes
explicit coordinate identity to the two-point and Möbius sources

explicit Möbius coordinate-energy estimate
  remains
OPEN ARITHMETIC SUPPLIER
```

grwtsk contributors supplied the mathematical direction and dependency
selection. OpenAI ChatGPT supplied formalization and source-organization
assistance. Mathlib and inherited GRWTSK declarations retain their existing
authorship and licenses. No scalar contributor weights are assigned.

## Evidence state

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

No Lean/Lake/native parsing or elaboration, proof-term acceptance,
generated-declaration reconciliation, transitive axiom/native/unsafe/opaque
audit, repository test, independent review, merge, root admission, or issue
closure occurred.

## Exact next obstruction

The representation debt is now isolated from the arithmetic debt. The next
unresolved theorem is:

> Prove a subpolynomial all-scale upper bound for
>
> ```text
> (j+2) * sum_(1 <= h < 2^(j+1))
>   sum_(0 <= r <= j+1)
>     sum_(0 <= q < 2^(j+1-r))
>       B_(a_(j,h))(r,q)^2,
> ```
>
> where `a_(j,h)` is the exact zero-padded two-point Möbius source.

This increment stops before any attempt to prove that estimate.
