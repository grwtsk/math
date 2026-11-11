# hasSum_affine_geometric_shift

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE; novelty UNASSESSED.
Canonical source: [DyadicDecayMoment.lean](../DyadicDecayMoment.lean); declaration `GRWTSK.MeasureAndIntegration.DyadicDecayMoment.hasSum_affine_geometric_shift` (theorem; private status where specified below).
Source identity: Git blob `95cb8454fc11ecab6c954cf67de9b0a9e293031d`, SHA-256 `6755bf6ee3e9058dc5ed30ed6b6291197d792f49fa2b1043503eabbe65ad4707`; the enclosing commit binds this record.
Statement/domain: For every real c, 0<=r<1 and N, HasSum of ((j+N)+c)*r^(j+N) with the stated closed value.
Dependency locator: Mathlib/Analysis/SpecificLimits/Normed.lean: hasSum_geometric_of_norm_lt_one and hasSum_coe_mul_geometric_of_norm_lt_one; blob b033d8917bbd2c274f2bb55e6b07c46c9204db5b.
Pins: Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; local comparison base `1a73ca294d739654a9ecaa33d2116e78c3beff98`. Primary links and upstream authors/licenses: [README](README.md).
Consumer and boundary: Add the constant-weight geometric series to the n-weighted one, then multiply by r^N. No nonnegativity of c is required for this identity.
Classification: locally authored classical consequence of the research execution mandate, not a direct paper theorem or novel frontier claim. Complete analytical argument and hostile checks: [README](README.md).
Elaboration/build, fresh kernel replay, transitive axiom audit, independent review: NOT_RUN. Source-text/hash checks do not establish these. No imported candidate is promoted.
