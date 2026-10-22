# Fixed-to-uniform quantifier obstruction for square-modulus AP suppliers

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / FIXED_TO_UNIFORM_QUANTIFIER_EXCHANGE_REFUTED_AT_SCOPE`

Owner: #576. Direct parent: #571 / PR #573.

This increment transplants the minimal quantifier witness already present on the divergent #441 / PR #454 line into the current square-modulus AP stack.

It does not claim a new mathematical idea. It reuses the earlier obstruction so the current PR #568/#573 chain can enforce it directly.

## Exact source binding

```text
parent revision:
  55288fef3e3a167bac513e118cfbde363d6bf51e

candidate branch:
  research/rh-fixed-to-uniform-obstruction-576-20261021

source commit:
  81265c5d2ff9b04063dec27f23c274a6566cf4c4

source tree:
  71367bdd955c4ccd7067e489f5e4d2c39cec7878

source:
  GRWTSK/NumberTheory/Moebius/
    FixedToUniformSquareModulusObstruction.lean

source blob:
  0c837a1802ff65d276d2ebb36d0632c77ca494ea
```

## Provenance

Earlier source:
```text
issue: #441
draft PR: #454
declaration:
  GRWTSK.RiemannHypothesis.CCC.ChowlaScope.
    parameterDependent_doesNotImply_uniform
source blob:
  10e26d75c147317829e5f4f0c4007ebe23745d3d
```

That older branch is not an ancestor of PR #573, so the current module imports no divergent source. Only the minimal logical witness is transplanted.

## Generic quantifier shapes

The source defines
```lean
PointwiseExistsBound P
```
for
[
orall p, exists C_p, P(p,C_p),
]
and
```lean
UniformExistsBound P
```
for
[
exists C, orall p, P(p,C).
]

The concrete relation is
[
P(h,C) :Longleftrightarrow hle C.
]

Then:
[
orall h,exists C, hle C
]
holds by taking (C=h), while
[
exists C,orall h, hle C
]
is false by testing (h=C+1).

The source theorem is
```lean
pointwiseExists_doesNotImply_uniformExists.
```

## Scope disposition

The named disposition is
```lean
FixedToUniformQuantifierExchangeRefutedAtScope.
```

It refutes only the logical shortcut
```text
forall fixed parameter, exists parameter-dependent constant
  ->
exists one constant uniform over all growing parameters.
```

It does **not** refute:
- a genuine analytic uniformity theorem;
- a proved fixed-form-to-growing-family adapter;
- OpenAI Result 007 itself;
- Chowla or Elliott conjectures;
- `UniformDyadicSquareModulusMertensTwoPointAP`;
- RH.

## Proof-relevant upgrade

The source defines
```lean
PointwiseToUniformBoundAdapter P
```
whose field must explicitly prove
```text
PointwiseExistsBound P -> UniformExistsBound P.
```

This is the exact logical role played by the fixed-form-to-growing-family adapters in PR #573.

## Current square-modulus boundary

The source records
```lean
fixedFormVsUniformSquareModulusBoundary d
```
as the literal pair
```text
(FixedFormBinaryChowlaSource d,
 UniformDyadicSquareModulusMertensTwoPointAP).
```

A proposition pair has no implication field. Thus the repository does not acquire a proof edge merely because both statements are recorded together.

## Evidence

Established:
```text
SOURCE_DRAFT
FIXED_TO_UNIFORM_QUANTIFIER_EXCHANGE_REFUTED_AT_SCOPE
```

Not established:
```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANY_ANALYTIC_UNIFORMITY_ADAPTER
UNIFORM_SQUARE_MODULUS_AP_SUPPLIER
```

No Lean/Lake execution, proof-term acceptance, analytic estimate, merge, or RH claim occurred.
