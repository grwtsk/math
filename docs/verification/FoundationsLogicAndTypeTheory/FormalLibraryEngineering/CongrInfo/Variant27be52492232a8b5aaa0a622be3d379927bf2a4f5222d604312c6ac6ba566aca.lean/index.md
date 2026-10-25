# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CongrInfo.Variant27be52492232a8b5aaa0a622be3d379927bf2a4f5222d604312c6ac6ba566aca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9530cf9ea30342e4ad39892ef4eb22712179932",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant27be52492232a8b5aaa0a622be3d379927bf2a4f5222d604312c6ac6ba566aca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant27be52492232a8b5aaa0a622be3d379927bf2a4f5222d604312c6ac6ba566aca.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant27be52492232a8b5aaa0a622be3d379927bf2a4f5222d604312c6ac6ba566aca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9530cf9ea30342e4ad39892ef4eb22712179932`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant27be52492232a8b5aaa0a622be3d379927bf2a4f5222d604312c6ac6ba566aca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant27be52492232a8b5aaa0a622be3d379927bf2a4f5222d604312c6ac6ba566aca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.FunInfo` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isFixedPrefix?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant27be52492232a8b5aaa0a622be3d379927bf2a4f5222d604312c6ac6ba566aca.lean/declarations/isfixedprefix--1c9a3d4dc2f3073b6f6e8502.md) | 21 | `declaration-track:1c9a3d4dc2f3073b6f6e85026aa803a83bbd5790e671130e98b5590c653fdb00` |
| 2 | `def` | [mkCongrInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant27be52492232a8b5aaa0a622be3d379927bf2a4f5222d604312c6ac6ba566aca.lean/declarations/mkcongrinfo--1df7e43b6acfcaf960cbb9e0.md) | 42 | `declaration-track:1df7e43b6acfcaf960cbb9e02e55dabc531c90b7af025371f28bf1ec87f16333` |
| 3 | `def` | [getCongrInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant27be52492232a8b5aaa0a622be3d379927bf2a4f5222d604312c6ac6ba566aca.lean/declarations/getcongrinfo--68fb48cb4abb5b06341c72ef.md) | 61 | `declaration-track:68fb48cb4abb5b06341c72ef40ad69098aba6a3cc77c297b7c46e0aae1dcdc8c` |
| 4 | `def` | [CongrInfo.toMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant27be52492232a8b5aaa0a622be3d379927bf2a4f5222d604312c6ac6ba566aca.lean/declarations/congrinfo-tomessagedata--9b5ce2a378975d3a59d28713.md) | 68 | `declaration-track:9b5ce2a378975d3a59d287133c723ef0c6cffa44370eb7556ff1ebc5a5c32a7c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant27be52492232a8b5aaa0a622be3d379927bf2a4f5222d604312c6ac6ba566aca.lean/declarations/instance--a7cc4121d923c78ef78f8a19.md) | 74 | `declaration-track:a7cc4121d923c78ef78f8a19d545c2640216035371409da02db3dfd94ca35767` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
