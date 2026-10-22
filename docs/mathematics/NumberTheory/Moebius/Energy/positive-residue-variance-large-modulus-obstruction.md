# Large-square-modulus obstruction to the positive residue-variance supplier

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / LARGE_MODULUS_VARIANCE_FLOOR_SOURCE_DRAFT / SQUAREFREE_DENSITY_IMPORT_OPEN / SIGNED_SQUARE_DIAGONAL_REPAIR_OPEN`

Owner: #623. Direct parent: #621 / PR #622. Exact signed parent: #607 / PR #608. Natural-scale consumer: #586 / PR #588.

This increment records a structural obstruction in the positive residue-variance-plus-diagonal majorant introduced by PR #622.

It does **not** refute finite Parseval, the exact residue-bucket decomposition, a square-modulus large-sieve theorem at its natural scale, or a future theorem controlling the signed expression `S_r^2-D_r`.

## Exact source binding

```text
parent branch:
  research/rh-parity-residue-variance-621-20261021

parent revision:
  8013bee4611ee6545a5b8ae470a90e36395abb41

parent tree:
  5325f6ab5c0812fc3a57714841769414312de659

candidate branch:
  research/rh-residue-variance-obstruction-623-20261021

finite obstruction source commit:
  0395cbffb536c663c8ce9dfecbd8bd5391494da8

finite obstruction source tree:
  9875e195ef83ae76f5616c292fc84d2a578c6bda

finite obstruction source:
  GRWTSK/NumberTheory/Moebius/
    ParityResidueVarianceLargeModulusObstruction.lean

finite obstruction source blob:
  00d6320a9344a38e20afdb83d460da0707ea5c98

connection atlas source commit:
  31f6781eb3b65daa8290a5c0b630ba423685fbd9

connection atlas source tree:
  a1dd0258f255b2a0d4b203eec6cf5ed3e5714fb0

connection atlas source:
  GRWTSK/NumberTheory/Moebius/
    ParityResidueVarianceObstructionConnections.lean

connection atlas source blob:
  64c5fb2fb9a9fde9d4281b1b493829120ae3213c
