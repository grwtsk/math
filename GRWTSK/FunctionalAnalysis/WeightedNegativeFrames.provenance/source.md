# Source identity and reproduction: WeightedNegativeFrames

Local mathematical attribution: grwtsk contributors.

Canonical source: [WeightedNegativeFrames.lean](../WeightedNegativeFrames.lean).
SHA-256: `0fe48fa405b54180311dd1bbed1902da3f4b558d3afd65348b3c65032b8b0583`.
Git blob: `d2331e9b6019e1a9cafd4e5a493a932bf252cf79`.
Initial comparison: `grwtsk/math@5f66eb82a40921253664f53602851091ccd01d94`.
Reconciled supplier: `grwtsk/math@c6f931e6ce84dc755c001176cc1d98b976f2ad7c`.
Lean: `v4.34.1`. Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: math #1808 and #1801; research #43.

Directly consumes the concurrently published NegativeFramePerturbation.hasNegativeFrame_of_weighted_approximation, blob `ad1027a32525519477026631827daeab4c29f16b`, and this increment's exact frame-and-observer index theorem. The earlier unpublished direct weighted-error draft was replaced before main publication to avoid duplicating Program 2. The new contribution is the matching upper/lower index composition, not an independent perturbation proof. Standard consequence; novelty UNASSESSED, no novelty claimed.

FORMAL_SOURCE_CANDIDATE. Elaboration/build, fresh kernel replay, transitive axiom audit and independent review: NOT_RUN. Existing dependencies retain their own evidence status. No dependent proof automation was dispatched; canonical access returned 404 at Noe main `0126ba445446dea25047a89884df1adf6b10251a`.

From a clean checkout of the publication commit, a separately authorized verifier should verify these source/dependency hashes, run `lake build GRWTSK.FunctionalAnalysis.WeightedNegativeFrames`, inspect the elaborated declaration and `#print axioms GRWTSK.FunctionalAnalysis.WeightedNegativeFrames.negativeIndex_eq_of_weighted_approximation_and_observer`, and record fresh kernel replay. These are NOT_RUN commands. Operational receipts belong in Noe. Source publication and static scans do not establish the arithmetic return.
