# RH / #219: two-tent Bombieri moment-rank obstruction

**Evidence established:** `LITERATURE_REVIEWED`, `SOURCE_DRAFT`.

**Not established:** `ELABORATED`, `KERNEL_CHECKED`, `TRUST_AUDITED`,
`EXTERNALLY_REPLAYED`, `ANALYTIC_PREMISES_DISCHARGED`.

This increment proves a negative result at the exact next dependency edge. The
stage-two and stage-three canonical square tents contain no nonzero vector satisfying
both displayed Bombieri moment conditions. They therefore cannot supply a two-vector
moment-corrected Bombieri basis. When the arithmetic form is recomputed on any such
corrected pair, the complete matrix is zero rather than the earlier diagonal matrix.

No classical Weil form, criterion theorem, or RH adapter is defined.

## 1. Repository audit and dependency reconciliation

Repository: `grwtsk/math`.

Selected issue: **#219**, owner of the exact Weil test-space, form, normalization,
and criterion interfaces.

Historical parent:

```text
parent PR:       #1083
parent title:    [Draft][RH #219] Refute literal Bombieri realization of canonical square tents
parent head:     f93948b7d62b68497fc3a348b07ba969f744d476
parent tree:     8373b1bc7524bca690238eff9a8a2ea1df447cb8
parent branch:   research/rh-bombieri-tent-moment-obstruction-219-20261023
```

The parent subsequently merged, and its source was repaired and validated on public
`main`:

```text
parent merge commit:        584371c792bc89c23fe4c4de51ef7a62ba676048
repaired main commit:       4a9285c99de5b08772e974cda933d350b52332dd
repaired main tree:         91a1724303fe72b0f8e71a1cc8472fbb66ff4749
repaired parent source blob: cc9ed5b34159242ac69eb569f80e1ea7b420fa53
```

Dedicated child:

```text
branch:
  research/rh-bombieri-two-tent-moment-rank-obstruction-219-20261023

historical branch base:
  f93948b7d62b68497fc3a348b07ba969f744d476

non-force reconciliation commit:
  b983fbc10326781694d5667da9ebb6ec7de3e7db
```

The reconciliation commit has the child source history and repaired `main` as its two
parents. Neither history was rewritten. The repaired parent retains the declaration
names and types consumed by this leaf. Actual elaboration of the child against that
repaired parent remains pending.

Pinned toolchain:

```text
Lean:    leanprover/lean4:v4.33.0
Mathlib: db584cd6d46c92f209a44c0f1c829460d327499d
```

## 2. Exact literature source

Primary source:

```text
E. Bombieri,
Problems of the Millennium: the Riemann Hypothesis,
Clay Mathematics Institute official problem description,
section V, printed pages 8-9.
```

Primary PDF:

```text
https://www.claymath.org/wp-content/uploads/2022/05/riemann.pdf
```

Bombieri defines a class `W` of complex-valued functions on the positive half-line,
states Weil's explicit formula, and records the specialization using a test `g ∈ W`
with

```text
∫₀∞ g(x) dx/x = 0,
∫₀∞ g(x) dx   = 0.
```

The source also forms the multiplicative correlation

```text
f(x) = ∫₀∞ g(xy) conjugate(g(y)) dy.
```

This increment imports no external criterion theorem. It uses only the two displayed
moment conditions. The full piecewise-`C¹`, endpoint, transform, and decay profile of
`W` remains outside this leaf.

## 3. Exact terminal consumer

The immediate typed consumer is the merged parent record

```lean
BombieriZeroMomentConditions (g : ℝ → ℂ)
```

with fields

```lean
multiplicativeMoment_zero :
  (∫ x in Set.Ioi 0, g x / (x : ℂ)) = 0

ordinaryMoment_zero :
  (∫ x in Set.Ioi 0, g x) = 0.
```

The parent result excludes one literal canonical tent and every nonzero scalar
multiple. The selected missing premise was whether arbitrary basis mixing inside the
first two canonical tents could repair both moments.

## 4. Candidate comparison

