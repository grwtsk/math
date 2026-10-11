# Schrödinger transfer core

This interface carries established two-coordinate transfer mathematics. The state is `(current, previous)` and the next state is `(next, current)`. Over any commutative ring, the exact scalar recurrence is equivalent to multiplication by `!![E - V, -1; 1, 0]`. Its determinant is one and it packages as an `SL₂` element. An explicit rational example distinguishes the elements at energies zero and one.

The selected interface contains three definitions and three source theorems, with three stored equation helpers preserved. The original module's broader Jacobi description is retained as source context; division-based Jacobi normalization and spectral conclusions are outside this interface.

GRWTSK added canonical placement and a mechanically preserved interface. Complete types, universes, implicit assumptions, supported definition bodies, generated command families and transitive axioms are checked. Original Jacobi declarations and an original matrix-order consumer were replayed against the new constants. Full actual body-dependency sets are preserved under the name map. Additional files discovered by source search remain outside verified coverage.

Run `lake build --wfail` and `python3 scripts/check_schrodinger_transfer.py`. The audit checks the nine contracts with the Lean kernel, including the three generated helpers, and three synthetic wrappers. Those wrappers are fixtures, not additional mathematical results. Independent reconstruction uses pinned public dependencies and fresh project outputs; public package caches are declared.

Direction: R.A. Jacob Martone. Formalization and verification assistance: OpenAI Codex. MIT; historical human/machine split unknown. Lean and Mathlib retain original identities, authors and licenses. This is a local candidate pending transactional admission and independent review. No new theorem, spectral identification or RH proof is claimed.
