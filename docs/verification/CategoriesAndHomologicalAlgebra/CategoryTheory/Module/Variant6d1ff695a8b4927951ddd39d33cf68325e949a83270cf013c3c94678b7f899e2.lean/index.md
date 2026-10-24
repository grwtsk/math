# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Module.Variant6d1ff695a8b4927951ddd39d33cf68325e949a83270cf013c3c94678b7f899e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "361575e74c7dc01a0f79d3a1e617a59e80b08b6e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant6d1ff695a8b4927951ddd39d33cf68325e949a83270cf013c3c94678b7f899e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant6d1ff695a8b4927951ddd39d33cf68325e949a83270cf013c3c94678b7f899e2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant6d1ff695a8b4927951ddd39d33cf68325e949a83270cf013c3c94678b7f899e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `361575e74c7dc01a0f79d3a1e617a59e80b08b6e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant6d1ff695a8b4927951ddd39d33cf68325e949a83270cf013c3c94678b7f899e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant6d1ff695a8b4927951ddd39d33cf68325e949a83270cf013c3c94678b7f899e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Adjunctions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Colimits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.FilteredColimits` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Abelian` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Adjunction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Equivalence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Light.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LightCondMod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant6d1ff695a8b4927951ddd39d33cf68325e949a83270cf013c3c94678b7f899e2.lean/declarations/lightcondmod--5f2b77cac34a3fe5de51d3de.md) | 39 | `declaration-track:5f2b77cac34a3fe5de51d3de800e506d655e9360a0c6fd344db4b5499fbaaa04` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant6d1ff695a8b4927951ddd39d33cf68325e949a83270cf013c3c94678b7f899e2.lean/declarations/instance--fa96a4da4d440764d8ad3b7e.md) | 41 | `declaration-track:fa96a4da4d440764d8ad3b7ef89d5124a96d9a30d680a1b0ff89219d42dbefb4` |
| 3 | `def` | [LightCondensed.forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant6d1ff695a8b4927951ddd39d33cf68325e949a83270cf013c3c94678b7f899e2.lean/declarations/lightcondensed-forget--93e7efe88af102debcf4f721.md) | 44 | `declaration-track:93e7efe88af102debcf4f721062babe526420558843f2a441d6fbfe5d8fadb3a` |
| 4 | `def` | [LightCondensed.free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant6d1ff695a8b4927951ddd39d33cf68325e949a83270cf013c3c94678b7f899e2.lean/declarations/lightcondensed-free--bf4035aa49ea4e13047d4fdd.md) | 51 | `declaration-track:bf4035aa49ea4e13047d4fdd43d5d40ad4f4c6c99347cd3e16ca1b9e4fb4fcb3` |
| 5 | `def` | [LightCondensed.freeForgetAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant6d1ff695a8b4927951ddd39d33cf68325e949a83270cf013c3c94678b7f899e2.lean/declarations/lightcondensed-freeforgetadjunction--7ad351d2ec76ab14ed469ade.md) | 56 | `declaration-track:7ad351d2ec76ab14ed469adeeea57b1b402ee1a8bc48980107410b88f80d580f` |
| 6 | `abbrev` | [LightCondAb](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant6d1ff695a8b4927951ddd39d33cf68325e949a83270cf013c3c94678b7f899e2.lean/declarations/lightcondab--6f31600d70fdad34625c107d.md) | 62 | `declaration-track:6f31600d70fdad34625c107d7e3e0be1ebad4953666e90e398dc46a4bc15ed22` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant6d1ff695a8b4927951ddd39d33cf68325e949a83270cf013c3c94678b7f899e2.lean/declarations/example--fef8f85dd3eecefe5b5be2f5.md) | 64 | `declaration-track:fef8f85dd3eecefe5b5be2f5c4858fdfb833ff9df74a43dcc695015f853b7967` |
| 8 | `lemma` | [hom_naturality_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant6d1ff695a8b4927951ddd39d33cf68325e949a83270cf013c3c94678b7f899e2.lean/declarations/hom-naturality-apply--32d4523ceaae267e84216de5.md) | 68 | `result-track:32d4523ceaae267e84216de5643e44f1ec5724774aad1acec85426f476b2e154` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
