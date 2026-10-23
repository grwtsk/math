# Centered winding as square-modulus residue dispersion

Issue: #835  
Direct stacked parent: draft PR #828 at `489e15ad05c23800b447f4149c8f00da57eb5661`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
CENTERED_WINDING_RESIDUE_DISPERSION_SOURCE_DRAFT
CENTERED_WINDING_DISPERSION_ESTIMATE_OPEN
```

## Scope

PR #828 proved that the total nonzero winding multiplicity over all effective square moduli is at most linear in the endpoint:

```text
sum_d 2*floor(b/d^2) <= 4*b.
```

That result exhausts the multiplicity bookkeeping. It does not estimate the signed Möbius correlation attached to those winding classes.

This increment identifies that remaining signed correlation with an exact square-modulus residue dispersion.

No cancellation estimate is added.

## Signed residue fibers

Fix:

- endpoint `b`;
- square modulus `d^2` with `d>0`;
- endpoint parity `r`;
- a finite half-shift family `H`.

For one half-index point `(m,h)`, the center is

```text
c = 2*m+h
```

and its signed binary Möbius coefficient is

```text
mu(2*m+r) * mu(2*m+r+2*h).
```

The source defines

```lean
parityHalfIndexCenteredResidueFiber
```

with exact content

```text
F(a)
=
sum_(h in H)
sum_(m in exact half-index support)
  1_(2*m+h = a mod d^2)
  mu(2*m+r) mu(2*m+r+2*h).
```

The square mass is

```lean
parityHalfIndexCenteredResidueSquareMass
```

and equals

```text
4 * sum_(a mod d^2) F(a)^2.
```

## Full congruence surface

The source defines

```lean
parityHalfIndexCenteredSignedQuarticCongruence
```

by summing the signed quartic coefficient over every pair whose centers satisfy

```text
2*m+h = 2*n+g  (mod d^2).
```

The generic finite expansion

```lean
centeredResidueFiberSquareExpansion
```

and its quartic form

```lean
parityHalfIndexCenteredResidueSquareMass_eq_congruence
```

script the identity

```text
4 * sum_(a mod d^2) F(a)^2
=
full signed congruence surface.
```

No positivity is inferred for the individual off-diagonal terms. Positivity belongs only to the complete residue-square mass.

## Zero and nonzero winding split

Congruent centers have exactly two mutually exclusive cases:

```text
2*m+h = 2*n+g
```

or

```text
2*m+h != 2*n+g.
```

The source scripts this split as

```lean
parityHalfIndexCenteredSignedQuarticCongruence_eq_zero_add_wrap.
```

The equal-center part is the existing zero-winding quartic surface. The prior fiber-square theorem identifies it with

```lean
parityHalfIndexZeroWindingFiberEnergy.
```

The unequal-center part is exactly

```lean
parityHalfIndexSignedQuarticWrap.
```

Therefore the load-bearing theorem

```lean
parityHalfIndexCenteredResidueSquareMass_eq_zeroEnergy_add_wrap
```

has exact content

```text
4 * sum_(a mod d^2) F(a)^2
=
zero-winding fiber energy
+
nonzero-winding wrap correlation.
```

## Dispersion normal form

The source defines

```lean
parityCenteredWindingResidueDispersion
```

as

```text
4 * sum_(a mod d^2) F(a)^2
-
zero-winding fiber energy.
```

It then scripts

```lean
parityCenteredWindingResidueDispersion_eq_wrap
parityCenteredWindingResidueDispersion_eq_centeredWrap.
```

Thus the remaining nonzero-winding term is exactly the excess square-modulus residue mass over the equal-center second moment.

In centered arithmetic coordinates the quartic coefficient remains

```text
mu(c1-h+r) mu(c1+h+r)
mu(c2-g+r) mu(c2+g+r),
```

with

```text
c2-c1 = z*d^2,
z != 0.
```

The residue-dispersion identity changes the organization of the correlation; it does not supply cancellation.

## Four-family and endpoint aggregate

The exact four parity/shift families at one modulus are collected by

```lean
regularCenteredWindingResidueDispersionAtModulus.
```

This is the sum of the absolute dispersions for

```text
r=0, even half-shifts
r=0, odd half-shifts
r=1, even half-shifts
r=1, odd half-shifts.
```

The centered-wrap equality is

```lean
regularCenteredWindingResidueDispersionAtModulus_eq_centeredWrap.
```

The effective square-modulus endpoint aggregate is

```lean
regularCenteredWindingResidueDispersionEndpoint.
```

The remaining analytic statement is parameterized without asserting a bound:

```lean
RegularCenteredWindingResidueDispersionEnvelope E
```

means

```text
for every endpoint b,
regularCenteredWindingResidueDispersionEndpoint b <= E(b).
```

The exact envelope required by the consuming regular-orbit energy theorem remains to be supplied and proved.

## Consequence

The remaining obstruction is no longer an unnamed centered wrap estimate. It is an explicit dispersion problem for signed symmetric Möbius-pair masses in residue classes modulo square moduli.

The combinatorial result from PR #828 and the present identity separate two costs:

```text
winding multiplicity: at most linear in b;
correlation cancellation: entirely inside the residue-dispersion envelope.
```

No logarithmic loss is introduced by the multiplicity layer itself.

## Source profile

The conservative interface is

```lean
RegularCenteredWindingResidueDispersionSourceData
RegularCenteredWindingResidueDispersionSource.
```

It records exact supports, residue fibers, signed binary coefficients, the zero/nonzero split, centered coefficient form, all four parity/shift families, effective-modulus aggregation, and the explicit analytic envelope boundary.

## Remaining obligations

```text
CENTERED_WINDING_RESIDUE_DISPERSION_ESTIMATE
ZERO_WINDING_CENTERED_SECOND_MOMENT_ESTIMATE
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER

ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, cancellation estimate, merge, GRH theorem, or RH theorem is represented by this note.
