# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sum.Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37f92c9c479dc627c20ca8a92ccf3e3400f820aa",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37f92c9c479dc627c20ca8a92ccf3e3400f820aa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum--fcfea12ee958c95e1cd5ca55.md) | 30 | `declaration-track:fcfea12ee958c95e1cd5ca55c46e4b5f4838d958e90c73fb292333039573b320` |
| 2 | `theorem` | [le_sum_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/le-sum-apply--689939b5e4ab69fe3361d33c.md) | 35 | `result-track:689939b5e4ab69fe3361d33cea369d2007d4169e940f1f5ff31a4275cfde6778` |
| 3 | `theorem` | [sum_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum-apply--a11dda4c2b63d9e5ed3399ad.md) | 39 | `result-track:a11dda4c2b63d9e5ed3399ad36751561bf730608ac33b99cfc3d5627ae044814` |
| 4 | `theorem` | [sum_apply₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum-apply--656b6c73d25ab4d00db02c5c.md) | 43 | `result-track:656b6c73d25ab4d00db02c5c7b7238586bf9e9dda852449e59c33be08d051fc7` |
| 5 | `theorem` | [sum_apply_of_countable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum-apply-of-countable--dc83c737faae99d9c9be0ce1.md) | 61 | `result-track:dc83c737faae99d9c9be0ce1e1050d6a2b08ab42ba790d2d33a8c79c73884d33` |
| 6 | `theorem` | [le_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/le-sum--af0a82459bd2ab2bc26decbc.md) | 70 | `result-track:af0a82459bd2ab2bc26decbc2023a04183d9a8f9268c8c962cac700ee51f328f` |
| 7 | `theorem` | [sum_apply_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum-apply-eq-zero--7b89fe29ee26346fe5a138eb.md) | 74 | `result-track:7b89fe29ee26346fe5a138eb8bb7a3052a56928fd224144704f5eac75b68713f` |
| 8 | `theorem` | [sum_apply_eq_zero'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum-apply-eq-zero--a0550017884a09bf51dccb08.md) | 78 | `result-track:a0550017884a09bf51dccb083e72c696500c0fad0ac71ac5c29932a3e10454e0` |
| 9 | `lemma` | [sum_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum-eq-zero--0f7ba08f7dcbe0d6aeb5c834.md) | 81 | `result-track:0f7ba08f7dcbe0d6aeb5c834cd9a8d23630bbfbb4c69b93c6474d971f9b0b981` |
| 10 | `lemma` | [sum_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum-zero--c1c33200ea114ce64609d0ec.md) | 85 | `result-track:c1c33200ea114ce64609d0ec84517ac78a2a07f98c3d02959a218d4b61305c66` |
| 11 | `theorem` | [sum_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum-sum--868a118be68dfe271afbd3b1.md) | 89 | `result-track:868a118be68dfe271afbd3b100431e515e5d8b6d6301cd33fe72bbecc9b9d8fa` |
| 12 | `theorem` | [sum_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum-comm--5b1459495ff4f361b68ab44f.md) | 94 | `result-track:5b1459495ff4f361b68ab44f1ff1d211d63aa36d52149f52d727ac9a9eeab01c` |
| 13 | `theorem` | [ae_sum_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/ae-sum-iff--7614223525839e741f958e34.md) | 100 | `result-track:7614223525839e741f958e34271a42f7427da7f0a60fca05bbe406c20db5d182` |
| 14 | `theorem` | [ae_sum_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/ae-sum-iff--5d39310462a74c7863e52285.md) | 104 | `result-track:5d39310462a74c7863e52285df7b922569996d5fdb411f9d25ed8159e5820a3a` |
| 15 | `theorem` | [sum_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum-fintype--b879066ad0f3693854e32ffb.md) | 109 | `result-track:b879066ad0f3693854e32ffb69ca37e98d8bdc363fa134c8c3462352f8e83c40` |
| 16 | `theorem` | [sum_coe_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum-coe-finset--f1bae31ba3aeff8ac0f3f51e.md) | 113 | `result-track:f1bae31ba3aeff8ac0f3f51e4f1886f444427b90229a3950baac3512d98ea388` |
| 17 | `theorem` | [ae_sum_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/ae-sum-eq--0453e7ceafb55efc9493fce3.md) | 117 | `result-track:0453e7ceafb55efc9493fce3b8843c53d925fc8d4cad4db521e3c4c68921cdc6` |
| 18 | `theorem` | [sum_bool](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum-bool--565ce1e80b7b4ff7bddf68c8.md) | 120 | `result-track:565ce1e80b7b4ff7bddf68c8d9bdc44482ef69a1f8bd424cef7c9d166bd3f684` |
| 19 | `theorem` | [sum_cond](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum-cond--4d26e397de299b5be2565df7.md) | 123 | `result-track:4d26e397de299b5be2565df768c099ef0869349613c6209251fb38da31bb1380` |
| 20 | `theorem` | [sum_of_isEmpty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum-of-isempty--3873d7e4e86b72df7547f641.md) | 127 | `result-track:3873d7e4e86b72df7547f64149087fcc684bd41caffe26ad69ee146bd090849e` |
| 21 | `theorem` | [sum_add_sum_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum-add-sum-compl--07db69d30000dad5bcb6035c.md) | 130 | `result-track:07db69d30000dad5bcb6035c17291f47eea2109b4224288aa8263fb9459ae1f9` |
| 22 | `theorem` | [sum_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum-congr--348bbc5d850e6bfbab0e3d99.md) | 136 | `result-track:348bbc5d850e6bfbab0e3d990a92e22b3121961884b7abc07fe0f037ac5c9e03` |
| 23 | `theorem` | [sum_add_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum-add-sum--8d1dead3ddc81352e90a53a1.md) | 139 | `result-track:8d1dead3ddc81352e90a53a1ac1391ee5e1e4f5ab9957c1f86e6f25c5c71330d` |
| 24 | `lemma` | [sum_comp_equiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum-comp-equiv--64f56158e6fdc08d47f14e2e.md) | 144 | `result-track:64f56158e6fdc08d47f14e2eb605b16360e6382d3b2ae063c611a2a6f96defa5` |
| 25 | `lemma` | [sum_extend_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/declarations/sum-extend-zero--c26b0dbe4db426a039545abc.md) | 149 | `result-track:c26b0dbe4db426a039545abc4678dc8624b32460c75feb367a2a33a2e59b0349` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
