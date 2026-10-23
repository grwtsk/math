# Zero/nonzero parity-Fourier split and shared obstruction atlas

Status: `CONNECTIONS_FORMALIZED / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ZERO_MODE_MERTENS_SUPPLIER_OPEN / NONZERO_FREQUENCY_SUPPLIER_OPEN`

Owner: #611. Direct parent: #607 / PR #608.

This increment separates the parity/Fourier quadratic budget into the two mathematically distinct obstructions that had been conflated in a single frequency sum.

## Exact source binding

```text
parent revision:
  62bef837f806e425d2fcbc80ba33718ca6c68a41

candidate branch:
  research/rh-zero-nonzero-fourier-split-611-20261021

split source:
  GRWTSK/NumberTheory/Moebius/
    ParityFourierZeroNonzeroSplit.lean

split source blob:
  7ca9fc590373af970c249f716c6b6ad1fab1e0e6

connection source:
  GRWTSK/NumberTheory/Moebius/
    ParityFourierZeroNonzeroConnections.lean

connection source blob:
  43e55d869a081455f6dadca32181122418999e17
```

## Exact frequency split

For each positive square-modulus parameter (d), the #608 endpoint majorant sums
[
operatorname{Majorant}(b,d,k)
]
over all
[
kinmathbf Z/d^2mathbf Z.
]

The source defines
```lean
nonzeroSquareModulusFrequencySet d
```
as all frequencies except zero.

It then defines
```lean
parityFourierZeroModeEndpointMajorant
parityFourierNonzeroFrequencyEndpointMajorant
```
and scripts the exact finite identity
```lean
parityFourierEndpointMajorant_eq_zero_add_nonzero.
```

Thus:
[
oxed{
operatorname{ParityFourierEndpointMajorant}(b)
=
Z(b)+N(b)
}
]
with (Z) the zero frequency and (N) the genuinely oscillatory frequencies.

No estimate is used.

## Zero frequency = parity Mertens

The source defines
```lean
parityMertensPrefix b r
```
by
[
M_r(b)
=
sum_{substack{1le ule b\uequiv rpmod2}}mu(u),
]
and
```lean
paritySquarefreeDiagonal b r
```
by
[
Q_r(b)
=
sum_{substack{1le ule b\uequiv rpmod2}}mu(u)^2.
]

It scripts
[
S_r(b,d,0)=M_r(b)
]
and
[
D_r(b,d,0)=Q_r(b)
]
for every positive (d).

Therefore the zero-mode quadratic expression is independent of the square modulus.

## Ordinary Mertens consequence

The source defines
```lean
ordinaryMertensPrefix b
```
and scripts
```lean
ordinaryMertensPrefix_eq_even_add_odd.
```

Thus
[
M(b)=M_0(b)+M_1(b).
]

The source defines
```lean
DyadicParityMertensSquareRootEnergy
DyadicOrdinaryMertensSquareRootEnergy
```
and scripts the one-way implication
```lean
ordinaryMertensSquareRootEnergy_of_parity.
```

So any supplier strong enough for the #611 zero mode automatically supplies an RH-scale ordinary-Mertens square-energy statement.

No converse and no RH implication are asserted in this increment.

## Squarefree diagonal is elementary

The source scripts
```lean
paritySquarefreeDiagonal_nonneg
paritySquarefreeDiagonal_le_endpoint.
```

Hence
[
0le Q_r(b)le b.
]

The diagonal itself is not the zero-mode obstruction.

## Reciprocal square-modulus mass

The source defines
```lean
effectiveSquareModulusReciprocalMass b
```
and scripts the elementary uniform bound
[
sum_{substack{d^2<b\dge1}}rac1{d^2}le2.
]

The proof uses the pinned Mathlib inverse-square finite-sum estimate
```lean
sum_Ioc_inv_sq_le_sub.
```

Thus summing the identical zero-mode obstruction over the effective square moduli introduces no scale loss.

## Conditional positive reduction for the zero mode

The source scripts
```lean
zeroModeParityFourierBudget_of_parityMertensSquareRootEnergy.
```

Therefore:
[
oxed{
	ext{Dyadic parity-Mertens square-root energy}
Longrightarrow
	ext{zero-mode parity-Fourier natural-scale budget}.
}
]

This is a genuine conditional theorem layer, not merely a typed analogy.

The parity-Mertens square-root hypothesis itself remains open.

## Nonzero-frequency supplier

The source defines the separate proposition
```lean
DyadicNaturalScaleNonzeroParityFourierBudget.
```

This contains only (k
e0) frequencies. It is therefore the correct target for:
- local Fourier/Gowers methods;
- square-modulus large sieve;
- Bombieri--Vinogradov/dispersion;
- nilsequence/structured-phase estimates;
- conductor-uniform L-function input after additive-twist transport;
- function-field analogues after integer transport.

None is required to solve the zero frequency implicitly.

## Recombination

The source scripts
```lean
parityFourierQuadraticBudget_of_zero_and_nonzero
naturalScaleCongruenceL1_of_zero_and_nonzero
naturalScaleCongruenceL1_of_parityMertens_and_nonzero.
```