```

## Positive observable under review

PR #622 defines, for parity `r`, square-modulus parameter `d`, endpoint `b`, and residue bucket

\[
A_r(b,d,a)
=
\sum_{\substack{1\le u\le b\\
u\equiv r\pmod2\\
\lfloor u/2\rfloor\equiv a\pmod{d^2}}}
\mu(u),
\]

the variance

\[
V_r(b,d)
=
\sum_{a\bmod d^2}|A_r(b,d,a)|^2
-
\frac{M_r(b)^2}{d^2},
\]

and the positive majorant

\[
\frac12
\left(
V_0+V_1+L^{\mathrm{diag}}_0+L^{\mathrm{diag}}_1
\right).
\]

The exact Parseval identity

\[
\frac1{d^2}
\sum_{k\ne0}|S_r(b,d,k)|^2
=
V_r(b,d)
\]

remains valid.

The obstruction concerns the subsequent demand that the sum of these nonnegative quantities over **all** `d^2<b` be bounded by `b^(1+o(1))`.

## Total squarefree mass

The source defines

```lean
squarefreeMobiusMass b
```

by

\[
Q(b)=\sum_{1\le u\le b}\mu(u)^2.
\]

It scripts

```lean
squarefreeMobiusMass_eq_parityDiagonals
```

with

\[
Q(b)=Q_0(b)+Q_1(b),
\]

where `Q_r` is the parity squarefree diagonal.

The source also scripts

```lean
abs_moebiusReal_eq_sq
abs_parityMertensPrefix_le_squarefreeDiagonal
parityMertensSquares_le_squarefreeMobiusMass_sq.
```

Thus

\[
M_0(b)^2+M_1(b)^2\le Q(b)^2.
\]

## Singleton residue fibres at large square moduli

If

\[
\frac b2<d^2,
\]

then every parity-supported integer satisfies

\[
0\le\left\lfloor\frac u2\right\rfloor<d^2.
\]

Hence reduction modulo `d^2` is injective on each parity support.

The source scripts

```lean
parityHalfResidue_injective_of_half_lt_square
```

and the generic finite singleton-fibre identity

```lean
sum_sq_indicatorFibres_eq_of_injOn.
```

Consequently

```lean
parityMertensResidueEnergy_eq_squarefreeDiagonal_of_half_lt_square
```

has mathematical content

\[
E_r(b,d)=Q_r(b)
\qquad
\left(\frac b2<d^2\right).
\]

This is the source of the large-modulus floor: the positive residue energy does not become small merely because the modulus is large. It becomes the full squarefree mass.

## Explicit squarefree-mass input

The source defines

```lean
QuarterThreeQuarterSquarefreeMass b
```

as the explicit pair of inequalities

\[
\frac b4\le Q(b)\le\frac{3b}{4}.
\]

No density theorem is imported or inferred in this increment.

The source types the eventual form separately as

```lean
EventuallyQuarterThreeQuarterSquarefreeMass.
```

This is the arithmetic input to be supplied by a standard squarefree-density theorem or a local proof.

## Per-modulus variance floor

Assume

\[
\frac b2<d^2,
\qquad
\frac{4b}{5}\le d^2,
\qquad
\frac b4\le Q(b)\le\frac{3b}{4}.
\]

Then

\[
V_0(b,d)+V_1(b,d)
=
Q(b)-\frac{M_0(b)^2+M_1(b)^2}{d^2}.
\]

The source scripts

```lean
parityResidueVarianceSum_ge_endpoint_div_64
```

with conclusion

\[
V_0(b,d)+V_1(b,d)\ge\frac b{64}.
\]

Since the two squarefree-diagonal Fourier-L1 terms are nonnegative,

```lean
parityResidueVarianceDiagonalModulusMajorant_ge_endpoint_div_128
```

gives

\[
\operatorname{Majorant}(b,d)
\ge
\frac b{128}.
\]

No analytic cancellation theorem is used.

## A positive proportion of square moduli

For endpoint

\[
b=m^2,
\]

the source defines

```lean
largeSquareModulusWindow m
```

by

\[
\frac{9m}{10}<d<m.
\]

It scripts:

```lean
largeSquareModulusWindow_subset_effective
largeSquareModulusWindow_scale
card_largeSquareModulusWindow_ge.
```

For `m>=20`, every modulus in this window satisfies

\[
\frac{m^2}{2}<d^2,
\qquad
\frac{4m^2}{5}\le d^2<m^2,
\]

and the window contains at least

\[
\frac m{20}
\]

integers.

## Cubic finite lower bound

The source scripts

```lean
parityResidueVarianceDiagonalEndpointMajorant_ge_window
```

and then

```lean
parityResidueVarianceDiagonalEndpointMajorant_ge_cubic.
```

Under the explicit squarefree-mass window at `m^2`, the conclusion is

\[
\boxed{
\operatorname{EndpointMajorant}(m^2)
\ge
\frac{m^3}{2560}
}.
\]

Since `b=m^2`, this is a `b^(3/2)` lower bound for the positive majorant along square endpoints.

## Conditional natural-scale refutation

The parent supplier asks, for every `delta>0`, for a constant `C_delta` with

\[
\operatorname{EndpointMajorant}(b)
\le
C_\delta X X^\delta
\qquad
(X\le b<2X).
\]

The source separately types the elementary growth input

```lean
DyadicQuarterPowerOutgrowth.
```

It then scripts

```lean
not_dyadicNaturalScaleParityResidueVarianceDiagonalBudget
```

with assumptions

```text
EventuallyQuarterThreeQuarterSquarefreeMass
DyadicQuarterPowerOutgrowth.
```

The contradiction is taken at

\[
\delta=\frac14.
\]

The named conditional disposition is

```lean
PositiveResidueVarianceNaturalScaleRefutedAtScope
```

and the source scripts

```lean
positiveResidueVarianceNaturalScaleRefutedAtScope.
```

The squarefree-density and dyadic-growth witnesses are not constructed in this increment. Therefore the evidence state is a conditional source-level obstruction, not an unconditional local theorem.

## What failed

The exact identity from PR #608 is

\[
2T_{b,d,k}
=
(S_0^2-D_0)
+
e_{d^2}(k)(S_1^2-D_1).
\]

PR #622 used

\[
|S_r^2-D_r|
\le
|S_r|^2+|D_r|.
\]

The large-modulus witness shows that the two positive pieces have unavoidable macroscopic mass. The estimate destroys precisely the square-versus-diagonal cancellation needed at the requested scale.

The replacement boundary is therefore

```lean
SignedSquareDiagonalCancellationRepair source
```

with substantive field

```text
source -> DyadicNaturalScaleNonzeroParityFourierBudget.
```

No value is constructed.

## Connection atlas

The companion source defines

```lean
ResidueVarianceObstructionConnections.
```

Its generic proof-producing target is

```lean
ToSignedSquareDiagonalBudgetAdapter source.
```

A valid source must reach the exact nonzero-frequency budget rather than only a positive variance norm.

### Square-modulus large sieve

Typed source:

```lean
SquareModulusLargeSieveObstructionData
SquareModulusLargeSieveObstructionSource
SquareModulusLargeSieveSignedAdapter.
```

The natural large-sieve scale and any positive energy main term are retained. A large-sieve theorem does not solve the RH-E02 target unless it also supplies a signed square-diagonal cancellation bridge.

### Barban--Davenport--Halberstam / Montgomery--Hooley variance

Typed source:

```lean
BarbanDavenportHalberstamData
BarbanDavenportHalberstamSource
BarbanDavenportHalberstamSignedAdapter.
```

A positive variance asymptotic is relevant evidence for the obstruction. It does not become a signed cancellation theorem by naming alone.

### Bombieri--Vinogradov / Elliott--Halberstam

Typed source:

```lean
BombieriVinogradovElliottHalberstamData
BombieriVinogradovElliottHalberstamSource
BombieriVinogradovElliottHalberstamSignedAdapter.
```

The source retains the square-modulus subfamily, parity restriction, endpoint aggregation, and discrepancy-to-signed-expression bridges as separate obligations.

### Squarefree numbers in arithmetic progressions

Typed source:

```lean
SquarefreeArithmeticProgressionVarianceData
SquarefreeArithmeticProgressionVarianceSource
SquarefreeArithmeticProgressionSignedAdapter.
```

A squarefree variance theorem controls the `mu^2` branch at its natural positive scale. It still needs an explicit Fourier-L1 and signed cancellation bridge before it can repair `S_r^2-D_r`.

### Local Fourier / Gowers

Typed source:

```lean
LocalFourierGowersSignedData
LocalFourierGowersSignedSource
LocalFourierGowersSignedAdapter.
```

This source family is aimed directly at the exact signed quadratic expression and is therefore structurally closer to the surviving frontier than a positive residue variance.

### L-function restriction

Typed source:

```lean
LFunctionSignedDispersionData
LFunctionSignedDispersionSource
LFunctionSignedDispersionAdapter.
```

Conductor uniformity and zero-free information remain upstream. The one-point twist, additive-character, mean-square/dispersion, and signed square-diagonal bridges remain explicit.

### Function-field analogue

Typed source:

```lean
FunctionFieldSignedDispersionData
FunctionFieldSignedDispersionSource
FunctionFieldSignedDispersionAdapter.
```

The integer transport theorem remains a required field.

### Goldbach exact residue/Fourier architecture

Typed source:

```lean
ExactResidueFourierArchitectureData
ExactResidueFourierToSignedAdapter.
```

The shared architecture is

```text
exact residue partition
-> exact Fourier reconstruction
-> signed residual boundary
-> separate analytic estimate.
```

The prime-weight arithmetic source from PR #372 is not transported to the Möbius source without an explicit arithmetic adapter.

## Hostile boundaries

The connection atlas additionally defines

```lean
PositiveVarianceToSignedCancellationAdapter
NaturalVarianceScaleToRHScaleAdapter
DiagonalToSignedDifferenceAdapter.
```

These prevent:

```text
positive variance -> signed cancellation
natural large-sieve/BDH scale -> RH-E02 natural scale
diagonal estimate -> control of S_r^2-D_r
```

from being inferred implicitly.

## Evidence

Established at source-script level:

```text
SOURCE_DRAFT
SINGLETON_LARGE_MODULUS_FIBRES_SCRIPTED
PER_MODULUS_VARIANCE_FLOOR_SCRIPTED
LARGE_MODULUS_WINDOW_COUNT_SCRIPTED
CUBIC_ENDPOINT_LOWER_BOUND_SCRIPTED
CONDITIONAL_NATURAL_SCALE_REFUTATION_SCRIPTED
CONNECTION_ATLAS_SOURCE_DRAFT
```

Not established:

```text
SQUAREFREE_DENSITY_SOURCE_VALUE
DYADIC_QUARTER_POWER_GROWTH_SOURCE_VALUE
UNCONDITIONAL_REFUTATION
SIGNED_SQUARE_DIAGONAL_CANCELLATION_REPAIR
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
RIEMANN_HYPOTHESIS
```

No Lean/Lake execution, proof-term acceptance, squarefree-density import, analytic cancellation estimate, merge, or RH claim occurred.
