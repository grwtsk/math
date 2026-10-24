# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7d156097db4e8a844d755a3a5e1de4b373f0bbb",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7d156097db4e8a844d755a3a5e1de4b373f0bbb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.EpiMono` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompHausLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/comphauslike--e46c58436e1930a9186e2928.md) | 71 | `declaration-track:e46c58436e1930a9186e29288905999ee1581522b878172e5cc4088b4bad9498` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/instance--ba8a9e672233f695b7f78113.md) | 85 | `declaration-track:ba8a9e672233f695b7f78113fde413523b945f91b121eb11189c748e2206084d` |
| 3 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/category--b118c1d9d851d1a37317be30.md) | 88 | `declaration-track:b118c1d9d851d1a37317be305c8262d964269a47fbeb9919a5fb9f46ccc22471` |
| 4 | `instance` | [concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/concretecategory--f7923325ec726dd732f70a99.md) | 91 | `declaration-track:f7923325ec726dd732f70a992e5602812d9e1439b68186fe75650e6fe8db8c6b` |
| 5 | `instance` | [hasForget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/hasforget--29e60054b81c37f31d45388a.md) | 94 | `declaration-track:29e60054b81c37f31d45388aa4a945876c6712fea8af8f2a8830bb0a1d37da2e` |
| 6 | `class` | [HasProp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/hasprop--15b70e560d7fdd4ce27835e6.md) | 100 | `declaration-track:15b70e560d7fdd4ce27835e692d687084b8a217f9e3011499c47dee6c96f08d4` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/instance--c7bb3779245060eaf56d4e5b.md) | 103 | `declaration-track:c7bb3779245060eaf56d4e5b582058c32cc28bbbefc4b4e6750816b8435325db` |
| 8 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/of--94431bfb960a307cb811ff93.md) | 110 | `declaration-track:94431bfb960a307cb811ff93f84296b15b57401e1e54f5c742afa0e15be338a2` |
| 9 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/coe-of--9f4002f15ea607c054e24e02.md) | 116 | `result-track:9f4002f15ea607c054e24e022b7bc4d28b0c0ddb65220d8dea4c3733d9fcbfe8` |
| 10 | `theorem` | [coe_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/coe-id--a14bb962dea2e32a02200e8b.md) | 119 | `result-track:a14bb962dea2e32a02200e8b8f365e3ff9caa0c4fcb2f81c451006d25e664f79` |
| 11 | `theorem` | [coe_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/coe-comp--3298983e5991064ec60c3235.md) | 123 | `result-track:3298983e5991064ec60c3235b339bded8435788c1a0366607c3aeb8175bcded0` |
| 12 | `abbrev` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/ofhom--ca16cb966936bd94da900f30.md) | 133 | `declaration-track:ca16cb966936bd94da900f301b8c6036713cdccbd4587c335af59d02cf03c12e` |
| 13 | `lemma` | [hom_ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/hom-ofhom--175342d5950995f81ac1cf39.md) | 135 | `result-track:175342d5950995f81ac1cf3931bfcc69036c6314e163abbe0d772c821b4e3f74` |
| 14 | `lemma` | [ofHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/ofhom-id--067dccd723fe3e59c9d36314.md) | 137 | `result-track:067dccd723fe3e59c9d363142ba3c94250cb5dba41d9504a801a1d91746e577b` |
| 15 | `lemma` | [ofHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/ofhom-comp--1e51c54c059f44a13fdc697a.md) | 139 | `result-track:1e51c54c059f44a13fdc697a7966edeba108c0565a138819ae2cd7d0c0e64b70` |
| 16 | `def` | [toCompHausLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/tocomphauslike--13a4cc10b19459e64223e914.md) | 148 | `declaration-track:13a4cc10b19459e64223e914f3fe2d6056eda091bf241dcd6f8eb325a22818bb` |
| 17 | `def` | [fullyFaithfulToCompHausLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/fullyfaithfultocomphauslike--50403eecb6481f886395b8fa.md) | 161 | `declaration-track:50403eecb6481f886395b8fab4b7bc36ba279a8648ed9ecfba2dcb49de4fb6db` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/instance--0c716e7f0e7ddb0ade62231c.md) | 164 | `declaration-track:0c716e7f0e7ddb0ade62231c5f7050d0a350c6b44e7c213d222e98ce714ba6bd` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/instance--17a54e90047ed2990da00c95.md) | 166 | `declaration-track:17a54e90047ed2990da00c95cafd1cdbe24ff21f663aa3cad2761a5249137b29` |
| 20 | `def` | [compHausLikeToTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/comphausliketotop--3023a4363c0fa8d31f4ab0c3.md) | 174 | `declaration-track:3023a4363c0fa8d31f4ab0c35a0f98a8667e2dfd1fcfc2dc52e01add7868959d` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/example--ab37c27600a96a4e5d181624.md) | 179 | `declaration-track:ab37c27600a96a4e5d181624c7dab4809c9aeb20828d2f74cf13aaf8442ee050` |
| 22 | `def` | [fullyFaithfulCompHausLikeToTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/fullyfaithfulcomphausliketotop--d0a30eaf36eebdda67957621.md) | 183 | `declaration-track:d0a30eaf36eebdda6795762186c5f6c6a11e75dd6afc7af44d9e5a6cf676d96f` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/instance--9af58862299ef2d343c92b85.md) | 186 | `declaration-track:9af58862299ef2d343c92b854394fa6114062503cd90aa87fff4ca672a045cb7` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/instance--414e12087e28a675d625f30f.md) | 189 | `declaration-track:414e12087e28a675d625f30f6239752f3332a830ffd8f003b1ab966fdf36ad57` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/instance--a856e915a0694297046d9d68.md) | 192 | `declaration-track:a856e915a0694297046d9d68720dda1b639efdcda5157b0a02d053491d6de8b8` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/instance--91d6852f0e75e6c9fa17a966.md) | 195 | `declaration-track:91d6852f0e75e6c9fa17a966d870d609e0b39a38bca9e7274878ce265301b425` |
| 27 | `theorem` | [epi_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/epi-of-surjective--27fc0b479e4bca886f7b00b6.md) | 200 | `result-track:27fc0b479e4bca886f7b00b600b9b3e8081bd679f7062c3e372bf7e8bbbf7ea5` |
| 28 | `theorem` | [mono_iff_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/mono-iff-injective--5ee583dfb886f3130b184a9e.md) | 205 | `result-track:5ee583dfb886f3130b184a9e8d11bee14f4159742cbb00dd4635b213d7517e25` |
| 29 | `theorem` | [isClosedMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/isclosedmap--ed65dd4c4786b24452802fda.md) | 217 | `result-track:ed65dd4c4786b24452802fda183afb4bd92ec3506a1298224f7d222f0feb1247` |
| 30 | `theorem` | [isIso_of_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/isiso-of-bijective--7523d5aa170dd4a2bd3adb47.md) | 221 | `result-track:7523d5aa170dd4a2bd3adb47ac52790a972833c83d2e99ddb04eff8cfe60a0df` |
| 31 | `instance` | [forget_reflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/forget-reflectsisomorphisms--a7fc2de55614f05eaa394561.md) | 235 | `declaration-track:a7fc2de55614f05eaa3945614494c4721b2357799785f07809279778f1efbf8a` |
| 32 | `def` | [isoOfBijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/isoofbijective--7e4de6bb18b1e1692c3d491c.md) | 240 | `declaration-track:7e4de6bb18b1e1692c3d491c25ed2c8a74b837cf549d6731ca2e6f6c6b5c3e1b` |
| 33 | `def` | [isoOfHomeo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/isoofhomeo--3ba6ccddfca6bc9f65b285d4.md) | 247 | `declaration-track:3ba6ccddfca6bc9f65b285d4a9c5a627746a8904ef2186ee4e0db0f85ca949ad` |
| 34 | `def` | [homeoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/homeoofiso--7133504118aafb940d151f82.md) | 252 | `declaration-track:7133504118aafb940d151f822f30e23eb247e5ea94d6f41d949ab383e158eeaa` |
| 35 | `def` | [isoEquivHomeo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/isoequivhomeo--736cbe655e05f5550b36106d.md) | 258 | `declaration-track:736cbe655e05f5550b36106d79c39ed5fac038e54181a57faa87ca2842529ba3` |
| 36 | `def` | [const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/const--a37ab49ad4d6be831dfdfaad.md) | 265 | `declaration-track:a37ab49ad4d6be831dfdfaadf5b0700c76b38a5ff00bddab4c81e1e63be0c6a0` |
| 37 | `lemma` | [const_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd72d6d9dd52c1f255b6bcd0ace8fc118e83861fd5fb1c20d25266d1a51fe56e8.lean/declarations/const-comp--5c4075994ff36fa105315e7a.md) | 269 | `result-track:5c4075994ff36fa105315e7a5c6c18a4c39ad7e034824addddfc73b4155dbfdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
