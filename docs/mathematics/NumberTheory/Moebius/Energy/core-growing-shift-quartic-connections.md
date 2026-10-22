# Quartic collision connections: squarefree binary and parallelogram sources

Issue: #727. Parent collision split: #716 / draft PR #717 at exact head
`70dfbd5882eb46087d50068faae8252201f64798`.

Evidence state:

```text
LITERATURE_CONNECTIONS_TYPED
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
COLLISION_LINE_COMPENSATION_OPEN
COLLISION_FREE_PARALLELOGRAM_BUDGET_OPEN
```

## Exact arithmetic split

The inherited active off-diagonal packet is

```text
2 * (
  coreGrowingShiftQuarticCollisionEnergy
  + coreGrowingShiftQuarticCollisionFreeEnergy).
```

The two terms have different affine-form geometry and therefore require
noncoercible analytic source profiles.

## Collision line: squarefree-midpoint binary correlation

On the repeated-middle line `b=a+h`, the four-point cell is

```text
mu(a+1) * mu(a+1+h)^2 * mu(a+1+2h).
```

The new source uses Mathlib's exact Möbius-square identity and proves

```text
mu(a+1) * mu(a+1+h)^2 * mu(a+1+2h)
=
if Squarefree(a+1+h)
then mu(a+1) * mu(a+1+2h)
else 0.
```

This is an identity, not a density approximation. It is lifted through the
active depth and shift packet:

```text
coreGrowingShiftQuarticCollisionEnergy
=
coreGrowingShiftQuarticSquarefreeCollisionEnergy.
```

Consequently the collision-line problem is a binary Möbius correlation with a
squarefree midpoint selector. A fixed-form binary Chowla theorem can become a
candidate input only after an actual squarefree-divisor expansion and a theorem
uniform in the growing shift, growing square moduli, prefix endpoint, depth, and
small scales.

The exact source-facing proposition is

```lean
SubpolynomialCoreGrowingShiftQuarticSquarefreeCollisionLineCompensation
```

and it is proved equivalent to the original repeated-middle collision-line
proposition.

## Collision-free region: four distinct affine forms

For `0<h`, `a<b`, and `b != a+h`, the source proves pairwise distinctness of

```text
a+1,
a+1+h,
b+1,
b+1+h.
```

Thus the collision-free term is a genuine affine parallelogram family:

```text
mu(n) * mu(n+h) * mu(n+d) * mu(n+d+h),
d != h.
```

This is the natural interface for:

- ordinary four-point Chowla or higher corrected Elliott;
- quantitative Möbius `U^2` or Fourier-dispersion estimates;
- averaged higher-order Chowla after extracting the sparse parallelogram
  subfamily;
- short-interval Gowers uniformity after proving interval-length and depth
  coverage.

No source in this increment is asserted to prove the needed all-scale active
packet estimate.

## Separate budgets and exact recombination

The source defines two independent analytic targets:

```lean
SubpolynomialCoreGrowingShiftQuarticCollisionLineCompensation
SubpolynomialCoreGrowingShiftQuarticCollisionFreeBudget
```

The first assigns the visible positive diagonal to the collision-line source:

```text
2 * Collision(j)
<= (C_collision * X * X^delta)^2 - Diagonal(j).
```

The second pays only the collision-free term:

```text
2 * CollisionFree(j)
<= (C_free * X * X^delta)^2.
```

For nonnegative constants,

```text
A^2 + B^2 <= (A+B)^2.
```

Therefore the source proves

```text
collision-line compensation
+ collision-free budget
-> collision-separated compensation
-> conditional RH endpoint.
```

The constant is explicit: `C_collision + C_free`.

This allocation is sufficient-only. It does not claim that the collision line
must pay the diagonal in every possible proof; it supplies one auditable split
that composes with the existing positive-square route.

## Typed connection profiles

### Fixed-form binary Chowla / corrected Elliott

```lean
FixedFormBinarySquarefreeCollisionSource
ToSquarefreeCollisionLineFromFixedFormBinary
```

Required bridges remain separate:

```text
fixed-form ordinary control
squarefree divisor expansion
growing square-modulus uniformity
active prefix uniformity
depth multiplicity
finite small scales.
```

The OpenAI Math preprint *Ordinary two-point correlations of multiplicative
functions* (September 24, 2026) is the relevant recently closed fixed-form
source. Its quantitative progression statement fixes the affine shift and
modulus, with constants allowed to depend on those fixed data. It is therefore
not an inhabitant of the growing square-modulus adapter by citation alone.

