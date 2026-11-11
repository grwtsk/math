# Source identity and reproduction: HermiteNegativeIndex

Local mathematical attribution: grwtsk contributors.

Canonical source: [HermiteNegativeIndex.lean](../HermiteNegativeIndex.lean).
SHA-256: `777f1469b4104ae2f1703745a88ce795d55080801c88809593e4c49ae172c5cc`.
Git blob: `b9a7d72712492d7d3347cd5432c7a719ba442373`.
Comparison baseline: `grwtsk/math@5f66eb82a40921253664f53602851091ccd01d94`.
Lean: `v4.34.1`. Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Publication and verification coordination: math issue #1808; research issue #43.

Reuses Program-6 HermiteMomentCertificates.lean at the baseline, blob 1a0351a2f242577b948c6c6c431aff48356880a2, without modifying quadraticValue, errorBudget, pairMatrix or the original moment theorem. The new observation argument gives exact index for the explicit two-node control only; it does not assert the general Hermite converse. Standard finite real quadratic-form algebra.

Compared November 11, 2026. Novelty UNASSESSED; no novelty asserted. Standard consequences/conditional interfaces, not new arithmetic results. No upstream implementation copied; existing licenses and attribution retained. Each adjacent declaration record identifies its exact hypotheses, primary argument, consumer and limitations.

FORMAL_SOURCE_CANDIDATE. Elaboration/build, fresh kernel replay, transitive axiom audit and independent review: NOT_RUN. Imported candidates retain their own evidence boundaries. No dependent proof automation was dispatched: canonical skill access returned 404 at Noe main `0126ba445446dea25047a89884df1adf6b10251a`.

A separately authorized verifier should use a clean checkout of the publication commit, verify the hashes above and dependency pins, run `lake build GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.HermiteNegativeIndex`, inspect the elaborated types and `#print axioms` for every adjacent declaration, and record a fresh kernel replay. These commands are NOT_RUN instructions, not receipts. Operational execution evidence belongs in Noe. Static scans and Git readback do not prove elaboration or arithmetic source return.
