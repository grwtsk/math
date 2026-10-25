# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Graph.Variantb056e027dde8489fde7922b09fa9cbc45444e1492c5c5c3973d7d8879e04f958

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f799fb51d6bca32c268cc5e1c452cec7b8d7b2f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb056e027dde8489fde7922b09fa9cbc45444e1492c5c5c3973d7d8879e04f958.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb056e027dde8489fde7922b09fa9cbc45444e1492c5c5c3973d7d8879e04f958.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb056e027dde8489fde7922b09fa9cbc45444e1492c5c5c3973d7d8879e04f958.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f799fb51d6bca32c268cc5e1c452cec7b8d7b2f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb056e027dde8489fde7922b09fa9cbc45444e1492c5c5c3973d7d8879e04f958.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb056e027dde8489fde7922b09fa9cbc45444e1492c5c5c3973d7d8879e04f958.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Pipeline.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CanonicalFiber](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb056e027dde8489fde7922b09fa9cbc45444e1492c5c5c3973d7d8879e04f958.lean/declarations/canonicalfiber--7792947409540bdf53344549.md) | 15 | `declaration-track:7792947409540bdf5334454940c9c01a41cc52f01149b0165b455fae212ea33a` |
| 2 | `inductive` | [SourceEdgeKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb056e027dde8489fde7922b09fa9cbc45444e1492c5c5c3973d7d8879e04f958.lean/declarations/sourceedgekind--8a19e2cea61691cdbec5d343.md) | 30 | `declaration-track:8a19e2cea61691cdbec5d343c1a350b7aa583a8e0dfb3232e960ed1fdc71a2cd` |
| 3 | `structure` | [SourceVertex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb056e027dde8489fde7922b09fa9cbc45444e1492c5c5c3973d7d8879e04f958.lean/declarations/sourcevertex--4d08a4d96d47419139904f6f.md) | 40 | `declaration-track:4d08a4d96d47419139904f6f00692576bfa050bfae96a02c89494a9ed81295fe` |
| 4 | `structure` | [SourceEdge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb056e027dde8489fde7922b09fa9cbc45444e1492c5c5c3973d7d8879e04f958.lean/declarations/sourceedge--9a039b85b73738b55c0092be.md) | 48 | `declaration-track:9a039b85b73738b55c0092be6f877a823f8fa8068bee1a0cff187c2636b5fb27` |
| 5 | `def` | [buildShellExcluded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb056e027dde8489fde7922b09fa9cbc45444e1492c5c5c3973d7d8879e04f958.lean/declarations/buildshellexcluded--c0618346f1eeb981d37d8413.md) | 54 | `declaration-track:c0618346f1eeb981d37d84134700573ecf53f7c389d84aba5636c13f317cc576` |
| 6 | `theorem` | [lake_is_excluded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb056e027dde8489fde7922b09fa9cbc45444e1492c5c5c3973d7d8879e04f958.lean/declarations/lake-is-excluded--d8bb98341a9a4228fce277cf.md) | 57 | `result-track:d8bb98341a9a4228fce277cf2a20d1bbea463d46633bdf4c130a34254654b025` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
