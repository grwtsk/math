# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.HalesJewett.Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "452ed13dd21ec9e0eb7c76bd4c016401a32f1307",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `452ed13dd21ec9e0eb7c76bd4c016401a32f1307`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Option` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Shrink` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Prod` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subspace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/subspace--f44fe0390b583ab29bb48cbf.md) | 87 | `declaration-track:f44fe0390b583ab29bb48cbfc5bf74537af9a780c7ad066d1bd82559a43b7337` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/instance--e713b1c62206c6e26b13baec.md) | 99 | `declaration-track:e713b1c62206c6e26b13baec8fee4404aba85607774e2b083236f8cee290cbbf` |
| 3 | `def` | [toFun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/tofun--a61b6dd3fecfadad967b9fd7.md) | 102 | `declaration-track:a61b6dd3fecfadad967b9fd74bba9fa17b4ce3ea36bdcabd34a3b0acd6ada45f` |
| 4 | `instance` | [instCoeFun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/instcoefun--76654be58ba629bf1ec15c77.md) | 104 | `declaration-track:76654be58ba629bf1ec15c772c90a6eafb3f850f49562217b1adf494e9b108c1` |
| 5 | `lemma` | [coe_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/coe-apply--4a7c7e61240886663227e7c5.md) | 106 | `result-track:4a7c7e61240886663227e7c5ced5f76a80eb687ebf8308232d7bd697d5aa412a` |
| 6 | `lemma` | [coe_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/coe-injective--620cb25e139526e5a5d1f2b0.md) | 109 | `result-track:620cb25e139526e5a5d1f2b01c0fb35c2175d62961aeabc7db2a95a3830bc25b` |
| 7 | `lemma` | [apply_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/apply-def--b7b77b45265e686e8a8c3f13.md) | 129 | `result-track:b7b77b45265e686e8a8c3f13d75f25f219b1bd1cfc794fbb42291404df916f64` |
| 8 | `lemma` | [apply_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/apply-inl--b22999132721682df2c4820c.md) | 130 | `result-track:b22999132721682df2c4820c6e07477b8d3c239f0003f1453c692a0e337641ae` |
| 9 | `lemma` | [apply_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/apply-inr--361c99570353c33856c78831.md) | 131 | `result-track:361c99570353c33856c78831b489514b52be3f916486864d575633fe4eed53c5` |
| 10 | `def` | [IsMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/ismono--25e6d17dce99d6047afbb7be.md) | 135 | `declaration-track:25e6d17dce99d6047afbb7beb5012d9682c5f40869c28e726154659be4c43bb1` |
| 11 | `def` | [reindex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/reindex--4946b8d13593343cff9b2142.md) | 140 | `declaration-track:4946b8d13593343cff9b21424eeaa2d94ba56c78dfd0108fc1aba11158ce26d1` |
| 12 | `lemma` | [reindex_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/reindex-apply--7a64a2c6637d7fc53e86feb8.md) | 145 | `result-track:7a64a2c6637d7fc53e86feb8a52a2e17d27dd6a899234b6dc845708e3ad1e876` |
| 13 | `lemma` | [reindex_isMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/reindex-ismono--67d47c476167ae6d70e66dc9.md) | 149 | `result-track:67d47c476167ae6d70e66dc965fce081b9f3c0f34308979da97d7ae98e10defd` |
| 14 | `lemma` | [IsMono.reindex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/ismono-reindex--0c2890e9842aa357ce9722f0.md) | 154 | `result-track:0c2890e9842aa357ce9722f053606e37066a01656ae7c3ca1cce226c3a248466` |
| 15 | `structure` | [Line](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/line--d714aa5b7bf9d205cb6afe51.md) | 171 | `declaration-track:d714aa5b7bf9d205cb6afe516341915d2ade562afff55833a90f1728f0ea66ea` |
| 16 | `def` | [toFun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/tofun--f6291f0da94b53d2920afaef.md) | 183 | `declaration-track:f6291f0da94b53d2920afaef76946a9e8d1ba610647eaf777612a16bfacc7323` |
| 17 | `instance` | [instCoeFun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/instcoefun--d4967ad4252a30c90118eb22.md) | 186 | `declaration-track:d4967ad4252a30c90118eb22ba146ad0982112da3b61fa1a4d19da90c55c9ef5` |
| 18 | `lemma` | [coe_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/coe-apply--5b8807cff55a2c1f501eef16.md) | 188 | `result-track:5b8807cff55a2c1f501eef16512bca268fb03442f12a9d111459c5467dcb1c31` |
| 19 | `lemma` | [coe_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/coe-injective--6eb37909b623898f6bbcc7f1.md) | 191 | `result-track:6eb37909b623898f6bbcc7f18d20a2ff13aed635507dd1f196d74ce1ab874d3a` |
| 20 | `def` | [IsMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/ismono--8d6599ece72c0ea32aff47e3.md) | 201 | `declaration-track:8d6599ece72c0ea32aff47e323fff3fbed2e741f23079403113d301e32e5960e` |
| 21 | `def` | [toSubspaceUnit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/tosubspaceunit--8581f96c1eb0af72836ae178.md) | 205 | `declaration-track:8581f96c1eb0af72836ae178401e6d272eb9781deb4337103de002026850658d` |
| 22 | `lemma` | [toSubspaceUnit_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/tosubspaceunit-apply--73016d9be20a19dfafd6712c.md) | 209 | `result-track:73016d9be20a19dfafd6712ce4f15c1e41c510dd4291bd9216849b419dd7da1f` |
| 23 | `lemma` | [toSubspaceUnit_isMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/tosubspaceunit-ismono--f80acb516c178b8bb3428823.md) | 212 | `result-track:f80acb516c178b8bb3428823d8e57a5bf5d4a9bc4e217c6f1142c945cfa391a5` |
| 24 | `def` | [toSubspace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/tosubspace--24f9056b7ac4385b20048b29.md) | 219 | `declaration-track:24f9056b7ac4385b20048b2987d9506f7aeeba054947d61e65cc9cd6963ab936` |
| 25 | `lemma` | [toSubspace_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/tosubspace-apply--99ae83dbfc3a3ade9f49bab7.md) | 223 | `result-track:99ae83dbfc3a3ade9f49bab71b81706af7a655cc5a975535346ab897c1252c8a` |
| 26 | `lemma` | [toSubspace_isMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/tosubspace-ismono--5b8c31beb8baeb5134cbc608.md) | 227 | `result-track:5b8c31beb8baeb5134cbc60854926997c12fc8b47db91f55bc4bc2b79428943d` |
| 27 | `def` | [diagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/diagonal--1de110b50a029a9366573910.md) | 234 | `declaration-track:1de110b50a029a9366573910da0b080c022e1fa27f5b1cbbbaf30251d5a16053` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/instance--64d2f0aa6e7d9d93180278f8.md) | 238 | `declaration-track:64d2f0aa6e7d9d93180278f88270a856b6ed7091725009ef347d6be0e5ad0f9d` |
| 29 | `structure` | [AlmostMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/almostmono--898d274f66e5b29cddc4d961.md) | 242 | `declaration-track:898d274f66e5b29cddc4d9617c89993b847cbfc53966a693e0903e9aa8507949` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/instance--175f980504f20ed0714d1c61.md) | 252 | `declaration-track:175f980504f20ed0714d1c6134bb903a171805a57d8aa512be587add31a0a90b` |
| 31 | `structure` | [ColorFocused](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/colorfocused--621950648f4c6429ae6b6596.md) | 263 | `declaration-track:621950648f4c6429ae6b65965c95f6726f53ea836c005f22f5fee090c50a7c0e` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/instance--143435156622eb7bf5bf9c7a.md) | 273 | `declaration-track:143435156622eb7bf5bf9c7a1f970f1d6daa396a6d5ebaf2ad40061386e8dc2d` |
| 33 | `def` | [map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/map--3b2e29df1acf8676679a97d8.md) | 279 | `declaration-track:3b2e29df1acf8676679a97d8b617c6fbb89bd7edb1ce306a6e90fdaf127d9104` |
| 34 | `def` | [vertical](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/vertical--118576c7665baba679097335.md) | 284 | `declaration-track:118576c7665baba679097335033688c121909de635863d98a96a261e483134f8` |
| 35 | `def` | [horizontal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/horizontal--b11d26a1d0cbed958cccd627.md) | 289 | `declaration-track:b11d26a1d0cbed958cccd6277f8e90bf10f6dfe3894f59d3d31ce6691fc820af` |
| 36 | `def` | [prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/prod--b9a492db44212e54a17cfa94.md) | 294 | `declaration-track:b9a492db44212e54a17cfa94a8e90a7292674787bc9fb97ac4bc73b41baaf37f` |
| 37 | `theorem` | [apply_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/apply-def--a75d7f42ae9d4e699bdd3a6c.md) | 298 | `result-track:a75d7f42ae9d4e699bdd3a6c974c96f1a116966ccb5f3cef7512f79a479a0b3e` |
| 38 | `theorem` | [apply_none](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/apply-none--280eba8c8bb497e96e9e4654.md) | 300 | `result-track:280eba8c8bb497e96e9e4654f85cd0a70d9c0088c1d1043186ae41141015135b` |
| 39 | `lemma` | [apply_some](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/apply-some--ca120419b6ce48738be419c5.md) | 303 | `result-track:ca120419b6ce48738be419c5d2339f7712626452c7b2061876fbf7b5dda991e6` |
| 40 | `theorem` | [map_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/map-apply--b207bc49cd22fa3b055c3c32.md) | 306 | `result-track:b207bc49cd22fa3b055c3c326b5db4f52123b9a739bbe69bdaeb3a4a21cec870` |
| 41 | `theorem` | [vertical_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/vertical-apply--04e010c8dc03d2f4d63d08a5.md) | 310 | `result-track:04e010c8dc03d2f4d63d08a540cab631c727045713b3fd00c06e85628439cfaa` |
| 42 | `theorem` | [horizontal_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/horizontal-apply--940ba218cf28075a52adff48.md) | 316 | `result-track:940ba218cf28075a52adff484def90e5872b1a343069696e6103b79d37d773d2` |
| 43 | `theorem` | [prod_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/prod-apply--8eda21195381f94e7b774362.md) | 322 | `result-track:8eda21195381f94e7b7743621756f92f43bd51ee7b7b15aa9de627f204793532` |
| 44 | `theorem` | [diagonal_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/diagonal-apply--702344fd2c9794e9fcd840ff.md) | 328 | `result-track:702344fd2c9794e9fcd840ff04c791799812d4dadd01feed54264e42a2b38883` |
| 45 | `theorem` | [exists_mono_in_high_dimension'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/exists-mono-in-high-dimension--4ba877b6e132a07682f420b2.md) | 334 | `result-track:4ba877b6e132a07682f420b216224269cfb128986ab88c1ccd7abde6fde93b99` |
| 46 | `theorem` | [exists_mono_in_high_dimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/exists-mono-in-high-dimension--6d4287e15cd63623197f283b.md) | 443 | `result-track:6d4287e15cd63623197f283b1ed40dbb34ab8ef8e0605c218ed2b962c61480aa` |
| 47 | `theorem` | [exists_mono_homothetic_copy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/exists-mono-homothetic-copy--81ff2004ac9b00fde253fb25.md) | 454 | `result-track:81ff2004ac9b00fde253fb25dda250358953fa79503284ca0e9d4ea2cbcf9d90` |
| 48 | `theorem` | [exists_mono_in_high_dimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/exists-mono-in-high-dimension--691aa3c13cf9d323bac69f69.md) | 487 | `result-track:691aa3c13cf9d323bac69f694be07257b5a2f23958e92c393000ba3002d1252c` |
| 49 | `theorem` | [exists_mono_in_high_dimension_fin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/declarations/exists-mono-in-high-dimension-fin--f88ccd46003273d2a1889589.md) | 499 | `result-track:f88ccd46003273d2a1889589f85ba03d1b5eed411e448aa52b208fc938e481e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
