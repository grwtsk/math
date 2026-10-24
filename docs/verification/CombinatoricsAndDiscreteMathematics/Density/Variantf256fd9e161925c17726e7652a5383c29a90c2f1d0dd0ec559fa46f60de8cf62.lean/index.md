# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Density.Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f617d1bb16616630c8a02ca1d142d6382427129",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f617d1bb16616630c8a02ca1d142d6382427129`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens--ac5e7067834c503225ba4964.md) | 73 | `declaration-track:ac5e7067834c503225ba4964b01fa51642d402c5211ca10dd1dd3b1fb2228ebd` |
| 2 | `lemma` | [dens_eq_card_div_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-eq-card-div-card--3fddf85cb70356ec21c94922.md) | 75 | `result-track:3fddf85cb70356ec21c949229c0945fd27aaed3c136ca07cd4816f60c1342461` |
| 3 | `lemma` | [dens_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-empty--3b270a84d09880b0d7073ed7.md) | 77 | `result-track:3b270a84d09880b0d7073ed7b694bc018e8d2a2fda83c07f75df2f95097258ee` |
| 4 | `lemma` | [dens_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-singleton--9e9a9b0b8b0af57e69264c5c.md) | 79 | `result-track:9e9a9b0b8b0af57e69264c5cbc887a8f084a89ff3d04fcee1938f459f05848f6` |
| 5 | `lemma` | [dens_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-cons--a97d67c4fe76761cf49ac94b.md) | 82 | `result-track:a97d67c4fe76761cf49ac94b42c2d97efa463a4a0bf61c0937d84785dd3678ac` |
| 6 | `lemma` | [dens_disjUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-disjunion--951ca00de0fb05341fda966a.md) | 85 | `result-track:951ca00de0fb05341fda966a49db60f615e06e2f184fdbc7eeea1a45157dd6ef` |
| 7 | `lemma` | [dens_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-eq-zero--c3642a082881648e7484fc8c.md) | 88 | `result-track:c3642a082881648e7484fc8c684ab86fde538a8785558b97ea689406fc776c69` |
| 8 | `lemma` | [dens_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-ne-zero--9771b0ff2d2f86bb838c6101.md) | 91 | `result-track:9771b0ff2d2f86bb838c610168232ee5fb707d1fe22840c0fe9f80dfae342536` |
| 9 | `lemma` | [dens_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-pos--c1247a8214cd605bed88347e.md) | 93 | `result-track:c1247a8214cd605bed88347e5ef42ba9eaf94242aeb54db8422d607129c3403f` |
| 10 | `lemma` | [dens_le_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-le-dens--91f149b9497f71794935c889.md) | 99 | `result-track:91f149b9497f71794935c889cfd3961e1dd551086e346adc9ca6d366da501199` |
| 11 | `lemma` | [dens_lt_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-lt-dens--2b08e7af7a6171d688fe3e43.md) | 103 | `result-track:2b08e7af7a6171d688fe3e433628b2f2c2f58c07733422c1893a35cc43d50c11` |
| 12 | `lemma` | [dens_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-mono--be63fabc23ad628fd57f62f4.md) | 109 | `result-track:be63fabc23ad628fd57f62f4b8268e931478f3975445d65aa4edaff155f52e49` |
| 13 | `lemma` | [dens_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-strictmono--71f08c7a5f2999571c3737db.md) | 110 | `result-track:71f08c7a5f2999571c3737dba26d21090d9747676679fe9fa626529c3f8becf8` |
| 14 | `lemma` | [dens_map_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-map-le--ab994af2ebefdcf7ddb178c1.md) | 112 | `result-track:ab994af2ebefdcf7ddb178c1b43cebe3f6b9aec2fc021117aacc84bc2a7aa151` |
| 15 | `lemma` | [dens_map_equiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-map-equiv--531a1b9ffdf37dc685c6bd18.md) | 120 | `result-track:531a1b9ffdf37dc685c6bd1879150a6ba2355e485869f187901ddf72c63a15a5` |
| 16 | `lemma` | [dens_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-image--f07f227ca7b65751281161fc.md) | 123 | `result-track:f07f227ca7b65751281161fc8ed09c3f198e3abec23129f0cf8f38b45d5d2961` |
| 17 | `lemma` | [card_mul_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/card-mul-dens--901110c5eeb735b763c01155.md) | 127 | `result-track:901110c5eeb735b763c01155ba6e4625285f0bcfc0d8fb2157047f25bc67774f` |
| 18 | `lemma` | [dens_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-mul-card--b3b4b33653193aa7c8ddf6f3.md) | 133 | `result-track:b3b4b33653193aa7c8ddf6f373910e1cf3ec7755b59485fc97093a66e3581e59` |
| 19 | `lemma` | [natCast_card_mul_nnratCast_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/natcast-card-mul-nnratcast-dens--e709a64ea823edf24ebf4370.md) | 139 | `result-track:e709a64ea823edf24ebf437023e1eca8bf9d6dfeb85b4016d134ccfad2221807` |
| 20 | `lemma` | [nnratCast_dens_mul_natCast_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/nnratcast-dens-mul-natcast-card--2088dee4eba23ce9eb103e28.md) | 142 | `result-track:2088dee4eba23ce9eb103e285fa357be5885ccef81085846f590a62388f03590` |
| 21 | `lemma` | [nnratCast_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/nnratcast-dens--5c61c8698f386594556ae0d1.md) | 145 | `result-track:5c61c8698f386594556ae0d1c964c1789f95d13e20e6fa68c214ebbd99d8816b` |
| 22 | `lemma` | [dens_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-univ--f9064b7e23273e8c6d73d889.md) | 153 | `result-track:f9064b7e23273e8c6d73d889f07b6723e18fc44ab142754c270e77ff29e6c1c0` |
| 23 | `lemma` | [dens_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-eq-one--b31edbd6b8dcccd9061a4e42.md) | 155 | `result-track:b31edbd6b8dcccd9061a4e4264886fa6b7b40886926944691fd6555a73dc606f` |
| 24 | `lemma` | [dens_ne_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-ne-one--c6ef0d679a58a93f8910c9bd.md) | 158 | `result-track:c6ef0d679a58a93f8910c9bd3f0d574633c355a847ed006c26157324bbb5cc60` |
| 25 | `lemma` | [dens_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-le-one--1073296d94e59592bc832efe.md) | 162 | `result-track:1073296d94e59592bc832efe11ee89339e9206760137d513218c853ac74462ae` |
| 26 | `lemma` | [dens_union_add_dens_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-union-add-dens-inter--b46a9181f45fc0210e94a7f4.md) | 170 | `result-track:b46a9181f45fc0210e94a7f4327a9288fa77764840214c3e8f7ea588353d5bcd` |
| 27 | `lemma` | [dens_inter_add_dens_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-inter-add-dens-union--1387cb7fdd95e20442d09261.md) | 174 | `result-track:1387cb7fdd95e20442d09261d8471b3a8d8b72301b88427ccd25d2e2a7907c34` |
| 28 | `lemma` | [dens_union_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-union-of-disjoint--085d260ba4d2ff0578c18843.md) | 177 | `result-track:085d260ba4d2ff0578c18843b33e3da5aaae453456bc0540620b7d02b799446f` |
| 29 | `lemma` | [dens_sdiff_add_dens_eq_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-sdiff-add-dens-eq-dens--e07f7810203181b4c6768b0f.md) | 180 | `result-track:e07f7810203181b4c6768b0f2b1778c8f795e88e136910ae49ace9ed5fdaa9c7` |
| 30 | `lemma` | [dens_sdiff_add_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-sdiff-add-dens--92de24dd8ac06b4a9588cb2c.md) | 183 | `result-track:92de24dd8ac06b4a9588cb2c1eb7a64b9ea7fce9e318dcb4a407755b6b46738e` |
| 31 | `lemma` | [dens_sdiff_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-sdiff-comm--3889f8ed98e9d0aaf79fd049.md) | 186 | `result-track:3889f8ed98e9d0aaf79fd04901dfd2368694a844ae71c37a6da6afeef307d3f3` |
| 32 | `lemma` | [dens_sdiff_add_dens_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-sdiff-add-dens-inter--f3d7ec3e2f678c7a4a46215f.md) | 191 | `result-track:f3d7ec3e2f678c7a4a46215f9a1e2276d1c1c971b4057b0555102e9fc8313a79` |
| 33 | `lemma` | [dens_inter_add_dens_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-inter-add-dens-sdiff--71d41a753f18c13c55da7a69.md) | 195 | `result-track:71d41a753f18c13c55da7a693f0b41f901c3328cfcffd1148d209c88e7c5031b` |
| 34 | `lemma` | [dens_filter_add_dens_filter_not_eq_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-filter-add-dens-filter-not-eq-dens--bfc765a47d931f79ed48a5f3.md) | 198 | `result-track:bfc765a47d931f79ed48a5f37cca712fd2b36757b3df3ac92a587abcb694de6d` |
| 35 | `lemma` | [dens_union_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-union-le--2cd19bed6731ca889ec31b7a.md) | 204 | `result-track:2cd19bed6731ca889ec31b7af9cb36218d5e5c228faf9ce0063e89000baf9794` |
| 36 | `lemma` | [dens_le_dens_sdiff_add_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-le-dens-sdiff-add-dens--1cd8591828debab5e2674395.md) | 207 | `result-track:1cd8591828debab5e26743951c08d2c53d27e0196673f362a04c8a1ad53f84a4` |
| 37 | `lemma` | [dens_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/dens-sdiff--13d1b8e16d1d3281f3fada00.md) | 210 | `result-track:13d1b8e16d1d3281f3fada00d735409123083fe2ba87a328a32bd28098e8f88e` |
| 38 | `lemma` | [le_dens_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantf256fd9e161925c17726e7652a5383c29a90c2f1d0dd0ec559fa46f60de8cf62.lean/declarations/le-dens-sdiff--7f356f99a7c3bd3e928ba394.md) | 213 | `result-track:7f356f99a7c3bd3e928ba394598e1bdc8d7fda2b0927c0e3be5e19ec21fb874d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
