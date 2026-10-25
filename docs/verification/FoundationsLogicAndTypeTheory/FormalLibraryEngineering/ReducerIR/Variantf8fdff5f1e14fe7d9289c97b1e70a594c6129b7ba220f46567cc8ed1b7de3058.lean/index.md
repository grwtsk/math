# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReducerIR.Variantf8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "305c822d62614e7cdfc764542ab8a02bf347d920",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantf8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantf8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantf8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `305c822d62614e7cdfc764542ab8a02bf347d920`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantf8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantf8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantf8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058.lean/declarations/rep--0e6a87b88a3d82d65989dac6.md) | 13 | `declaration-track:0e6a87b88a3d82d65989dac65fd9450c43198311d31451115fff1bde82e2b1d7` |
| 2 | `def` | [Rep.Denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantf8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058.lean/declarations/rep-denote--cd9d64c42b1b3a06a5245d8b.md) | 20 | `declaration-track:cd9d64c42b1b3a06a5245d8b90d97ef1a37ffe142d579f4f339e8cea964fda2a` |
| 3 | `inductive` | [ReducerIR](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantf8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058.lean/declarations/reducerir--c04e3ae1f235bcf160e73b41.md) | 26 | `declaration-track:c04e3ae1f235bcf160e73b41b5bcc54f275eb8f8ad1b7bf812d0498b9604b4e9` |
| 4 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantf8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058.lean/declarations/eval--b414cb17ef57939001a3ae92.md) | 38 | `declaration-track:b414cb17ef57939001a3ae9287b7f9c91eb19d3d240e2d87e376f992553ee9d8` |
| 5 | `theorem` | [eval_identity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantf8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058.lean/declarations/eval-identity--2b33d11c96f1dbe152d687a6.md) | 48 | `result-track:2b33d11c96f1dbe152d687a6d2527246d82ff40ab52762044ed2781ccb5a17e5` |
| 6 | `theorem` | [eval_compose](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantf8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058.lean/declarations/eval-compose--7452ec8bd2ea59e7313e6905.md) | 53 | `result-track:7452ec8bd2ea59e7313e69056f457534fdbf6b79da7f3af47902d495ea42e57f` |
| 7 | `theorem` | [eval_sequenceModulo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantf8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058.lean/declarations/eval-sequencemodulo--5f557ced013e828592fafe4d.md) | 61 | `result-track:5f557ced013e828592fafe4d9f86226216abd4268a3698c49f14c1a3bb154540` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
