# Verification target: GRWTSK.Topology.GeneralTopology.Cantor.Variant5216783331a3585aabfd987d031048221f996d0a61a9282710bfe04411f67030

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d129f497ac5416c7a55129cf8191775a9a40f88",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Cantor/Variant5216783331a3585aabfd987d031048221f996d0a61a9282710bfe04411f67030.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Cantor/Variant5216783331a3585aabfd987d031048221f996d0a61a9282710bfe04411f67030.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Cantor/Variant5216783331a3585aabfd987d031048221f996d0a61a9282710bfe04411f67030.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d129f497ac5416c7a55129cf8191775a9a40f88`.

Source path: `GRWTSK/Topology/GeneralTopology/Cantor/Variant5216783331a3585aabfd987d031048221f996d0a61a9282710bfe04411f67030.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Cantor/Variant5216783331a3585aabfd987d031048221f996d0a61a9282710bfe04411f67030.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.BooleanSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.TotallyDisconnected` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CantorTopologyCapability](../../../../../mathematics/Topology/GeneralTopology/Cantor/Variant5216783331a3585aabfd987d031048221f996d0a61a9282710bfe04411f67030.lean/declarations/cantortopologycapability--3637153c63631a4095e94f58.md) | 26 | `declaration-track:3637153c63631a4095e94f587f18dd36ae07d057da08bbfbbde93de7f51d7ae8` |
| 2 | `structure` | [HomeomorphicBaselineCapability](../../../../../mathematics/Topology/GeneralTopology/Cantor/Variant5216783331a3585aabfd987d031048221f996d0a61a9282710bfe04411f67030.lean/declarations/homeomorphicbaselinecapability--953648e8695dc9f70d8efdaa.md) | 43 | `declaration-track:953648e8695dc9f70d8efdaa879146b2190dad9076dcf3006911248f12165133` |
| 3 | `theorem` | [compact_univ](../../../../../mathematics/Topology/GeneralTopology/Cantor/Variant5216783331a3585aabfd987d031048221f996d0a61a9282710bfe04411f67030.lean/declarations/compact-univ--e211753cf15777a2879b7328.md) | 57 | `result-track:e211753cf15777a2879b732875df80dd41a65871ef43688631d6ebce4e38f0fa` |
| 4 | `theorem` | [connected_subsets_are_singletons](../../../../../mathematics/Topology/GeneralTopology/Cantor/Variant5216783331a3585aabfd987d031048221f996d0a61a9282710bfe04411f67030.lean/declarations/connected-subsets-are-singletons--8b48deedef91441c94a9d077.md) | 64 | `result-track:8b48deedef91441c94a9d0776ad75c8b6cf2746cca62eb3676cafff037391239` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
