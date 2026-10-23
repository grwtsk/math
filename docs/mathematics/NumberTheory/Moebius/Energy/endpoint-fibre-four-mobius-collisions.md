# Four-Möbius expansion and collision strata of endpoint fibres

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / FOUR_DISTINCT_CORRELATION_ESTIMATE_OPEN`  
Owner: issue [#512](https://github.com/grwtsk/math/issues/512)  
Direct parent: issue [#505](https://github.com/grwtsk/math/issues/505) / draft PR [#510](https://github.com/grwtsk/math/pull/510)  
Active-tail parent: issue [#497](https://github.com/grwtsk/math/issues/497) / draft PR [#498](https://github.com/grwtsk/math/pull/498)  
Signed Abel packet: issue [#468](https://github.com/grwtsk/math/issues/468) / draft PR [#470](https://github.com/grwtsk/math/pull/470)

This increment expands the endpoint-fibre square into a literal finite four-Möbius correlation and separates all collision patterns before any higher-order randomness theorem is considered.

No arithmetic estimate is proved.

## 1. Exact source binding

Direct parent:

```text
branch: research/rh-abel-endpoint-fibres-505-20261021
revision: 092a9b9923fdcf28d28ad2847ff3806a22ef6697
tree: e8a82324a9220353c0d3f42f77c843bbe6d61e55
PR: #510
```

Candidate source:

```text
branch: research/rh-four-mobius-collisions-512-20261021
source head: bf8be59909bd513423964a9070b3d23047bc098d
source tree: 2fbeb5a9de9ccdaa17ebcb9ac3b01fb61aa91790
source path:
  GRWTSK/NumberTheory/Moebius/
    EndpointFibreFourMobiusCollisions.lean
source blob:
  d00548509820a19147fe00b9a8fe514daaffc275
```

No existing source, public root, workflow, dependency pin, executor, or held branch is modified.

## 2. Exact four-Möbius expansion

For one endpoint (b) and prefix length (1le n<b), put

[
h=b-n>0.
]

The two-point prefix is

[
C_h(n)
=
sum_{0le a<n}
mu(a+1)mu(a+1+h).
]

The source defines

```lean
mertensEndpointFourMobiusTerm b n a c
```

as

[
mu(a+1)mu(a+1+h)
mu(c+1)mu(c+1+h).
]

The theorem

```lean
mertensTwoPointPrefix_sq_eq_fourMobiusSum
```

proves

[
C_h(n)^2
=
sum_{a<n}sum_{c<n}
mu(a+1)mu(a+1+h)
mu(c+1)mu(c+1+h).
]

This is finite algebra using the exact repository prefix convention.

## 3. Why off-diagonal is not synonymous with four-distinct

The four arithmetic arguments are

[
a+1,qquad a+1+h,qquad c+1,qquad c+1+h.
]

Because (h>0), equality inside either shifted pair is impossible. The only possible collisions are therefore:

1. (a=c);
2. (c=a+h);
3. (a=c+h).

The source encodes the exhaustive classification as

```lean
inductive MertensEndpointFourMobiusStratum
  | diagonal
  | forwardCross
  | backwardCross
  | fourDistinct
```

with classifier

```lean
mertensEndpointFourMobiusStratum.
```

The order of the classifier is intentional and makes the filtered strata disjoint by construction.

The generic theorem

```lean
sum_mertensEndpointPairSet_eq_strata
```

splits any real-valued sum over the complete ((a,c)) pair domain into the four filtered pieces.

## 4. Exact collision semantics

The source proves:

```lean
mertensEndpointFourMobiusStratum_eq_diagonal_iff
mertensEndpointFourMobiusStratum_eq_forwardCross_iff
mertensEndpointFourMobiusStratum_eq_backwardCross_iff
mertensEndpointFourMobiusStratum_eq_fourDistinct_iff.
```

Under (n<b), the strata mean:

```text
diagonal:
  a = c

forwardCross:
  a != c
  c = a+h

backwardCross:
  a != c
  c != a+h
  a = c+h

fourDistinct:
  a != c
  c != a+h
  a != c+h.
