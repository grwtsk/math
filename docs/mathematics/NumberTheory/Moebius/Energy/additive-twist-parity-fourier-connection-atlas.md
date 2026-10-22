# Parity/Fourier factorization and additive-twist connection atlas

Status: `LITERATURE_REVIEWED / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / PARITY_FOURIER_FACTORIZATION_SOURCE_DRAFT / ONE_POINT_FOURIER_ESTIMATE_OPEN`

Owner: #607. Direct parent: #598 / PR #602.

This increment does two things:

1. reindexes the exact additive-twisted binary Möbius correlation into equal-parity endpoint pairs and factors it into one-point Möbius Fourier squares minus explicit diagonal terms;
2. types the full connection atlas to neighboring Chowla, Fourier/Gowers, nilsequence, Bombieri--Vinogradov, function-field, L-function, and residue/Fourier programs.

No external analytic theorem is imported as a local proof.

## Exact source binding

```text
parent revision:
  7e96cdce562cbd82c9d10b3c2ddfeb81a3c19ee5

candidate branch:
  research/rh-parity-midpoint-factorization-607-20261021

factorization source:
  GRWTSK/NumberTheory/Moebius/
    AdditiveTwistParityFourierFactorization.lean

factorization source blob:
  9633aeec04aa09b1bb685450589212e32de6334b

connection atlas source:
  GRWTSK/NumberTheory/Moebius/
    AdditiveTwistConnectionAtlas.lean

connection atlas source blob:
  36b166d6741e84e44f52fc3ada365cbdfed71c3d
```

## Exact support reindex

The additive twist from PR #602 is
[
T_{b,d,k}
=
sum_{1le n<b}
sum_{a<n-(b-n)}
e_{d^2}!left(k(a+1+b-n)ight)
mu(a+1)mu(a+1+2(b-n)).
]

Set
[
h=b-n,qquad
u=a+1,qquad
v=a+1+2h.
]

The source scripts an exact finite reindex to
[
1le u<vle b,qquad uequiv vpmod2.
]

The midpoint is
[
rac{u+v}{2}=u+h.
]

The theorem is
```lean
additiveTwistedEndpointCrossCorrelation_eq_endpointPairs.
```

## Parity factorization

For one parity (rin{0,1}), write
[
u=2p+r,qquad v=2q+r.
]

Then
[
rac{u+v}{2}=p+q+r
]
and therefore
[
e_{d^2}!left(krac{u+v}{2}ight)
=
e_{d^2}(kr)e_{d^2}(kp)e_{d^2}(kq).
]

Define
[
S_r(b,d,k)
=
sum_{substack{1le ule b\uequiv r;(2)}}
mu(u)e_{d^2}!left(klfloor u/2flooright)
]
and
[
D_r(b,d,k)
=
sum_{substack{1le ule b\uequiv r;(2)}}
left(
mu(u)e_{d^2}!left(klfloor u/2flooright)
ight)^2.
]

The source scripts
[
2,T_{b,d,k}
=
igl(S_0^2-D_0igr)
+
e_{d^2}(k)igl(S_1^2-D_1igr).
]

The load-bearing theorem is
```lean
two_mul_additiveTwistedEndpointCrossCorrelation_eq_parityFourier.
```

This is an exact finite identity, not an estimate.

## New analytic target

The source defines a pointwise majorant
```lean
parityFourierQuadraticMajorant
```
and its endpoint aggregate
```lean
parityFourierEndpointMajorant.
```

The all-scale supplier is
```lean
DyadicNaturalScaleParityFourierQuadraticBudget.
```

The source scripts
```lean
naturalScaleSquareModulusCongruenceL1_of_parityFourierQuadraticBudget.
```

Thus the remaining lower-order collision problem can be supplied by a natural-scale aggregate estimate involving only:
- one-point Möbius exponential sums (S_r);
- explicit diagonal corrections (D_r);
- the already-exact square-modulus/additive Fourier averaging.

## Connection atlas

The source file
```text
AdditiveTwistConnectionAtlas.lean
```
defines one generic proof-producing adapter
```lean
ToParityFourierQuadraticBudgetAdapter source
```
and generic transports from any actual adapter to:
```text
DyadicNaturalScaleSquareModulusCongruenceL1
SubpolynomialWeightedMertensEndpointCrossCongruenceL1
SubpolynomialWeightedMertensEndpointCongruenceCrossCollision.
```

No named source receives an adapter value.

## One-point Möbius Fourier uniformity

Typed source:
```lean
OnePointMobiusFourierData
OnePointMobiusFourierSource
OnePointMobiusFourierAdapter
```

Required upgrades remain explicit:
- frequency uniformity;
- denominator uniformity;
- parity restriction;
- dyadic endpoint uniformity;
- quantitative rate;
- square-minus-diagonal aggregation.

This is the source family most directly suggested by the new factorization.

## Local Fourier / local-Gowers uniformity

Typed source:
```lean
LocalFourierGowersData
LocalFourierGowersSource
LocalFourierGowersAdapter
```

Relevant literature:
- K. Matomäki, M. Radziwiłł, T. Tao, J. Teräväinen, T. Ziegler,
  *Higher uniformity of bounded multiplicative functions in short intervals on average*,
  Annals of Mathematics 197 (2023), 739--857.
  https://annals.math.princeton.edu/2023/197-2/p03

Their polynomial-phase and averaged-Chowla results are structurally relevant.
The atlas does not promote averaged short-interval control to the every-endpoint natural-scale budget without the explicitly typed coverage bridge.

## Möbius--nilsequence orthogonality

Typed source:
```lean
MobiusNilsequenceData
MobiusNilsequenceSource
MobiusNilsequenceAdapter
```

