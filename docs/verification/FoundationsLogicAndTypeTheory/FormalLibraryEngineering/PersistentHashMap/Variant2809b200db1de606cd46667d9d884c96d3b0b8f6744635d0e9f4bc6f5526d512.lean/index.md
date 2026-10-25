# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PersistentHashMap.Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4122f193b42541f7e4e5d059e30364739bee411e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4122f193b42541f7e4e5d059e30364739bee411e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Data.PersistentHashMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [insert'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512.lean/declarations/insert--1ddcac1241acae1716e37ef6.md) | 17 | `declaration-track:1ddcac1241acae1716e37ef666ed914acdf2a7b6b2820afbebe6489e8ae2d6ad` |
| 2 | `def` | [toArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512.lean/declarations/toarray--422b834960034519facda7d0.md) | 25 | `declaration-track:422b834960034519facda7d0d71c6cd32c48c309e2e679b5f9d09553604727e8` |
| 3 | `def` | [ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512.lean/declarations/oflist--1fd0cf36912bd1e3f9376e09.md) | 32 | `declaration-track:1fd0cf36912bd1e3f9376e097b989e9c7495cac15eb3aa587fb1cb76c6fcca8e` |
| 4 | `def` | [ofListWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512.lean/declarations/oflistwith--44a51a66595181df12977876.md) | 39 | `declaration-track:44a51a66595181df12977876931efb9ffe38be9a31038212fc07526a5cabfbd4` |
| 5 | `def` | [ofArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512.lean/declarations/ofarray--7d4f19c4fdf0cd5e8f9df8b6.md) | 50 | `declaration-track:7d4f19c4fdf0cd5e8f9df8b654a630b5c2625e3263c99e8b342bf130a450ae3c` |
| 6 | `def` | [ofArrayWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512.lean/declarations/ofarraywith--a969e62d8192a5538d75ab1c.md) | 57 | `declaration-track:a969e62d8192a5538d75ab1ce1a7858d468601d66b925e042b5cd8b5c705373e` |
| 7 | `def` | [mergeWithM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512.lean/declarations/mergewithm--a15fa76ba6c6469f58985cb4.md) | 69 | `declaration-track:a15fa76ba6c6469f58985cb4f4a45b3f2f672c7bc223a89bebee0005f96c58da` |
| 8 | `def` | [mergeWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512.lean/declarations/mergewith--331316e8eec75b9a8623dba0.md) | 81 | `declaration-track:331316e8eec75b9a8623dba076cc156dfda9ef9cd07dfacf8c29c368a0d4ee1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
