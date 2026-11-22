# Concrete 16D → 64D binary atlas expansion

Source: [ConcretePrimeAtlasLift16To64.lean](ConcretePrimeAtlasLift16To64.lean).
Coordination: [math #1842](https://github.com/grwtsk/math/issues/1842).

The *actual* source is the typed binary hypercube `Cell 4`, and the
target is `Cell 6` (64 binary coordinate directions). The source
port signature is extended by two high-order zeros using `Fin.snoc`.

The source-to-target address map is a finite linear sum of genuine
coordinate impulses. Its mathematical proof reconstructs the original
address by probing the embedded ports, proves source-port injection,
additivity, syndrome commutation and one-bit neighbor transport.

The resulting `sixteenToSixtyFour` is intended to instantiate the
previously checked `CompatibleEmbedding 4 6` with no unproved
additional fields. The derived frozen and guidepost preservation
theorems are then direct applications of the existing source.

## Hostile checks and boundaries

- The port signature of zero remains zero, but `impulse 0`
  flips a genuine coordinate rather than leaving the cell fixed.
- No extra target coordinate may alias an original port.
- No numerical prime labels are silently reassigned in the lift.
- The map preserves the hypercube's one-bit adjacency for *source*
  edges; it does not claim all new target edges come from the source.
- This is a logical embedding; physical addresses on macOS may move.
- The case of a *different* arbitrary orientation in 64 dimensions
  requires a separate compatibility theorem.

This source is a candidate pending pinned Lean 4.34.1 compilation,
full transitive axiom checks, fresh independent proof replay, and
independent review. No RH/GRH or prismatic theorem is consumed.
