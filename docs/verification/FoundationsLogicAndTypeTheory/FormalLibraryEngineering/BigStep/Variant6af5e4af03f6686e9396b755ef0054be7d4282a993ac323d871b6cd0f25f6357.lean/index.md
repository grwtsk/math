# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BigStep.Variant6af5e4af03f6686e9396b755ef0054be7d4282a993ac323d871b6cd0f25f6357

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77a948cc780389693179087e57b8ea51ea218bfe",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variant6af5e4af03f6686e9396b755ef0054be7d4282a993ac323d871b6cd0f25f6357.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variant6af5e4af03f6686e9396b755ef0054be7d4282a993ac323d871b6cd0f25f6357.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variant6af5e4af03f6686e9396b755ef0054be7d4282a993ac323d871b6cd0f25f6357.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77a948cc780389693179087e57b8ea51ea218bfe`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variant6af5e4af03f6686e9396b755ef0054be7d4282a993ac323d871b6cd0f25f6357.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variant6af5e4af03f6686e9396b755ef0054be7d4282a993ac323d871b6cd0f25f6357.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Variable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variant6af5e4af03f6686e9396b755ef0054be7d4282a993ac323d871b6cd0f25f6357.lean/declarations/variable--868b09b844222982b226ed08.md) | 19 | `declaration-track:868b09b844222982b226ed0811fe5172ab891d9a03c0f506df6218f50e0aa2d7` |
| 2 | `def` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variant6af5e4af03f6686e9396b755ef0054be7d4282a993ac323d871b6cd0f25f6357.lean/declarations/state--1a0030f1bd3ec3884af7b0b8.md) | 21 | `declaration-track:1a0030f1bd3ec3884af7b0b8e468cbba094f6033ef597558228d434c4b269a51` |
| 3 | `inductive` | [Stmt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variant6af5e4af03f6686e9396b755ef0054be7d4282a993ac323d871b6cd0f25f6357.lean/declarations/stmt--ce2a23f9528e2f59e0e02003.md) | 23 | `declaration-track:ce2a23f9528e2f59e0e02003624f840877a4ee04daae8b9c65f5addeb9ddcea8` |
| 4 | `inductive` | [BigStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variant6af5e4af03f6686e9396b755ef0054be7d4282a993ac323d871b6cd0f25f6357.lean/declarations/bigstep--f725e304d4ac19a8f04d3366.md) | 37 | `declaration-track:f725e304d4ac19a8f04d336602582d778b778bf9b6edd9e95b0206ea35404831` |
| 5 | `theorem` | [cases_if_of_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variant6af5e4af03f6686e9396b755ef0054be7d4282a993ac323d871b6cd0f25f6357.lean/declarations/cases-if-of-true--4d9062a697ce5cc0d471bebe.md) | 62 | `result-track:4d9062a697ce5cc0d471bebe03ef926d8c0d5e4a1581695daeb709bd08afce1c` |
| 6 | `theorem` | [cases_if_of_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variant6af5e4af03f6686e9396b755ef0054be7d4282a993ac323d871b6cd0f25f6357.lean/declarations/cases-if-of-false--f7b9163fde4f3336002e289c.md) | 66 | `result-track:f7b9163fde4f3336002e289c4701d9ca4694c78c3567bec6b7e8a68b7d8c1140` |
| 7 | `theorem` | [and_excluded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variant6af5e4af03f6686e9396b755ef0054be7d4282a993ac323d871b6cd0f25f6357.lean/declarations/and-excluded--3f78856917d1d38edd801730.md) | 70 | `result-track:3f78856917d1d38edd801730937bd059ce4cf372c968f0d16233c62f34332921` |
| 8 | `theorem` | [if_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variant6af5e4af03f6686e9396b755ef0054be7d4282a993ac323d871b6cd0f25f6357.lean/declarations/if-iff--4c9397bbe198b9968d9f55a9.md) | 73 | `result-track:4c9397bbe198b9968d9f55a9efce87ef2596968bcc531fe0ba7fa4bb1d5cc5a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
