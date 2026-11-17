# `LinearRealization` conjecture-level source interface

Local attribution: grwtsk contributors. Coordinating issue: [#1830](https://github.com/grwtsk/math/issues/1830).

## Canonical declaration and mathematical consumer

- Canonical source: [`../LinearRealizationCore.lean`](../LinearRealizationCore.lean).
- Principal target declaration: `LinearRealization.AgirsevenOllisClaim` (`Prop`, **not proved**).
- Auxiliary declarations: `LinearRealization.edgeLengths`, `IsVertexPerm`, `IsLinearRealization`, `IsStandardLinearRealization`, `IsPerfectLinearRealization`, `HasLinearRealization`, `prescribedLengths`, `IsAdmissibleTuple`.
- Local derived results: `prescribedLengths_card`, `IsLinearRealization.length`, `agirsevenOllisClaim_iff`. Their source proof text has **not** been compiled at the pinned Lean revision.
- Owner: combinatorics / graph theory (Hamiltonian path edge-length multisets; MSC 05C38 and 05C45). This is not itself an RH/GRH zero statement.

## Paper-to-declaration provenance and hypotheses

O. Ağırseven and M. A. Ollis, *Construction Techniques for Linear Realizations of Multisets with Small Support*, arXiv:2502.00164 (2025), **Conjecture 1.11**: for natural parameters `y,k,a,b,c` with `1 ≤ k`, `2k < y` and `a ≥ y`, form `v=a+b+c+1` and the multiset with `a` copies of `1`, `b` copies of `y-k`, and `c` copies of `y`. Claim a permutation of `0,…,v−1` whose adjacent absolute differences are exactly this multiset. The final existence statement does not constrain its start or end vertex.

Paper: https://arxiv.org/abs/2502.00164 . Correspondence here is to the **statement and mathematical vocabulary** of the conjecture, not a completed formalization of its proof. Published partial cases in the paper must not be conflated with the universal claim.

The user-uploaded `answer (2).lean` candidate (30,192 lines, SHA-256 `9ba2e9a9f7f5f8e91fc2ce16a3a260800b0746bd586b771df11c10b18a9de88b`) is the immediate source for the exact Lean definition spellings and conventions. It includes a purported proof declaration `LinearRealization.agirseven_ollis_linear_realization_conjecture` and references an external `Linreal_Proof.pdf`, Theorem 1.5; that document was unavailable here. The input's mathematical authorship and redistribution license have not been independently established. The full uploaded proof is **not** imported, verified, or republished by this source-interface commit.

## Source-faithfulness and open bridges

The source uses natural-number labels and `Multiset` addition, so copies and multiplicities are retained. `List.Perm (List.range v)` enforces the complete vertex set. `IsStandardLinearRealization` and `IsPerfectLinearRealization` are stronger than the unrestricted `HasLinearRealization`; neither endpoint condition is asserted by the final conjecture. Natural subtraction `y-k` agrees with positive integer difference under admissibility, but downstream arithmetic transfer still requires proof.

Primary consumer: the proposed modular certification of the uploaded candidate in issue #1830: verify endpoint padding (`pad_ones`), exact growth steps, invariant preservation, seed/parity families, and final reassembly with the very same target, retaining all five parameters. Existing `GRWTSK/Combinatorics/GraphTheory/Hamiltonian.lean`, `ActiveAdditivePath.lean` and `CertifiedPathOptimization.lean` offer related graph/path concepts but no established equivalence to this list/multiset realization target. Do not replace exact natural-list witnesses with abstract paths without a proved bijective semantics theorem.

For any RH/primitive Dirichlet GRH use, a new **separate** arithmetic source-return theorem would have to identify these realizations with actual signed prime-power/character test data, retaining conductor, gamma, poles, zero multiplicities and all cutoffs. No such theorem is supplied or claimed. Graph combinatorics alone does not give Weil positivity or RH/GRH.

## Verification ledger

- Baseline: `grwtsk/math` main `e38f7691ab6721be025fd23636438ce011179cfd` at authoring; Lean `leanprover/lean4:v4.34.1`, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Exact-definition comparison to uploaded source: manual textual comparison of eight definitions and final theorem signature; **source inspection only**.
- Local static source scan and Git blob identity: available, but not Lean parsing.
- Lean elaboration, library/module build: **NOT_RUN**.
- Kernel replay and transitive axiom audit: **NOT_RUN**.
- Independent mathematical review and exact 2025-paper theorem-level correspondence: **NOT_RUN** beyond the primary conjecture statement.
- Complete uploaded proof assessment and `Linreal_Proof.pdf` correspondence: **UNASSESSED**.
- Noe proof-automation skill canonical path on `grwtsk/noeaaeue` main `d2f012c70b61e8b7207c1e018fa9f93e8ffa90ac`: **UNAVAILABLE (404)**; no dependent automation attempted.
- Main publication commit and exact blob identities: to be recorded in issue #1830 after readback.
