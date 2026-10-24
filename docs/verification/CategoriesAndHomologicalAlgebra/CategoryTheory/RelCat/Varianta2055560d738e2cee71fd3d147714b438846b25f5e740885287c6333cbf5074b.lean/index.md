# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RelCat.Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e07e976fab55c7e0a7431dcdb66a8bcf469930f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e07e976fab55c7e0a7431dcdb66a8bcf469930f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Iso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EssentialImage` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Opposites` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rel` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RelCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/relcat--491bda5050aeb9ad0f8a5136.md) | 32 | `declaration-track:491bda5050aeb9ad0f8a5136d0221107ad26126d65c8c9896cbdb08274e80c50` |
| 2 | `instance` | [RelCat.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/relcat-inhabited--4e983b50984d08e868ef55a5.md) | 35 | `declaration-track:4e983b50984d08e868ef55a5f36df60724eb712728d1822d9b425d00cdf7710d` |
| 3 | `instance` | [rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/rel--a74267ed974e059d90bd2209.md) | 38 | `declaration-track:a74267ed974e059d90bd2209f6911c596e586c04ef0224f2eba9f18be8b2ecf7` |
| 4 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/hom-ext--0f76f73f14bc04bfac056aeb.md) | 47 | `result-track:0f76f73f14bc04bfac056aebe220154991a0850cb0d59d71e22199ce07e067c1` |
| 5 | `theorem` | [rel_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/rel-id--6e21208d5a3ed7750c16507f.md) | 52 | `result-track:6e21208d5a3ed7750c16507f024b0475c34870f0b2832427f63e8ed156b8bdfd` |
| 6 | `theorem` | [rel_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/rel-comp--3c39f45e4779d2bd068da35c.md) | 54 | `result-track:3c39f45e4779d2bd068da35cfe81580d75828afb36a9112431cc3cb759d2a607` |
| 7 | `theorem` | [rel_id_apply₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/rel-id-apply--00333af8bdabcc03a9402f53.md) | 56 | `result-track:00333af8bdabcc03a9402f5323384654246ee309e67417bef6696432b8dd4d78` |
| 8 | `theorem` | [rel_comp_apply₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/rel-comp-apply--b84f50ffacf6da4682906b36.md) | 59 | `result-track:b84f50ffacf6da4682906b36d9b4c93e7cd9f255cd29179bbf1f03e28231493b` |
| 9 | `def` | [graphFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/graphfunctor--6a068d5bc9e1dbc2a6da5f2a.md) | 66 | `declaration-track:6a068d5bc9e1dbc2a6da5f2aa528ecb7d3772d6716f769e96665390cde23a8d1` |
| 10 | `theorem` | [graphFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/graphfunctor-map--c8b0dec05ef7286da417954c.md) | 76 | `result-track:c8b0dec05ef7286da417954ca3b9145b8df7009455980070994df57f3e214759` |
| 11 | `instance` | [graphFunctor_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/graphfunctor-faithful--e3600ef5480fe4a14fe71a11.md) | 79 | `declaration-track:e3600ef5480fe4a14fe71a1131f074258b8c9400312552703b47f2781d839d8f` |
| 12 | `instance` | [graphFunctor_essSurj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/graphfunctor-esssurj--cb2cd7922e5ec9b732c44f66.md) | 82 | `declaration-track:cb2cd7922e5ec9b732c44f666ad70c344c68247a50f49bef3511e350e678b258` |
| 13 | `theorem` | [rel_iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/rel-iso-iff--1b4b73023a5a26288068c292.md) | 87 | `result-track:1b4b73023a5a26288068c292aac3243f00a8b2f6ae414c9931edae182eacd7df` |
| 14 | `def` | [opFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/opfunctor--7ac3f6245fc5c1f6e99a61d6.md) | 122 | `declaration-track:7ac3f6245fc5c1f6e99a61d62e15e76fc29a8b93fbf1a0af4a23eb046cbb8c3e` |
| 15 | `def` | [unopFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/unopfunctor--8ad4aba7bab8bf3ece772117.md) | 138 | `declaration-track:8ad4aba7bab8bf3ece7721178a98075fee1ef2bebf0818af4e93c5debe57eba0` |
| 16 | `theorem` | [opFunctor_comp_unopFunctor_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/opfunctor-comp-unopfunctor-eq--5cd11ce134cbadd74e890800.md) | 150 | `result-track:5cd11ce134cbadd74e890800247dd0f4dbf1d7b6aa293616a60aa6746909e080` |
| 17 | `theorem` | [unopFunctor_comp_opFunctor_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/unopfunctor-comp-opfunctor-eq--8a9b58f3d82243c57ea117ef.md) | 153 | `result-track:8a9b58f3d82243c57ea117ef2d76d269f6d9c351faf569d9837ddce39f6833cd` |
| 18 | `def` | [opEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/opequivalence--ca047cf06a8605ad3e1ac53c.md) | 159 | `declaration-track:ca047cf06a8605ad3e1ac53cb0ad6a8425a47f6dae4111d32e7ab6c5d56e9b15` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/instance--8646b8d555e405812601b29f.md) | 165 | `declaration-track:8646b8d555e405812601b29f1603805d4c3789795d1efd564eecaf553f79d26b` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b.lean/declarations/instance--4d1301c54a70a8a8864d8ef8.md) | 169 | `declaration-track:4d1301c54a70a8a8864d8ef81ae6fa649080ed59776ec36e4c3025a38cb1a97e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
