# Cubical square boundary on the original binary atlas

Lean source: [BinaryCubicalSquareBoundary.lean](BinaryCubicalSquareBoundary.lean).
Research coordination: [math #1842](https://github.com/grwtsk/math/issues/1842).

## Source and mathematical argument

The `Cell m` and `Port m` types are imported from the previously
verified `FrozenPrimeHypercube.lean`; the square is not an unrelated
toy coordinate system.

`VertexChain` and `EdgeChain` are free abelian groups represented by
finitely supported integer-valued functions on vertices and oriented
edges. `boundaryOne` is the genuine additive map sending an oriented
edge `(x,i)` to `[neighbor x i] - [x]`.

`squareEdges x i j` is the signed four-edge cycle
`(x,i)+(x⊕i,j)-(x⊕j,i)-(x,j)`.
The additive commutativity of the coordinate flips identifies the
two opposite-corner calculations. Therefore `boundaryOne` sends this
signed square generator to zero, establishing the exact degree-two
boundary-of-boundary identity for binary cubical squares.

For `i=j`, the chain is degenerate and the identity still holds.
For `i≠j`, the previously verified neighbor injection makes the
two edge directions distinct.

## Scope

This establishes the degree-one/degree-two boundary identity on the
actual finite cubical carrier, **not yet the whole 0..16 cellular
chain complex**. The all-degree alternating-face boundary operator,
its exact import into a cochain complex, and stable 16→64
embeddings remain distinct obligations.

No prismatic `δ`-ring, arithmetic Frobenius or (L)-function identity
is asserted.

Lean 4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
SOURCE_PROOF_CANDIDATE: compilation, transitive axiom audit, fresh replay
and independent review **NOT_RUN** for the new module.
