# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Filter.Variantc249dd53bc85d2f5f108b5ab547bed90b4ffc21d1357e0c4e283662de1f0f258

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9912b60b505c3af4acbb8d7292eb7da92c92d22",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variantc249dd53bc85d2f5f108b5ab547bed90b4ffc21d1357e0c4e283662de1f0f258.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variantc249dd53bc85d2f5f108b5ab547bed90b4ffc21d1357e0c4e283662de1f0f258.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variantc249dd53bc85d2f5f108b5ab547bed90b4ffc21d1357e0c4e283662de1f0f258.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9912b60b505c3af4acbb8d7292eb7da92c92d22`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variantc249dd53bc85d2f5f108b5ab547bed90b4ffc21d1357e0c4e283662de1f0f258.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variantc249dd53bc85d2f5f108b5ab547bed90b4ffc21d1357e0c4e283662de1f0f258.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Data.NameMap.AdditionalOperations` — import line 14; external provider; requires a separately pinned dependency.
- `ImportGraph.Graph.TransitiveClosure` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transitiveReduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variantc249dd53bc85d2f5f108b5ab547bed90b4ffc21d1357e0c4e283662de1f0f258.lean/declarations/transitivereduction--db8e42c28e0ecb54a961289b.md) | 34 | `declaration-track:db8e42c28e0ecb54a961289b0abfd4b072588a5fc0ec443ecccb56762b839f09` |
| 2 | `def` | [downstreamOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variantc249dd53bc85d2f5f108b5ab547bed90b4ffc21d1357e0c4e283662de1f0f258.lean/declarations/downstreamof--f73b88f5c47696e884061c8e.md) | 40 | `declaration-track:f73b88f5c47696e884061c8eade5b268b81ec36b336af46de703997064d006fb` |
| 3 | `def` | [upstreamOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variantc249dd53bc85d2f5f108b5ab547bed90b4ffc21d1357e0c4e283662de1f0f258.lean/declarations/upstreamof--b40a596daa68556e59d1e71c.md) | 50 | `declaration-track:b40a596daa68556e59d1e71c139c9c50723ce4125ad2071861dd64740e61e785` |
| 4 | `def` | [transitiveFilteredUpstream](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variantc249dd53bc85d2f5f108b5ab547bed90b4ffc21d1357e0c4e283662de1f0f258.lean/declarations/transitivefilteredupstream--ed641a4aae8ae50d015f54cb.md) | 69 | `declaration-track:ed641a4aae8ae50d015f54cb92d5235e8bf6f5b32704fe38f6dbcff28962b982` |
| 5 | `def` | [filterGraph](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variantc249dd53bc85d2f5f108b5ab547bed90b4ffc21d1357e0c4e283662de1f0f258.lean/declarations/filtergraph--c7c4f681dede97f298b287c5.md) | 93 | `declaration-track:c7c4f681dede97f298b287c52709cf2cc4db6627e8c30e8acb6797e294859786` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
