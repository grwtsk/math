# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallyInjective.Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "414a77f0c9e77bf03f1c8e15d8518f54470baf17",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `414a77f0c9e77bf03f1c8e15d8518f54470baf17`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.LeftExact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.PreservesSheafification` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Subsheaf` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equalizerSieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/equalizersieve--8ed1ee91f6476dec1a3f7b0d.md) | 50 | `declaration-track:8ed1ee91f6476dec1a3f7b0d4a904186b037b1ec4cf39c29506e9794df6a0d97` |
| 2 | `lemma` | [equalizerSieve_self_eq_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/equalizersieve-self-eq-top--d92e94d27058d34b07c1a95c.md) | 57 | `result-track:d92e94d27058d34b07c1a95c863624311d0b835f841b3e3bd276d1fccc6dcedb` |
| 3 | `lemma` | [equalizerSieve_eq_top_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/equalizersieve-eq-top-iff--be0bf63ee3fca126c3d94f00.md) | 61 | `result-track:be0bf63ee3fca126c3d94f0060eca1d838a826d4f22cf5d55558c68d1b0d992e` |
| 4 | `class` | [IsLocallyInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/islocallyinjective--0823a379a3c1a74f3a7fdf39.md) | 75 | `declaration-track:0823a379a3c1a74f3a7fdf39ebf57266060f3dfa137f01c288e04befb7b44057` |
| 5 | `lemma` | [equalizerSieve_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/equalizersieve-mem--d5e322229ae3b0f3766a06bb.md) | 79 | `result-track:d5e322229ae3b0f3766a06bbb6667d04631fcf57ead7362c92b6f3c166f6aec9` |
| 6 | `lemma` | [isLocallyInjective_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/islocallyinjective-of-injective--5d209b1efbb581fe5f1a6fd8.md) | 84 | `result-track:5d209b1efbb581fe5f1a6fd87806ab51c41052c7743135d67187a488a9f23c53` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/instance--946d527dcb231b0b00de77e8.md) | 93 | `declaration-track:946d527dcb231b0b00de77e88cd87c125b5c8b0dd5a9863c3b7936de99d7034d` |
| 8 | `instance` | [isLocallyInjective_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/islocallyinjective-forget--151314dc6ed26954f7dafac5.md) | 100 | `declaration-track:151314dc6ed26954f7dafac52372b06b29350eca454194c50a55f5192eaa5ef3` |
| 9 | `lemma` | [isLocallyInjective_forget_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/islocallyinjective-forget-iff--591b5c4907a206f9fbb636e7.md) | 105 | `result-track:591b5c4907a206f9fbb636e780079ec815036e8fbadc41f424b3030cf2cfdf85` |
| 10 | `lemma` | [isLocallyInjective_iff_equalizerSieve_mem_imp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/islocallyinjective-iff-equalizersieve-mem-imp--67260246798c24038c8de3a1.md) | 113 | `result-track:67260246798c24038c8de3a119322c9ba939b5b687ebd10c5aadec45917edcd4` |
| 11 | `lemma` | [equalizerSieve_mem_of_equalizerSieve_app_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/equalizersieve-mem-of-equalizersieve-app-mem--12b6a9fba857d70eabc868d5.md) | 132 | `result-track:12b6a9fba857d70eabc868d5c95502565c0faed7475eb6791021249ca547ddac` |
| 12 | `instance` | [isLocallyInjective_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/islocallyinjective-comp--4c59a8c7f691b5bf70667198.md) | 138 | `declaration-track:4c59a8c7f691b5bf70667198bd61df46f909991cff33897b9ffe082ffa428afd` |
| 13 | `lemma` | [isLocallyInjective_of_isLocallyInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/islocallyinjective-of-islocallyinjective--4ee753b6fb53aff2a391262b.md) | 144 | `result-track:4ee753b6fb53aff2a391262bff5242adc3a587c2b648cd6a30297c9363ecb8aa` |
| 14 | `lemma` | [isLocallyInjective_of_isLocallyInjective_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/islocallyinjective-of-islocallyinjective-fac--a339298b2566e06bebedac42.md) | 150 | `result-track:a339298b2566e06bebedac4265d994e69a98263f0c5a200931c1493b6c5c469a` |
| 15 | `lemma` | [isLocallyInjective_iff_of_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/islocallyinjective-iff-of-fac--d2d8e9697f57020cc9c26f3a.md) | 155 | `result-track:d2d8e9697f57020cc9c26f3ac27193d226520d25e2ffe1250187b31733980946` |
| 16 | `lemma` | [isLocallyInjective_comp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/islocallyinjective-comp-iff--3928eb42d9b69d653f228de3.md) | 166 | `result-track:3928eb42d9b69d653f228de353c4e9a6d35de040d9b02dc96a63d54cd65a43a8` |
| 17 | `lemma` | [isLocallyInjective_iff_injective_of_separated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/islocallyinjective-iff-injective-of-separated--7c38cf6e10102ea68c6b2ab8.md) | 170 | `result-track:7c38cf6e10102ea68c6b2ab89b17d1b5c68c2f98b16979dda755247d035380c1` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/instance--0e08f076e4554cde475ec767.md) | 179 | `declaration-track:0e08f076e4554cde475ec767c8eebc6281af07cfd6c35fbcd2733fceb34c7163` |
| 19 | `instance` | [isLocallyInjective_toPlus](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/islocallyinjective-toplus--1f4051891fe517728aefd9ef.md) | 191 | `declaration-track:1f4051891fe517728aefd9efdd13bd7a83381f89aaa2da0f18c17942b0680122` |
| 20 | `instance` | [isLocallyInjective_toSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/islocallyinjective-tosheafify--5c84dafea3d4b3d3684dfea9.md) | 198 | `declaration-track:5c84dafea3d4b3d3684dfea92b247a903e77684fb56c15e86df52b201031fa91` |
| 21 | `instance` | [isLocallyInjective_toSheafify'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/islocallyinjective-tosheafify--daafe7498f8e88141271e928.md) | 204 | `declaration-track:daafe7498f8e88141271e928240b42b47bea3e299694bdc3cdefbd85afa971fd` |
| 22 | `abbrev` | [IsLocallyInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/islocallyinjective--ebaae6fa9373b8f9474b5013.md) | 226 | `declaration-track:ebaae6fa9373b8f9474b50131e7d321c9fe911e4347015a38ba9b946c5c765ae` |
| 23 | `lemma` | [isLocallyInjective_sheafToPresheaf_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/islocallyinjective-sheaftopresheaf-map-iff--943f67fd84f61e685b18752a.md) | 228 | `result-track:943f67fd84f61e685b18752a9397fa62cb787736e6082f98414ec1e02b99066b` |
| 24 | `instance` | [isLocallyInjective_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/islocallyinjective-of-iso--3235502196f561140f20861f.md) | 231 | `declaration-track:3235502196f561140f20861f08bdd8c6f615c75095675a4233f808e69cb83cf5` |
| 25 | `lemma` | [mono_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/mono-of-injective--6f06e4761bb08c661dedf78d.md) | 235 | `result-track:6f06e4761bb08c661dedf78df484404b23b7d60edee5829283a7589e3ff1d892` |
| 26 | `instance` | [isLocallyInjective_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/islocallyinjective-forget--a56cdb68b6deae79e4893dfe.md) | 243 | `declaration-track:a56cdb68b6deae79e4893dfe2a1853b5350a4e1af772327b52722736fd9a2c5a` |
| 27 | `lemma` | [isLocallyInjective_iff_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/islocallyinjective-iff-injective--fdd09913e7c924bd889d93bc.md) | 247 | `result-track:fdd09913e7c924bd889d93bc100e29c63800790820645743181d5d766ef994a1` |
| 28 | `lemma` | [mono_of_isLocallyInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/mono-of-islocallyinjective--882b5a593645e6a0534be931.md) | 254 | `result-track:882b5a593645e6a0534be9313ddea830a78172a3e6b920ac3ec18644057f53d6` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variant0a47310c3705fd8d277407a967afef83dfffbfec0affb444b306c7aa2749f0fc.lean/declarations/instance--ef7927d7d09a5af7111134f7.md) | 260 | `declaration-track:ef7927d7d09a5af7111134f76c74cc909199b49e943afe33263ea21d12e37f8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
