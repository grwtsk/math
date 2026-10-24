# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomotopyCategory.Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "450fe678dc79c6a07aca1dc14d1d12476e063160",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `450fe678dc79c6a07aca1dc14d1d12476e063160`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Homotopy` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Linear` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.IsInvertedBy` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Quotient.Linear` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Quotient.Preadditive` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homotopic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/homotopic--e282526c15f77e9027eadb76.md) | 38 | `declaration-track:e282526c15f77e9027eadb76cbd6bf68f467cb6c3fb6d2cbdb6aab967b80d528` |
| 2 | `instance` | [homotopy_congruence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/homotopy-congruence--3a3fa1fc5e41356e8c82bc47.md) | 40 | `declaration-track:3a3fa1fc5e41356e8c82bc473c50623e8fff0a208922c0fa87af69c23f474186` |
| 3 | `def` | [HomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/homotopycategory--466fc599accc6d0381d4d2d9.md) | 50 | `declaration-track:466fc599accc6d0381d4d2d9f63ac08e7a443fefde3a0c8e7edbb895fab23f3b` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/instance--4e229ae4f60139cbce9eeea1.md) | 53 | `declaration-track:4e229ae4f60139cbce9eeea1de1aa1231e46bb2a3a9de3c52fe0858eb120b0af` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/instance--a6f52cd7e75199612ad9c46b.md) | 60 | `declaration-track:a6f52cd7e75199612ad9c46b9ef0d6037ec3d35b2be0291c59372fb9f5dc48f7` |
| 6 | `def` | [quotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/quotient--e011f7cf00544e658b6b1757.md) | 65 | `declaration-track:e011f7cf00544e658b6b1757986f40835351c8e4492b4005fe81f42d909dca36` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/instance--037c6c5d6a2b4a7c7e5bbcd7.md) | 68 | `declaration-track:037c6c5d6a2b4a7c7e5bbcd753f66bbd0884400ef6fb2a49c84cc448b12531bd` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/instance--7310c61024e34891be7d0af8.md) | 70 | `declaration-track:7310c61024e34891be7d0af8882f0643247949efc41ab4c4c953b0b9266970a2` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/instance--3d7b937ab1c6ec22aa571a77.md) | 72 | `declaration-track:3d7b937ab1c6ec22aa571a7727f8d0b62d6ada807285c4f7d5c2e77969011ff2` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/instance--8364117172ed82d43eddfd83.md) | 74 | `declaration-track:8364117172ed82d43eddfd83a9c027f1115ef142cb2076b44ebb5fe8b7b58d87` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/instance--42fbce73e3ea0abc586b3ec9.md) | 77 | `declaration-track:42fbce73e3ea0abc586b3ec995c444f082825b793a5e3be76cda52b4e21f9939` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/instance--a3c8702685c54c5c3d92f988.md) | 79 | `declaration-track:a3c8702685c54c5c3d92f9886fa1c1bb2b0ae48e23b125471c9b40b16b980d7f` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/instance--ca361e60876e8fcf60c3963c.md) | 82 | `declaration-track:ca361e60876e8fcf60c3963c5a9205904446ba9a25ce0b706d44790fa2600c12` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/instance--511353463b4b0a7e158d25c3.md) | 87 | `declaration-track:511353463b4b0a7e158d25c3e124a231e80d65a2238302a3776b0cfa014d0d13` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/instance--65920781912a4a2643a7e2b2.md) | 90 | `declaration-track:65920781912a4a2643a7e2b2d8df6e3151ecba1eba081132b6635469156ac01d` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/instance--87f46f2986fe7024a8c82edb.md) | 94 | `declaration-track:87f46f2986fe7024a8c82edb8600675c0371ea393460538a77489d1c366d57fa` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/instance--6472ded06598d4dd9fc26786.md) | 97 | `declaration-track:6472ded06598d4dd9fc267860c4a6c71ceabe3bdac474c9208e2bfcc748e109c` |
| 18 | `lemma` | [quotient_obj_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/quotient-obj-surjective--868421a94495c17da5fff1f0.md) | 102 | `result-track:868421a94495c17da5fff1f0da247a86675c9cffffa8b32aa188e00b2b70c7e5` |
| 19 | `theorem` | [quotient_obj_as](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/quotient-obj-as--f5fa803221d8e105647e5ce2.md) | 108 | `result-track:f5fa803221d8e105647e5ce25135d17c278a62b8764f2b9f492e137f2b69729b` |
| 20 | `theorem` | [quotient_map_out](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/quotient-map-out--1039262bbacd7a24ebd9b228.md) | 112 | `result-track:1039262bbacd7a24ebd9b2285606514076e1a755a24afaa41605080685ae0edb` |
| 21 | `theorem` | [quot_mk_eq_quotient_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/quot-mk-eq-quotient-map--defd6aaebf4cc6af8457d568.md) | 116 | `result-track:defd6aaebf4cc6af8457d56830a345628dc730cfbeb29838862b96c0108feb08` |
| 22 | `theorem` | [eq_of_homotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/eq-of-homotopy--6d08af9b8a78e220b99b1c22.md) | 119 | `result-track:6d08af9b8a78e220b99b1c2238d6b75cb01e4b6f0e1cfaeb7a9e4bcb8083c41a` |
| 23 | `def` | [homotopyOfEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/homotopyofeq--2df4c0370a0598acaf361431.md) | 124 | `declaration-track:2df4c0370a0598acaf3614310113dde9065fa6d0fe2be6a652982d6ae3b15816` |
| 24 | `def` | [homotopyOutMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/homotopyoutmap--c11382f37aea2595608d552d.md) | 131 | `declaration-track:c11382f37aea2595608d552d8c17f986e35da5b378641fbf0806c16522bf7e81` |
| 25 | `theorem` | [quotient_map_out_comp_out](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/quotient-map-out-comp-out--c1c053c117f708c883732dac.md) | 136 | `result-track:c1c053c117f708c883732dacc943f93b1df435b080eab5cca67703c1d45ca7b5` |
| 26 | `def` | [isoOfHomotopyEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/isoofhomotopyequiv--9479a585616076f9ccd6c59b.md) | 141 | `declaration-track:9479a585616076f9ccd6c59b6ae7881bc710dc789055efdc010ad302ee277883` |
| 27 | `def` | [homotopyEquivOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/homotopyequivofiso--e829c37ec6afb1828c553901.md) | 154 | `declaration-track:e829c37ec6afb1828c55390130a4861759f27eaa3494b427db668c66a3c915e2` |
| 28 | `lemma` | [quotient_inverts_homotopyEquivalences](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/quotient-inverts-homotopyequivalences--a65a7ba8c84538c076713fd5.md) | 166 | `result-track:a65a7ba8c84538c076713fd539dd6b1730fa6ff28d22ca7eb267f6bd1156baaa` |
| 29 | `lemma` | [isZero_quotient_obj_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/iszero-quotient-obj-iff--aa6cc14dd5c0975ebc0ea60f.md) | 172 | `result-track:aa6cc14dd5c0975ebc0ea60f0d18f24ce2265d4a2aced8f77e61ad5c1ae60371` |
| 30 | `def` | [homologyFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/homologyfunctor--6ec4860c3e9e6b69cbd30d2a.md) | 189 | `declaration-track:6ec4860c3e9e6b69cbd30d2aa4ce8e4c525ebb51064d977a4754ed76e895d08b` |
| 31 | `def` | [homologyFunctorFactors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/homologyfunctorfactors--215db556cb909bf7d1cbc7e0.md) | 196 | `declaration-track:215db556cb909bf7d1cbc7e0207b63c8f4cff251269eb1168a166a8ff44328e0` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/instance--9ad8ab43f9e43971e32b08f8.md) | 204 | `declaration-track:9ad8ab43f9e43971e32b08f80226a7ddac8cd4ac071908a9a9ff35d1160ee27a` |
| 33 | `def` | [Functor.mapHomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/functor-maphomotopycategory--222a1a740e46e9b7979fff39.md) | 219 | `declaration-track:222a1a740e46e9b7979fff39cc58698470bf04ff9feaaa948a8f99b22bca7666` |
| 34 | `lemma` | [Functor.mapHomotopyCategory_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/functor-maphomotopycategory-map--d3dfcccec1ea167389e0db62.md) | 225 | `result-track:d3dfcccec1ea167389e0db629d34df071ceee4e39053eb9602c1cf9b4fe7afa5` |
| 35 | `def` | [Functor.mapHomotopyCategoryFactors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/functor-maphomotopycategoryfactors--57405c9b85d23a905a30c62c.md) | 235 | `declaration-track:57405c9b85d23a905a30c62c65ccf7e5e5a33e31199ec9fe26b4ca55643d4a46` |
| 36 | `def` | [NatTrans.mapHomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/nattrans-maphomotopycategory--3a05f57bcac28e535de8fd7a.md) | 246 | `declaration-track:3a05f57bcac28e535de8fd7ad53da9d6ad6259660ee53768393712aa773a5b30` |
| 37 | `theorem` | [NatTrans.mapHomotopyCategory_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/nattrans-maphomotopycategory-id--30724c372103b83f0e14ce2a.md) | 255 | `result-track:30724c372103b83f0e14ce2a44fe90df78d6f86de17b8702c377b4cf35e942e0` |
| 38 | `theorem` | [NatTrans.mapHomotopyCategory_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant0545f65f40ecb2184439fa7c4c8b4aaaf7330d4ce69971c5d20cb6645e5fb78b.lean/declarations/nattrans-maphomotopycategory-comp--f9b614ed80852296f793c70d.md) | 259 | `result-track:f9b614ed80852296f793c70dcff0b70b44e2f6072dc3e74165156b580871d102` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
