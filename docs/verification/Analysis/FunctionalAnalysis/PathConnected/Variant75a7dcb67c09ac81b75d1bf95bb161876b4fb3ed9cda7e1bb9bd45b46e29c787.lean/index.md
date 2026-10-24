# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PathConnected.Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04d7a7656a6d7f33b21d6dc8ede474292cfc92e6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PathConnected/Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04d7a7656a6d7f33b21d6dc8ede474292cfc92e6`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PathConnected/Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PathConnected/Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Projection` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.PathConnected` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [segment](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787.lean/declarations/segment--d22805cc1d00932c1e6bf747.md) | 31 | `declaration-track:d22805cc1d00932c1e6bf7477f6c4b10faac704f3d7239e2b7c16a4fbef696de` |
| 2 | `theorem` | [range_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787.lean/declarations/range-segment--75f2e1bbcc92d3c5bcc80e2c.md) | 37 | `result-track:75f2e1bbcc92d3c5bcc80e2cb4c3e5ea7e01204e173ce7b8a5c92f2e23de9c31` |
| 3 | `theorem` | [segment_same](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787.lean/declarations/segment-same--8451ab5096e424490da2ff4b.md) | 42 | `result-track:8451ab5096e424490da2ff4be1c915be81f50d493e307613f12e8ae4e9d932aa` |
| 4 | `theorem` | [segment_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787.lean/declarations/segment-symm--a4d7b7548d7293e46c6185c8.md) | 45 | `result-track:a4d7b7548d7293e46c6185c8e62f1097949757dd8ba1c4ff8678aafff2d1a0f2` |
| 5 | `theorem` | [segment_add_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787.lean/declarations/segment-add-segment--20088e77b1a1c6553c5ce844.md) | 49 | `result-track:20088e77b1a1c6553c5ce8444d8c3659de3787594864696449a25452c1ca50b5` |
| 6 | `theorem` | [cast_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787.lean/declarations/cast-segment--69b034358ea5918163458b5d.md) | 55 | `result-track:69b034358ea5918163458b5d06032afb665c314677b8e8c55883b525a97a6974` |
| 7 | `theorem` | [JoinedIn.of_segment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787.lean/declarations/joinedin-of-segment-subset--e4828864aa09bd87549ddb23.md) | 61 | `result-track:e4828864aa09bd87549ddb233ad943bbed00e95e9df5718a2483204ba6c58dc8` |
| 8 | `theorem` | [StarConvex.isPathConnected](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787.lean/declarations/starconvex-ispathconnected--b5f056b72169672d391ab094.md) | 65 | `result-track:b5f056b72169672d391ab0942b52dcc9ffd9b7c864a1a31fc376cc7303731a07` |
| 9 | `theorem` | [Convex.isPathConnected](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787.lean/declarations/convex-ispathconnected--d98b385032d2f9255f957b94.md) | 70 | `result-track:d98b385032d2f9255f957b94330476632c103fe986b8f289bcd81175f72a87a9` |
| 10 | `theorem` | [Convex.isConnected](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787.lean/declarations/convex-isconnected--dbf8ba66f975f63d90ecb63d.md) | 75 | `result-track:dbf8ba66f975f63d90ecb63d9ed64a2fab0aa0372bd44bb1651277bd91f6faed` |
| 11 | `theorem` | [Convex.isPreconnected](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787.lean/declarations/convex-ispreconnected--a79308f531cb2b7590524d1d.md) | 80 | `result-track:a79308f531cb2b7590524d1d257466edb7c5ea8a7eefe161ff92c9d04af12d84` |
| 12 | `theorem` | [Submodule.isPathConnected](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787.lean/declarations/submodule-ispathconnected--53ad1ee94e5330b2c3053f6f.md) | 85 | `result-track:53ad1ee94e5330b2c3053f6f21b1c56febdb745123fb1f271437d203fdf8e778` |
| 13 | `theorem` | [IsTopologicalAddGroup.pathConnectedSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787.lean/declarations/istopologicaladdgroup-pathconnectedspace--0532680db96c51fe760e9f98.md) | 92 | `result-track:0532680db96c51fe760e9f98af119f9f3e4a13fea620f871e30c82d3146b79cf` |
| 14 | `theorem` | [isPathConnected_compl_of_isPathConnected_compl_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Variant75a7dcb67c09ac81b75d1bf95bb161876b4fb3ed9cda7e1bb9bd45b46e29c787.lean/declarations/ispathconnected-compl-of-ispathconnected-compl-zero--c2069fe728cb991bd40cf030.md) | 97 | `result-track:c2069fe728cb991bd40cf030cbfd187a6bac9c91029bb0b1895e96d9a9a21978` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
