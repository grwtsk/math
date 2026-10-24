# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CurryingThree.Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15628787f3423ab569546c759701383cb2354fd0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15628787f3423ab569546c759701383cb2354fd0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Currying` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Trifunctor` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Associator` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [currying₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean/declarations/currying--39d2f9beda8e8d861b8f32f5.md) | 27 | `declaration-track:39d2f9beda8e8d861b8f32f55031133406985a5113badc30bdef3ef68d6fae37` |
| 2 | `abbrev` | [uncurry₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean/declarations/uncurry--18a6e04600e3aac65d5f9a42.md) | 31 | `declaration-track:18a6e04600e3aac65d5f9a42eae997d69cbbfdecfcf2de36890cc28d7c98e2bc` |
| 3 | `abbrev` | [curry₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean/declarations/curry--1eaf95026f0bb7557523e6a5.md) | 34 | `declaration-track:1eaf95026f0bb7557523e6a55248b3d056250192bdd30bca3e6502a5d7194f2e` |
| 4 | `def` | [fullyFaithfulUncurry₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean/declarations/fullyfaithfuluncurry--823aee5252565a334051d648.md) | 37 | `declaration-track:823aee5252565a334051d6489e954f07ff2d580f840c37dfb201eb824dc90c05` |
| 5 | `lemma` | [curry₃_obj_map_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean/declarations/curry-obj-map-app-app--42921e3f63f0f9f23ded2cd0.md) | 42 | `result-track:42921e3f63f0f9f23ded2cd0d3ea37a5ad97437c82ce16119cc1497a8092888e` |
| 6 | `lemma` | [curry₃_obj_obj_map_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean/declarations/curry-obj-obj-map-app--c64237ffd620020c5a613f67.md) | 47 | `result-track:c64237ffd620020c5a613f67a5fd8abb60ac8c55914759b2b9625643d84c61cc` |
| 7 | `lemma` | [curry₃_obj_obj_obj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean/declarations/curry-obj-obj-obj-map--dda0849784d1df2e71531436.md) | 52 | `result-track:dda0849784d1df2e71531436dfd0b6aa52b3e1161a9a7ce593c93bf38cdfc54b` |
| 8 | `lemma` | [curry₃_map_app_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean/declarations/curry-map-app-app-app--2fdf7f12721c3375da26941c.md) | 57 | `result-track:2fdf7f12721c3375da26941c2ca7ba3c169d96a4603eac80b42fdadee0f6f3a5` |
| 9 | `lemma` | [currying₃_unitIso_hom_app_app_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean/declarations/currying-unitiso-hom-app-app-app-app--2635ea29a75b470d2d466aaa.md) | 62 | `result-track:2635ea29a75b470d2d466aaa67d6e77952f5c2d9f7e08a7ab31db7efb372b4a7` |
| 10 | `lemma` | [currying₃_unitIso_inv_app_app_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean/declarations/currying-unitiso-inv-app-app-app-app--0b2f0cd33776896d3ab319a7.md) | 68 | `result-track:0b2f0cd33776896d3ab319a78c8c4c19013d1fd8a534fd4ba221c17dec1b985c` |
| 11 | `def` | [curry₃ObjProdComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean/declarations/curry-objprodcomp--4586d21b373d34c3c14f4dab.md) | 78 | `declaration-track:4586d21b373d34c3c14f4dabf6e77d519384389ef1109a74c42a398651a63f35` |
| 12 | `def` | [bifunctorComp₁₂Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean/declarations/bifunctorcomp-iso--17d7f6c3b5f0854d10cdfc3c.md) | 87 | `declaration-track:17d7f6c3b5f0854d10cdfc3c65b4eb946b6ae60dedb2223c313a3fed95082c7d` |
| 13 | `def` | [bifunctorComp₂₃Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant934dff83f0207f3083f338bff24b7b31f63c15af0ef649a686fff3b6f1894c6f.lean/declarations/bifunctorcomp-iso--96ff334c0b0dcb3f193bde92.md) | 93 | `declaration-track:96ff334c0b0dcb3f193bde92df158f1535ba10e4ce5ebcb1bd904ad01e6260e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
