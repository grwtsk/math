# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Realization.Variant5693f62987a79cc5dc53038b8a84e38485106cf13e2dbb38079df746ee7b12d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db3acc3690ef38ef64775f6aad86bffbf505816e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Variant5693f62987a79cc5dc53038b8a84e38485106cf13e2dbb38079df746ee7b12d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Variant5693f62987a79cc5dc53038b8a84e38485106cf13e2dbb38079df746ee7b12d4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Variant5693f62987a79cc5dc53038b8a84e38485106cf13e2dbb38079df746ee7b12d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db3acc3690ef38ef64775f6aad86bffbf505816e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Variant5693f62987a79cc5dc53038b8a84e38485106cf13e2dbb38079df746ee7b12d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Variant5693f62987a79cc5dc53038b8a84e38485106cf13e2dbb38079df746ee7b12d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fabric.System` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RealizationTheory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Variant5693f62987a79cc5dc53038b8a84e38485106cf13e2dbb38079df746ee7b12d4.lean/declarations/realizationtheory--af839eda392451ce57ec1758.md) | 31 | `declaration-track:af839eda392451ce57ec1758b9f61af2c85d364de2a0891cc299cf3f57f88efb` |
| 2 | `def` | [realizationMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Variant5693f62987a79cc5dc53038b8a84e38485106cf13e2dbb38079df746ee7b12d4.lean/declarations/realizationmap--9dfdae2ddcd7f7378b4c9252.md) | 41 | `declaration-track:9dfdae2ddcd7f7378b4c92528e52959dbb14de9255a6a3c6cd5d4e55e33ae04c` |
| 3 | `theorem` | [realizationMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Variant5693f62987a79cc5dc53038b8a84e38485106cf13e2dbb38079df746ee7b12d4.lean/declarations/realizationmap-id--4188af8508d9fd32cf3a092a.md) | 49 | `result-track:4188af8508d9fd32cf3a092ac25158946cc9b9a055e10cd4abdff7c0efa5df00` |
| 4 | `theorem` | [realizationMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Variant5693f62987a79cc5dc53038b8a84e38485106cf13e2dbb38079df746ee7b12d4.lean/declarations/realizationmap-comp--d1380c09fd076ea88293c8b1.md) | 55 | `result-track:d1380c09fd076ea88293c8b10feacf2203432e48ffee8e17936379807706d380` |
| 5 | `def` | [realizationIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Variant5693f62987a79cc5dc53038b8a84e38485106cf13e2dbb38079df746ee7b12d4.lean/declarations/realizationiso--be297d074fb4ad20fcc1ff9c.md) | 69 | `declaration-track:be297d074fb4ad20fcc1ff9c3e05ad4e04d467bf2f4da1f0d386b608d81d1883` |
| 6 | `theorem` | [realizationIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Variant5693f62987a79cc5dc53038b8a84e38485106cf13e2dbb38079df746ee7b12d4.lean/declarations/realizationiso-hom--cdd463b808952c694d9af1ac.md) | 77 | `result-track:cdd463b808952c694d9af1ace28d3607fb7875bb565cff04cd4fb57598385104` |
| 7 | `theorem` | [realizationIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Variant5693f62987a79cc5dc53038b8a84e38485106cf13e2dbb38079df746ee7b12d4.lean/declarations/realizationiso-inv--aa45c025e34ff5f50ab54f1d.md) | 85 | `result-track:aa45c025e34ff5f50ab54f1de2d47f2908997b02c0fb8eef5d01cf00f8a90d8d` |
| 8 | `structure` | [FactorPreservingRealization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Variant5693f62987a79cc5dc53038b8a84e38485106cf13e2dbb38079df746ee7b12d4.lean/declarations/factorpreservingrealization--e646a2785ac17e68e071e734.md) | 98 | `declaration-track:e646a2785ac17e68e071e7344d6cc8e48c4d55f021ba96af0664784a42ee9060` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
