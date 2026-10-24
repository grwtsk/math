# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7502299255e3fe7093047e543456ab66eeaecf2",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7502299255e3fe7093047e543456ab66eeaecf2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapTriangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/maptriangle--a2e4c3a20d41dd0d4468a209.md) | 49 | `declaration-track:a2e4c3a20d41dd0d4468a209923c5e4e2aef8385f8a6e81d889b27d561ccdccc` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/instance--228d1b4cc15ee1577923a736.md) | 63 | `declaration-track:228d1b4cc15ee1577923a7369dff767535bfb74c1bb640c44777f1acf56d62dc` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/instance--98db6837ea54904edbb5b105.md) | 70 | `declaration-track:98db6837ea54904edbb5b105348e1e46eb66a3b518eb2eeaf952519a8c61317d` |
| 4 | `def` | [mapTriangleCommShiftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/maptrianglecommshiftiso--dbda52b6bed3d3b3cc19a32c.md) | 91 | `declaration-track:dbda52b6bed3d3b3cc19a32ce9b75fad828e7c40d5a24c3646453c35f33cbfbb` |
| 5 | `theorem` | [mapTriangleCommShiftIso_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/maptrianglecommshiftiso-add--ecbcbe4eb6906d048e19cdb7.md) | 113 | `result-track:ecbcbe4eb6906d048e19cdb73f86b06508a12ad90d2a795fc651b291eaf35223` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/instance--c31d1e1cfb1d8c591954db2d.md) | 123 | `declaration-track:c31d1e1cfb1d8c591954db2d834f360aa2fc8a7b4732df60ba3e8473400be0ef` |
| 7 | `def` | [mapTriangleRotateIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/maptrianglerotateiso--309eb34b03dc77c601ddb604.md) | 132 | `declaration-track:309eb34b03dc77c601ddb604ea8744e790b507bdcb1558d9823c2629617a1a79` |
| 8 | `def` | [mapTriangleInvRotateIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/maptriangleinvrotateiso--cf938569c05671d2f963b24e.md) | 144 | `declaration-track:cf938569c05671d2f963b24ea38f98a17b834a291ddf9d1f6f256015434f7bc6` |
| 9 | `def` | [mapTriangleIdIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/maptriangleidiso--bb2f16068f0c7be91734e4da.md) | 155 | `declaration-track:bb2f16068f0c7be91734e4dac0bf4e6f7f88d158308e839627497e39f4fd03af` |
| 10 | `def` | [mapTriangleCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/maptrianglecompiso--b693944149d4e6ab707f54a7.md) | 160 | `declaration-track:b693944149d4e6ab707f54a7b4004bca34214def206005aca975f9d65606107f` |
| 11 | `def` | [mapTriangleIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/maptriangleiso--929f421da9f522929d3dd5eb.md) | 167 | `declaration-track:929f421da9f522929d3dd5ebaf0166ff5f9de555ee1df289c1dbd1b7e807764f` |
| 12 | `class` | [IsTriangulated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/istriangulated--5e0d0fb9e61666f61108c435.md) | 185 | `declaration-track:5e0d0fb9e61666f61108c4357dbf1b9e2fe5c128b2c69a6d6c7cb37a0796bfc0` |
| 13 | `lemma` | [map_distinguished](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/map-distinguished--e3a037e554da9978cee27c6d.md) | 188 | `result-track:e3a037e554da9978cee27c6d8f8962ab21274df1c9cf140f2cee83bebd708d97` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/instance--341f14b4f7f5840c1fbf1b4f.md) | 197 | `declaration-track:341f14b4f7f5840c1fbf1b4f04f8b5faa79d72a8002ec997430c65199077397f` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/instance--d3e53219d1463dd1c6b1d3e9.md) | 209 | `declaration-track:d3e53219d1463dd1c6b1d3e9e045f4ce6c51fb8714ea578a0427d9ba7278fa75` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/instance--ec14f6080a92792dfb1d1adb.md) | 235 | `declaration-track:ec14f6080a92792dfb1d1adb758d785637934ea05984197949088d795491eb72` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/instance--bb5335bcdcf5264c0339f12a.md) | 238 | `declaration-track:bb5335bcdcf5264c0339f12a9ae5261b0e9fab2e58c1adaa3d0155a602f943bc` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/instance--67fe3ae2d08b996075c9300f.md) | 242 | `declaration-track:67fe3ae2d08b996075c9300f4eee11161e76f95ffe5bcb07c0ac39067a26bbd9` |
| 19 | `lemma` | [map_distinguished_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/map-distinguished-iff--40d0afaca91f5f87664c610b.md) | 249 | `result-track:40d0afaca91f5f87664c610b483b015881f1a1627ba25eadf9dd13b7f2366da9` |
| 20 | `lemma` | [isTriangulated_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/istriangulated-of-iso--7858a0af02616f52ebcd2883.md) | 257 | `result-track:7858a0af02616f52ebcd2883b5ce47ea613a7749051e8c197b0ab841f3fd8dfd` |
| 21 | `lemma` | [isTriangulated_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/istriangulated-iff-of-iso--806ec8ae1b636f57bcbda742.md) | 262 | `result-track:806ec8ae1b636f57bcbda742f459d40fd4443c06eaa24a39d91a00fec7962038` |
| 22 | `lemma` | [isTriangulated_iff_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/istriangulated-iff-comp-right--d41be3a073d80e9dd0d4151b.md) | 271 | `result-track:d41be3a073d80e9dd0d4151b9c2e36404ff872fbcef547898526b6a77fe9ee7c` |
| 23 | `lemma` | [mem_mapTriangle_essImage_of_distinguished](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/mem-maptriangle-essimage-of-distinguished--54976fea37e68652a76490ef.md) | 281 | `result-track:54976fea37e68652a76490ef5e7a6835ae1d54555e8f78e5f509c83466d515a2` |
| 24 | `lemma` | [isTriangulated_of_precomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/istriangulated-of-precomp--249a766e1b76e026b7d8dfd0.md) | 291 | `result-track:249a766e1b76e026b7d8dfd05f05caeeca2aa2dd3b2e8241361fd2dbfd555372` |
| 25 | `lemma` | [isTriangulated_of_precomp_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/istriangulated-of-precomp-iso--5a4d039d7fba278fc0093632.md) | 300 | `result-track:5a4d039d7fba278fc009363284ebd218f16b73dfb412804deaf6eeda68c469ae` |
| 26 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/map--4fbe3968367edb7fc5d6646d.md) | 327 | `declaration-track:4fbe3968367edb7fc5d6646da3e319c63594603bb182f1baf5178abbe4042176` |
| 27 | `lemma` | [isTriangulated_of_essSurj_mapComposableArrows_two](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/istriangulated-of-esssurj-mapcomposablearrows-two--0b5a280f850e607a7ea33ad5.md) | 346 | `result-track:0b5a280f850e607a7ea33ad5e031deadc232a6353333daeb7d064f65da763b3c` |
| 28 | `lemma` | [IsTriangulated.of_fully_faithful_triangulated_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/declarations/istriangulated-of-fully-faithful-triangulated-functor--462f81b58ddbf656873e5967.md) | 364 | `result-track:462f81b58ddbf656873e59676e428653773b8d321b513a82090ae258affac44d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
