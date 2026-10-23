# Regular Parseval transport to signed residue energy

Issue: #768  
Direct stacked parent: draft PR #766 at `0fa380d95ea1d8325232468ada707c68acb16db2`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
REGULAR_PARSEVAL_TO_RESIDUE_ENERGY_SOURCE_DRAFT
REGULAR_SIGNED_RESIDUE_ENERGY_OPEN
```

## Scope

PR #766 source-scripted the exact unnormalized Parseval identity for the repository's `stdAddChar` Fourier transform.

This increment applies that identity to the four refined signed residue buckets and removes the remaining Fourier normalization from the regular branch.

No estimate of the residue energies is added.

## Four signed residue energies

The source defines

```lean
parityEvenHalfShiftSignedResidueEnergy
parityOddHalfShiftSignedResidueEnergy
```

for endpoint parity `r=0,1`.

Each is the exact quadratic energy

```text
sum_s |C_(r,q)(s)|^2.
```

The source scripts

```lean
evenHalfShiftFullFrequencyEnergy_eq_residue
oddHalfShiftFullFrequencyEnergy_eq_residue
```

so Parseval gives

```text
sum_k |F_(r,q)(k)|^2
=
d^2 * sum_s |C_(r,q)(s)|^2.
```

## Square-root scale and exact cancellation

The source scripts

```lean
sqrt_squareModulus_mul_energy
```

with

```text
sqrt(d^2 * E) = d * sqrt(E).
```

Therefore the four-family full-frequency L2 majorant satisfies

```lean
fullFrequencyL2Majorant_eq_d_mul_residueL2
```

and is exactly

```text
d * (
  sqrt(E_0e) + sqrt(E_0o)
+ sqrt(E_1e) + sqrt(E_1o)
).
```

The prior endpoint surface from PR #756 carries the reciprocal factor `1/d`.
Those factors cancel exactly.

## Final regular residue-energy surface

The source defines

```lean
twoNonunitRegularShiftParityResidueL2Majorant
twoNonunitRegularShiftParityResidueL2EndpointMajorant
```

and scripts

```lean
fullFrequencyL2EndpointMajorant_eq_residueL2.
```

Thus the regular branch has no Fourier normalization, frequency-counting loss, or square-modulus weight left at this stage.

The endpoint obstruction is simply

```text
sum_(effective two-nonunit d)
  [ sqrt(E_0e(b,d)) + sqrt(E_0o(b,d))
  + sqrt(E_1e(b,d)) + sqrt(E_1o(b,d)) ].
```

## Analytic interface

The remaining open proposition is

```lean
DyadicNaturalScaleRegularShiftParityResidueL2Budget.
```

The source scripts exact equivalence with the full-frequency L2 supplier:

```lean
regularFullFrequencyL2Budget_iff_residueL2.
```

The downstream theorem is

```lean
naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regularResidueL2.
```

Hence the conditional path is now

```text
pointwise ordinary Mertens
+ pointwise chi_4 Mertens
+ two-unit supplier
+ signed regular residue L2 supplier
-> #588 natural-scale congruence-L1.
```

## Genuine arithmetic frontier

The next obstruction is now the actual signed residue energy itself.

The source types

```lean
RegularSignedResidueEnergySourceData
RegularSignedResidueEnergySource
RegularSignedResidueEnergyAdapter.
```

Any future large-sieve, dispersion, Chowla, Elliott, or L-function theorem must match the exact signed buckets and natural-scale endpoint aggregation before it can inhabit this interface.

The obstructed positive variance-plus-diagonal representation is not substituted.

## Remaining obligations

Analytic:

```text
REGULAR_SIGNED_RESIDUE_ENERGY
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER
```

Verification:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, signed residue-energy estimate, large-sieve theorem, merge, root admission, GRH theorem, or RH theorem is represented by this note.
