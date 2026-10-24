# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Nat.Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de8df7317fcd0d1151530d55bccbb3ced2c669aa",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de8df7317fcd0d1151530d55bccbb3ced2c669aa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Embedding` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.SuccPred` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Multiset` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/instlocallyfiniteorder--ef3127d23db871e1885aaa5f.md) | 30 | `declaration-track:ef3127d23db871e1885aaa5ffa7cd8ac8bf9a1907c4f55ea4d6819fbf2529b03` |
| 2 | `theorem` | [Icc_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/icc-eq-range--53650bfddcd2e16f4d3872f9.md) | 40 | `result-track:53650bfddcd2e16f4d3872f93a52716757e893c4b7f215b20da0997f2e13a1b3` |
| 3 | `theorem` | [Ico_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/ico-eq-range--70983adbd76f2d8d3c7a9f1b.md) | 43 | `result-track:70983adbd76f2d8d3c7a9f1b3a09bbd679897afa15ef85e131a5d4d7bcd5c7aa` |
| 4 | `theorem` | [Ioc_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/ioc-eq-range--083b4b4dbe95a914d4ab0e41.md) | 46 | `result-track:083b4b4dbe95a914d4ab0e4160d8cd4d712df2f894d964385eb0e28702148969` |
| 5 | `theorem` | [Ioo_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/ioo-eq-range--7b9fca0c3c7c3db090b59d5d.md) | 49 | `result-track:7b9fca0c3c7c3db090b59d5d10a969b4b2e52cadd0a8de5f574741c3c848a87b` |
| 6 | `theorem` | [uIcc_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/uicc-eq-range--81dc82e95a85b7ede21f463e.md) | 52 | `result-track:81dc82e95a85b7ede21f463ee61da086d3be7812df4a6538487f658bb50f5480` |
| 7 | `theorem` | [Iio_eq_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/iio-eq-range--a24f1e0744abe17cf04010a8.md) | 55 | `result-track:a24f1e0744abe17cf04010a82d1db7db289e628b74cebc02727928a94728b3bd` |
| 8 | `theorem` | [Ico_zero_eq_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/ico-zero-eq-range--da949ff2d0435ca0184b4221.md) | 60 | `result-track:da949ff2d0435ca0184b4221cbec2dd5e126dcbf2853533ffda84f42c8a79655` |
| 9 | `lemma` | [range_eq_Icc_zero_sub_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/range-eq-icc-zero-sub-one--636e73f80a592f847fbd8197.md) | 62 | `result-track:636e73f80a592f847fbd81979751057c1cd746c0a5abab696c624c9f4d688ddc` |
| 10 | `theorem` | [_root_.Finset.range_eq_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/root-finset-range-eq-ico--5662145153225b9e56a51f7d.md) | 67 | `result-track:5662145153225b9e56a51f7d264430d6676e1e7dfb0453c95275cf2fa903358d` |
| 11 | `theorem` | [range_succ_eq_Icc_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/range-succ-eq-icc-zero--8c465172ba2e0c919ee2f029.md) | 70 | `result-track:8c465172ba2e0c919ee2f02903ba787cab33922c66290a939e2b8494a33f0737` |
| 12 | `lemma` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/card-icc--9bde93f929c64257f310ba5a.md) | 73 | `result-track:9bde93f929c64257f310ba5a63adc94926a7a7f80d0e2c71d6d3435da0be63e6` |
| 13 | `lemma` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/card-ico--03dd995fb99ae2e2c45b631f.md) | 74 | `result-track:03dd995fb99ae2e2c45b631fe6d3b1e4d0df3f37de4648ca34d4a5be61a16fcb` |
| 14 | `lemma` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/card-ioc--f32c3d6b265dc76b23a42c57.md) | 75 | `result-track:f32c3d6b265dc76b23a42c57ca6282659d8dde2c8dc86c909f238273988a87a4` |
| 15 | `lemma` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/card-ioo--89fce8a619e5d84c10f2ddfa.md) | 76 | `result-track:89fce8a619e5d84c10f2ddfab07474855e1ff732bdcd954963d0408162e5d194` |
| 16 | `theorem` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/card-uicc--34af63ee7a17dd171baa93ac.md) | 79 | `result-track:34af63ee7a17dd171baa93aca66c193abcf1fa8b9146cf48837fc082e4cd5591` |
| 17 | `lemma` | [card_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/card-iic--71771a59eb1bf110115da108.md) | 83 | `result-track:71771a59eb1bf110115da108500e09814b8a96cce0caaccc510fd85e1ec9406a` |
| 18 | `theorem` | [card_Iio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/card-iio--0a88c0dd88ccdb7a6ba774d4.md) | 86 | `result-track:0a88c0dd88ccdb7a6ba774d40cb719531f969089d3ccf92e4d339a8a55ba3677` |
| 19 | `theorem` | [card_fintypeIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/card-fintypeicc--d8be8474ee02d85e31f4673c.md) | 89 | `result-track:d8be8474ee02d85e31f4673c3ddde10880ebaa9e00dd94d1571f5c2d9bbca57e` |
| 20 | `theorem` | [card_fintypeIco](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/card-fintypeico--250f4a61639229ae7a899588.md) | 92 | `result-track:250f4a61639229ae7a89958873268b6dc897d2e193d09f33a0da018546115867` |
| 21 | `theorem` | [card_fintypeIoc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/card-fintypeioc--702d1b0cde144136347e22ab.md) | 95 | `result-track:702d1b0cde144136347e22ab2a6483fd6f361dddb4a593b9977634be7e55dd15` |
| 22 | `theorem` | [card_fintypeIoo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/card-fintypeioo--71a2827c4987f731860e4420.md) | 98 | `result-track:71a2827c4987f731860e4420c0b8a8fb0abf9bd4ada1c6f71f971009bc7f5bd0` |
| 23 | `theorem` | [card_fintypeIic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/card-fintypeiic--bed36ad2ca68b0513e5a5204.md) | 101 | `result-track:bed36ad2ca68b0513e5a52042f168b30f87740cf0a0a30ecf7b78bcf646e382a` |
| 24 | `theorem` | [card_fintypeIio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/card-fintypeiio--635612eb9ab8bfeb867db905.md) | 104 | `result-track:635612eb9ab8bfeb867db90586afdf68196f4f0cb7bfff26a9ef02a041a4eda5` |
| 25 | `theorem` | [Icc_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/icc-succ-left--5f3351ab72d2841dcbc697db.md) | 107 | `result-track:5f3351ab72d2841dcbc697db5b384265582a20054cc9fc8e49cc7345e587cf33` |
| 26 | `theorem` | [Ico_succ_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/ico-succ-right--9702f2981bac1c1209acb6d2.md) | 112 | `result-track:9702f2981bac1c1209acb6d2c17ccebc88063beed6b665fdf7ef87c205240367` |
| 27 | `theorem` | [Ico_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/ico-succ-left--7bf78a7606e111ee86f102f9.md) | 117 | `result-track:7bf78a7606e111ee86f102f96f74dd44bc9fe215a716b1e7fa9fd6a40d4db8c7` |
| 28 | `theorem` | [Icc_pred_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/icc-pred-right--19da8f0f01bc63e82e937000.md) | 122 | `result-track:19da8f0f01bc63e82e93700086101cadc9cfe7a76e22b2f18cdf54c9bdba8f95` |
| 29 | `theorem` | [Ico_succ_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/ico-succ-succ--3594d7458bb583ed1c1060d3.md) | 127 | `result-track:3594d7458bb583ed1c1060d3d9e04547e3adc136f518b5b2eee45d7e8b1ccb8c` |
| 30 | `theorem` | [Ico_succ_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/ico-succ-singleton--bc32d1162bcafa467fd9211d.md) | 135 | `result-track:bc32d1162bcafa467fd9211d1ff9259517cab7fae3b8001b02fc643c9f3175e5` |
| 31 | `theorem` | [Ico_pred_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/ico-pred-singleton--fe5df4de0ce4a73a9696986a.md) | 139 | `result-track:fe5df4de0ce4a73a9696986ad015548eafb44e700191f344da711d90c8af4e25` |
| 32 | `theorem` | [Ioc_succ_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/ioc-succ-singleton--591b4e534b77b97115577e51.md) | 144 | `result-track:591b4e534b77b97115577e51dde9364841ce00b4464a507d03f8425a20580ad0` |
| 33 | `lemma` | [mem_Ioc_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/mem-ioc-succ--da10f95d79d6720113422813.md) | 148 | `result-track:da10f95d79d67201134228130abb5f6b2c48be62118252d436e9413f1f9b7c9f` |
| 34 | `lemma` | [mem_Ioc_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/mem-ioc-succ--6010152910ee4d47d06a291c.md) | 150 | `result-track:6010152910ee4d47d06a291ce0c7c74c57b192f4184550fa9e5a5592a19e2669` |
| 35 | `theorem` | [Ico_succ_right_eq_insert_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/ico-succ-right-eq-insert-ico--1f82f091126e9f617962dd91.md) | 155 | `result-track:1f82f091126e9f617962dd91fe6ba8852f993baf476566bfd46ad59b709907cd` |
| 36 | `theorem` | [Ico_insert_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/ico-insert-succ-left--e58de22cf62fb3f21cef95ac.md) | 160 | `result-track:e58de22cf62fb3f21cef95ac7b2c647da1aa8710f5a7ced2cab58a8dba50a1a2` |
| 37 | `lemma` | [Icc_insert_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/icc-insert-succ-left--1e0ea499a9f4a962b449ba55.md) | 164 | `result-track:1e0ea499a9f4a962b449ba55314a9443145a199113ab0cb79df61a28c7f13892` |
| 38 | `lemma` | [Icc_insert_succ_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/icc-insert-succ-right--54f37a4c193cf3160e2c23d3.md) | 170 | `result-track:54f37a4c193cf3160e2c23d32b28ab88cf1fbfbe9000896522f339b1272876e6` |
| 39 | `theorem` | [image_sub_const_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/image-sub-const-ico--ce10cc81d90c29aa76403585.md) | 175 | `result-track:ce10cc81d90c29aa76403585062d33487b34b758c248b848eccd4b6e76a09ea1` |
| 40 | `theorem` | [Ico_image_const_sub_eq_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/ico-image-const-sub-eq-ico--95df7e00a32d7f5c1aa81a9d.md) | 183 | `result-track:95df7e00a32d7f5c1aa81a9dcad797d71011f530d5a33e7a2ef3c795e1c1f22e` |
| 41 | `theorem` | [Ico_succ_left_eq_erase_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/ico-succ-left-eq-erase-ico--0dcd119bd7b83d595d7ecdf9.md) | 192 | `result-track:0dcd119bd7b83d595d7ecdf9350fe2d9f37a5719f9948e9d900461d645c35ac4` |
| 42 | `theorem` | [mod_injOn_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/mod-injon-ico--0eb97379713b27a4121658d7.md) | 198 | `result-track:0eb97379713b27a4121658d7b3368b282830c010f442b3f9992f732e9f8a5ba6` |
| 43 | `theorem` | [image_Ico_mod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/image-ico-mod--cb932004ddcaa840b63782b9.md) | 224 | `result-track:cb932004ddcaa840b63782b9291a22af3b1cfca9c0fef213dfbae52ba44c926e` |
| 44 | `theorem` | [multiset_Ico_map_mod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/multiset-ico-map-mod--f64e7fa9179bae9c13fca593.md) | 251 | `result-track:f64e7fa9179bae9c13fca593085003a6fa47041bdfe41134aa334677ff61d61e` |
| 45 | `lemma` | [toFinset_range'_1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/tofinset-range-1--201a1964876559d4c73fcb66.md) | 263 | `result-track:201a1964876559d4c73fcb66ff15a28542bcc919916a6b412686504d224a4917` |
| 46 | `lemma` | [toFinset_range'_1_1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/tofinset-range-1-1--3e0892e2538cffb428d19ae7.md) | 267 | `result-track:3e0892e2538cffb428d19ae7d66ef9e4efe32b8331f540a323b0c7e1625ff228` |
| 47 | `theorem` | [range_image_pred_top_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/range-image-pred-top-sub--5a1f97a9a50e9253adbf9c19.md) | 275 | `result-track:5a1f97a9a50e9253adbf9c191f33012e02f9f79516c96851c72cf59cb7ff06c7` |
| 48 | `theorem` | [range_add_eq_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/range-add-eq-union--5769fcff6d8c703a025f25b7.md) | 282 | `result-track:5769fcff6d8c703a025f25b77173d18e738d724555cc944ebe3654a073ef814c` |
| 49 | `theorem` | [Nat.decreasing_induction_of_not_bddAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/nat-decreasing-induction-of-not-bddabove--9e53fcfb14a8836b26c2a0cf.md) | 298 | `result-track:9e53fcfb14a8836b26c2a0cf5ed93d28ea0a9649ef8892c70c202ea283bca7d0` |
| 50 | `lemma` | [Nat.strong_decreasing_induction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/nat-strong-decreasing-induction--363bfe29f4f5e16bfb86c71d.md) | 304 | `result-track:363bfe29f4f5e16bfb86c71d645bc0c6d42ad0221de4b1646cbd9e2712eed94c` |
| 51 | `theorem` | [Nat.decreasing_induction_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/nat-decreasing-induction-of-infinite--3b59853a330dabe5435e1a7d.md) | 316 | `result-track:3b59853a330dabe5435e1a7dfea112486cb5d1f2290656517cede8409e609457` |
| 52 | `theorem` | [Nat.cauchy_induction'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/nat-cauchy-induction--bf05125e9e4fa299506b5ad1.md) | 320 | `result-track:bf05125e9e4fa299506b5ad17277a69d12b671cadb8b80efe820654561f0cb94` |
| 53 | `theorem` | [Nat.cauchy_induction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/nat-cauchy-induction--cba5870ed429bb9456dedb08.md) | 328 | `result-track:cba5870ed429bb9456dedb08e7669bd9e4cba33e88fa8ad9e97fd2ff05364f1f` |
| 54 | `theorem` | [Nat.cauchy_induction_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/nat-cauchy-induction-mul--80a61f92e8f5198141c88c88.md) | 332 | `result-track:80a61f92e8f5198141c88c8850430618a874944b2c50e1217092714e7eb80bf1` |
| 55 | `theorem` | [Nat.cauchy_induction_two_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/nat-cauchy-induction-two-mul--5928717ad4a98183a739db0d.md) | 339 | `result-track:5928717ad4a98183a739db0d54cb99cc57352ea5262dfc2e65bfd9631f4f6ca4` |
| 56 | `theorem` | [Nat.pow_imp_self_of_one_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.lean/declarations/nat-pow-imp-self-of-one-lt--0bb10bd73f9a90812c9d2543.md) | 343 | `result-track:0bb10bd73f9a90812c9d2543cf317e38b5ff3866c14f1e187b4fa4256b4e815f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
