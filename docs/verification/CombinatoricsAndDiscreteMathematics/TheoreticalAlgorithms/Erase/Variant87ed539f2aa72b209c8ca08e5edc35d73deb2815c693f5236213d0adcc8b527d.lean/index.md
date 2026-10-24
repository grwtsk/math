# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Erase.Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4d2441eb5600cb48cf05e1734e8aafd652d1c11",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4d2441eb5600cb48cf05e1734e8aafd652d1c11`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Erase` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [getElem?_eraseIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/declarations/getelem-eraseidx--e3f36a9f18d2501cbce490fe.md) | 23 | `result-track:e3f36a9f18d2501cbce490fe75ea63a67e7c1905efd859fc5c539cfa4d7e57ae` |
| 2 | `theorem` | [getElem?_eraseIdx_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/declarations/getelem-eraseidx-of-lt--326d8238b1a8938adea5f3a2.md) | 46 | `result-track:326d8238b1a8938adea5f3a247066437a3c405692089f69b1e4fd059ef70e69b` |
| 3 | `theorem` | [getElem?_eraseIdx_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/declarations/getelem-eraseidx-of-ge--d6b60ff215b7094538bbfb34.md) | 51 | `result-track:d6b60ff215b7094538bbfb3438d37412525f0c4ffb2124fe618be773b13fac73` |
| 4 | `theorem` | [getElem_eraseIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/declarations/getelem-eraseidx--d024714839f54e5468db898b.md) | 59 | `result-track:d024714839f54e5468db898bb269504e30a05e5a63cd9049465302fefccc107e` |
| 5 | `theorem` | [getElem_eraseIdx_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/declarations/getelem-eraseidx-of-lt--cac5d9cc71dafa44464b01f4.md) | 68 | `result-track:cac5d9cc71dafa44464b01f4725b524059e4f9c5582a3bd419c2a6cb66337574` |
| 6 | `theorem` | [getElem_eraseIdx_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/declarations/getelem-eraseidx-of-ge--f35ec0fd43a87f286730afa3.md) | 75 | `result-track:f35ec0fd43a87f286730afa30b60ae6db1944226d90a3bed017fd1053e9e7ffd` |
| 7 | `theorem` | [eraseIdx_eq_dropLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/declarations/eraseidx-eq-droplast--ea0923c4c62859897157d01a.md) | 80 | `result-track:ea0923c4c62859897157d01aff3a5c736f57be04ca079972b00f5a7e4697ab11` |
| 8 | `theorem` | [eraseIdx_set_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/declarations/eraseidx-set-eq--f86c0c23a352032416e12113.md) | 85 | `result-track:f86c0c23a352032416e12113b71802b401f73fdc24ac7579065f93a5dfca67cc` |
| 9 | `theorem` | [eraseIdx_set_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/declarations/eraseidx-set-lt--acd70aa05740a45ecc87f5ea.md) | 95 | `result-track:acd70aa05740a45ecc87f5ea415685b6d7c1be2f607be8e11c45ae8a63ea5795` |
| 10 | `theorem` | [eraseIdx_set_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/declarations/eraseidx-set-gt--5ed8c5c193d2a4afa4a3af8f.md) | 117 | `result-track:5ed8c5c193d2a4afa4a3af8f38a91095d0e072f593e6238f8cc7b151c8461fd3` |
| 11 | `theorem` | [eraseIdx_set](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/declarations/eraseidx-set--56d8001b74baceaf3149205b.md) | 134 | `result-track:56d8001b74baceaf3149205b19f8e622bfc13f1c5973a2db77e35c3710d3f20b` |
| 12 | `theorem` | [set_eraseIdx_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/declarations/set-eraseidx-le--2fda5521d18f65ec15e3afed.md) | 151 | `result-track:2fda5521d18f65ec15e3afeda470e896ed9f0e21fa197c28788a9af4692f85ec` |
| 13 | `theorem` | [set_eraseIdx_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/declarations/set-eraseidx-gt--c5445354b3d55ff21397a9a9.md) | 157 | `result-track:c5445354b3d55ff21397a9a9387992c374cd710761be185844e62b031061b694` |
| 14 | `theorem` | [set_eraseIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/declarations/set-eraseidx--f2ca06481953215ddffd4b62.md) | 163 | `result-track:f2ca06481953215ddffd4b6289055f135c9b81106af3a78ab3c54a0de3d573f6` |
| 15 | `theorem` | [set_getElem_succ_eraseIdx_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/declarations/set-getelem-succ-eraseidx-succ--402e9252e830eae045b2ed61.md) | 175 | `result-track:402e9252e830eae045b2ed6164b0576db249a4446954122f5401db230c7a8c6d` |
| 16 | `theorem` | [eraseIdx_length_sub_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/declarations/eraseidx-length-sub-one--639a463ad59ba4f2802b5586.md) | 195 | `result-track:639a463ad59ba4f2802b5586262a031e3bb7b8a451acd8aab32fa4ec862fec59` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
