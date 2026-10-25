# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tarjan.Variantc7bf5a4f918cd3944cda23aa6a05fd03001cb50d415bfb4f25f6024a570e6a4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d80c26b1366a18ec4f43f01a1fe2885d7378c8dc",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variantc7bf5a4f918cd3944cda23aa6a05fd03001cb50d415bfb4f25f6024a570e6a4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variantc7bf5a4f918cd3944cda23aa6a05fd03001cb50d415bfb4f25f6024a570e6a4a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variantc7bf5a4f918cd3944cda23aa6a05fd03001cb50d415bfb4f25f6024a570e6a4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d80c26b1366a18ec4f43f01a1fe2885d7378c8dc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variantc7bf5a4f918cd3944cda23aa6a05fd03001cb50d415bfb4f25f6024a570e6a4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variantc7bf5a4f918cd3944cda23aa6a05fd03001cb50d415bfb4f25f6024a570e6a4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Order.Graph.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TarjanState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variantc7bf5a4f918cd3944cda23aa6a05fd03001cb50d415bfb4f25f6024a570e6a4a.lean/declarations/tarjanstate--270e5e9b93534cd8314e7224.md) | 26 | `declaration-track:270e5e9b93534cd8314e7224a826bd5314a3cd20fb70b126f1b7e63a3eef7401` |
| 2 | `def` | [tarjanDFS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variantc7bf5a4f918cd3944cda23aa6a05fd03001cb50d415bfb4f25f6024a570e6a4a.lean/declarations/tarjandfs--c39719f5a55e2c3d1b975978.md) | 41 | `declaration-track:c39719f5a55e2c3d1b9759780910da51f4fde33595a17b5070270fa077f70f02` |
| 3 | `def` | [findSCCsImp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variantc7bf5a4f918cd3944cda23aa6a05fd03001cb50d415bfb4f25f6024a570e6a4a.lean/declarations/findsccsimp--6ce942b1c24f4b61573cf386.md) | 76 | `declaration-track:6ce942b1c24f4b61573cf386374c5b6bedd2f57ce8de41a4e139754704fa04f6` |
| 4 | `def` | [findSCCs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variantc7bf5a4f918cd3944cda23aa6a05fd03001cb50d415bfb4f25f6024a570e6a4a.lean/declarations/findsccs--32fbeec37dfba4e85a1431c3.md) | 83 | `declaration-track:32fbeec37dfba4e85a1431c33c7a4e3dfeabfa3600d47da14efd3117ba96b19f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
