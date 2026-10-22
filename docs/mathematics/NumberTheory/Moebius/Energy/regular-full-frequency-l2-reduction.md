# Regular canonical-frequency L2 to full-frequency L2

Issue: #753  
Direct stacked parent: draft PR #752 at `23db7e74f2c51956ecbeac3b4972bb8ac97f777c`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
REGULAR_FULL_FREQUENCY_L2_REDUCTION_SOURCE_DRAFT
EXACT_STD_ADD_CHAR_PARSEVAL_OPEN
```

## Scope

PR #752 reduced the regular branch to four canonical-frequency L2 norms.
This increment enlarges those energies to the complete frequency group
`ZMod (d*d)` by finite subset monotonicity.

No Parseval identity or residue-energy estimate is claimed.

## Canonical to full frequency

For any complex-valued frequency observable, the source scripts

```lean
sum_sq_regularRepresentatives_le_univ
sqrt_sum_sq_regularRepresentatives_le_univ.
```

Because every summand is a nonnegative norm square,

```text
sum_(k in R_d) |F(k)|^2
<=
sum_(k in ZMod(d^2)) |F(k)|^2.
```

The four-family full-frequency L2 majorant is

```lean
twoNonunitRegularShiftParityFullFrequencyL2Majorant.
```

The termwise comparison is

```lean
regularShiftParityFrequencyL2Majorant_le_fullFrequency.
```

## Endpoint surface

The previous reciprocal-`d` normalization is preserved exactly. The source
defines

```lean
twoNonunitRegularShiftParityFullFrequencyL2EndpointMajorant
```

and scripts

```lean
regularShiftParityFrequencyL2EndpointMajorant_le_fullFrequency.
```

Thus no new scale loss occurs in replacing canonical frequencies by all
frequencies.

## Analytic interface

The new open proposition is

```lean
DyadicNaturalScaleRegularShiftParityFullFrequencyL2Budget.
```

The source scripts

```lean
regularShiftParityFrequencyL2Budget_of_fullFrequency
```

and constructs

```lean
regularFullFrequencyL2ToCanonicalFrequencyL2Adapter.
```

Downstream composition is

```lean
naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regularFullFrequencyL2.
```

Hence

```text
pointwise ordinary Mertens
+ pointwise chi_4 Mertens
+ two-unit supplier
+ full-frequency regular L2 supplier
-> #588 natural-scale congruence-L1.
```

## Exact Parseval boundary

The source defines the literal transform used by this branch:

```lean
stdAddCharResidueFourier
```

with

```text
F(k) = sum_s C(s) * ZMod.stdAddChar(k*s).
```

It then types, but does not inhabit,

```lean
StdAddCharSquareModulusParseval.
```

The required identity is exactly

```text
sum_k |F(k)|^2
=
d^2 * sum_s |C(s)|^2.
```

Mathlib contains finite-character orthogonality, but this increment does not
promote that library theorem to the repository proposition until the precise
`stdAddChar(k*s)`, norm-square, and `d^2` normalization are connected.

The conservative adapter boundary is

```lean
StdAddCharSquareModulusParsevalSourceData
StdAddCharSquareModulusParsevalSource
ToStdAddCharSquareModulusParsevalAdapter
StdAddCharSquareModulusParsevalAdapter.
```

## Remaining obligations

Analytic:

```text
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER
EXACT_STD_ADD_CHAR_PARSEVAL
REGULAR_SIGNED_RESIDUE_ENERGY
```

Verification:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, Parseval theorem,
residue-energy estimate, large-sieve theorem, merge, root admission, GRH
theorem, or RH theorem is represented by this note.
