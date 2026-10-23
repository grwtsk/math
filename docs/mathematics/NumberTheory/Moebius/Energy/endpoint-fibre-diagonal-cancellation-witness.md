# Diagonal-cancellation witness for endpoint fibres

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / DIAGONAL_LOWER_BOUND_REFUTED_AT_SCOPE`  
Owner: issue [#522](https://github.com/grwtsk/math/issues/522)  
Direct parent: issue [#512](https://github.com/grwtsk/math/issues/512) / draft PR [#515](https://github.com/grwtsk/math/pull/515)  
Endpoint-fibre parent: issue [#505](https://github.com/grwtsk/math/issues/505) / draft PR [#510](https://github.com/grwtsk/math/pull/510)

This increment tests the proposed use of the nonnegative four-Möbius diagonal as a lower bound for the complete endpoint-fibre quadratic energy.

That proposal is false for the actual Möbius source.

## Exact source binding

Direct parent:

```text
branch: research/rh-four-mobius-collisions-512-20261021
revision: ecb96a26b8d3fa149ee27e4f920dd1e50e1b03c5
tree: fdd027428d32d8935553bdb2a50c303be25a50c7
PR: #515
```

Candidate source:

```text
branch: research/rh-diagonal-cancellation-witness-522-20261021
source commit: 7f33ff534524ce0bf9aa266c2a535b85efc6e03b
source tree: 98cdb43db6968cd628fe485f9ae68178fd7b7ee5
source path:
  GRWTSK/NumberTheory/Moebius/
    EndpointFibreDiagonalCancellationWitness.lean
source blob:
  51148b7b4b771118a69ae457186326455d27aca0
```

## Endpoint witness

Using only the exact values

[
mu(1)=1,qquad mu(2)=-1,qquad mu(3)=-1,
]

the source proves at (b=3)

[
mathcal D(3)=3,qquad
mathcal C(3)=-2,qquad
mathcal H_4(3)=0,
]

and therefore

[
mathcal F(3)=1.
]

So

[
mathcal D(3)
leq mathcal F(3).
]

The source declaration

```lean
endpointFibre_diagonal_not_le_at_three
```

refutes the endpointwise proposal

```lean
EndpointFibreDiagonalLowerBoundProposal.
```

## RH-facing weighted witness

At dyadic scale (j=1), the endpoint range is (b=2,3).

The source proves

[
mathcal D_1=rac53,qquad
mathcal C_1=-rac23,qquad
mathcal H_{4,1}=0,
]

and hence

[
mathcal Q_1=1.
]

Thus

[
rac53
leq1.
]

The declaration

```lean
not_weightedEndpointDiagonalLowerBoundProposal
```

refutes

```lean
WeightedEndpointDiagonalLowerBoundProposal.
```

## Correct disposition

The witness establishes only

```text
REFUTES_AT_SCOPE:
  positive four-Möbius diagonal lower-bounds the complete endpoint-fibre
  quadratic observable.
```

It does not refute:

```text
SubpolynomialDyadicSignedAbelEndpointFibreQuadraticEnergy
the cross-collision route
the four-distinct route
the signed Abel route
RiemannHypothesis.
```

The reason is structural: the diagonal is one positive component of a signed expansion of a square. The remaining terms can and do cancel it.

## Consequence for the route

A squarefree-density lower bound on the diagonal cannot, by itself, obstruct the endpoint-fibre supplier. Any lower-bound argument for the complete nonnegative fibre must act on the original sum of squares or prove quantitative control preventing off-diagonal cancellation.

The next useful analytic split is therefore:
- understand the signed three-distinct cross-collision sum;
- understand the genuinely four-distinct sum;
- or derive a direct lower/upper estimate for the original fibre without treating the expansion diagonal as a monotone subterm.

## Evidence state

Established:

```text
SOURCE_DRAFT
DIAGONAL_LOWER_BOUND_REFUTED_AT_SCOPE
```

Not established:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ENDPOINT_FIBRE_ESTIMATE
CROSS_COLLISION_ESTIMATE
FOUR_DISTINCT_ESTIMATE
```

No Lean/Lake execution, kernel acceptance, analytic estimate, merge, or RH claim occurred.