| Candidate | Missing premise / proposed conclusion | Support | Result |
|---|---|---|---|
| Full Bombieri model and first classical cross term | Formalize all of `W`, the multiplicative correlation, explicit-formula form, and normalization | Exact publication identified, but several analytic interfaces remain absent | Deferred |
| **Selected two-tent moment correction** | Find nonzero vectors in the span of the stage-two and stage-three tents satisfying both moments, then recompute their arithmetic matrix | Merged parent supplies the tents and moments; supports meet only at `9` | Refuted by a positive moment determinant |
| Add a third correction profile | Two moment constraints may leave a nonzero kernel in a three-dimensional span | No source-bound third profile or arithmetic comparison yet | Exactly one next obstruction |

The selected candidate is the nearest actual correction to the rejected literal
basis and requires no unproved classical cross formula.

## 5. Test functions and moments

The two real functions are

```text
T₂(x) = tent(squareCenter 2, squareRadius 2, x),
T₃(x) = tent(squareCenter 3, squareRadius 3, x).
```

Their supports are

```text
supp(T₂) ⊆ [4,9],
supp(T₃) ⊆ [9,16],
```

and they are strictly positive on the corresponding open intervals.

Define

```text
A₂ = ∫₀∞ T₂(x) dx,       B₂ = ∫₀∞ T₂(x) dx/x,
A₃ = ∫₀∞ T₃(x) dx,       B₃ = ∫₀∞ T₃(x) dx/x.
```

The source proves the quotient integrands are integrable because each support is
compact and bounded away from zero. It uses no numerical quadrature and no
unverified closed-form logarithmic evaluation.

## 6. Shared-endpoint reciprocal separation

The canonical windows share the endpoint `9`.

On `(4,9)`:

```text
T₂(x) > 0,
1/x - 1/9 > 0.
```

Therefore

```text
0 < ∫₀∞ T₂(x) (1/x - 1/9) dx
  = B₂ - A₂/9,
```

so

```text
A₂/9 < B₂.
```

On `(9,16)`:

```text
T₃(x) > 0,
1/9 - 1/x > 0.
```

Therefore

```text
0 < ∫₀∞ T₃(x) (1/9 - 1/x) dx
  = A₃/9 - B₃,
```

so

```text
B₃ < A₃/9.
```

Strictness comes from positive Lebesgue measure of the open support intervals, not
from endpoint values.

## 7. Moment determinant

The new source defines

```lean
twoTentMomentDeterminant =
  A₃ * B₂ - A₂ * B₃
```

and proves

```lean
twoTentMomentDeterminant_pos :
  0 < twoTentMomentDeterminant.
```

Indeed,

```text
A₂ B₃ < A₂ A₃/9 = A₃ A₂/9 < A₃ B₂
```

because `A₂ > 0` and `A₃ > 0`.

This is an exact rank statement for the two displayed Bombieri moments on the
two-tent span.

## 8. Actual complex span and source moments

For `u : Combination 1 = Fin 2 → ℂ`, define

```text
gᵤ(x) = u₀ T₂(x) + u₁ T₃(x).
```

The source proves the actual set integrals agree with the coordinate moment maps:

```lean
bombieriOrdinaryMoment_twoTent_eq :
  ∫₀∞ gᵤ(x) dx = u₀ A₂ + u₁ A₃

bombieriMultiplicativeMoment_twoTent_eq :
  ∫₀∞ gᵤ(x) dx/x = u₀ B₂ + u₁ B₃.
```

No coordinate equation is inserted as an extra hypothesis: both identities are
derived from the actual integrals using integrability and linearity.

The positive determinant then gives

```lean
combination_eq_zero_of_momentMaps_zero
```

and the source-bound specialization

```lean
combination_eq_zero_of_bombieriMoments :
  BombieriZeroMomentConditions gᵤ → u = 0.
```

Thus the kernel of the two-moment map is exactly zero.

## 9. Two-vector obstruction

A proposed corrected pair is represented by

```lean
TwoTentMomentCorrectedPair
```

with two coefficient vectors and both moment proofs for each vector.

The source first permits the degenerate record so that its arithmetic coefficient
matrix can be recomputed. Every vector is then proved equal to zero.

A nondegenerate pair requires an injective map from the two basis labels:

```lean
NondegenerateTwoTentMomentCorrectedPair.
```

The principal obstruction theorem is

```lean
no_nondegenerateTwoTentMomentCorrectedPair :
  ¬ Nonempty NondegenerateTwoTentMomentCorrectedPair.
```

This covers all basis mixing inside the literal two-tent span, not merely one proposed
normalization.

## 10. Complete recomputed arithmetic matrix

