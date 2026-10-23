# RH / #219: two-tent Bombieri moment-rank obstruction

**Evidence established:** `LITERATURE_REVIEWED`, `SOURCE_DRAFT`.

**Not established:** `ELABORATED`, `KERNEL_CHECKED`, `TRUST_AUDITED`,
`EXTERNALLY_REPLAYED`, `ANALYTIC_PREMISES_DISCHARGED`.

This increment proves a negative result at the exact next dependency edge. The
stage-two and stage-three canonical square tents do not contain a nonzero vector
satisfying both of Bombieri's displayed moment conditions. Therefore they cannot
supply a two-vector moment-corrected Bombieri basis, and their corrected arithmetic
matrix collapses to zero.

No classical Weil form, criterion theorem, or RH adapter is defined.

## 1. Repository audit and stacked dependency

Repository: `grwtsk/math`.

Selected issue: **#219**, owner of the exact Weil test-space, form, normalization,
and criterion interfaces.

Stacked parent:

```text
parent PR:       #1083
parent title:    [Draft][RH #219] Refute literal Bombieri realization of canonical square tents
parent state:    open draft at branch creation
parent head:     f93948b7d62b68497fc3a348b07ba969f744d476
parent tree:     8373b1bc7524bca690238eff9a8a2ea1df447cb8
parent branch:   research/rh-bombieri-tent-moment-obstruction-219-20261023
```

Dedicated child:

```text
branch:
  research/rh-bombieri-two-tent-moment-rank-obstruction-219-20261023

exact branch base:
  f93948b7d62b68497fc3a348b07ba969f744d476

initial source commit:
  b3d99d7453a2e50f01ffdea8ac7726ee93a0d425
```

Current public `main` at the repository audit:

```text
main commit:
  f70b6e236a88eb81c6007435d77705d12c788dca

main tree:
  e7f98015e06a66298839307958b015650d8c6a29
```

The six commits by which `main` advanced after the parent base touched endpoint
conventions, Möbius restriction sources, finite-tail material, and repository
metadata. The parent Bombieri obstruction remains an unmerged dependency, so this
child must not be retargeted or merged independently. If #1083 changes, is rejected,
or is rebased with altered declarations, this child must be replayed against the new
exact parent head.

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
states Weil's explicit formula, and then records the specialization using a test
`g ∈ W` with

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

## 3. Terminal consumer

The immediate typed consumer is the parent record

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

The parent result excludes a single literal canonical tent and every nonzero scalar
multiple. The selected missing premise was whether basis mixing inside the first two
canonical tents could repair both moments.

## 4. Candidate comparison

| Candidate | Missing premise / proposed conclusion | Support | Result |
|---|---|---|---|
| Full Bombieri model and first classical cross term | Formalize all of `W`, the multiplicative correlation, explicit-formula form, and normalization | Exact publication identified, but several analytic interfaces remain absent | Deferred |
| **Selected two-tent moment correction** | Find nonzero vectors in the span of the stage-two and stage-three tents satisfying both moments, then recompute their arithmetic matrix | Parent source supplies the tents and moments; supports meet only at `9` | Refuted by a positive moment determinant |
| Add a third correction profile | Two moment constraints may leave a nonzero kernel in a three-dimensional span | No source-bound third profile or arithmetic comparison yet | Next obstruction only |

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
Aᵢ = ∫₀∞ Tᵢ(x) dx,
Bᵢ = ∫₀∞ Tᵢ(x) dx/x.
```

The source proves the quotient integrands are integrable because each support is
compact and bounded away from zero. It does not use numerical quadrature or an
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

The strictness comes from positive Lebesgue measure of the open support intervals,
not from endpoint values.

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

No coefficient equation is inserted as an extra hypothesis: both are derived from
the actual integrals using integrability and linearity.

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

This is stronger than failure of one proposed normalization: no two distinct vectors
inside the two-dimensional literal tent span can satisfy both moments.

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

## 11. Proof classification

```text
imported/source-bound:
  Bombieri's two displayed moment conditions;
  parent canonical tent definitions and ordinary-moment positivity.

repository-proved in this leaf:
  integrability of Tᵢ/x;
  strict reciprocal-gap integrals;
  positive moment determinant;
  trivial kernel of the two-moment map;
  zero recomputed arithmetic matrix;
  nonexistence of an injective corrected pair.

formal wrappers:
  source-bound obstruction packet and pair records.

not used:
  RH;
  target positivity;
  a classical Weil form;
  an explicit-formula criterion theorem;
  numerical zero data;
  interval arithmetic;
  an external oracle.
```

## 12. Positivity classification

Proved:

```text
strict positivity of A₂ and A₃;
strict positivity of the two reciprocal-gap integrals;
strict positivity of the moment determinant.
```

The determinant positivity is not positivity of a Weil form. The recomputed
corrected arithmetic form is identically zero because the admissible coefficient
kernel is zero.

Not proved:

```text
global classical Weil positivity;
strict positivity of a classical form;
kernel, measure, trace, state, or operator positivity;
positivity after a wider moment correction.
```

## 13. Finite witness

The exact finite fixture is:

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

## 14. Failure cases and information boundaries

1. Adding a third function may create a nonzero one-dimensional moment kernel.
2. A derivative, distribution, or endpoint correction is not in the literal
   two-tent span and is not excluded.
3. Basis mixing within the two-tent span is fully covered; basis mixing with a wider
   family is not.
4. The result does not compute a classical Weil cross term.
5. The result does not construct the full class `W`.
6. A zero corrected arithmetic matrix cannot be promoted to a classical criterion.
7. No density, closure, or completion theorem is supplied.
8. No criterion direction or RH consequence is inferred.

## 15. Evidence states

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
acceptance.

## 16. RH consequence

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

## 17. Provenance graph

```text
Bombieri, section V
  -> two displayed zero moments

TentWeight + TentSource
  -> positive tents on (4,9) and (9,16)

parent #1083 source
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

## 18. Exactly one next obstruction

Add exactly one explicitly defined third correction profile `H` with source-bound
support, regularity, and arithmetic readout. Prove the resulting two moment
functionals on `span{T₂,T₃,H}` have rank two, construct one nonzero kernel vector, and
recompute its full arithmetic coefficient against the canonical tents. No classical
cross-term comparison may occur before that new arithmetic matrix is proved.
