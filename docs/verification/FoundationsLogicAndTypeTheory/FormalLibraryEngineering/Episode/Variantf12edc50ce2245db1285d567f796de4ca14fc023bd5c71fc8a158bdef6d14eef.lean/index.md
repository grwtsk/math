# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Episode.Variantf12edc50ce2245db1285d567f796de4ca14fc023bd5c71fc8a158bdef6d14eef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0499298b324dfa708230895660eba5df79c3d3a6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Episode/Variantf12edc50ce2245db1285d567f796de4ca14fc023bd5c71fc8a158bdef6d14eef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Episode/Variantf12edc50ce2245db1285d567f796de4ca14fc023bd5c71fc8a158bdef6d14eef.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Episode/Variantf12edc50ce2245db1285d567f796de4ca14fc023bd5c71fc8a158bdef6d14eef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0499298b324dfa708230895660eba5df79c3d3a6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Episode/Variantf12edc50ce2245db1285d567f796de4ca14fc023bd5c71fc8a158bdef6d14eef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Episode/Variantf12edc50ce2245db1285d567f796de4ca14fc023bd5c71fc8a158bdef6d14eef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Boundary` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MemoryKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Episode/Variantf12edc50ce2245db1285d567f796de4ca14fc023bd5c71fc8a158bdef6d14eef.lean/declarations/memorykind--ac7080f24eb3c4f9122cd592.md) | 15 | `declaration-track:ac7080f24eb3c4f9122cd592663e359f812ec8f2deb4650f62eea5fdc95dc874` |
| 2 | `def` | [MemoryKind.defaultSide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Episode/Variantf12edc50ce2245db1285d567f796de4ca14fc023bd5c71fc8a158bdef6d14eef.lean/declarations/memorykind-defaultside--aff98640db00210e52d31725.md) | 27 | `declaration-track:aff98640db00210e52d31725961c39a43ed8c9185273a1b604742af9f361292e` |
| 3 | `structure` | [MemoryVertex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Episode/Variantf12edc50ce2245db1285d567f796de4ca14fc023bd5c71fc8a158bdef6d14eef.lean/declarations/memoryvertex--ef91dffcee83d3a3bec29487.md) | 38 | `declaration-track:ef91dffcee83d3a3bec29487aa340099aee042309ac80efab9fbc0e3f685f9d6` |
| 4 | `def` | [MemoryVertex.usesDefaultBoundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Episode/Variantf12edc50ce2245db1285d567f796de4ca14fc023bd5c71fc8a158bdef6d14eef.lean/declarations/memoryvertex-usesdefaultboundary--4cc33c091f9bb63b545a07c6.md) | 51 | `declaration-track:4cc33c091f9bb63b545a07c6e937663d9f38dc8f8a286919ab8a44046ffa5142` |
| 5 | `theorem` | [episode_defaults_inner](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Episode/Variantf12edc50ce2245db1285d567f796de4ca14fc023bd5c71fc8a158bdef6d14eef.lean/declarations/episode-defaults-inner--69725ead65618ab3c7bff99d.md) | 54 | `result-track:69725ead65618ab3c7bff99dce1c2526c1c413e397a87daf3015b107e74f2d67` |
| 6 | `theorem` | [entity_defaults_outer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Episode/Variantf12edc50ce2245db1285d567f796de4ca14fc023bd5c71fc8a158bdef6d14eef.lean/declarations/entity-defaults-outer--25a7aaac4b9ccb1246ed9443.md) | 58 | `result-track:25a7aaac4b9ccb1246ed9443b09d52484589249df359805d22bb2526719a9c41` |
| 7 | `theorem` | [witness_defaults_bridge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Episode/Variantf12edc50ce2245db1285d567f796de4ca14fc023bd5c71fc8a158bdef6d14eef.lean/declarations/witness-defaults-bridge--66a5ad55712b7efac76f1724.md) | 62 | `result-track:66a5ad55712b7efac76f17244ded12ea95e7b64372f4c5c844803fdc296e1f84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
