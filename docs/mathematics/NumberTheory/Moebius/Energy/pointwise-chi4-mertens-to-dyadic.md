# Pointwise chi-four Mertens envelope to dyadic energy

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / POINTWISE_CHI_FOUR_TO_DYADIC_SOURCE_DRAFT / POINTWISE_CHI_FOUR_MERTENS_ENVELOPE_OPEN`

Owner: #731. Direct parent: #698 / draft PR #701.

## Objective

The mod-four branch from PR #701 reduces the exceptional kernel frequency to the standard one-point observable

[
M_{chi_4}(x)=sum_{1le nle x}mu(n)chi_4(n).
]

This increment performs only the scale conversion from a standard pointwise square-root-plus-epsilon hypothesis to the already-defined dyadic energy.

## Pointwise premise

The source defines

```lean
PointwiseChiFourTwistedMertensSquareRootPlusEpsilonEnvelope
```

with content

[
orall arepsilon>0 exists C_arepsilonge0 orall n,qquad
|M_{chi_4}(n)|
le
C_arepsilonsqrt n,n^arepsilon.
]

No value is constructed.

## Explicit loss allocation

For target (delta>0), the source reuses the ordinary-Mertens bookkeeping

[
arepsilon=delta/8
]

through

```lean
pointwiseMertensDyadicEpsilon
pointwiseMertensDyadicExponent
pointwiseMertensDyadicConstantFactor.
```

On (X=2^jle b<2X), the source scripts

```lean
chiFourTwistedMertens_le_dyadicScale
```

with

[
|M_{chi_4}(b)|
le
C_arepsilon,2^{1/2+delta/8}
left(sqrt X,X^{delta/4}ight).
]

The endpoint factor (2^{1/2+delta/8}) is retained in the transported constant.

## Squaring

The previously proved exact scale identity

[
left(sqrt X X^{delta/4}ight)^2
=
X X^{delta/2}
le
X X^delta
]

is reused.

The source scripts

```lean
dyadicChiFourTwistedMertensEnergy_of_pointwise
```

and therefore proves conditionally

[
oxed{
	ext{pointwise }chi_4	ext{-Mertens }x^{1/2+arepsilon}
Longrightarrow
	ext{DyadicChiFourTwistedMertensSquareRootEnergy}.
}
]

The proof-relevant adapter value is

```lean
pointwiseChiFourToDyadicEnergyAdapter.
```

## Downstream composition

The source scripts

```lean
twoKernelTwistedMertensEnergy_of_pointwiseOrdinary_and_pointwiseChiFour

naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regular.
```

Thus the current conditional route is

```text
pointwise ordinary Mertens envelope
+ pointwise chi_4 Mertens envelope
+ two-unit half-index supplier
+ regular-orbit supplier
-> #588 natural-scale congruence-L1 supplier.
```

No premise is inhabited.

## Dirichlet-L boundary

The source types

```lean
PointwiseChiFourDirichletSourceData
PointwiseChiFourDirichletSource
ToPointwiseChiFourMertensEnvelopeAdapter
PointwiseChiFourDirichletAdapter.
```

A future theorem must provide an actual bridge from the reciprocal Dirichlet-(L) object to the exact finite Möbius-(chi_4) partial sums and must achieve square-root-plus-epsilon scale uniformly for all endpoints.

A fixed zero-free half-plane such as (Re s>7/8) is not promoted to this premise.

## Evidence

Established only at source-script level:

```text
SOURCE_DRAFT
POINTWISE_CHI_FOUR_ENVELOPE_TYPED
EXPLICIT_EPSILON_DELTA_ALLOCATION_SCRIPTED
DYADIC_ENDPOINT_TRANSPORT_SCRIPTED
POINTWISE_TO_DYADIC_ADAPTER_SOURCE_CONSTRUCTED
CONDITIONAL_DOWNSTREAM_TRANSPORT_SCRIPTED
```

Not established:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
POINTWISE_ORDINARY_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER
REGULAR_ORBIT_ESTIMATE
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake/native execution, proof-term acceptance, analytic estimate, GRH/RH theorem, merge, or root admission occurred.
