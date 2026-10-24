# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subsheaf.Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "117af275faa0934952fb1cd28e0bf3b1fade2e1d",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `117af275faa0934952fb1cd28e0bf3b1fade2e1d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Elementwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Evaluation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subpresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf--9a660e2db4ccd92f67a46c06.md) | 47 | `declaration-track:9a660e2db4ccd92f67a46c06dbffca6417ab8524c3efb06e2a01ea9b06c11f8e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/instance--785d1674b336e6517e2b227a.md) | 58 | `declaration-track:785d1674b336e6517e2b227ac301ff498bcf7ac627555c2bf2cbcffdcf52aecc` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/instance--16d612df70df13cfbc50f9d4.md) | 61 | `declaration-track:16d612df70df13cfbc50f9d41a197c7a56f0284992c7638f3187028b7b617586` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/instance--9c4e104b2acbaaf07c135182.md) | 64 | `declaration-track:9c4e104b2acbaaf07c1351828295af03e2b4d7a959ba8bd104b9fe4bb6e8ba0a` |
| 5 | `def` | [Subpresheaf.toPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-topresheaf--bca8e6f7abfe86a20a7ee9dd.md) | 69 | `declaration-track:bca8e6f7abfe86a20a7ee9dda989918b795a1a4654ebcd6db82efceb6485027d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/instance--407f3de68e836ee0a95aa680.md) | 82 | `declaration-track:407f3de68e836ee0a95aa680544bcc33016a0eb2c67ae7644c65b40705bfc85a` |
| 7 | `def` | [Subpresheaf.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf--6d234a1d06df41c49e6a31e2.md) | 87 | `declaration-track:6d234a1d06df41c49e6a31e25f4220f73cdf615bf4c02937b985bcbe793da234` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/instance--7a306c4e482d6d71a0a11fdd.md) | 90 | `declaration-track:7a306c4e482d6d71a0a11fddf0255b2ca1ddf701577096b164e4700dc6ca75b3` |
| 9 | `def` | [Subpresheaf.homOfLe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-homofle--e70eb2b192b139047e29e798.md) | 97 | `declaration-track:e70eb2b192b139047e29e798ee16741c7b7e2b81e51cea613cc22f9a10669af5` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/instance--e4cea42bfd2c812cbb2e434a.md) | 101 | `declaration-track:e4cea42bfd2c812cbb2e434a3a7fc7eaf5014dc5beda6228f9e93ff9615a52d3` |
| 11 | `theorem` | [Subpresheaf.homOfLe_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-homofle--01f3bab41f2d94765e90ec1a.md) | 109 | `result-track:01f3bab41f2d94765e90ec1a4664b4560bc32413d8130716efc4964ed83bc69f` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/instance--fea85812b650947d78f1e5d5.md) | 115 | `declaration-track:fea85812b650947d78f1e5d52bfda59b0b39117c931ecffba0883fd8513c6132` |
| 13 | `theorem` | [Subpresheaf.eq_top_iff_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-eq-top-iff-isiso--a518fab34041d379ff15e62d.md) | 121 | `result-track:a518fab34041d379ff15e62d12fc1bf0ee8fc770949865ffe576c01bbbdee8bc` |
| 14 | `def` | [Subpresheaf.lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-lift--f748269299125cb9f28bea87.md) | 134 | `declaration-track:f748269299125cb9f28bea87f4274590b18488db53af1a456766f37cad7b8318` |
| 15 | `theorem` | [Subpresheaf.lift_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-lift--1caa08957a93c73cd17708cb.md) | 145 | `result-track:1caa08957a93c73cd17708cbd849c78836d8068b5899296de28c5a4612e4b6d3` |
| 16 | `def` | [Subpresheaf.sieveOfSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-sieveofsection--4a637d63c21a6d0b25c067fa.md) | 154 | `declaration-track:4a637d63c21a6d0b25c067faf249f8fa14ca398d87daec5f9fba92c8e10be798` |
| 17 | `def` | [Subpresheaf.familyOfElementsOfSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-familyofelementsofsection--0e04d98d067b1a5754800cd8.md) | 163 | `declaration-track:0e04d98d067b1a5754800cd88942a50b92d3db27309c9ac042641962d675bf11` |
| 18 | `theorem` | [Subpresheaf.family_of_elements_compatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-family-of-elements-compatible--e8652ef5358636e67463f555.md) | 167 | `result-track:e8652ef5358636e67463f555a2442b93f7d823871ff9ccef6f763b46e6ab649c` |
| 19 | `theorem` | [Subpresheaf.nat_trans_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-nat-trans-naturality--dc9320fa562d910918df20b1.md) | 175 | `result-track:dc9320fa562d910918df20b1f9696d29f34d90db525a7c82506293b1ed2dc297` |
| 20 | `def` | [Subpresheaf.sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-sheafify--1e6419e02c9eefffc6fc2b4c.md) | 182 | `declaration-track:1e6419e02c9eefffc6fc2b4cd5db5d6172d2e567687a7690d1188e9b6bbf1e0a` |
| 21 | `theorem` | [Subpresheaf.le_sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-le-sheafify--c76e0be2bcb84376e6f30e57.md) | 192 | `result-track:c76e0be2bcb84376e6f30e575c662303d2fd548d793ebe1126d9811b7576849f` |
| 22 | `theorem` | [Subpresheaf.eq_sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-eq-sheafify--fd99cbb00c64ccc306bbdfd7.md) | 203 | `result-track:fd99cbb00c64ccc306bbdfd7d21b82b05e9f00fa53cc458947b2e10afc52374a` |
| 23 | `theorem` | [Subpresheaf.sheafify_isSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-sheafify-issheaf--35a32acee2cf81298fa5753c.md) | 215 | `result-track:35a32acee2cf81298fa5753cbb9c4dd3a189214535feebe0641e07c8ef3a75df` |
| 24 | `theorem` | [Subpresheaf.eq_sheafify_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-eq-sheafify-iff--4948bf12122a907096c2ca9a.md) | 257 | `result-track:4948bf12122a907096c2ca9a4d053218ec097ce6fcca380ede3ffdba1476c248` |
| 25 | `theorem` | [Subpresheaf.isSheaf_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-issheaf-iff--e69d7ede755a5bdcb96cf758.md) | 262 | `result-track:e69d7ede755a5bdcb96cf75837bc7990efc942ea0161e87c8b94ea8692ff0e61` |
| 26 | `theorem` | [Subpresheaf.sheafify_sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-sheafify-sheafify--51857a4713aef570979eabf1.md) | 270 | `result-track:51857a4713aef570979eabf1b608951827f149d65f1cf338c697ac35e9341370` |
| 27 | `def` | [Subpresheaf.sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-sheafifylift--6fa6f8823d404173b0c116a1.md) | 276 | `declaration-track:6fa6f8823d404173b0c116a1a53aaea925949079f7975f48db98c675078c6ca0` |
| 28 | `theorem` | [Subpresheaf.to_sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-to-sheafifylift--eb6e67984e0b1b29f73fe4fc.md) | 300 | `result-track:eb6e67984e0b1b29f73fe4fc84398095b9b7b216bfb5164f2fa7cb8ce4029aa8` |
| 29 | `theorem` | [Subpresheaf.to_sheafify_lift_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-to-sheafify-lift-unique--6652fb65c814c73e1ca2181a.md) | 311 | `result-track:6652fb65c814c73e1ca2181a69fde080a57ad210656206cf5e293151f68d90e2` |
| 30 | `theorem` | [Subpresheaf.sheafify_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/subpresheaf-sheafify-le--ba7562fc8f61342cf2497827.md) | 323 | `result-track:ba7562fc8f61342cf249782718d329dcc87ab6ca23fe3758405d333c7eab39b9` |
| 31 | `def` | [imagePresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/imagepresheaf--eeb78c39e443857a64c63a60.md) | 341 | `declaration-track:eeb78c39e443857a64c63a602d24bc7c94a4a5ec020a0b407259c791593d6480` |
| 32 | `theorem` | [top_subpresheaf_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/top-subpresheaf-obj--25573206411a335c9ee9be66.md) | 350 | `result-track:25573206411a335c9ee9be66bc3b6bfc91b3385e132f189f4112cbd33083393a` |
| 33 | `theorem` | [imagePresheaf_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/imagepresheaf-id--4433b62cd6c179956c0de85a.md) | 355 | `result-track:4433b62cd6c179956c0de85a8fbe2e0445439b11b5801c719ff90997645f8055` |
| 34 | `def` | [toImagePresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/toimagepresheaf--20a97d0565ca89f0e629b628.md) | 362 | `declaration-track:20a97d0565ca89f0e629b628ee1ac5489bfa5f6f5d32e20f4ef80209444ebd4b` |
| 35 | `def` | [toImagePresheafSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/toimagepresheafsheafify--e9388583265adb41ca05abdf.md) | 370 | `declaration-track:e9388583265adb41ca05abdf167f10d46822e2f0bcbd4c75a02a6f48d2213791` |
| 36 | `theorem` | [toImagePresheaf_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/toimagepresheaf--ae1d170805bc302ca330ba67.md) | 377 | `result-track:ae1d170805bc302ca330ba674be508f0fb25c186e3ada640e7ab35bc7b97451f` |
| 37 | `theorem` | [imagePresheaf_comp_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/imagepresheaf-comp-le--a1561b82b26b53c43292141a.md) | 381 | `result-track:a1561b82b26b53c43292141a28e61a9b5f5b10b55a1c38e76bbd562721d23329` |
| 38 | `instance` | [isIso_toImagePresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/isiso-toimagepresheaf--c951d6c268b898259a901eb4.md) | 385 | `declaration-track:c951d6c268b898259a901eb49340fc2b13e24fdf296068731fd73063a66c01ac` |
| 39 | `def` | [imageSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/imagesheaf--88c83e3157707de273bd9062.md) | 402 | `declaration-track:88c83e3157707de273bd90621b09031842c68a96fc1db09d0180c7343e0d5e69` |
| 40 | `def` | [toImageSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/toimagesheaf--a4b884db8487f44e390261e7.md) | 412 | `declaration-track:a4b884db8487f44e390261e7f08b76dd61f124987329b65be5a73abf79bf88ff` |
| 41 | `def` | [imageSheafι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/imagesheaf--1f196d6f06f3c5f94b7b4c1e.md) | 418 | `declaration-track:1f196d6f06f3c5f94b7b4c1e2f82893b2d6f4d7a8c6d563fa35e965735d6c24e` |
| 42 | `theorem` | [toImageSheaf_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/toimagesheaf--d4c146e9ef57b1ed71008c8f.md) | 423 | `result-track:d4c146e9ef57b1ed71008c8f0ba03a6e45899eebe5f26138b8a8eb57d63f8266` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/instance--71df2840f46c9eda3e47a2a2.md) | 429 | `declaration-track:71df2840f46c9eda3e47a2a2c6e17088f051070fa06c2c1756160c414ef16f27` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/instance--36c35a351bf5b069eb952097.md) | 435 | `declaration-track:36c35a351bf5b069eb9520977ca32d60d1adec355df056436baa89d7ea97ebba` |
| 45 | `def` | [imageMonoFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/imagemonofactorization--b4f3ab3cdb68118db42f0bdf.md) | 449 | `declaration-track:b4f3ab3cdb68118db42f0bdf342031782c10c1efa90c6ef6a259e0277f00d5b3` |
| 46 | `def` | [imageFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/imagefactorization--bd9add39c257d56f8a365a05.md) | 456 | `declaration-track:bd9add39c257d56f8a365a05d45fc1a269e175ab215a7262f0da9d17b984b940` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/declarations/instance--beacdab6f2797ebb871a7597.md) | 482 | `declaration-track:beacdab6f2797ebb871a75973b232a05830f2b7a453c940a5e7998f274a81bb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
