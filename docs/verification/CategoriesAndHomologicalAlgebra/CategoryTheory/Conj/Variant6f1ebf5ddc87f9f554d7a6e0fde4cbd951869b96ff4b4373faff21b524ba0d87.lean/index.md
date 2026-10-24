# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Conj.Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcaa0953dd52d9e5869630f8702f2ec4c09cebb9",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcaa0953dd52d9e5869630f8702f2ec4c09cebb9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Endomorphism` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.HomCongr` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/declarations/conj--14019f725077a96432912219.md) | 36 | `declaration-track:14019f725077a96432912219ffc678bb801ca634cffb209c61dd023572f801ff` |
| 2 | `theorem` | [conj_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/declarations/conj-apply--5efef55433b21863764aab76.md) | 39 | `result-track:5efef55433b21863764aab767523e42d37dcba75ae68ef1e5c5ff6d09b506951` |
| 3 | `theorem` | [conj_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/declarations/conj-comp--3087f419f4441b451aa7fc64.md) | 43 | `result-track:3087f419f4441b451aa7fc6489d315fb348b4bf30a9aec618c9954aba11dff43` |
| 4 | `theorem` | [conj_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/declarations/conj-id--76b20a27a49a4d5de7fc6592.md) | 47 | `result-track:76b20a27a49a4d5de7fc6592cb7b320d4b198243b299008cf457e72724457486` |
| 5 | `theorem` | [refl_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/declarations/refl-conj--4cdc0e05f1f771f7096699e3.md) | 51 | `result-track:4cdc0e05f1f771f7096699e34fc3b052d8e6a7a0596d08c7e89f3fbdb3cf52f4` |
| 6 | `theorem` | [trans_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/declarations/trans-conj--b3fc97beab2e7293ac91a4b4.md) | 55 | `result-track:b3fc97beab2e7293ac91a4b42bc4b080f7f2fa8994f9476324c974cf9e5bd09d` |
| 7 | `theorem` | [symm_self_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/declarations/symm-self-conj--e463ff36d471ee3db3e879eb.md) | 59 | `result-track:e463ff36d471ee3db3e879ebfac72b035c8b6bc6c9d16ee967fd4b7ccf8e42b1` |
| 8 | `theorem` | [self_symm_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/declarations/self-symm-conj--7cede5af62bc1d40bc2b516d.md) | 63 | `result-track:7cede5af62bc1d40bc2b516debce0c84e7df7208e8d4b834903a5c477dcf6a60` |
| 9 | `theorem` | [conj_pow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/declarations/conj-pow--8a8f94749f33a7a2d9bde297.md) | 67 | `result-track:8a8f94749f33a7a2d9bde2974f064bac30c4141bba0bc8893c855d7df69ff7b8` |
| 10 | `def` | [conjAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/declarations/conjaut--84f6bd0ef7e2696367d913e0.md) | 72 | `declaration-track:84f6bd0ef7e2696367d913e0aa24dc1046f495fa3bdbdf99dbc98c3c84e47455` |
| 11 | `theorem` | [conjAut_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/declarations/conjaut-apply--914c084749b2a8a71e291a73.md) | 75 | `result-track:914c084749b2a8a71e291a739120f90485ad25b01a732de5bff80dc00a5b2117` |
| 12 | `theorem` | [conjAut_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/declarations/conjaut-hom--36e6f5a9dc71e964995ba5b3.md) | 78 | `result-track:36e6f5a9dc71e964995ba5b33f320fec8fbe3337a88d7c1a1a79aac71cd5ef16` |
| 13 | `theorem` | [trans_conjAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/declarations/trans-conjaut--46415b77736ad5a442ef8dab.md) | 82 | `result-track:46415b77736ad5a442ef8dabef63bdba57f6f3497c8f42eb03541a95e751cb86` |
| 14 | `theorem` | [conjAut_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/declarations/conjaut-mul--e08569d64ef82eb6b097e2ae.md) | 87 | `result-track:e08569d64ef82eb6b097e2aea582a1736646d6b52a314d46a583b8f4eac10b66` |
| 15 | `theorem` | [conjAut_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/declarations/conjaut-trans--ce69fb33b54b0dc4cfdbfefb.md) | 91 | `result-track:ce69fb33b54b0dc4cfdbfefb0a0afe9ab600e99fe89508a226f96de560bf08db` |
| 16 | `theorem` | [conjAut_pow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/declarations/conjaut-pow--5c8fbbe44234a4d1f6ec1046.md) | 95 | `result-track:5c8fbbe44234a4d1f6ec1046868ffda6b701be3ed5b17a6543f90f156dc84c95` |
| 17 | `theorem` | [conjAut_zpow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/declarations/conjaut-zpow--8c2e497f232e1aa8dd40d9b4.md) | 99 | `result-track:8c2e497f232e1aa8dd40d9b4af93c526ba7aeeeea5668e3bfe3f30775dcf13cc` |
| 18 | `theorem` | [map_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/declarations/map-conj--2421445b2dbb0a309c600000.md) | 110 | `result-track:2421445b2dbb0a309c600000eddbf015e7b18c1781ef60255f397570974cb62b` |
| 19 | `theorem` | [map_conjAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant6f1ebf5ddc87f9f554d7a6e0fde4cbd951869b96ff4b4373faff21b524ba0d87.lean/declarations/map-conjaut--f1dfe9456d1708dffadff7a8.md) | 114 | `result-track:f1dfe9456d1708dffadff7a8c71815ccbfdf344099c9005de3682e1e8ef36c96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
