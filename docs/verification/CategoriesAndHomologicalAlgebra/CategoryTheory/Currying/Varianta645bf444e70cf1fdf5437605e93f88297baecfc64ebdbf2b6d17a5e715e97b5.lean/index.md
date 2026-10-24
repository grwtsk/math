# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Currying.Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67683abeb8e5a607e2d79030baae972edd43fc38",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67683abeb8e5a607e2d79030baae972edd43fc38`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/declarations/uncurry--b22b392be3ef55e9b3c2c1fe.md) | 29 | `declaration-track:b22b392be3ef55e9b3c2c1feb61b8b09e589ab2551ab288bb7a46a5493bdf856` |
| 2 | `def` | [curryObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/declarations/curryobj--400ac79cd473e5915f607f97.md) | 49 | `declaration-track:400ac79cd473e5915f607f9795024a0e2dddcc5ebdb7ada029c90bd33c506a3c` |
| 3 | `def` | [curry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/declarations/curry--63b016dd7c3e342e735646aa.md) | 64 | `declaration-track:63b016dd7c3e342e735646aa8bc56ea15350d998ee0e11e3bf23c0a59346ffd7` |
| 4 | `def` | [currying](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/declarations/currying--6df16b49676f2cbda27ba51f.md) | 80 | `declaration-track:6df16b49676f2cbda27ba51f6e75b7b2f8048fd92a38a70bc6bb24e73c1b5e15` |
| 5 | `def` | [fullyFaithfulUncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/declarations/fullyfaithfuluncurry--05e1b0890732049800fee2e1.md) | 92 | `declaration-track:05e1b0890732049800fee2e1abafceb08b243f507bfaf6bc7ebfdc691b74d71d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/declarations/instance--e89e06e0bc1cb4420507d01d.md) | 95 | `declaration-track:e89e06e0bc1cb4420507d01df2ba6322152944e9310182971f523e62283de4a1` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/declarations/instance--2cf93cab50505a4dab75e769.md) | 98 | `declaration-track:2cf93cab50505a4dab75e7697273d0a38abd937e1ffbf2171aa8291bf9ad382a` |
| 8 | `def` | [curryObjProdComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/declarations/curryobjprodcomp--034131ad3f881870585f5715.md) | 105 | `declaration-track:034131ad3f881870585f57155f756b123948ed2742adcd4089cebb9085f96c30` |
| 9 | `def` | [flipIsoCurrySwapUncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/declarations/flipisocurryswapuncurry--9a342d36deab765a08d85c01.md) | 113 | `declaration-track:9a342d36deab765a08d85c01b1b60834a54ff2221469c0d8896a7fde050a5efa` |
| 10 | `def` | [uncurryObjFlip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/declarations/uncurryobjflip--5b077d9baef1dc78fb6ecf39.md) | 119 | `declaration-track:5b077d9baef1dc78fb6ecf39798cb8089a7e7b80a1e710a6de788e2570f946d4` |
| 11 | `def` | [whiskeringRight₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/declarations/whiskeringright--5f97f4cafae68d2c0a539885.md) | 128 | `declaration-track:5f97f4cafae68d2c0a539885db11be36840a88ad0d4d604f73661abab6a20a8b` |
| 12 | `lemma` | [uncurry_obj_curry_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/declarations/uncurry-obj-curry-obj--00dc390f86e48c5ce86c600b.md) | 136 | `result-track:00dc390f86e48c5ce86c600baeefab54079101d30b62c4f0982c51819627751e` |
| 13 | `lemma` | [curry_obj_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/declarations/curry-obj-injective--9129d458ef56169d6d7d216d.md) | 141 | `result-track:9129d458ef56169d6d7d216da85907f840bb47db133e3d59280d0aebf1f97f97` |
| 14 | `lemma` | [curry_obj_uncurry_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/declarations/curry-obj-uncurry-obj--b4c39b48c1cd0d397f380d49.md) | 145 | `result-track:b4c39b48c1cd0d397f380d494b5aae3a63ffee4129fdc62be9d2e569c90871c7` |
| 15 | `lemma` | [uncurry_obj_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/declarations/uncurry-obj-injective--297025eccd932386b9b18d96.md) | 148 | `result-track:297025eccd932386b9b18d96aa15f80ef6e979127f343f1c1c8849cc2c332c20` |
| 16 | `lemma` | [flip_flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/declarations/flip-flip--f4bff86bae6ee1c8785ef08e.md) | 152 | `result-track:f4bff86bae6ee1c8785ef08e0c24c8be2576f5e09893a8e8ff6abb5eea9acd03` |
| 17 | `lemma` | [flip_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/declarations/flip-injective--3ec689b0ddb265e6418a6599.md) | 154 | `result-track:3ec689b0ddb265e6418a65999e5b903e77dc859f70929ccbb2e0f9a4da44dbec` |
| 18 | `lemma` | [uncurry_obj_curry_obj_flip_flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/declarations/uncurry-obj-curry-obj-flip-flip--e9dd1112555c814efd3cfda1.md) | 158 | `result-track:e9dd1112555c814efd3cfda1066e283b76f79b151f902c01909896fd02d6c065` |
| 19 | `lemma` | [uncurry_obj_curry_obj_flip_flip'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Varianta645bf444e70cf1fdf5437605e93f88297baecfc64ebdbf2b6d17a5e715e97b5.lean/declarations/uncurry-obj-curry-obj-flip-flip--23b85331ebdfea40e1db3f78.md) | 164 | `result-track:23b85331ebdfea40e1db3f783fb4fd0e292f1daaccfcb251bc599ab25b94b2fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
