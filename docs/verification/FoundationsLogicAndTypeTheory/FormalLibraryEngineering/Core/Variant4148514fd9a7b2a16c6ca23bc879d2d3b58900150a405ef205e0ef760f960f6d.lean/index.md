# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cb48ea4f9c2081a518861c4c7fa8116251a2655",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cb48ea4f9c2081a518861c4c7fa8116251a2655`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEval` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkUpperBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/declarations/checkupperbound--6b618d82b751df2426c1e7d4.md) | 41 | `declaration-track:6b618d82b751df2426c1e7d495675d36b68c0d32868c8ae8bd8b320b5da93293` |
| 2 | `def` | [checkLowerBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/declarations/checklowerbound--bdf297e876e8a8ce52c00feb.md) | 46 | `declaration-track:bdf297e876e8a8ce52c00feb1c78adb24193704e8b7b7e1f631be6e42085b5d3` |
| 3 | `def` | [checkStrictUpperBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/declarations/checkstrictupperbound--e687449ee7dc17256f87811f.md) | 51 | `declaration-track:e687449ee7dc17256f87811f5c8f4edeb1945aee374a7e37ec133005a619ee9b` |
| 4 | `def` | [checkStrictLowerBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/declarations/checkstrictlowerbound--bc6cfe0c3b1c5bf757434569.md) | 56 | `declaration-track:bc6cfe0c3b1c5bf75743456992776ea2545d053c32d0cf2841799bd76ca4d95d` |
| 5 | `theorem` | [verify_upper_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/declarations/verify-upper-bound--f2112ce65d6089d75e6079ea.md) | 68 | `result-track:f2112ce65d6089d75e6079ea3cec4770fae7200029b0ad20ea4455353a522a5a` |
| 6 | `theorem` | [verify_lower_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/declarations/verify-lower-bound--fd41bdf32638822b38e810ea.md) | 80 | `result-track:fd41bdf32638822b38e810ea858caa46104b22864ba0343f9a7199571a48dfc5` |
| 7 | `theorem` | [verify_strict_upper_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/declarations/verify-strict-upper-bound--461d7451a81eb9f8ba03a868.md) | 92 | `result-track:461d7451a81eb9f8ba03a868e3f5c924c3a41ba81f9f459f6043565612c0636a` |
| 8 | `theorem` | [verify_strict_lower_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/declarations/verify-strict-lower-bound--62b7bf03cb16c488f6a76286.md) | 104 | `result-track:62b7bf03cb16c488f6a762860398ca90636f9bde52344fad8dcad91332c25c04` |
| 9 | `theorem` | [verify_upper_bound_pt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/declarations/verify-upper-bound-pt--0ba540c3b5aec6c4f3e3f1c8.md) | 116 | `result-track:0ba540c3b5aec6c4f3e3f1c86ed4405e725f6f776cd8f62a35b27d1c28a454c4` |
| 10 | `theorem` | [verify_lower_bound_pt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/declarations/verify-lower-bound-pt--41dbb9db494dbe53da016d0a.md) | 123 | `result-track:41dbb9db494dbe53da016d0a9fe7936bc78439be0a1a2cae947511ae3091dc38` |
| 11 | `def` | [checkBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/declarations/checkbounds--bc4064b47aa966a5c9a371f3.md) | 132 | `declaration-track:bc4064b47aa966a5c9a371f3c260248169d3a2d3f8495d6d6693213027d5736b` |
| 12 | `theorem` | [verify_bounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/declarations/verify-bounds--f3fe17b8b35a57a786d87f64.md) | 136 | `result-track:f3fe17b8b35a57a786d87f64f3d28b10de72868a526fbbaaf231d3c5ab1b864d` |
| 13 | `def` | [checkPointLowerBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/declarations/checkpointlowerbound--e2bdf1806c96542ad42d8be1.md) | 148 | `declaration-track:e2bdf1806c96542ad42d8be135a0c079c5826680dcb5c31c566a08f029988193` |
| 14 | `def` | [checkPointUpperBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/declarations/checkpointupperbound--4602b6da7e4e87a8e05dfa7f.md) | 153 | `declaration-track:4602b6da7e4e87a8e05dfa7fe964f77392cdf2347e83d13920b2512bf229485c` |
| 15 | `theorem` | [verify_point_lower_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/declarations/verify-point-lower-bound--0578d2a9f9a7e715a23fc412.md) | 158 | `result-track:0578d2a9f9a7e715a23fc4120594637f10e80396eea5090d4ba0583cb85bab4f` |
| 16 | `theorem` | [verify_point_upper_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/declarations/verify-point-upper-bound--b77479cfdfbe6ebb61132290.md) | 170 | `result-track:b77479cfdfbe6ebb611322901dc91ab8e1ddb51d35801698aefe54ac068484d7` |
| 17 | `theorem` | [verify_argmax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/declarations/verify-argmax--1af1d52cffa94b8d84773387.md) | 186 | `result-track:1af1d52cffa94b8d84773387d4f49dbe44ff96d572c0177566a0ce58a2fc069a` |
| 18 | `theorem` | [verify_argmin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/declarations/verify-argmin--3de0ecc9f3e5315a3500f56f.md) | 199 | `result-track:3de0ecc9f3e5315a3500f56f565a514d91d05828d515e80d41217b0c02005642` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
