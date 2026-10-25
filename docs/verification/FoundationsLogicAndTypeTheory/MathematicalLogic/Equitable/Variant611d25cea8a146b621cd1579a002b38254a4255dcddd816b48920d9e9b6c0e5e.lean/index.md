# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equitable.Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "694cb4b2fcdaca8e378da5cfc40a1cfa1c787cde",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `694cb4b2fcdaca8e378da5cfc40a1cfa1c787cde`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EquitableOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean/declarations/equitableon--0d7928535207923243e1f51a.md) | 29 | `declaration-track:0d7928535207923243e1f51ac729ad40a099e42a722e38b422270135b8b6ff3f` |
| 2 | `theorem` | [equitableOn_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean/declarations/equitableon-empty--303d8c0975760e8f15a71f93.md) | 33 | `result-track:303d8c0975760e8f15a71f939b003490514ed3dcda5e9d59a14e3644c6d71f6e` |
| 3 | `theorem` | [equitableOn_iff_exists_le_le_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean/declarations/equitableon-iff-exists-le-le-add-one--5b3ea990af76d560ec4c6654.md) | 36 | `result-track:5b3ea990af76d560ec4c6654fca5b23a5decfc99b4ea53011babe5c6d94248d3` |
| 4 | `theorem` | [equitableOn_iff_exists_image_subset_icc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean/declarations/equitableon-iff-exists-image-subset-icc--7ae7935d13bfbbba0a2e78d0.md) | 50 | `result-track:7ae7935d13bfbbba0a2e78d0b10c5669b3ca3f7430572baa252816d6538d7efa` |
| 5 | `theorem` | [equitableOn_iff_exists_eq_eq_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean/declarations/equitableon-iff-exists-eq-eq-add-one--74b1c37b9b4d74e8e6f1fdd3.md) | 54 | `result-track:74b1c37b9b4d74e8e6f1fdd3d0aeaec3028e54555c64d3035fbab34fd5604eb0` |
| 6 | `lemma` | [not_equitableOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean/declarations/not-equitableon--1a933bb1b0b6773703ea44bd.md) | 62 | `result-track:1a933bb1b0b6773703ea44bd51aecd1be62b3616d2f5b6518c26da49633be8a5` |
| 7 | `theorem` | [Subsingleton.equitableOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean/declarations/subsingleton-equitableon--0e207bcb113f569c3ea271b0.md) | 71 | `result-track:0e207bcb113f569c3ea271b0adda306c32fe8e20eae05b63d16dd605aecb0266` |
| 8 | `theorem` | [equitableOn_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean/declarations/equitableon-singleton--1d3d733dfa0dd854b91b5eea.md) | 76 | `result-track:1d3d733dfa0dd854b91b5eeaf009c8936296406a3c1b7d885f2b92536325740c` |
| 9 | `theorem` | [equitableOn_iff_le_le_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean/declarations/equitableon-iff-le-le-add-one--ba47b878f75652c7a87600be.md) | 89 | `result-track:ba47b878f75652c7a87600be8c68feb7ff9fafb3725ea181ff98251fa4967466` |
| 10 | `theorem` | [EquitableOn.le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean/declarations/equitableon-le--b9165efdcef19e72e5d1b8eb.md) | 111 | `result-track:b9165efdcef19e72e5d1b8eb0fcfb4b10b98f3518bd49d09c0bcb55809c01095` |
| 11 | `theorem` | [EquitableOn.le_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean/declarations/equitableon-le-add-one--8d11406812a67813b9a8dcc7.md) | 115 | `result-track:8d11406812a67813b9a8dcc73bf6dcd47d7a1c4856d70b39cc886a65e1a60ae0` |
| 12 | `theorem` | [equitableOn_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant611d25cea8a146b621cd1579a002b38254a4255dcddd816b48920d9e9b6c0e5e.lean/declarations/equitableon-iff--5425f02106e750d299c2fac5.md) | 119 | `result-track:5425f02106e750d299c2fac5f601ec785fc4c822f8f741e6e97fea2491a399a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
