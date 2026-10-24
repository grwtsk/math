# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Over.Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cb635f32039cb1f266e9d46377683d8b8a57544",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cb635f32039cb1f266e9d46377683d8b8a57544`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Comma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.ConeCategory` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Creates` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [hasColimit_of_hasColimit_comp_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/hascolimit-of-hascolimit-comp-forget--8c62a7fc11ddf5057d0119ad.md) | 45 | `declaration-track:8c62a7fc11ddf5057d0119ad83e46ec60ee83570b1e6f98f800e734b7be1e762` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/instance--9cf092f36b071f52a1001bf1.md) | 49 | `declaration-track:9cf092f36b071f52a1001bf124e55bbd00c173f1b4d8d7b16b23335255706b60` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/instance--620c5ffb4a92e17010c03d30.md) | 51 | `declaration-track:620c5ffb4a92e17010c03d302379c1d50814f3880e4af206e00796c216d47bea` |
| 4 | `instance` | [createsColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/createscolimitsofsize--354493424a31b85a6a9b223b.md) | 54 | `declaration-track:354493424a31b85a6a9b223bc3d66cf1aaa010e3e08c43402841fc7272bb9379` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/example--676c6d1d3b000724ad99d4f3.md) | 58 | `declaration-track:676c6d1d3b000724ad99d4f3916888e4d610beb9692cff81407577df287e55e4` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/example--57fa641a6f0e6890296f5ab0.md) | 61 | `declaration-track:57fa641a6f0e6890296f5ab058c9049157263722c299627a5c9cec944de6c020` |
| 7 | `theorem` | [epi_left_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/epi-left-of-epi--2af928021ba597ca205723b0.md) | 64 | `result-track:2af928021ba597ca205723b0946611d15f7b6f0f6b2fc9b2c164d0ee00aa3284` |
| 8 | `theorem` | [epi_iff_epi_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/epi-iff-epi-left--c13dd99b938c31bc9e257c08.md) | 67 | `result-track:c13dd99b938c31bc9e257c08d788882b95c9eaa0faefb0f87ff1c7a6fc901a89` |
| 9 | `instance` | [createsColimitsOfSizeMapCompForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/createscolimitsofsizemapcompforget--d3d8d4e80e2284c591527e7b.md) | 70 | `declaration-track:d3d8d4e80e2284c591527e7ba674d4504905019a0416722f633f05d164bc0804` |
| 10 | `instance` | [preservesColimitsOfSize_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/preservescolimitsofsize-map--09b3fd17fee71e859605b1c5.md) | 74 | `declaration-track:09b3fd17fee71e859605b1c554cfcbcb92ce1b4f3e524fcd4331444079cfdfa5` |
| 11 | `def` | [isColimitToOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/iscolimittoover--825acc4e83f15628bfb66521.md) | 79 | `declaration-track:825acc4e83f15628bfb6652168b7be18a2b163041ac6cbfe816d677710081aac` |
| 12 | `def` | [_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiLeftOfEpi.Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.CategoryTheory.Limits.colimit.isColimitToOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-epileftofepi--02e5bd343f15471396ca9640.md) | 84 | `declaration-track:02e5bd343f15471396ca9640bf4c344acd6224b00620224b3b6cfff9b4cb4880` |
| 13 | `instance` | [hasLimit_of_hasLimit_comp_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/haslimit-of-haslimit-comp-forget--d4c425316bc0a24280db0e0b.md) | 92 | `declaration-track:d4c425316bc0a24280db0e0b6c64f5f848170796f2dbbb48dcff77329be9e0c2` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/instance--c9214d08978bb4d326eb7a59.md) | 96 | `declaration-track:c9214d08978bb4d326eb7a598228508b80d2fa8c30112d4dfd17d7c496a8b969` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/instance--b1258ca1a7c8db6288a1ef0f.md) | 98 | `declaration-track:b1258ca1a7c8db6288a1ef0f80f09be1a510bf5b21c196ae9c533f025e4db32b` |
| 16 | `theorem` | [mono_right_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/mono-right-of-mono--e44a54fa20956b9337b3f5f6.md) | 101 | `result-track:e44a54fa20956b9337b3f5f6e930feb563a04d956b7b30c64c8b70b7588ddc67` |
| 17 | `theorem` | [mono_iff_mono_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/mono-iff-mono-right--73c2a46e600247a1055ea7ed.md) | 104 | `result-track:73c2a46e600247a1055ea7ed60eaa6f6c5919c5bf003df8e29d069891e81672e` |
| 18 | `instance` | [createsLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/createslimitsofsize--54230ad9f7666e1a8e091483.md) | 107 | `declaration-track:54230ad9f7666e1a8e091483030db123c88acf07eafd8ade28f72e3c48757311` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/example--3850a633847462126b85c66a.md) | 111 | `declaration-track:3850a633847462126b85c66ad19db5b8f340aa66020cdcfc60d8eeeeaeda215a` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/example--8c062b477a076726d6c4e88e.md) | 114 | `declaration-track:8c062b477a076726d6c4e88e5956622073e747cdc6dd2d4a1d38ab11e9a343c4` |
| 21 | `instance` | [createLimitsOfSizeMapCompForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/createlimitsofsizemapcompforget--87116b0a5344468f7bbe5773.md) | 117 | `declaration-track:87116b0a5344468f7bbe5773b8ad484e3543ab64a6cccfe943478510d6e9bee0` |
| 22 | `instance` | [preservesLimitsOfSize_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/preserveslimitsofsize-map--527347f184b34610b4b82fba.md) | 121 | `declaration-track:527347f184b34610b4b82fbaefda1a28f31324de8855d362d2083d8f25ec3303` |
| 23 | `def` | [isLimitToUnder](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/islimittounder--0a3aa79072ef6362139e576e.md) | 126 | `declaration-track:0a3aa79072ef6362139e576e30c71c34a398b9aa57dd508d581421c528fae053` |
| 24 | `def` | [_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiLeftOfEpi.Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.CategoryTheory.Limits.limit.isLimitToOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-epileftofepi--28acabc35e1a73620ec02cc3.md) | 131 | `declaration-track:28acabc35e1a73620ec02cc376b8630914673b7ae6265b9ba999a827f5d3d625` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
