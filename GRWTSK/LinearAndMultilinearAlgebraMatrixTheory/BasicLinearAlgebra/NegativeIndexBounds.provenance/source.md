# Source identity and reproduction: NegativeIndexBounds

Local mathematical attribution: grwtsk contributors.

Canonical source: [NegativeIndexBounds.lean](../NegativeIndexBounds.lean).
SHA-256: `191dfd4b0f54e0878e6cf04c0a28dea17b678ca42aafe781fcf67c3ad6c9c157`.
Git blob: `99f3b23af092dc3d74b6f2e55b5dcf66f3c51211`.
Comparison baseline: `grwtsk/math@5f66eb82a40921253664f53602851091ccd01d94`.
Lean: `v4.34.1`. Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Publication and verification coordination: math issue #1808; research issue #43.

Reuses the prior Program-3 NegativeIndex and SchurNegativeIndex at the baseline, and generalizes the scalar-kernel mechanism in SchurObserverCertificate (blob 47e7e02ef7a22dddbb6509ad7e95d4223ef47aa6). The dimension input is Mathlib LinearMap.finrank_le_finrank_of_injective in Mathlib/LinearAlgebra/Dimension/StrongRankCondition.lean and Module.finrank_fin_fun in Dimension/Constructions.lean at the pinned revision. Standard linear/order algebra; not a direct new paper formalization.

Compared November 11, 2026. Novelty UNASSESSED; no novelty asserted. Standard consequences/conditional interfaces, not new arithmetic results. No upstream implementation copied; existing licenses and attribution retained. Each adjacent declaration record identifies its exact hypotheses, primary argument, consumer and limitations.

FORMAL_SOURCE_CANDIDATE. Elaboration/build, fresh kernel replay, transitive axiom audit and independent review: NOT_RUN. Imported candidates retain their own evidence boundaries. No dependent proof automation was dispatched: canonical skill access returned 404 at Noe main `0126ba445446dea25047a89884df1adf6b10251a`.

A separately authorized verifier should use a clean checkout of the publication commit, verify the hashes above and dependency pins, run `lake build GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.NegativeIndexBounds`, inspect the elaborated types and `#print axioms` for every adjacent declaration, and record a fresh kernel replay. These commands are NOT_RUN instructions, not receipts. Operational execution evidence belongs in Noe. Static scans and Git readback do not prove elaboration or arithmetic source return.