For a possibly degenerate corrected pair, define

```lean
TwoTentMomentCorrectedPair.arithmeticMatrix i j =
  sourcePolarizedForm (vector i) (vector j).
```

The new source proves every corrected vector is zero and then proves

```lean
arithmeticMatrix_entry_eq_zero :
  arithmeticMatrix i j = 0

arithmeticMatrix_eq_zero :
  arithmeticMatrix = 0.
```

This is the complete `2 × 2` recomputation. The old matrix

```text
diag(canonicalCorrection 0, canonicalCorrection 1)
```

is not reused. Moment correction inside the two-tent span annihilates the entire
coefficient space, so the corrected matrix is the zero matrix.

## 11. Proof and positivity classification

Proof classification:

```text
imported/source-bound:
  Bombieri's two displayed moment conditions;
  merged canonical tent definitions and ordinary-moment positivity.

repository-proved in this leaf:
  integrability of Tᵢ/x;
  strict reciprocal-gap integrals;
  positive moment determinant;
  trivial kernel of the two-moment map;
  zero recomputed arithmetic matrix;
  nonexistence of an injective corrected pair.

formal wrappers:
  source-bound obstruction packet and pair records.
```

Not used:

```text
RH;
target positivity;
a classical Weil form;
an explicit-formula criterion theorem;
numerical zero data;
interval arithmetic;
an external oracle.
```

Positivity proved here is strict positivity of `A₂`, `A₃`, both reciprocal-gap
integrals, and the moment determinant. This is not positivity of a Weil form. The
recomputed corrected arithmetic form is identically zero because the admissible
coefficient kernel is zero.

## 12. Finite witness

```text
stage-two support:   [4,9]
stage-three support: [9,16]
reciprocal pivot:    1/9
coefficient space:   Fin 2 → ℂ
number of moments:   2
moment determinant:  strictly positive
kernel:              {0}
corrected matrix:    zero 2 × 2 matrix.
```

No decimal approximation is mathematical authority.

## 13. Failure cases and information boundaries

1. Adding a third function may create a nonzero one-dimensional moment kernel.
2. A derivative, distribution, or endpoint correction is not in the literal
   two-tent span and is not excluded.
3. Basis mixing inside the two-tent span is fully covered; a wider family is not.
4. The result does not compute a classical Weil cross term.
5. The result does not construct the full class `W`.
6. A zero corrected arithmetic matrix cannot be promoted to a classical criterion.
7. No density, closure, or completion theorem is supplied.
8. No criterion direction or RH consequence is inferred.

## 14. Evidence states

Established separately:

```text
LITERATURE_REVIEWED
SOURCE_DRAFT
```

Pending:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANALYTIC_PREMISES_DISCHARGED
```

Lean/Lake execution was unavailable in the authoring environment. No project build,
warning-clean elaboration, exact declaration print, fresh kernel replay, transitive
axiom audit, or independent replay occurred. Static source review is not kernel
acceptance. The repaired parent validation does not imply acceptance of this new
child leaf.

## 15. RH consequence

This increment supplies a negative test-class result only:

```text
Bombieri's two source moments
  + separated positive supports of T₂ and T₃
  → positive moment determinant
  → no nonzero corrected vector in span{T₂,T₃}
  → no nondegenerate corrected pair
  → recomputed arithmetic matrix is zero.
```

It proves neither RH nor its negation and supplies no premise to a classical Weil
criterion.

## 16. Provenance graph

```text
Bombieri, section V
  -> two displayed zero moments

TentWeight + TentSource
  -> positive tents on (4,9) and (9,16)

merged and repaired parent #1083
  -> literal tent functions and typed Bombieri moment record

shared endpoint 9
  -> reciprocal-gap inequalities
  -> positive moment determinant

positive determinant
  -> trivial coefficient kernel
  -> no nondegenerate corrected pair

trivial kernel + parent arithmetic form
  -> recomputed zero matrix.
```

No numerical contributor weights are assigned.

## 17. Exactly one next obstruction

Add exactly one explicitly defined third correction profile `H` with source-bound
support, regularity, and arithmetic readout. Prove the resulting two moment
functionals on `span{T₂,T₃,H}` have rank two, construct one nonzero kernel vector, and
recompute its full arithmetic coefficient against the canonical tents. No classical
cross-term comparison may occur before that new arithmetic matrix is proved.
