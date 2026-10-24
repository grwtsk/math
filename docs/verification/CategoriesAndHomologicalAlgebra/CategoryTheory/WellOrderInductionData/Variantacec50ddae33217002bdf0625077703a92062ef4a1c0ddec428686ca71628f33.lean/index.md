# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WellOrderInductionData.Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "214decfff1251927db71a17cb7af118b41b7885c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `214decfff1251927db71a17cb7af118b41b7885c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Preorder` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Category` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Limit` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WellOrderInductionData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33.lean/declarations/wellorderinductiondata--bafcef487b74f0cf21c18975.md) | 52 | `declaration-track:bafcef487b74f0cf21c18975a2c6033f7170036f54d35ab2b48f9a0f996efe63` |
| 2 | `structure` | [Extension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33.lean/declarations/extension--136a6d71334bc5c1cc46b145.md) | 76 | `declaration-track:136a6d71334bc5c1cc46b14506846e3b100786e9f707287a918cc3f2a3c00dfe` |
| 3 | `def` | [ofLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33.lean/declarations/ofle--33a2a829f43ea0d2f8902efa.md) | 98 | `declaration-track:33a2a829f43ea0d2f8902efa1d9658fd0b41f98fbacf3025476af982d23d6454` |
| 4 | `lemma` | [val_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33.lean/declarations/val-injective--3d8602c46775f4303ba063e4.md) | 115 | `result-track:3d8602c46775f4303ba063e4ef647ec3a127b0a24fff8eb1f156c295797ae2ed` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33.lean/declarations/instance--d7620eefc0b13933ddf0f0f8.md) | 121 | `declaration-track:d7620eefc0b13933ddf0f0f8d83f33c6b111c8ae26d9894a8711f41d15ae2c93` |
| 6 | `lemma` | [compatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33.lean/declarations/compatibility--3d961d2cdc032759ab2cd936.md) | 150 | `result-track:3d961d2cdc032759ab2cd9364551c8e051141126f59a41518d486dde17be1e6c` |
| 7 | `def` | [zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33.lean/declarations/zero--fc742c648f7116edfdcb7590.md) | 159 | `declaration-track:fc742c648f7116edfdcb75908790cebccb350fbc4d1ffd9674e9a48f1fbd9421` |
| 8 | `def` | [succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33.lean/declarations/succ--1a6dac4298825b7ad26dd023.md) | 169 | `declaration-track:1a6dac4298825b7ad26dd02365279fb9a1e010bd3837b75e5b2256f2c61204bf` |
| 9 | `def` | [limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33.lean/declarations/limit--95958f102cc227e0de9395d7.md) | 204 | `declaration-track:95958f102cc227e0de9395d726dc3066fe58962d4332ec4da52cde7be087cc59` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33.lean/declarations/instance--42e10c31959b50f959c4dd63.md) | 245 | `declaration-track:42e10c31959b50f959c4dd6386d2b0d87b8225a641144094194c8b3baafa785a` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33.lean/declarations/instance--9c95b1acb793eac4ee037349.md) | 253 | `declaration-track:9c95b1acb793eac4ee03734958be1fcbf95da180fa67ffc576902d37b5b4b6d4` |
| 12 | `def` | [sectionsMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33.lean/declarations/sectionsmk--236495050dc6f13a72b0f3c7.md) | 262 | `declaration-track:236495050dc6f13a72b0f3c75ca0e3675f3d8b99bab0c1e0058f46e7bfc4949a` |
| 13 | `lemma` | [sectionsMk_val_op_bot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33.lean/declarations/sectionsmk-val-op-bot--7f6e94d904ee11e3c0756910.md) | 266 | `result-track:7f6e94d904ee11e3c0756910b671b98ed15295b22b47650eb645b7ea24f28ca9` |
| 14 | `lemma` | [surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantacec50ddae33217002bdf0625077703a92062ef4a1c0ddec428686ca71628f33.lean/declarations/surjective--12b79e1fd3c52d60c9f40f96.md) | 271 | `result-track:12b79e1fd3c52d60c9f40f961496e0c33732dfed5ce35883285c2f794da7b6ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