Relevant literature:
- B. Green, T. Tao,
  *The Möbius function is strongly orthogonal to nilsequences*,
  Annals of Mathematics 175 (2012), 541--566.
  https://annals.math.princeton.edu/2012/175-2/p03

Linear additive characters are structured one-point phases, but the atlas keeps the one-point-to-quadratic parity upgrade separate.

## Ordinary binary Chowla / corrected Elliott

Typed source:
```lean
FixedFormChowlaParityFourierData
FixedFormChowlaParityFourierSource
FixedFormChowlaParityFourierAdapter

CorrectedElliottParityFourierData
CorrectedElliottParityFourierSource
CorrectedElliottParityFourierAdapter
```

Relevant recent source:
- OpenAI Math Result 007,
  *Ordinary two-point correlations and the corrected Elliott conjecture*,
  September 24, 2026.
  https://math20.org/f/007/

The source reports ordinary two-point Chowla for every fixed pair of nonproportional affine forms with a power-of-log saving, and corrected Elliott cancellation under uniform nonpretentiousness.

The atlas retains as separate obligations:
- additive-phase compatibility;
- growing-shift uniformity;
- growing square-modulus/frequency uniformity;
- one constant on the full dyadic family.

## Logarithmically averaged binary Chowla

Typed source:
```lean
LogAveragedBinaryChowlaData
LogAveragedBinaryChowlaSource
LogAveragedBinaryChowlaAdapter
```

Relevant source:
- T. Tao,
  *The logarithmically averaged Chowla and Elliott conjectures for two-point correlations*,
  2015.
  https://arxiv.org/abs/1509.05422

The atlas explicitly requires a logarithmic-to-ordinary averaging bridge and growing-family/additive-phase uniformity.

## Bombieri--Vinogradov / dispersion for multiplicative functions

Typed source:
```lean
BombieriVinogradovMultiplicativeData
BombieriVinogradovMultiplicativeSource
BombieriVinogradovMultiplicativeAdapter
```

Relevant source:
- A. Granville, X. Shao,
  *Bombieri--Vinogradov for multiplicative functions, and beyond the x^(1/2)-barrier*,
  Advances in Mathematics 350 (2019), 304--358.
  https://www.sciencedirect.com/science/article/pii/S0001870819302245

This shares the aggregate-over-moduli geometry of the repository target.
The atlas keeps the one-point multiplicative scope distinct from the quadratic parity budget and requires explicit square-modulus and endpoint-normalization bridges.

## Function-field Chowla/AP analogue

Typed source:
```lean
FunctionFieldChowlaAPData
FunctionFieldChowlaAPSource
FunctionFieldChowlaAPAdapter
```

Relevant source:
- W. Sawin, M. Shusterman,
  *On the Chowla and twin primes conjectures over F_q[T]*,
  Annals of Mathematics 196 (2022), 457--506.
  https://annals.math.princeton.edu/2022/196-2/p01

Their result combines high arithmetic-progression distribution with large shift uniformity in the function-field setting.

The atlas makes
```text
integerTransportTheorem
```
a required proposition field. No function-field-to-integer theorem is inferred.

## Uniform L-function analytic restriction

Typed source:
```lean
LFunctionRestrictionParityFourierData
LFunctionRestrictionParityFourierSource
LFunctionRestrictionParityFourierAdapter
```

Relevant recent source:
- OpenAI Math Result 003,
  *The quasi-Riemann hypothesis*,
  September 30, 2026.
  https://math20.org/f/003/

The source reports a uniform zero-free half-plane (Re s>7/8) for all Dirichlet L-functions and selected finite-order Hecke L-functions.

The atlas requires separately:
- a one-point Möbius-twist consequence;
- additive-character transport;
- a two-point/quadratic upgrade;
- diagonal control;
- endpoint aggregation.

A zero-free region alone does not inhabit the parity/Fourier budget.

## Squarefree diagonal

Typed source:
```lean
SquarefreeDiagonalFourierData
SquarefreeDiagonalFourierSource

OnePointAndDiagonalToParityBudgetAdapter
```

The factorization exposes the diagonal as a separate analytic object. A one-point Möbius Fourier theorem is not enough unless the explicit (mu^2) diagonal is also controlled or canceled at the required scale.

## Exact residue/Fourier architectures

Typed source:
```lean
ExactResidueFourierArchitecture
ResidueFourierArchitectureAdapter
```

This is the repository interface for exact finite residue/Fourier work such as the Goldbach rational-arc residue models in #372.

The common architecture is:
```text
exact residue decomposition
-> exact Fourier reconstruction
-> signed residual separation
-> separate analytic estimate.
```

Shared architecture does not transport prime-weight theorems into Möbius correlation theorems.

## Hostile boundaries

The atlas explicitly types:
```lean
FixedVsGrowingFourierBoundary
AverageToEveryEndpointAdapter
OnePointToQuadraticParityAdapter
FunctionFieldToIntegerAdapter
```

These prevent:
```text
fixed-data -> growing family
average/almost-all -> every endpoint
one-point orthogonality -> quadratic parity budget
function field -> integer
```
without a theorem.

## Evidence

Established:
```text
LITERATURE_REVIEWED
SOURCE_DRAFT
PARITY_FOURIER_FACTORIZATION_SOURCE_DRAFT
CONNECTION_ATLAS_SOURCE_DRAFT
```

Not established:
```text
LEAN_ELABORATION
KERNEL_ACCEPTANCE
ANY_NAMED_LITERATURE_ADAPTER
ONE_POINT_FOURIER_ESTIMATE
SQUAREFREE_DIAGONAL_ESTIMATE
PARITY_FOURIER_QUADRATIC_BUDGET
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake execution, proof-term acceptance, analytic estimate, merge, or RH claim occurred.
