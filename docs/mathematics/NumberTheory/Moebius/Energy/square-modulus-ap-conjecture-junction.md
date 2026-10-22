# Square-modulus AP conjecture junction

Status: `LITERATURE_REVIEWED / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ALL_SQUARE_MODULUS_LITERATURE_ADAPTERS_OPEN`

Owner: #571. Direct parent: #567 / PR #568. Earlier signed-Abel conjecture junction: #477 / PR #479.

This increment records which nearby Chowla/Elliott/AP results share the same obstruction and which quantifiers are still missing before they can supply
```lean
UniformDyadicSquareModulusMertensTwoPointAP.
```

No literature result is imported as a theorem.

## Exact source binding

```text
parent revision:
  f94e5fc0efd27757af9ea5f4bfbc7db56132b220

candidate branch:
  research/rh-square-modulus-junction-571-20261021

source commit:
  2ea9c1a732af39cfc749b62a3f3fef817b9a1358

source tree:
  ccaef780a20d457e5698c1b397bcbbbcc62611c3

source:
  GRWTSK/NumberTheory/Moebius/
    SquareModulusAPConjectureJunction.lean

source blob:
  a5028ac5f7fc38f6330a0c26d63f38dcc0e73b93
```

## Repository target

PR #568 asks for one constant (C_delta) uniform over the complete dyadic family
[
2^jle b<2^{j+1},qquad 1le d<b,
]
such that
[
|mathcal C(b,d)|le C_delta(2^j)^delta.
]

Each fibre (mathcal C(b,d)) is the exact signed two-point Möbius correlation on the class
[
x+hequiv0pmod{d^2}
]
with growing shift (h), growing square modulus (d^2), and exact finite endpoint/prefix support.

## Recently closed integer fixed-scope result: OpenAI Math Result 007

Source:
- https://math20.org/f/007/
- OpenAI Math release, September 24, 2026.

The release reports:
- ordinary two-point Chowla for every fixed pair of nonproportional affine forms;
- power-of-log saving with an absolute exponent;
- implied constants allowed to depend on the fixed forms;
- corrected binary Elliott for one-bounded multiplicative functions under uniform nonpretentiousness;
- qualitative ordinary cancellation in fixed residue classes.

Classification relative to PR #568:

```text
RECENTLY_CLOSED_FIXED_SCOPE
ORDINARY_AVERAGE_MATCHED
BINARY_CORRELATION_RELEVANT
FIXED_RESIDUE_RELEVANT
GROWING_SHIFT_UNIFORMITY_NOT_SUPPLIED_BY_SCOPE
GROWING_SQUARE_MODULUS_UNIFORMITY_NOT_SUPPLIED_BY_SCOPE
ONE_CONSTANT_FOR_WHOLE_DYADIC_FAMILY_NOT_SUPPLIED_BY_SCOPE
ADAPTER_OPEN
```

The fixed-form theorem is highly relevant but does not directly inhabit
`UniformDyadicSquareModulusMertensTwoPointAP`.

In particular, a constant that may depend on the affine forms cannot simply be reused when those forms encode shifts and congruence data growing with the scale.

## Function-field analogue: Sawin--Shusterman

Reference:
- Will Sawin and Mark Shusterman, *On the Chowla and twin primes conjectures over* (\mathbb F_q[T]), Annals of Mathematics 196 (2022), 457--506.
- https://doi.org/10.4007/annals.2022.196.2.1

Their function-field results include:
- a level of distribution close to one for Möbius in arithmetic progressions;
- Chowla (k)-point correlation with substantial shift uniformity.

Classification:

```text
FUNCTION_FIELD_ANALOGUE
AP_DISTRIBUTION_RELEVANT
SHIFT_UNIFORMITY_RELEVANT
INTEGER_TRANSPORT_NOT_PRESENT
NO_REPOSITORY_PROOF_EDGE
```

This is structurally closer to the combined modulus/shift obstruction than a purely fixed-shift integer theorem, but it is not an integer result and no characteristic-transfer theorem is available in the repository.

## Open integer interfaces sharing the obstruction

The closest open statement families are:

1. **Growing-shift ordinary two-point Chowla**  
   Requires constants uniform as the shift grows with the ambient scale.

2. **Binary corrected Elliott with growing affine/congruence data**  
   Requires the correction/nonpretentiousness hypotheses and estimates to remain uniform across the whole family.

3. **Two-point Möbius cancellation in arithmetic progressions with growing modulus**  
   The exact repository version further requires square moduli (d^2), a residue class depending on the shift, and every-modulus rather than almost-all coverage.

4. **Every-interval / local Möbius randomness**  
   Strong enough local-Gowers or short-interval control may be relevant, but an explicit conversion into every required AP fibre is still needed.

5. **The older grwtsk/math growing-family junctions**  
   Issues #439, #441, #453, #466, and #477 already separate fixed-data results from growing-shift, maximal, every-interval, corrected-Elliott, and higher-order interfaces.  
   PR #568 sharpens one branch of those generic obstructions by adding a growing square-modulus/residue-class requirement.

## Typed source layer

The source defines conservative data families:

```lean
FixedFormBinaryChowlaData
FixedResidueCorrectedElliottData
GrowingShiftBinaryChowlaData
UniformAPBinaryCorrelationData
SquareModulusUniformityRequirements
```

and the proof-producing adapter:

```lean
ToUniformSquareModulusAPAdapter (source : Prop)
```

with only substantive field
```text
source -> UniformDyadicSquareModulusMertensTwoPointAP.
```

Named source families receive adapter *types*, not values.

## Explicit missing bridges

The source names separate adapter types for:

```lean
FixedFormsToGrowingFormsAdapter
FixedResidueToGrowingSquareModulusAdapter
ModulusCoverageAdapter
ResidueCoverageAdapter
AveragingConventionAdapter
```

These prevent the following invalid promotions:

```text
fixed forms -> growing forms
fixed residue -> growing square modulus
almost all moduli -> every modulus
average over classes -> required shift-dependent class
logarithmic average -> ordinary average
```

## Generic positive transport

The only positive theorems are generic:

```lean
uniformSquareModulusAP_of_adapter
congruenceL1_of_squareModulusAdapter
signedCongruenceCrossCollision_of_squareModulusAdapter
squarefreeMidpointCrossCollision_of_squareModulusAdapter
```

Thus:
[
	ext{source proof + actual adapter}
Longrightarrow
	ext{uniform square-modulus AP supplier}
]
and then through the already-formalized finite comparisons to the lower-order signed collision route.

No named literature source receives such an adapter value in this increment.

## Evidence

Established:
```text
LITERATURE_REVIEWED
SOURCE_DRAFT
```

Not established:
```text
ANY_NAMED_LITERATURE_ADAPTER
UNIFORM_SQUARE_MODULUS_AP_SUPPLIER
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake execution, proof-term acceptance, external theorem import, analytic estimate, merge, or RH claim occurred.