Hence
[
oxed{
	ext{parity-Mertens zero-mode supplier}
+
	ext{nonzero Fourier supplier}
Longrightarrow
	ext{#588 natural-scale congruence-L1 supplier}.
}
]

## Formalized shared obstruction: #151 / #153

The connection module defines
```lean
MertensSquareRootEnvelopeData
HalfDampingMertensData
```
and proof-producing adapter types into
```lean
DyadicParityMertensSquareRootEnergy.
```

This formalizes the connection to the literal Mertens observable of #151 and the square-root/logarithmic half-damping supplier of #153.

The required additional bridge is parity localization. An ordinary Mertens envelope is not silently promoted to separate even/odd prefix estimates.

No #153 adapter value is constructed.

## Formalized shared obstruction: #154 power envelopes

The connection module defines
```lean
MertensPowerEnvelopeData.
```

The field
```text
squareRootPlusEpsilonFamily
```
is explicit.

Therefore the broader #154 condition (eta<5/6) is not treated as sufficient for the #611 zero mode. Only a family reaching the square-root-plus-epsilon scale could feed this branch.

No such source value is asserted.

## Formalized shared obstruction: Weak Mertens

The connection module defines
```lean
WeakMertensQuadraticData.
```

It requires:
```text
quadratic Mertens control
+ normalization match
+ localization to parity prefixes
+ pointwise/dyadic energy upgrade.
```

Thus a global or integrated Weak-Mertens-type statement does not automatically become the exact parity zero-mode supplier.

## Formalized shared obstruction: Gonek--Hejhal

The connection module defines
```lean
GonekHejhalMertensData.
```

It requires:
```text
negative derivative moment input
+ explicit-formula/Mertens bridge
+ parity localization
+ dyadic square-energy comparison.
```

This preserves the spectral/localization gap already recognized in #477 and #609.

## Formalized shared obstruction: #609 boundary Mertens energies

The connection module defines
```lean
BoundaryMertensSquareEnergyData.
```

The source profile retains:
- moving-window square energy;
- tail square energy;
- the ordinary-Mertens difference identity;
- a separate boundary-to-parity-zero-mode comparison.

Therefore #609 and #611 are now formally recognized as sharing a Mertens-square-energy obstruction, but neither is reported as supplying the other.

## Formalized nonzero connection: local Fourier/Gowers

The connection module defines
```lean
LocalFourierGowersNonzeroData.
```

Required fields include:
- nonzero linear phases;
- square-modulus denominators;
- frequency uniformity;
- endpoint range;
- averaged/every-endpoint coverage;
- parity restriction;
- quadratic mean-square conversion.

This is the exact source family for local Fourier/Gowers results such as the Matomäki--Radziwiłł--Tao--Teräväinen--Ziegler program, but no named adapter is constructed.

## Formalized nonzero connection: square-modulus large sieve

The source defines
```lean
SquareModulusLargeSieveData.
```

This is the most literal match to the (d^2)-modulus / nonzero-frequency aggregation.

Required fields include:
- exact coefficient family;
- exact square moduli;
- every nonzero frequency or a proved matching average;
- modulus and endpoint ranges;
- parity split;
- an explicit loss calculation fitting the natural-scale budget.

A large-sieve theorem with a larger scale loss does not automatically inhabit the target.

## Formalized nonzero connection: Bombieri--Vinogradov

The source defines
```lean
BombieriVinogradovNonzeroData.
```

It requires explicit bridges from:
```text
one-point multiplicative distribution in progressions
-> additive-frequency representation
-> parity quadratic budget
-> natural-scale loss.
```

This records the common modulus-averaging geometry without conflating the actual arithmetic objects.

## Formalized nonzero connection: nilsequence/Sarnak

The source defines
```lean
NilsequenceNonzeroData.
```

Even strong one-point Möbius orthogonality to structured phases still requires:
- denominator/frequency uniformity;
- the exact parity restriction;
- mean-square aggregation.

This connects directly to the adapter discipline of #444.

## Formalized nonzero connection: L-function restriction

The source defines
```lean
LFunctionRestrictionNonzeroData.
```

A conductor-uniform zero-free or analytic-restriction theorem must additionally supply:
```text
one-point Möbius twist consequence
+ additive-character transport
+ nonzero-frequency mean-square bridge
+ square-modulus range match.
```

Thus #500 / Result 003-type analytic restriction is formally relevant only through these explicit missing fields.

It is not promoted directly to the nonzero Fourier budget.

## Formalized nonzero connection: function-field Chowla/AP

The source defines
```lean
FunctionFieldNonzeroData.
```

The integer transport theorem remains an explicit field. No analogy with the Sawin--Shusterman function-field theorem creates an integer proof edge.

## Hostile boundaries

The source additionally defines:
```lean
OrdinaryToParityMertensAdapter
PointwiseToMeanSquareFourierAdapter
AveragedToRequiredEndpointBudgetAdapter
OrdinaryMertensToRHAdapter.
```

No values are constructed.

These types prevent:
```text
ordinary Mertens -> parity Mertens
pointwise Fourier -> required mean square
averaged endpoint control -> exact required endpoint budget
Mertens square-root statement -> RH
```
from being inferred by naming alone.

## Evidence

Established:
```text
SOURCE_DRAFT
EXACT_ZERO_NONZERO_FREQUENCY_SPLIT_SCRIPTED
ZERO_MODE_IDENTIFIED_WITH_PARITY_MERTENS
PARITY_MERTENS_IMPLIES_ORDINARY_MERTENS_ENERGY_SCRIPTED
ZERO_MODE_CONDITIONAL_REDUCTION_SCRIPTED
CONNECTION_ATLAS_SOURCE_DRAFT
```

Not established:
```text
LEAN_ELABORATION
KERNEL_ACCEPTANCE
PARITY_MERTENS_SQUARE_ROOT_ENERGY
NONZERO_FREQUENCY_BUDGET
ANY_NAMED_MERTENS_ADAPTER
ANY_NAMED_FOURIER_OR_LARGE_SIEVE_ADAPTER
ANY_MERTENS_TO_RH_ADAPTER
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake execution, proof-term acceptance, analytic estimate, external theorem import, merge, or RH claim occurred.
