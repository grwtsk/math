# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SingleFunctors.Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "733b5e39b340fa36b9b0262b8cec1720eaaeaf55",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `733b5e39b340fa36b9b0262b8cec1720eaaeaf55`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.CommShift` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SingleFunctors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/singlefunctors--12bfc2200909c0b3e8f94530.md) | 37 | `declaration-track:12bfc2200909c0b3e8f94530258c0ad7198db0844a24fe3b0aaeb27897eedc15` |
| 2 | `lemma` | [shiftIso_add_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/shiftiso-add-hom-app--bc846d1b32ac1b5227f12289.md) | 56 | `result-track:bc846d1b32ac1b5227f12289e1dc177cc1fc5b4748129007821cbb3f5def9602` |
| 3 | `lemma` | [shiftIso_add_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/shiftiso-add-inv-app--27be8394cc97f2501d769a3e.md) | 63 | `result-track:27be8394cc97f2501d769a3ed4b5d21e99487a68e60b4d04722ac079f17f68e3` |
| 4 | `lemma` | [shiftIso_add'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/shiftiso-add--f65f50fb93d5f9c9d06d6764.md) | 70 | `result-track:f65f50fb93d5f9c9d06d6764e3b82019c133b2a2da03ee4eb072959ce24910f0` |
| 5 | `lemma` | [shiftIso_add'_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/shiftiso-add-hom-app--56a6d6a7330231d088958854.md) | 78 | `result-track:56a6d6a7330231d0889588543b6f9da460548e017a60532ccaf223055eb982ac` |
| 6 | `lemma` | [shiftIso_add'_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/shiftiso-add-inv-app--4936af07f01f80b22e015e9e.md) | 85 | `result-track:4936af07f01f80b22e015e9eb70aba3cf4c349bd25cc1fbe6abf0f606fd98013` |
| 7 | `lemma` | [shiftIso_zero_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/shiftiso-zero-hom-app--a2f2e5ea8aba18cea909a1b6.md) | 94 | `result-track:a2f2e5ea8aba18cea909a1b6a6cd61203d04c0d843cb7ed85d4d577b8c54a78e` |
| 8 | `lemma` | [shiftIso_zero_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/shiftiso-zero-inv-app--16077f36dce83e2bc593fc7c.md) | 100 | `result-track:16077f36dce83e2bc593fc7c444d6786fb8604ae83c96d15b947941a703929d2` |
| 9 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/hom--d6d85aa006a0cd14fb505bdd.md) | 107 | `declaration-track:d6d85aa006a0cd14fb505bdd8967130daa024d04cb30a4690dd917a12c94aad7` |
| 10 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/id--56e9a8a97d6e4723a3a215cc.md) | 120 | `declaration-track:56e9a8a97d6e4723a3a215cc9ea917e6bc43dc37edc0f14ca2c5ee1d2363b1ff` |
| 11 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/comp--fd389fcec0193077ef3380b8.md) | 127 | `declaration-track:fd389fcec0193077ef3380b855070aeac395a42f51ba06ca9fe29c2f5baab1eb` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/instance--58a6071b374e363cd7616ccb.md) | 132 | `declaration-track:58a6071b374e363cd7616ccb11961efc3126d50db827df8d7999d792167e968a` |
| 13 | `lemma` | [id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/id-hom--553cf6775b9aceb94a30dd07.md) | 138 | `result-track:553cf6775b9aceb94a30dd073b20746a3d3f70c7994067a8871da0792b70f7b1` |
| 14 | `lemma` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/comp-hom--4d49752a5e332661282369c2.md) | 143 | `result-track:4d49752a5e332661282369c20ceab020ce033ce37446e71b84a080309f4ce695` |
| 15 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/hom-ext--e6cc0f1244f11efbb9dbaed0.md) | 146 | `result-track:e6cc0f1244f11efbb9dbaed0efbb3cd2035419990c092389bdaee039bbdc5108` |
| 16 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/isomk--1181f71bbf7f1adcd52377d4.md) | 151 | `declaration-track:1181f71bbf7f1adcd52377d4a3b99f1b5abbf3f1515b8e8d3f76c4c771194b8c` |
| 17 | `def` | [evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/evaluation--5bf0ba0b1b3ac80242c8c3d0.md) | 168 | `declaration-track:5bf0ba0b1b3ac80242c8c3d08a8322262292e8f7c4018df285810faf82ecd09a` |
| 18 | `lemma` | [hom_inv_id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/hom-inv-id-hom--c0e2c8794ea6783e5ee12a5a.md) | 175 | `result-track:c0e2c8794ea6783e5ee12a5a3c0f7873d0e0cdc89e973cbf532231618ed56490` |
| 19 | `lemma` | [inv_hom_id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/inv-hom-id-hom--c959aa3b520eea83c92f28a6.md) | 179 | `result-track:c959aa3b520eea83c92f28a6eb8c70f42cae66156a9f1b88be845282ae747b06` |
| 20 | `lemma` | [hom_inv_id_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/hom-inv-id-hom-app--2743d8183742f83677b5bea8.md) | 183 | `result-track:2743d8183742f83677b5bea89a7c7fb35f75ede7d29d49f81dcff17837514642` |
| 21 | `lemma` | [inv_hom_id_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/inv-hom-id-hom-app--241a7731d77cae6eca890f0c.md) | 188 | `result-track:241a7731d77cae6eca890f0cbde8ef6d3d1675b74e743640752a5a5df6dfe81b` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/instance--1548faff6254b2b8d46894b2.md) | 192 | `declaration-track:1548faff6254b2b8d46894b2f45760ca2a1a1f151197f60d8a144272ac80e8d1` |
| 23 | `def` | [postcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/postcomp--74a7129677e8b104a4268282.md) | 200 | `declaration-track:74a7129677e8b104a4268282c0157ae90e34808e09b330e207572a9649dd717b` |
| 24 | `def` | [postcompFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/postcompfunctor--8b7c77759b7dde7e5337a88f.md) | 224 | `declaration-track:8b7c77759b7dde7e5337a88f64acd38e365637d6a36cf5f180a9f68643446db2` |
| 25 | `def` | [postcompPostcompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/postcomppostcompiso--adf962a56dc1d86390733bc7.md) | 237 | `declaration-track:adf962a56dc1d86390733bc7d034c8aaa1e2b49ddfa3bd3eda8f3c0c7b3f1d83` |
| 26 | `def` | [postcompIsoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/declarations/postcompisoofiso--823119d9d64971ebc7f89d4d.md) | 246 | `declaration-track:823119d9d64971ebc7f89d4dfeda8ad20cfac8d44207102c31f5bf18515ff8f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
