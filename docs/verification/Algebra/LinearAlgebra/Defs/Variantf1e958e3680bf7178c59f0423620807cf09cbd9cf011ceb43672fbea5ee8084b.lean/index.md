# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4f0685567c7fec1610b995c02f5e67b668c692c",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4f0685567c7fec1610b995c02f5e67b668c692c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.GeneralLinearGroup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Units` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GeneralLinearGroup](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/generallineargroup--8550ab4cda8b9db08bbe8a5b.md) | 42 | `declaration-track:8550ab4cda8b9db08bbe8a5b41d322b9dc16baa81063209bc69b250d4a3b0c9f` |
| 2 | `instance` | [instCoeFun](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/instcoefun--75ebad888879db1b2542e36e.md) | 54 | `declaration-track:75ebad888879db1b2542e36e6e8c592ebcf8a08bd04d212c43c50877878a4886` |
| 3 | `def` | [det](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/det--85f5ed83d6b1bd21a228790a.md) | 61 | `declaration-track:85f5ed83d6b1bd21a228790a0ede5dfe399ac058282c64fb7c5239a5fc81431b` |
| 4 | `lemma` | [det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/det-ne-zero--946f6c01b9f86f90c94d91ec.md) | 70 | `result-track:946f6c01b9f86f90c94d91ec75edcf0370b1a24da64f47ceb86d81a85b0b8aa0` |
| 5 | `def` | [toLin](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/tolin--820d185d1c2ce138b6736500.md) | 75 | `declaration-track:820d185d1c2ce138b67365005f172c1d51736326f7d6427ee3e6f9a8a0a69ee3` |
| 6 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/mk--69d01c4754921f8174782ae8.md) | 79 | `declaration-track:69d01c4754921f8174782ae87d2ad11f2936b72a75e6121f6818174bc8789c14` |
| 7 | `def` | [mk''](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/mk--49d1fdd6bb356aac56552494.md) | 83 | `declaration-track:49d1fdd6bb356aac565524940c2ecf216cc1c43a46fadfe77d9975acdb08505e` |
| 8 | `def` | [mkOfDetNeZero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/mkofdetnezero--0af7adb7d4c3f76c24898ede.md) | 87 | `declaration-track:0af7adb7d4c3f76c24898edee8a86194b9bc209b22ab6267d2c7f88e087ae50b` |
| 9 | `theorem` | [ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/ext-iff--956ed27853159d7d775e87e4.md) | 90 | `result-track:956ed27853159d7d775e87e48914d8f5bda49832bf7721b574ade7d21030b042` |
| 10 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/ext--13c2b7ea9d54ed30420e4623.md) | 94 | `result-track:13c2b7ea9d54ed30420e4623cfbbf9a7f2e7613cdcae40cabf7a2b773fa1a157` |
| 11 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/coe-mul--7b51dc4379c3d097404780df.md) | 102 | `result-track:7b51dc4379c3d097404780df5c17a9f3dc86b0f8427fbbced7780f821992dee5` |
| 12 | `theorem` | [coe_one](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/coe-one--c84aab756e8376190fc3b9d0.md) | 106 | `result-track:c84aab756e8376190fc3b9d06adc7fdb6368b0789cb6a5ebd3dd639f350255c5` |
| 13 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/coe-inv--de15e4b41d4b734690b2d7af.md) | 109 | `result-track:de15e4b41d4b734690b2d7af8fb57c4cf57c98223947e85ea84655a50d450dbd` |
| 14 | `theorem` | [coe_toLin](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/coe-tolin--8746a5f3f0c4cd21be184964.md) | 116 | `result-track:8746a5f3f0c4cd21be184964326a4e8b299c21525652e6af0d397b70c5e9de52` |
| 15 | `theorem` | [toLin_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/tolin-apply--bdbfebd52f582672c7a83678.md) | 120 | `result-track:bdbfebd52f582672c7a83678922d9050da17f1c33a7f08ebdaeffddd27042f10` |
| 16 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/map--23b1231c6f448da80ba335ca.md) | 129 | `declaration-track:23b1231c6f448da80ba335ca410e5708c1ed2fe83f1fd1273668db5d6175e50a` |
| 17 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/map-id--e76b757f7e39634ed4d67a96.md) | 132 | `result-track:e76b757f7e39634ed4d67a966e19a5bac6084f7fb57cb70e965951fe985d8746` |
| 18 | `lemma` | [map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/map-apply--8a4cf097cb43e9555e0c2403.md) | 136 | `result-track:8a4cf097cb43e9555e0c240335a1ee286ca08beab31aaaec225b739ef6bec11b` |
| 19 | `theorem` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/map-comp--53a9d18b96b852b4149a6cc1.md) | 140 | `result-track:53a9d18b96b852b4149a6cc1b3058582759a2603ea16d5835d9e548d460f33ca` |
| 20 | `theorem` | [map_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/map-comp-apply--9f7c7d7ae03defeed12ce70c.md) | 145 | `result-track:9f7c7d7ae03defeed12ce70c78d74d635b45d7b34f7bc9d2c9e8bbdb3d659740` |
| 21 | `lemma` | [map_one](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/map-one--00f77bbc54c12df1dff38f84.md) | 152 | `result-track:00f77bbc54c12df1dff38f84fd0c4c80b342a98b5ed2d3e8e65e149c8d3d0349` |
| 22 | `lemma` | [map_mul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/map-mul--9c766953ef511e6955ce4477.md) | 156 | `result-track:9c766953ef511e6955ce4477df950a93c0dd9806630877e12db44a5e042dc4f9` |
| 23 | `lemma` | [map_inv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/map-inv--c2772507a31493cd1d14fa7b.md) | 160 | `result-track:c2772507a31493cd1d14fa7b25f63cc894f4c01a2d57a8a61a20f21e07dbfcbd` |
| 24 | `lemma` | [map_det](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/map-det--0c0c895d508ee9b47e87ee62.md) | 164 | `result-track:0c0c895d508ee9b47e87ee62eb484df4c0726ae2428e54581b2b22f8403ea59b` |
| 25 | `lemma` | [map_mul_map_inv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/map-mul-map-inv--6845e4b7838ef4476ddd3952.md) | 171 | `result-track:6845e4b7838ef4476ddd3952d29c283cae9322cdbf5210a21353389f6ecfed74` |
| 26 | `lemma` | [map_inv_mul_map](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/map-inv-mul-map--15a691003116f8a849a92964.md) | 174 | `result-track:15a691003116f8a849a9296496c2098d98f05f8fe747c8b2a17bc58b41721f15` |
| 27 | `lemma` | [coe_map_mul_map_inv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/coe-map-mul-map-inv--45c1966d50b1b314dc1cae06.md) | 178 | `result-track:45c1966d50b1b314dc1cae069d423baac3072ed215ce205bf1cd0839bb95d129` |
| 28 | `lemma` | [coe_map_inv_mul_map](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/coe-map-inv-mul-map--cafc36c136b894ec74f7ad16.md) | 183 | `result-track:cafc36c136b894ec74f7ad1648d5c5d1d85473b6c171924340e64108dd523162` |
| 29 | `def` | [toGL](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/togl--4aebda4d4be17d26e4654aad.md) | 195 | `declaration-track:4aebda4d4be17d26e4654aad023e9715deabc23fb911375a92ab4b0e12f6d4cc` |
| 30 | `instance` | [hasCoeToGeneralLinearGroup](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/hascoetogenerallineargroup--9a6b749bb02f0fc06f2c44bd.md) | 202 | `declaration-track:9a6b749bb02f0fc06f2c44bd8f1265fa8b516c460179c841b43e3261da5d37d7` |
| 31 | `lemma` | [toGL_injective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/togl-injective--02a2e72ca4a181e5c8b53d99.md) | 205 | `result-track:02a2e72ca4a181e5c8b53d99f6d87d9af3d6318a19705c011c4c114cbe639f0c` |
| 32 | `lemma` | [toGL_inj](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/togl-inj--3ac3113d25c4fdcd56e1f3b2.md) | 210 | `result-track:3ac3113d25c4fdcd56e1f3b263e6331cdf4eff2f2330b58e3aad6a43821198ef` |
| 33 | `theorem` | [coeToGL_det](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/coetogl-det--4d9ac7b6d3d5058ac9bfecdf.md) | 215 | `result-track:4d9ac7b6d3d5058ac9bfecdf209a7bfea106f296b24b4c57c3c36a40ce5c2af6` |
| 34 | `lemma` | [coe_GL_coe_matrix](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/coe-gl-coe-matrix--25d91317f18879f355fb23e8.md) | 220 | `result-track:25d91317f18879f355fb23e80d9bd9bbfc7bb28aa633a6f2e1374e4c1d88ba15` |
| 35 | `def` | [mapGL](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/mapgl--27b5f93e9ddd4e4eafa6dcba.md) | 225 | `declaration-track:27b5f93e9ddd4e4eafa6dcba4f37fa84673a696d4d49bc475d0455e5a3c7399c` |
| 36 | `lemma` | [mapGL_inj](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/mapgl-inj--c33d9f3723fad60c00502624.md) | 229 | `result-track:c33d9f3723fad60c00502624dc012f6a9aacaa1a73ca12d8ffa509e018b1e924` |
| 37 | `lemma` | [mapGL_injective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/mapgl-injective--b0c0360e96db82ca47ce0989.md) | 235 | `result-track:b0c0360e96db82ca47ce098941551f2e95257d76ca5b03daae3a21a0ea29fb91` |
| 38 | `lemma` | [mapGL_coe_matrix](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/mapgl-coe-matrix--85183a38f34da0abe31113c7.md) | 240 | `result-track:85183a38f34da0abe31113c7e0feabf349d3ca99d4959214bfa0770340f39cc4` |
| 39 | `def` | [GLPos](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/glpos--07d29ef53e8a620c965a6734.md) | 257 | `declaration-track:07d29ef53e8a620c965a6734af53760a02336353fa0005dff2a6a3b3dcbbc331` |
| 40 | `theorem` | [mem_glpos](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/mem-glpos--8b5231314d2c1a0b2644dff0.md) | 265 | `result-track:8b5231314d2c1a0b2644dff0b378fbc26ec1022b701ffa4bc09db27db8c2b391` |
| 41 | `theorem` | [GLPos.det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/glpos-det-ne-zero--87e3eee8a58878cdaf09e39f.md) | 268 | `result-track:87e3eee8a58878cdaf09e39f32715cde9f758cf75ab57a70c5ee44d092a3d312` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/instance--4864a74af39cd8a2a53f7941.md) | 281 | `declaration-track:4864a74af39cd8a2a53f79419f53aae0a92b8c7258053fbd4f34acb42c518e2d` |
| 43 | `theorem` | [GLPos.coe_neg_GL](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/glpos-coe-neg-gl--48b61c43e6c90de60bee4f9e.md) | 289 | `result-track:48b61c43e6c90de60bee4f9e5ef7824c397be084b4f8a2e830fa71a351c65a21` |
| 44 | `theorem` | [GLPos.coe_neg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/glpos-coe-neg--0b876a5e2ec72297ace9ef9e.md) | 293 | `result-track:0b876a5e2ec72297ace9ef9e248b1609ffa7d01fb62b45a8fbf3003103d75866` |
| 45 | `theorem` | [GLPos.coe_neg_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/glpos-coe-neg-apply--a99c04ad4b84672a9408bc35.md) | 297 | `result-track:a99c04ad4b84672a9408bc355d02e38fd1c7d6b5e9c961f10cfc00206aa8e7fc` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/instance--63393333545fdc44a1caa6ee.md) | 301 | `declaration-track:63393333545fdc44a1caa6ee2189f622394a22ab095283f85fbfa03636e3fc53` |
| 47 | `def` | [toGLPos](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/toglpos--ad93e89ce6f3abdbb4b86a4c.md) | 312 | `declaration-track:ad93e89ce6f3abdbb4b86a4c0545f8b7a887198bfb635045b3a4c2a49ec448a8` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/instance--2fac37ab5242bca0ab403c09.md) | 317 | `declaration-track:2fac37ab5242bca0ab403c097451ef478e3f62d806a33369971faa85154fbd80` |
| 49 | `theorem` | [toGLPos_injective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/toglpos-injective--6d17614ca442ddc1294d88e3.md) | 320 | `result-track:6d17614ca442ddc1294d88e35bc55c276e98592af41ed53f6bdaed1ba28a26a6` |
| 50 | `theorem` | [coe_GLPos_coe_GL_coe_matrix](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/coe-glpos-coe-gl-coe-matrix--2e478f76599bb7b3f9f22b1a.md) | 330 | `result-track:2e478f76599bb7b3f9f22b1a9e3ac35eb6f781919bcb85bafa5e6905d7079a8d` |
| 51 | `theorem` | [coe_to_GLPos_to_GL_det](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/coe-to-glpos-to-gl-det--330f25c29d2ebc800cfb50e0.md) | 335 | `result-track:330f25c29d2ebc800cfb50e03098f9be687be84866de1b0742b095351d532505` |
| 52 | `theorem` | [coe_GLPos_neg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/declarations/coe-glpos-neg--ff0ac8878442334802150271.md) | 342 | `result-track:ff0ac8878442334802150271fc72b7db9852b59e37e001628c81c1afdc3e35f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
