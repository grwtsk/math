# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Filter.Variant9ea095fc994e9b66411307e249d2cf7c0d63e6f98559ee7d4d362c4693fab592

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0db5a2514f56ce2d4290c2ec7739ac6cd42c812e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variant9ea095fc994e9b66411307e249d2cf7c0d63e6f98559ee7d4d362c4693fab592.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variant9ea095fc994e9b66411307e249d2cf7c0d63e6f98559ee7d4d362c4693fab592.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variant9ea095fc994e9b66411307e249d2cf7c0d63e6f98559ee7d4d362c4693fab592.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0db5a2514f56ce2d4290c2ec7739ac6cd42c812e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variant9ea095fc994e9b66411307e249d2cf7c0d63e6f98559ee7d4d362c4693fab592.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variant9ea095fc994e9b66411307e249d2cf7c0d63e6f98559ee7d4d362c4693fab592.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Data.NameMap.AdditionalOperations` — import line 9; external provider; requires a separately pinned dependency.
- `ImportGraph.Graph.TransitiveClosure` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transitiveReduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variant9ea095fc994e9b66411307e249d2cf7c0d63e6f98559ee7d4d362c4693fab592.lean/declarations/transitivereduction--dc2ec04de3337546662cb66a.md) | 26 | `declaration-track:dc2ec04de3337546662cb66a32781dd704e8afb7bb80a2c415c7162122e85387` |
| 2 | `def` | [downstreamOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variant9ea095fc994e9b66411307e249d2cf7c0d63e6f98559ee7d4d362c4693fab592.lean/declarations/downstreamof--f8fe6a8d8f791e7f86ac3f61.md) | 32 | `declaration-track:f8fe6a8d8f791e7f86ac3f6171a4e3e29dca5b6fad287c667f6fbbfb7f863559` |
| 3 | `def` | [upstreamOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variant9ea095fc994e9b66411307e249d2cf7c0d63e6f98559ee7d4d362c4693fab592.lean/declarations/upstreamof--8577819203958e68c44e8ce1.md) | 42 | `declaration-track:8577819203958e68c44e8ce130b4563dd5bf97929a50da13b5251dd6d0f05804` |
| 4 | `def` | [transitiveFilteredUpstream](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variant9ea095fc994e9b66411307e249d2cf7c0d63e6f98559ee7d4d362c4693fab592.lean/declarations/transitivefilteredupstream--c6ed3f6591b5fce1f19b1940.md) | 61 | `declaration-track:c6ed3f6591b5fce1f19b19402334f1983dd8663ddde96b2578d3003600c68b97` |
| 5 | `def` | [filterGraph](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variant9ea095fc994e9b66411307e249d2cf7c0d63e6f98559ee7d4d362c4693fab592.lean/declarations/filtergraph--5074fbcd5cf761c9aaa89e45.md) | 85 | `declaration-track:5074fbcd5cf761c9aaa89e45bec4902ef3b8dd2ef7402a14171d452c46965a0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