Source:
`openai/math`,
`preprints/Ordinary-two-point-correlations-of-multiplicative-functions-September-24-2026`.
The repository scope comparison is already recorded under #571 and #576.

### Ordinary four-point Chowla / higher Elliott

```lean
FourPointParallelogramSource
ToCollisionFreeBudgetFromFourPoint
```

The adapter requires four-distinct affine control, one uniform estimate over
the growing parallelogram family, ordinary-prefix scope, triangular-support
localization, depth multiplicity, and finite small scales.

No ordinary four-point Chowla theorem is imported or claimed.

### Quantitative Möbius Gowers uniformity

```lean
MobiusU2ParallelogramSource
ToCollisionFreeBudgetFromMobiusU2
```

Tao--Teräväinen, *Quantitative bounds for Gowers uniformity of the Möbius and
von Mangoldt functions*, arXiv:2107.02158, is a natural global source family.
The repository adapter still requires:

```text
full-box U2 control
collision excision
triangular-support localization
active multiplicity transport
all-scale uniformity
finite small scales.
```

A global norm theorem does not identify the repository's active weighted
packet without these maps.

### Averaged higher-order Chowla

```lean
AveragedHigherOrderChowlaSource
ToCollisionFreeBudgetFromAveragedHigherOrder
```

Matomäki--Radziwiłł--Tao, arXiv:1503.05121, controls averaged families of
correlations. The active parallelogram family is a sparse structured subfamily.
The new type therefore makes `sparseParallelogramExtraction` a required theorem
rather than an implicit averaging argument.

### Short-interval Gowers/local randomness

```lean
ShortIntervalGowersCollisionSource
ToQuarticSplitBudgetsFromShortIntervalGowers
```

The source separates collision-line and collision-free conclusions and keeps
visible:

```text
interval-length coverage
start-window coverage
all-depth uniformity
finite small scales.
```

Matomäki--Shao--Tao--Teräväinen, arXiv:2204.03754, and later short-interval
advances are candidate sources only on their proved interval ranges. The active
packet contains shorter and boundary ranges that require explicit payment.

### Logarithmically averaged growing shifts

```lean
LogarithmicGrowingShiftCollisionSource
ToQuarticSplitBudgetsFromLogarithmicGrowingShift
```

The required missing fields are explicit:

```text
ordinary-average transport
base-variable to shift-variable averaging transport
dyadic shift-range uniformity
depth multiplicity
finite small scales.
```

Guo, arXiv:2608.23500, supplies a logarithmically weighted growing-shift source
profile. It is not an ordinary-prefix or collision-separated theorem without
those transport results. The averaging-variable mismatch is recorded under
#516.

## Existing `grwtsk/math` junctions

The present module is the current-stack reconciliation point for several
independent source-draft branches:

- #532 / PR #534: exact squarefree-midpoint rewrite on the earlier endpoint
  collision branch;
- #571 / #576: fixed-form versus growing square-modulus quantifier boundary;
- #476: source-faithful signed cross-shift dispersion interface;
- #623 / #625: positive variance obstruction and signed square-minus-diagonal
  repair;
- #630: finite Walsh/Bernoulli hierarchy and the pairwise-versus-higher-order
  hostile boundary;
- #699 / #703: active binary-prefix square energy;
- #713 / #714: positive diagonal plus signed quartic off-diagonal;
- #716 / #717: repeated-middle collision versus collision-free family.

No divergent branch is imported or cherry-picked. The current source repeats
only the small exact Möbius-square rewrite needed to bind the active packet on
its own stack.

## Dependency path

```text
squarefree-midpoint collision-line compensation
+
collision-free parallelogram budget
        ↓
collision-separated quartic compensation
        ↔
quartic off-diagonal compensation
        ↔
active binary-prefix square energy
        ↓
signed growing-shift first-difference packet
        ↓
conditional RH endpoint.
```

## Nonclaims

This increment does not prove:

- fixed-form binary Chowla or corrected Elliott locally;
- growing square-modulus uniformity;
- four-point Chowla or higher corrected Elliott;
- a quantitative `U^2` localization theorem;
- sparse-parallelogram extraction from averaged Chowla;
- short-interval coverage of every active depth;
- logarithmic-to-ordinary or base-to-shift averaging transport;
- either analytic split budget;
- Lean elaboration, kernel acceptance, trust audit, merge, or RH.
