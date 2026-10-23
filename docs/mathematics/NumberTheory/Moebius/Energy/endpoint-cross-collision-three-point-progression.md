# Three-point progression form of endpoint cross-collisions

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / THREE_POINT_CROSS_COLLISION_ESTIMATE_OPEN`  
Owner: issue [#527](https://github.com/grwtsk/math/issues/527)  
Direct parent: issue [#522](https://github.com/grwtsk/math/issues/522) / draft PR [#524](https://github.com/grwtsk/math/pull/524)  
Collision decomposition: issue [#512](https://github.com/grwtsk/math/issues/512) / draft PR [#515](https://github.com/grwtsk/math/pull/515)  
Endpoint-fibre owner: issue [#505](https://github.com/grwtsk/math/issues/505) / draft PR [#510](https://github.com/grwtsk/math/pull/510)

This increment simplifies the two signed cross-collision strata from the four-Möbius expansion. Both orientations are exactly the same three-point arithmetic-progression sum.

No cancellation estimate is proved.

## 1. Exact source binding

Direct parent:

```text
branch: research/rh-diagonal-cancellation-witness-522-20261021
revision: 32b3cd741855928c410065686a18f2de20ecb87e
tree: bd50545929590c79db0ffca1e78d241de4f95361
PR: #524
```

Candidate source:

```text
branch: research/rh-three-point-cross-collision-527-20261021
source head: 60ea3fd81219848bfc1611ed3946fb742caf70dc
source tree: f53df3a21d6fdaaad9a7fb1aaa3f127ccb5f2a7d
source path:
  GRWTSK/NumberTheory/Moebius/
    EndpointCrossCollisionThreePointProgression.lean
source blob:
  081b77c12e49151668386e7364e9df745d6a5838
```

No existing source, public root, workflow, dependency pin, executor, or held branch is modified.

## 2. Cross-collision geometry

Fix an endpoint (b), a prefix length (1le n<b), and put

[
h=b-n>0.
]

The four-Möbius term is

[
mu(a+1)mu(a+1+h)mu(c+1)mu(c+1+h).
]

The forward cross-collision has

[
c=a+h.
]

Substitution gives

[
mu(a+1),
mu(a+1+h)^2,
mu(a+1+2h).
]

The backward cross-collision (a=c+h) gives the same expression after naming the lower index (c) as the base variable.

Thus the two collision orientations are mathematically identical after reindexing.

## 3. Exact support

For the forward orientation, both (a<n) and (a+h<n) are required. The second condition is stronger and is equivalent to

[
a<n-h.
]

The same support occurs for the backward orientation.

The source records the exact base set as

```lean
mertensEndpointCrossCollisionBaseSet b n
```

with definition

[
{0,dots,n-(b-n)-1}.
]

If (nle h), this range is empty automatically.

Equivalently, nonempty cross-collision fibres occur only when

[
2n>b.
]

No exceptional or approximate support is introduced.

## 4. Three-point progression term

The source defines

```lean
mertensThreePointProgressionTerm h a
```

as

[
mu(a+1)
mu(a+1+h)^2
mu(a+1+2h).
]

Writing (x=a+1), this is

[
mu(x)mu(x+h)^2mu(x+2h).
]

The squared midpoint is retained exactly. Since

[
mu(m)^2
]

is the squarefree indicator at mathematical scope, this is best regarded as a two-endpoint Möbius correlation selected by a squarefree midpoint—not as a genuinely four-distinct correlation.

No replacement by (1), a density constant, or an average is made.

## 5. Forward and backward bijections

The source proves

```lean
sum_mertensEndpointForwardCross_eq_progression
```

using the finite bijection

[
(a,c)mapsto a,qquad
amapsto(a,a+h),
]

and

```lean
sum_mertensEndpointBackwardCross_eq_progression
```

using

[
(a,c)mapsto c,qquad
cmapsto(c+h,c).
]

Both target the same exact finite sum.

These are finite reindexing theorems only.

## 6. Complete endpoint cross-collision energy

The source defines

```lean
mertensEndpointCrossCollisionProgressionEnergy b
```

by

[
2
sum_{1le n<b}
sum_{0le a<n-(b-n)}
mu(a+1)
mu(a+1+b-n)^2
mu(a+1+2(b-n)).
]

The factor (2) pays the two collision orientations exactly.

The load-bearing theorem is

```lean
mertensEndpointFibreCrossCollisionEnergy_eq_progression.
```

Hence the signed cross-collision stratum from PR #515 is exactly this three-point progression energy.

No absolute value is inserted.

## 7. RH-facing reciprocal endpoint weight

The source defines

```lean
weightedMertensEndpointCrossCollisionProgressionEnergy j
```

with the same exact outer endpoint weight

[
4left(rac1b-rac1{b+1}ight),
qquad
2^jle b<2^{j+1}.
]

It proves

```lean
weightedMertensEndpointCrossCollisionEnergy_eq_progression.
```

Thus the cross-collision component of the RH-facing endpoint energy is now explicitly a reciprocal-weighted family of signed three-point progression sums.

## 8. Conditional adapter surface

For later comparison only, the source names

```lean
SubpolynomialWeightedMertensEndpointCrossCollisionProgression.
```

It is not inhabited and is not sufficient by itself for the complete endpoint-fibre supplier; the diagonal and four-distinct strata remain separate.

Its purpose is to give a future analytic theorem a precise target instead of the generic label “cross-collision”.

## 9. Mathematical relation to neighboring conjectures

The exact term

[
mu(x)mu(x+h)^2mu(x+2h)
]

is not a standard binary Chowla correlation because of the squarefree midpoint selector.

It is also not the generic four-distinct higher-order Chowla term isolated in PR #515.

Possible future adapters include:

- a family-uniform corrected Elliott statement for the three affine forms with functions (mu,mu^2,mu);
- a squarefree-sieved binary correlation between the endpoints;
- a dispersion or Fourier theorem that treats the midpoint selector exactly;
- a divisor expansion of (mu^2) followed by a uniform two-point correlation estimate.

None of these adapters is constructed here.

## 10. Scope and hostile controls

Preserved exactly:

- both cross-collision orientations;
- factor (2);
- positive shift (h=b-n);
- exact finite base support;
- midpoint factor (mu(x+h)^2);
- sign of the progression sum;
- reciprocal endpoint weight.

Rejected:

- dropping the midpoint square;
- replacing it by its average density;
- inserting absolute values;
- merging the term with four-distinct correlations;
- claiming cancellation from multiplicativity;
- promoting a fixed-shift theorem to this growing weighted family.

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
THREE_POINT_CROSS_COLLISION_ESTIMATE_PROVED
```

No Lean/Lake execution, elaboration, proof-term acceptance, transitive trust audit, independent replay, merge, or RH claim occurred.

## 12. Exact next obstruction

The cross-collision branch has been reduced to

[
2
sum_{1le n<b}
sum_{a<n-(b-n)}
mu(a+1)mu(a+1+b-n)^2mu(a+1+2(b-n)).
]

A useful next structural step is to expand

[
mu(m)^2=sum_{d^2mid m}mu(d)
]

at exact finite scope, if the repository already has or can cleanly introduce that identity. That would turn the squarefree midpoint selector into an explicit divisor/sieving coordinate and reveal whether existing binary two-point correlation machinery can be reused.

Alternatively, the four-distinct branch can advance independently.
