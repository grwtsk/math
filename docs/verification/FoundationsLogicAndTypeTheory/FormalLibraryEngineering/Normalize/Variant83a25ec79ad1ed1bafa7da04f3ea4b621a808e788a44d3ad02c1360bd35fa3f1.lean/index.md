# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Normalize.Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e5b649bce64a3cf398ed92e9f03985eb6633de4",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e5b649bce64a3cf398ed92e9f03985eb6633de4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence.Normalize` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Bicategory.Datatypes` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [evalComp_nil_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/evalcomp-nil-nil--f8b9f2d397036d381631d14c.md) | 32 | `result-track:f8b9f2d397036d381631d14ce0405d1899bc660dfd38accc3d871617163a8688` |
| 2 | `theorem` | [evalComp_nil_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/evalcomp-nil-cons--82f8052cd3d1ef94d6ae3646.md) | 36 | `result-track:82f8052cd3d1ef94d6ae3646e925c24caebea9a20e9c50b57a7c6ea6751c12fc` |
| 3 | `theorem` | [evalComp_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/evalcomp-cons--74006c66bdcd08c9218c4378.md) | 40 | `result-track:74006c66bdcd08c9218c4378fe297adeb11f073928d8d38d7a4f173da1d04f05` |
| 4 | `theorem` | [eval_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/eval-comp--cffe63d4178cebc08106ab75.md) | 45 | `result-track:cffe63d4178cebc08106ab75e2fa67a88ff44bc8262a485b39961ae608e1ed6e` |
| 5 | `theorem` | [eval_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/eval-of--07892d7908684f4a28474552.md) | 51 | `result-track:07892d7908684f4a284745525c434b7ec72753470c848b65893b0d9df1d122bb` |
| 6 | `theorem` | [eval_monoidalComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/eval-monoidalcomp--1ba92c16a7a3eda7bb1e1d2b.md) | 55 | `result-track:1ba92c16a7a3eda7bb1e1d2b1401b6171880de951e9356a95118ec50d78dbabf` |
| 7 | `theorem` | [evalWhiskerLeft_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/evalwhiskerleft-nil--dd418a7817af695507ff4df8.md) | 62 | `result-track:dd418a7817af695507ff4df8e80a6bc943ef96f8302d8f85c6680332fede86dc` |
| 8 | `theorem` | [evalWhiskerLeft_of_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/evalwhiskerleft-of-cons--be33967edeeb353847ad42fe.md) | 66 | `result-track:be33967edeeb353847ad42feffe6fec79f9712339ae857685ea18909b2b1759f` |
| 9 | `theorem` | [evalWhiskerLeft_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/evalwhiskerleft-comp--7d9e7d3630b5309de118ce1d.md) | 72 | `result-track:7d9e7d3630b5309de118ce1df1638a92578eeafc24b77e8590f7c598299857b3` |
| 10 | `theorem` | [evalWhiskerLeft_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/evalwhiskerleft-id--ee7ae9194824e3ff5fa08ea0.md) | 81 | `result-track:ee7ae9194824e3ff5fa08ea04b3da107e42dfdeae10c9445a7815516f170005e` |
| 11 | `theorem` | [eval_whiskerLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/eval-whiskerleft--053b034187b2bf242094be39.md) | 87 | `result-track:053b034187b2bf242094be3921d89216abb829088270689e69d19c20ed56e8fe` |
| 12 | `theorem` | [eval_whiskerRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/eval-whiskerright--afba4f387e98c291e3e6ae49.md) | 94 | `result-track:afba4f387e98c291e3e6ae4959a44c08d78980867b30231c703bb04d75c2d9cf` |
| 13 | `theorem` | [evalWhiskerRight_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/evalwhiskerright-nil--8bb8799bc64de05d4456fafd.md) | 102 | `result-track:8bb8799bc64de05d4456fafdcb4dcb8649c4a4b62bbdc5bb9055d36f6eb09a0b` |
| 14 | `theorem` | [evalWhiskerRightAux_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/evalwhiskerrightaux-of--d8880fca22c83e52b3b13cf5.md) | 106 | `result-track:d8880fca22c83e52b3b13cf5479ef7f89d394fb847e622fa2e61f5f3ad7c3863` |
| 15 | `theorem` | [evalWhiskerRight_cons_of_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/evalwhiskerright-cons-of-of--03f325e991b0ecc572b16fb0.md) | 110 | `result-track:03f325e991b0ecc572b16fb0f9b00670ec35915def245e26b477739db7ffef8a` |
| 16 | `theorem` | [evalWhiskerRight_cons_whisker](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/evalwhiskerright-cons-whisker--0e8695edaa97381357d2aefc.md) | 119 | `result-track:0e8695edaa97381357d2aefc7a3dd85968eb44eb11ef6cf63d5fe8ec604b2547` |
| 17 | `theorem` | [evalWhiskerRight_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/evalwhiskerright-comp--74595ebba1525b51a5565aa7.md) | 133 | `result-track:74595ebba1525b51a5565aa76bf76c4e9f43fc647015a9d418b697b1f03a6656` |
| 18 | `theorem` | [evalWhiskerRight_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/evalwhiskerright-id--bdf9574de1d7723dcef484da.md) | 142 | `result-track:bdf9574de1d7723dcef484da032ae06009b3db764b2c870bd1c3a259cd23d3bd` |
| 19 | `theorem` | [eval_bicategoricalComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/eval-bicategoricalcomp--a393a1da05dd30d6e0f153ab.md) | 148 | `result-track:a393a1da05dd30d6e0f153ab3f378afa77c1c6d9a412ffbdef0fbe4b4a992171` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/instance--4f86785ed89709d4ab8e4fac.md) | 158 | `declaration-track:4f86785ed89709d4ab8e4fac4b765f4db9de19dc604eef2876ed51cc0a4c4e2d` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/instance--facaf8de88ba59ce6a5d9890.md) | 216 | `declaration-track:facaf8de88ba59ce6a5d9890c7e1927df4a0ef5c7cea6d245e0cec7a793bab73` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/instance--bda49dd593a8b93c2edd3c6a.md) | 290 | `declaration-track:bda49dd593a8b93c2edd3c6a8de1e3de266371b38d76bb9b64e4760dfca5b3a1` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/instance--f86d09e6c2945dff4fa39c80.md) | 421 | `declaration-track:f86d09e6c2945dff4fa39c80c01aba230bd045419564e633c70d58e14ce03d82` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/instance--a9fecf07af769d0773706a33.md) | 439 | `declaration-track:a9fecf07af769d0773706a33db510c31560ee975469e4a18072a49ce68f4d4fb` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/instance--a0bfab2fda5e96ab7d6623f4.md) | 533 | `declaration-track:a0bfab2fda5e96ab7d6623f4b912c6aba572336361571fe83df812be8211fa23` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant83a25ec79ad1ed1bafa7da04f3ea4b621a808e788a44d3ad02c1360bd35fa3f1.lean/declarations/instance--82a861e134e58fab16bf2e27.md) | 545 | `declaration-track:82a861e134e58fab16bf2e27dde38c4527b74ee62fca96dfd3ac524096ed2799` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
