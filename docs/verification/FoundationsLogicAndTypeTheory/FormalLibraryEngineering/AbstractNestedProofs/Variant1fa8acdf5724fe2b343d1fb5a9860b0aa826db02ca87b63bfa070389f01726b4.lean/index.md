# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AbstractNestedProofs.Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16cf57a7efe3e9ed45fe4659358e945a34227b24",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16cf57a7efe3e9ed45fe4659358e945a34227b24`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean.json)

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
| 1 | `def` | [abstractProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean/declarations/abstractproof--d187d23f5dc504e8ace59be8.md) | 26 | `declaration-track:d187d23f5dc504e8ace59be8f504fa8ed53673b7393b8c8230bbf82d4bf71ed1` |
| 2 | `def` | [getLambdaBody](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean/declarations/getlambdabody--f23a26f14a27921eb1068ff0.md) | 43 | `declaration-track:f23a26f14a27921eb1068ff05bcb912976ee7ab1a0caccc02e8954e8d0ae3271` |
| 3 | `def` | [isNonTrivialProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean/declarations/isnontrivialproof--3a3ddefe123ed4cfdb62f1da.md) | 48 | `declaration-track:3a3ddefe123ed4cfdb62f1da9892530b9c317bb43d877a2df7c35de8c02a8878` |
| 4 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean/declarations/context--183856fa42fb63af64774b5e.md) | 75 | `declaration-track:183856fa42fb63af64774b5ea1a2d581a2a0e735faf52fa07b06cccd77fc64a9` |
| 5 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean/declarations/m--51ab5ab038d9c7feb5cd1e24.md) | 78 | `declaration-track:51ab5ab038d9c7feb5cd1e24feaa592b8c999e8b7267925b6e66528b1efb2b82` |
| 6 | `def` | [visit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean/declarations/visit--1bf13b215a2740c16e6140b4.md) | 80 | `declaration-track:1bf13b215a2740c16e6140b47d141175b41c8d140e922607a43dbaa0b0da45e1` |
| 7 | `def` | [abstractNestedProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean/declarations/abstractnestedproofs--a79c74784c7c993e40be49ed.md) | 119 | `declaration-track:a79c74784c7c993e40be49ed8fc4db4c30dc4d1eb60e903c7fe144ad536d806a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