```

The theorem

```lean
mertensEndpointFourMobius_fourDistinct_arguments
```

checks that the final case really makes all four Möbius arguments pairwise distinct.

This distinction is essential: a theorem for four distinct affine forms must not be applied to the cross-collision strata.

## 5. Diagonal positivity

When (a=c),

[
mu(a+1)mu(a+1+h)
mu(a+1)mu(a+1+h)
=
mu(a+1)^2mu(a+1+h)^2.
]

The source proves

```lean
mertensEndpointFourMobiusTerm_diagonal
mertensEndpointFourMobiusTerm_diagonal_nonneg.
```

Thus the diagonal part is an unavoidable nonnegative squarefree-overlap mass.

This positivity is finite scalar positivity only. It does not imply the complete endpoint fibre is positive for any reason beyond its original square definition, and it does not give smallness.

## 6. Cross-collision structure

The forward cross-collision satisfies

[
c=a+h.
]

Its term has the shape

[
mu(a+1)
mu(a+1+h)^2
mu(a+1+2h),
]

after arithmetic simplification.

The backward orientation gives the symmetric three-distinct configuration.

The source deliberately retains these as signed sums instead of taking absolute values. They are lower-order collision terms, not four-distinct correlations.

No theorem estimating them is asserted here.

## 7. Endpoint-fibre strata

The source defines:

```lean
mertensEndpointFibreDiagonalEnergy
mertensEndpointFibreCrossCollisionEnergy
mertensEndpointFibreFourDistinctCorrelation.
```

The cross-collision term contains both orientations.

The theorem

```lean
mertensEndpointFibreDiagonalEnergy_nonneg
```

records the only automatic sign statement.

The load-bearing exact decomposition is

```lean
mertensTwoPointEndpointFibreQuadraticEnergy_eq_collisionDecomposition.
```

Mathematically,

[
oxed{
mathcal F(b)
=
mathcal D(b)
+
mathcal C(b)
+
mathcal H_4(b)
}
]

where:

- (mathcal D(b)) is the nonnegative square diagonal;
- (mathcal C(b)) is the signed sum of the two three-distinct cross-collision families;
- (mathcal H_4(b)) is the signed genuinely four-distinct remainder.

No estimate occurs in this equality.

## 8. Lift through the RH-facing reciprocal weight

The source defines:

```lean
weightedMertensEndpointDiagonalEnergy
weightedMertensEndpointCrossCollisionEnergy
weightedMertensEndpointFourDistinctCorrelation.
```

It then proves

```lean
weightedMertensSignedAbelEndpointFibreQuadraticEnergy_eq_strata.
```

Thus the exact RH-facing quadratic obstruction decomposes as

[
oxed{
mathcal Q_j
=
mathcal D_j
+
mathcal C_j
+
mathcal H_{4,j}
}.
]

All three use the same outer factor

[
4left(rac1b-rac1{b+1}ight)
]

on (2^jle b<2^{j+1}).

## 9. What higher-order Chowla would have to supply

Only the (mathcal H_{4,j}) term is literally a four-distinct correlation sum.

Even there, an ordinary fixed-form higher-order Chowla theorem would not automatically discharge the repository premise. The repository target varies simultaneously over:

- the dyadic endpoint (b);
- the prefix length (n);
- both base indices (a,c);
- the growing shift (h=b-n);
- the reciprocal endpoint weight.

An exact uniform/weighted adapter remains necessary.

The collision term (mathcal C_j) requires a different, lower-order treatment.

The diagonal (mathcal D_j) is positive arithmetic mass and cannot be canceled by a four-distinct theorem.

## 10. Failure boundaries

This increment does not prove:

- that the diagonal is subpolynomial;
- that cross-collisions cancel;
- that the four-distinct remainder cancels;
- a higher-order Chowla theorem;
- a corrected Elliott theorem;
- any adapter from those conjectures to the endpoint fibre;
- the endpoint-fibre supplier;
- RH.

Source text and successful finite reindexing are not analytic evidence.

## 11. Evidence state

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
DIAGONAL_BOUND_PROVED
CROSS_COLLISION_ESTIMATE_PROVED
FOUR_DISTINCT_CORRELATION_ESTIMATE_PROVED
```

No Lean/Lake execution, elaboration, proof-term acceptance, transitive trust audit, independent replay, merge, root admission, or RH claim occurred.

## 12. Exact next obstruction

The decomposition exposes three separate questions:

[
mathcal D_j,qquad
mathcal C_j,qquad
mathcal H_{4,j}.
]

The first should be tested immediately as a possible obstruction, because it is nonnegative and cannot be removed by higher-order cancellation.

The next bounded step should therefore compute or lower-bound the diagonal contribution with the actual Möbius-square density and reciprocal endpoint weight before any effort is spent on a four-distinct Chowla adapter.

If the diagonal alone violates the required subpolynomial normalization, this entire quadratic route becomes another reusable obstruction witness. If it fits the normalization, the remaining work splits cleanly into the cross-collision and four-distinct suppliers.
