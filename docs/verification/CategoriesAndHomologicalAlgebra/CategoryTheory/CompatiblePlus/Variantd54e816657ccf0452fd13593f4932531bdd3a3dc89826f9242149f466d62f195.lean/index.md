# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CompatiblePlus.Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ec34a3d4e6a5c4db08d297273268bb65f3e5fee",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ec34a3d4e6a5c4db08d297273268bb65f3e5fee`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Plus` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diagramCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean/declarations/diagramcompiso--69724c0cf52ff343304e4ea3.md) | 38 | `declaration-track:69724c0cf52ff343304e4ea3470783168804b811dea634c8422c6054e2f8c7cc` |
| 2 | `theorem` | [diagramCompIso_hom_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean/declarations/diagramcompiso-hom--0bd45d00316292c754f5735d.md) | 51 | `result-track:0bd45d00316292c754f5735d9d7ffd521213d651405841aec7acf2c62f1fafd6` |
| 3 | `def` | [plusCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean/declarations/pluscompiso--375b7badaadfab249cd53e34.md) | 63 | `declaration-track:375b7badaadfab249cd53e342f85d563e2e5081babd854caa09c24fe4d3dff64` |
| 4 | `theorem` | [ι_plusCompIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean/declarations/pluscompiso-hom--420478295ec1dbd7fc979e99.md) | 103 | `result-track:420478295ec1dbd7fc979e99adc9036b2357d2a1655779dad244e1cd9d97ce74` |
| 5 | `theorem` | [plusCompIso_whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean/declarations/pluscompiso-whiskerleft--483304711a623af89f3aa0e3.md) | 114 | `result-track:483304711a623af89f3aa0e3fb99905e86b4efdea12e12254cd66cb82ebffab6` |
| 6 | `def` | [plusFunctorWhiskerLeftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean/declarations/plusfunctorwhiskerleftiso--21a604c3b7280d99df7f580a.md) | 133 | `declaration-track:21a604c3b7280d99df7f580ad153574bc67f59348df1f056c390751de329c8d8` |
| 7 | `theorem` | [plusCompIso_whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean/declarations/pluscompiso-whiskerright--b7fc17a54102acc352826a39.md) | 141 | `result-track:b7fc17a54102acc352826a39934d0d4c16d7a878eddda1a0d36a33ee843a9191` |
| 8 | `def` | [plusFunctorWhiskerRightIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean/declarations/plusfunctorwhiskerrightiso--a9e68c432a158f3efd634b0f.md) | 167 | `declaration-track:a9e68c432a158f3efd634b0f8ea55cc35f6c64f592e26222c1876da99e63bcd3` |
| 9 | `theorem` | [whiskerRight_toPlus_comp_plusCompIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean/declarations/whiskerright-toplus-comp-pluscompiso-hom--f098893b8229efc8827cb53a.md) | 173 | `result-track:f098893b8229efc8827cb53a17605c68f1a1df98f0c5c0ae82c3c8fca63b5548` |
| 10 | `theorem` | [toPlus_comp_plusCompIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean/declarations/toplus-comp-pluscompiso-inv--fa855585f497bd04a503f3d2.md) | 186 | `result-track:fa855585f497bd04a503f3d2c2a0a414d5a9de74714c132acfad7bd48d4e3e00` |
| 11 | `theorem` | [plusCompIso_inv_eq_plusLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean/declarations/pluscompiso-inv-eq-pluslift--79596efe823a753bb7cff982.md) | 189 | `result-track:79596efe823a753bb7cff98241f4fa48fadad942d88fac8b25a78428a8071c19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
