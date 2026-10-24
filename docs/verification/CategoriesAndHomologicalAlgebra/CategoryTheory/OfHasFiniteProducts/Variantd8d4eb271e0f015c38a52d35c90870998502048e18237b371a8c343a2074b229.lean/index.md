# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfHasFiniteProducts.Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46b71b221fa816d2af4882d05695669c96b56305",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46b71b221fa816d2af4882d05695669c96b56305`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Terminal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monoidalOfHasFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/monoidalofhasfiniteproducts--c3a928f52163118a7f90a3a4.md) | 50 | `declaration-track:c3a928f52163118a7f90a3a4d3c33810ed115dedfefebb90ad1c659b5c092f62` |
| 2 | `theorem` | [unit_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/unit-ext--c30569d8d702e9de33600a48.md) | 76 | `result-track:c30569d8d702e9de33600a48c82cf2db14df77f17ab13c6ce823719bf57428ac` |
| 3 | `theorem` | [tensor_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/tensor-ext--1b923983f9650f3c11b04c5a.md) | 78 | `result-track:1b923983f9650f3c11b04c5a3b26b7dc9fa2410d600640660c288b7ea4bd37cf` |
| 4 | `theorem` | [tensorUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/tensorunit--1c366d84c1f6cef8081cce1d.md) | 82 | `result-track:1c366d84c1f6cef8081cce1d7e1926df683b1239e73d2227a9df74732a83bc63` |
| 5 | `theorem` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/tensorobj--39d7d46f643be371391ffd7e.md) | 85 | `result-track:39d7d46f643be371391ffd7ea1bea1474214592dc7c9438636393b569b38e33e` |
| 6 | `theorem` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/tensorhom--e626752a55e21cfb7193cf33.md) | 89 | `result-track:e626752a55e21cfb7193cf33b4442d8a91b99f1b3c73af05d4eb4cd7f68ac0f1` |
| 7 | `theorem` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/whiskerleft--16f11470cf06ccd89a9bae1e.md) | 93 | `result-track:16f11470cf06ccd89a9bae1ea533427ee4cf4baf4a114e1a8215bec41dcf704b` |
| 8 | `theorem` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/whiskerright--b6d50c9212c11a7bfb2e9632.md) | 97 | `result-track:b6d50c9212c11a7bfb2e9632b0dc08426a5c8d7ea65ef0f2f5c6bb1547674f9d` |
| 9 | `theorem` | [leftUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/leftunitor-hom--51b7df3818f183f2b7933623.md) | 101 | `result-track:51b7df3818f183f2b7933623e308422d3696258dc92cee85735f6b4baddecc5f` |
| 10 | `theorem` | [leftUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/leftunitor-inv--6d7371596ee4c29c596f56f2.md) | 105 | `result-track:6d7371596ee4c29c596f56f2d9bc0d889d8bb96c0da6185a54bf02a9441c4f89` |
| 11 | `theorem` | [rightUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/rightunitor-hom--50a449cafcd5f5fd0e7abcc9.md) | 109 | `result-track:50a449cafcd5f5fd0e7abcc9b8c6d15a1880ab221ef8ff6e6206246064667e40` |
| 12 | `theorem` | [rightUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/rightunitor-inv--19490d42f43c3a5d43440172.md) | 113 | `result-track:19490d42f43c3a5d43440172c90c5fadc671369838e101092aa4722c05601d4e` |
| 13 | `theorem` | [associator_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/associator-hom--572fcc63edad7fe836b3075d.md) | 119 | `result-track:572fcc63edad7fe836b3075d0fd1a89b7083f7264b8709940d524cdb83a94c39` |
| 14 | `theorem` | [associator_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/associator-inv--b3a6efe32734647a66394119.md) | 125 | `result-track:b3a6efe32734647a66394119179fe1afc83c0893669fd5af33046020c885476b` |
| 15 | `theorem` | [associator_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/associator-hom-fst--7392b7c5586ef68948d799e9.md) | 130 | `result-track:7392b7c5586ef68948d799e9a0e5c5f794b20fe8c9500eb1373f48369f333e4b` |
| 16 | `theorem` | [associator_hom_snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/associator-hom-snd-fst--1ee99e00c230beaf159052d1.md) | 133 | `result-track:1ee99e00c230beaf159052d1eb25e33680d55e6d676d8408b2cb8db8a39b313f` |
| 17 | `theorem` | [associator_hom_snd_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/associator-hom-snd-snd--a79c039f7be8da16eaad434a.md) | 136 | `result-track:a79c039f7be8da16eaad434a57128392f76c1d91e1daa140e702193db5130042` |
| 18 | `theorem` | [associator_inv_fst_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/associator-inv-fst-fst--e608af71ff644c37740c33de.md) | 139 | `result-track:e608af71ff644c37740c33def1a62896a4877a1ed349fcb97d6155243607534d` |
| 19 | `theorem` | [associator_inv_fst_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/associator-inv-fst-snd--514f0babf7f61777882b30e8.md) | 142 | `result-track:514f0babf7f61777882b30e84cb80a8a32086e7a56fa35ca60f15117610f73ff` |
| 20 | `theorem` | [associator_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/associator-inv-snd--694a83096f1946047bb4d661.md) | 145 | `result-track:694a83096f1946047bb4d661dea64d560c6f849ff0b4b3101dc93c5845c38c81` |
| 21 | `def` | [symmetricOfHasFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/symmetricofhasfiniteproducts--76c0d4d27b9582bf8b48a73b.md) | 159 | `declaration-track:76c0d4d27b9582bf8b48a73b5fa945e200ef65bf4e77cfc9e6842b3f81916b4a` |
| 22 | `def` | [monoidalOfHasFiniteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/monoidalofhasfinitecoproducts--c05fcc9123830205166d1b67.md) | 172 | `declaration-track:c05fcc9123830205166d1b67953dd1709b2624834e8d6da2f1ff027807650cac` |
| 23 | `theorem` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/tensorobj--15d66d7ad44411edf4da95cf.md) | 199 | `result-track:15d66d7ad44411edf4da95cf0ad65671135c70f11aa1b2f9acda97fbf980251e` |
| 24 | `theorem` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/tensorhom--99005b1d679ea1c96fa8b5a3.md) | 203 | `result-track:99005b1d679ea1c96fa8b5a3d07f4d43ee81c8364ab710245cc0f5fe75bf9ba9` |
| 25 | `theorem` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/whiskerleft--c08aa0fac30345fce47f06e0.md) | 207 | `result-track:c08aa0fac30345fce47f06e021203255f4f098cbbe615a4523a87c2a7879bb70` |
| 26 | `theorem` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/whiskerright--23ef241a350f0bf88cb5e2c9.md) | 211 | `result-track:23ef241a350f0bf88cb5e2c9e9d756f4ec19482200580a91c4775ec44edd1f80` |
| 27 | `theorem` | [leftUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/leftunitor-hom--a7d46c0f26cc15011fde5aee.md) | 215 | `result-track:a7d46c0f26cc15011fde5aee7182e827b85084f51069b1befd1d54c2277f22aa` |
| 28 | `theorem` | [rightUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/rightunitor-hom--a7e2d65387dd0dc967822cbc.md) | 219 | `result-track:a7e2d65387dd0dc967822cbcf745d98848bef21ceac7d36bbfbb66daddb04c77` |
| 29 | `theorem` | [leftUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/leftunitor-inv--d1861aa5e33544dfc6140cdd.md) | 223 | `result-track:d1861aa5e33544dfc6140cdd279634a10e1c87d3e7e77857cf5d0f44dc25e7a3` |
| 30 | `theorem` | [rightUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/rightunitor-inv--4c018df18a0a67eb16abde96.md) | 227 | `result-track:4c018df18a0a67eb16abde96cf3b29cc93dce26935c362bbdd4e27dd676e328f` |
| 31 | `theorem` | [associator_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/associator-hom--a7a800ed3e2452defc667ae3.md) | 233 | `result-track:a7a800ed3e2452defc667ae3f1f77443bd886fb7ec1cea9ee56f15a98749619f` |
| 32 | `theorem` | [associator_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/associator-inv--69e7c660d60c5b0e4212c41e.md) | 238 | `result-track:69e7c660d60c5b0e4212c41e1f1dc9e5b836b3c82db2f5c3fd2683ddf9ae29e8` |
| 33 | `def` | [symmetricOfHasFiniteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/symmetricofhasfinitecoproducts--aaed54c8dfd133825b3425e2.md) | 254 | `declaration-track:aaed54c8dfd133825b3425e271159ed31d8b63fb0059aeefcd5ac0b71ccb0112` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/instance--35ae8c0ba00c886cc7a4b9b0.md) | 275 | `declaration-track:35ae8c0ba00c886cc7a4b9b02cb6d5b742bed724a8f25f309fdc71090f9e1ecf` |
| 35 | `lemma` | [η_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/eq--18a4480710a1f17b212ecacd.md) | 303 | `result-track:18a4480710a1f17b212ecacd9e62324a1b2c79127ff0a3db8b3bf13894dff5f6` |
| 36 | `lemma` | [δ_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/eq--f32730a03cb0b956e93c38df.md) | 304 | `result-track:f32730a03cb0b956e93c38df1ae1ea732be6a17896d023a6e5af941d8016b2fc` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/instance--a8263cf29620bd526bfcf106.md) | 309 | `declaration-track:a8263cf29620bd526bfcf106f29e1f8f071ca73cfa776918155ec2a8d1985ed5` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/instance--3d9134ce10ff4ebc431052c5.md) | 310 | `declaration-track:3d9134ce10ff4ebc431052c509c56800554b2ad72a3a0b1316fd1cff398a8396` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/declarations/instance--a0fced27db1a0b9fe31ffa67.md) | 314 | `declaration-track:a0fced27db1a0b9fe31ffa676994dbdb0c712bb86f4297e4c77dbd8da6558164` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
