# Source-bound cochain algebra: exactness, closure and functorial transfer

Maintained source: [SourceBoundCochainComplex.lean](SourceBoundCochainComplex.lean).
Research issue: [math #1842](https://github.com/grwtsk/math/issues/1842).

## Structure and mathematical argument

A family of additive groups indexed by cochain degree has differentials
`d_n : C_n →+ C_(n+1)` satisfying the **mandatory proved field**
`d_(n+1) ∘ d_n = 0`. Defining cocycles as the kernel and
degree-(n+1) coboundaries as the image of `d_n` immediately yields
the exact-implies-closed theorem.

A `CochainMap` consists of homomorphisms in every degree and explicit
commuting-square proofs. These transport closed and exact cochains.
The returned theorem has exactly the source's own definition of
differential, not a redefined finite matrix.

## Relation to the 16D network and prismatic theories

This is generic homological algebra. A cubical or simplicial
realization must provide its actual oriented boundary maps and
prove `d^2=0`. A prismatic realization additionally needs genuine
delta-rings, prisms, applicable p-adic schemes, Frobenius and
comparison morphisms. None is constructed or assumed by this file.
A map of computed state arrays is not automatically a cochain map.

The existing project contains other graph/raster and cochain
representations. This source does not override, relocate or import
their historical declarations. Conversions require explicit type and
source-identity comparisons.

## Verification

SOURCE_PROOF_CANDIDATE. Root Lean 4.34.1; Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Lean compilation, exact kernel replay, full transitive axiom audit,
independent mathematical review: **NOT_RUN**.
No global cohomology or universal RH/GRH theorem is asserted.
