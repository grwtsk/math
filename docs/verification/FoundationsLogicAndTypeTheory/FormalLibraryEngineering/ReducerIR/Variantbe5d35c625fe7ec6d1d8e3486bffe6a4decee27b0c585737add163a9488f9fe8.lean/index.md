# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReducerIR.Variantbe5d35c625fe7ec6d1d8e3486bffe6a4decee27b0c585737add163a9488f9fe8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76177d56d4f42c64a51c5ce0bbfb11698bb48bae",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantbe5d35c625fe7ec6d1d8e3486bffe6a4decee27b0c585737add163a9488f9fe8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantbe5d35c625fe7ec6d1d8e3486bffe6a4decee27b0c585737add163a9488f9fe8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantbe5d35c625fe7ec6d1d8e3486bffe6a4decee27b0c585737add163a9488f9fe8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76177d56d4f42c64a51c5ce0bbfb11698bb48bae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantbe5d35c625fe7ec6d1d8e3486bffe6a4decee27b0c585737add163a9488f9fe8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantbe5d35c625fe7ec6d1d8e3486bffe6a4decee27b0c585737add163a9488f9fe8.lean.json)

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
| 1 | `inductive` | [Rep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantbe5d35c625fe7ec6d1d8e3486bffe6a4decee27b0c585737add163a9488f9fe8.lean/declarations/rep--4417e036325874efdcda32d7.md) | 13 | `declaration-track:4417e036325874efdcda32d7f9e9b81585746adddd5c69475aef205631f18dcd` |
| 2 | `def` | [Rep.Denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantbe5d35c625fe7ec6d1d8e3486bffe6a4decee27b0c585737add163a9488f9fe8.lean/declarations/rep-denote--75f45f753c4c65cf7f28b9e7.md) | 20 | `declaration-track:75f45f753c4c65cf7f28b9e77d57df5d266275ed76ed18d3ce0d400c71cc309c` |
| 3 | `inductive` | [ReducerIR](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantbe5d35c625fe7ec6d1d8e3486bffe6a4decee27b0c585737add163a9488f9fe8.lean/declarations/reducerir--b42c5dfeb1415d2e762e6ff5.md) | 26 | `declaration-track:b42c5dfeb1415d2e762e6ff55552f80f3be93a48d2b057551fb21a221755e879` |
| 4 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantbe5d35c625fe7ec6d1d8e3486bffe6a4decee27b0c585737add163a9488f9fe8.lean/declarations/eval--3c0e6ce193555748f817a1f4.md) | 38 | `declaration-track:3c0e6ce193555748f817a1f479c266c254220fc682ad2cd78ce4698bded79ca4` |
| 5 | `theorem` | [eval_identity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantbe5d35c625fe7ec6d1d8e3486bffe6a4decee27b0c585737add163a9488f9fe8.lean/declarations/eval-identity--a75ecd2c3e2c2bb4742adf14.md) | 48 | `result-track:a75ecd2c3e2c2bb4742adf14265ffee0229cbdafabfa55e7a3474b8b4d14085b` |
| 6 | `theorem` | [eval_compose](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantbe5d35c625fe7ec6d1d8e3486bffe6a4decee27b0c585737add163a9488f9fe8.lean/declarations/eval-compose--038adf6d2e96e67966b570d7.md) | 53 | `result-track:038adf6d2e96e67966b570d71fd7ee1a72bc686e75ded39e955576fda08f93df` |
| 7 | `theorem` | [eval_sequenceModulo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variantbe5d35c625fe7ec6d1d8e3486bffe6a4decee27b0c585737add163a9488f9fe8.lean/declarations/eval-sequencemodulo--451a135780aa27c4f93ab510.md) | 61 | `result-track:451a135780aa27c4f93ab5109721cdd9eeb6821da8f04655ac8a745274f76d27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
