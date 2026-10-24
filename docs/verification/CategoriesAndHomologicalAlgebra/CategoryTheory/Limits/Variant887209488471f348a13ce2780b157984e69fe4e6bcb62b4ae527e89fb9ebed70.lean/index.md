# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b002b83f180d6d7a2cda941746d7da8db92ba09",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b002b83f180d6d7a2cda941746d7da8db92ba09`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Adjunction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [γ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/anonymous--ebef9bf43a75aa7846cd2be2.md) | 50 | `declaration-track:ebef9bf43a75aa7846cd2be26823e7cf6413d93c200639b8b7576d6b282f0cd2` |
| 2 | `def` | [newCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/newcone--e36dfc4cb6b3d1c807065d67.md) | 55 | `declaration-track:e36dfc4cb6b3d1c807065d672bcd9385f69bfdac84867bf26e7b61a9fd6b6497` |
| 3 | `def` | [conePoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/conepoint--0d8c83afc738fbbec938ea2e.md) | 62 | `declaration-track:0d8c83afc738fbbec938ea2e9e1ac2eb2afa1e9e89db20287b3c46e9cb34f9ce` |
| 4 | `def` | [liftedCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/liftedcone--0b3c53d0a3d9301ea6735cef.md) | 81 | `declaration-track:0b3c53d0a3d9301ea6735cefbd5988e408b15e713005494ab44d257e09199d5f` |
| 5 | `def` | [liftedConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/liftedconeislimit--f19622e506e27b685fc12622.md) | 94 | `declaration-track:f19622e506e27b685fc1262231832049d59ff0988a11b90bf15356396ab563c9` |
| 6 | `instance` | [forgetCreatesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/forgetcreateslimits--89747d483152a9ab6d317b10.md) | 114 | `declaration-track:89747d483152a9ab6d317b103da3e933e1e1e08ce257fbd725af5f79b73df81d` |
| 7 | `theorem` | [hasLimit_of_comp_forget_hasLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/haslimit-of-comp-forget-haslimit--7beff7b0ccb6de6b8b058649.md) | 124 | `result-track:7beff7b0ccb6de6b8b058649861cdc7cc5f35e7821d15141b6700ee1339bf180` |
| 8 | `def` | [γ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/anonymous--965300ad525438fc350ab2d8.md) | 148 | `declaration-track:965300ad525438fc350ab2d8f31222c8d0fef8fdc8ac3f0653888346cabce0f5` |
| 9 | `def` | [newCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/newcocone--835da60ab1911f8022488931.md) | 156 | `declaration-track:835da60ab1911f8022488931da4ae4e725767fafd06e176909044107a8b177b2` |
| 10 | `def` | [lambda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/lambda--a638707a2af236ebc0f7f318.md) | 169 | `declaration-track:a638707a2af236ebc0f7f318ba0862f487695a46cf68ab17959f12f416183c78` |
| 11 | `theorem` | [commuting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/commuting--ee45f3297974a3aab61c1712.md) | 174 | `result-track:ee45f3297974a3aab61c17120b5f09fee53e6a2f3c01c3d4c0d930c8aef554e5` |
| 12 | `def` | [coconePoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/coconepoint--94f0d3b030c4a56bd112b3b3.md) | 186 | `declaration-track:94f0d3b030c4a56bd112b3b3fc61c17ace7e8c6e74bd3b279b3f4c6c28593cc3` |
| 13 | `def` | [liftedCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/liftedcocone--67a67442baef1d1aeca4b45f.md) | 207 | `declaration-track:67a67442baef1d1aeca4b45fc4278f3eea582a376925b75ac542c786d01e79e2` |
| 14 | `def` | [liftedCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/liftedcoconeiscolimit--f1ca8c48fb4ecac13e3ce1bf.md) | 222 | `declaration-track:f1ca8c48fb4ecac13e3ce1bf3277c9e4fb3090faf6b5b47b8483b8c85e42ba87` |
| 15 | `instance` | [forgetCreatesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/forgetcreatescolimit--9e7206f7c13df684e370594b.md) | 245 | `declaration-track:9e7206f7c13df684e370594b97964b6cf57cc6fb104fb54dc89505ea3e575e33` |
| 16 | `instance` | [forgetCreatesColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/forgetcreatescolimitsofshape--abdc63244c4f87b9efb87557.md) | 263 | `declaration-track:abdc63244c4f87b9efb875573d566e1f02978f74c864be39d246e12e0d302f92` |
| 17 | `instance` | [forgetCreatesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/forgetcreatescolimits--795db12bf2477fa27166ad8f.md) | 267 | `declaration-track:795db12bf2477fa27166ad8fbe913a54a392aa04b933868de24a77d84bf9cba6` |
| 18 | `theorem` | [forget_creates_colimits_of_monad_preserves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/forget-creates-colimits-of-monad-preserves--92a3f1b6aa76cceab62f5817.md) | 274 | `result-track:92a3f1b6aa76cceab62f5817ef27dfa61f6406ea92a61f2163bc9c87340cc5ae` |
| 19 | `instance` | [comp_comparison_forget_hasLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/comp-comparison-forget-haslimit--110379427218cda533247751.md) | 285 | `declaration-track:110379427218cda533247751bf1b369d19bc930541e96ee9e7b9763e49d08eab` |
| 20 | `instance` | [comp_comparison_hasLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/comp-comparison-haslimit--5071278b0ba7eaf96fce73c3.md) | 292 | `declaration-track:5071278b0ba7eaf96fce73c34bbfe5d83014a076417604abb7a04d61af4335df` |
| 21 | `def` | [monadicCreatesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/monadiccreateslimits--aac5a539ccce0f41878c0ca9.md) | 298 | `declaration-track:aac5a539ccce0f41878c0ca981532f4f0a5356b1a001acaf8421db7cb395a448` |
| 22 | `def` | [monadicCreatesColimitOfPreservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/monadiccreatescolimitofpreservescolimit--660072cf24d522c1d0f5f27e.md) | 306 | `declaration-track:660072cf24d522c1d0f5f27e1182ca888ba00588cd273aa8d9e1bede8e69872b` |
| 23 | `def` | [monadicCreatesColimitsOfShapeOfPreservesColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/monadiccreatescolimitsofshapeofpreservescolimitsofshape--5b31fd4b5a8be27702cfd0b1.md) | 335 | `declaration-track:5b31fd4b5a8be27702cfd0b1f869178c257681fc91dfe6376a360ab32969a6e4` |
| 24 | `def` | [monadicCreatesColimitsOfPreservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/monadiccreatescolimitsofpreservescolimits--b86e8e75c82b672000f2fa12.md) | 345 | `declaration-track:b86e8e75c82b672000f2fa12686ca78306e58589ceeac689dace2d16c7e7f088` |
| 25 | `theorem` | [hasLimit_of_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/haslimit-of-reflective--4c349c719bcdd575ce11904e.md) | 353 | `result-track:4c349c719bcdd575ce11904e6fd96e282596f977ad8ea7e14e54aa625e08cf49` |
| 26 | `theorem` | [hasLimitsOfShape_of_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/haslimitsofshape-of-reflective--6136b5ecf08a8e8c7b959955.md) | 360 | `result-track:6136b5ecf08a8e8c7b95995582fbdd078dd0ae59045141e950225cfe14a45efc` |
| 27 | `theorem` | [hasLimits_of_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/haslimits-of-reflective--870bd391b07fbf430f246394.md) | 366 | `result-track:870bd391b07fbf430f2463941e6bc0fa54ba61b5c478b8edb6e655fea9ca7ef7` |
| 28 | `theorem` | [hasColimitsOfShape_of_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/hascolimitsofshape-of-reflective--d4243f39bec425efea0c1be2.md) | 372 | `result-track:d4243f39bec425efea0c1be2b35dd3eb1a0a6f0703a1bbf560ebebfd106e6678` |
| 29 | `theorem` | [hasColimits_of_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/hascolimits-of-reflective--23a4be2b421b92a06cb47b8d.md) | 385 | `result-track:23a4be2b421b92a06cb47b8d1e438ff2f827f913ca0519dda281af55ace950cc` |
| 30 | `def` | [leftAdjointPreservesTerminalOfReflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/declarations/leftadjointpreservesterminalofreflective--430cfcfdcdcd4eeb6018c45a.md) | 393 | `declaration-track:430cfcfdcdcd4eeb6018c45ad22351e68e8059735ab3b036326df7bc431c2387` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
