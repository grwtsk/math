# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SizeOfLemmas.Variantb0a2ecd3cd0c016a6ecf8820c1841b1c6cacc5705d97224aa9d579e0cee68dde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "732dcc758ba56f566a72d749b28fb63fe1f456d3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOfLemmas/Variantb0a2ecd3cd0c016a6ecf8820c1841b1c6cacc5705d97224aa9d579e0cee68dde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOfLemmas/Variantb0a2ecd3cd0c016a6ecf8820c1841b1c6cacc5705d97224aa9d579e0cee68dde.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOfLemmas/Variantb0a2ecd3cd0c016a6ecf8820c1841b1c6cacc5705d97224aa9d579e0cee68dde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `732dcc758ba56f566a72d749b28fb63fe1f456d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOfLemmas/Variantb0a2ecd3cd0c016a6ecf8820c1841b1c6cacc5705d97224aa9d579e0cee68dde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOfLemmas/Variantb0a2ecd3cd0c016a6ecf8820c1841b1c6cacc5705d97224aa9d579e0cee68dde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Internal.Linear` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Fin.sizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOfLemmas/Variantb0a2ecd3cd0c016a6ecf8820c1841b1c6cacc5705d97224aa9d579e0cee68dde.lean/declarations/fin-sizeof--43156202551bb9f9dc268c6b.md) | 25 | `result-track:43156202551bb9f9dc268c6b1d5ff8021c128bd0839b502ac981176eb314c997` |
| 2 | `theorem` | [BitVec.sizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOfLemmas/Variantb0a2ecd3cd0c016a6ecf8820c1841b1c6cacc5705d97224aa9d579e0cee68dde.lean/declarations/bitvec-sizeof--b6afe9f316f7a93e8a67afec.md) | 28 | `result-track:b6afe9f316f7a93e8a67afec396f7c856708f322cf594a74a8ef1c204f43af18` |
| 3 | `theorem` | [UInt8.sizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOfLemmas/Variantb0a2ecd3cd0c016a6ecf8820c1841b1c6cacc5705d97224aa9d579e0cee68dde.lean/declarations/uint8-sizeof--bcfe247a2617274cc2d08180.md) | 31 | `result-track:bcfe247a2617274cc2d0818055930e45a94ba9c7f3aa56e6d0da050a4e825288` |
| 4 | `theorem` | [UInt16.sizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOfLemmas/Variantb0a2ecd3cd0c016a6ecf8820c1841b1c6cacc5705d97224aa9d579e0cee68dde.lean/declarations/uint16-sizeof--837621449d222c120571bf01.md) | 34 | `result-track:837621449d222c120571bf019f7a7ecb4b2aebc00b1b463c7e5f4668ab35ae0a` |
| 5 | `theorem` | [UInt32.sizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOfLemmas/Variantb0a2ecd3cd0c016a6ecf8820c1841b1c6cacc5705d97224aa9d579e0cee68dde.lean/declarations/uint32-sizeof--2106049792b13b169c6aa4f1.md) | 37 | `result-track:2106049792b13b169c6aa4f1697f9f470626a7c8d97da55a2564a9b0fe9d52f0` |
| 6 | `theorem` | [UInt64.sizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOfLemmas/Variantb0a2ecd3cd0c016a6ecf8820c1841b1c6cacc5705d97224aa9d579e0cee68dde.lean/declarations/uint64-sizeof--0d6ca7410251d4ebe25e8ef5.md) | 40 | `result-track:0d6ca7410251d4ebe25e8ef51031504e81d7aa6aee41b79de61e5a3aac14699f` |
| 7 | `theorem` | [USize.sizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOfLemmas/Variantb0a2ecd3cd0c016a6ecf8820c1841b1c6cacc5705d97224aa9d579e0cee68dde.lean/declarations/usize-sizeof--f26e53adb7a3ae38d6819a03.md) | 43 | `result-track:f26e53adb7a3ae38d6819a03a6e165a547f0f0a22cd0e4a7f4dbedb4d95f8ba8` |
| 8 | `theorem` | [Char.sizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOfLemmas/Variantb0a2ecd3cd0c016a6ecf8820c1841b1c6cacc5705d97224aa9d579e0cee68dde.lean/declarations/char-sizeof--402d97fedb0621869c2d1a71.md) | 46 | `result-track:402d97fedb0621869c2d1a715adc3a669364b0fba378c0451291b1cf1176dada` |
| 9 | `theorem` | [Subtype.sizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOfLemmas/Variantb0a2ecd3cd0c016a6ecf8820c1841b1c6cacc5705d97224aa9d579e0cee68dde.lean/declarations/subtype-sizeof--147e5b20db3c0d1a71df7108.md) | 49 | `result-track:147e5b20db3c0d1a71df71086886834cc4f7ec30a73f5046dfff3878cc90c1ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
