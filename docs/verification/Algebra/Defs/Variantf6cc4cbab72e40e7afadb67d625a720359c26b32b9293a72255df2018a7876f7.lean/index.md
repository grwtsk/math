# Verification target: GRWTSK.Algebra.Defs.Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e38bd9356445865e98d15633af5bef1161b4f7df",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e38bd9356445865e98d15633af5bef1161b4f7df`.

Source path: `GRWTSK/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.LeastGreatest` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FloorSemiring](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/floorsemiring--32c0a8aebbf43b97f58f065b.md) | 60 | `declaration-track:32c0a8aebbf43b97f58f065b41c9d0582eac35f0d539f0f233b942b16322c91a` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/instance--9f6ecfd54ffaee782b26e31f.md) | 73 | `declaration-track:9f6ecfd54ffaee782b26e31f4d4743276469636851a90be53f33981d69a3d8c3` |
| 3 | `theorem` | [natCast_mono](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/natcast-mono--df8b3a9f5bdcb105f10c6aac.md) | 87 | `result-track:df8b3a9f5bdcb105f10c6aaccdcaac228d20e1e87ee8efeab0cfa1a845687580` |
| 4 | `theorem` | [natCast_nonneg](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/natcast-nonneg--5fafe46d4e3564c4515d79c2.md) | 92 | `result-track:5fafe46d4e3564c4515d79c231109a04ffff489302560b6d12e398637474ea6a` |
| 5 | `theorem` | [natCast_strictMono](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/natcast-strictmono--23ca3cbf645d39dca58fcd61.md) | 97 | `result-track:23ca3cbf645d39dca58fcd61a4757d8d0a0ffc672fcfe970d753ffcf7f220e00` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/instance--040951ccb094d08f881a99a0.md) | 104 | `declaration-track:040951ccb094d08f881a99a0be5b3f0c01d401206d00f7bd4fc30cc05a64d66f` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/instance--4e2955842cc5a68f91d7b1e0.md) | 106 | `declaration-track:4e2955842cc5a68f91d7b1e043a3c4efafd6467a92c3f3d98e5bd0482a8c6150` |
| 8 | `def` | [floor](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/floor--8e8da0ed97929bd76b296da2.md) | 117 | `declaration-track:8e8da0ed97929bd76b296da2b18da0642951ed86e6dd4185815cbe266ba108ef` |
| 9 | `def` | [ceil](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/ceil--67b20e841f12c3c78f60ef2f.md) | 121 | `declaration-track:67b20e841f12c3c78f60ef2fb187daaef9c9a50773c6ad58e22c98c8628f9161` |
| 10 | `theorem` | [floor_nat](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/floor-nat--514ca1172b2fe5610405407e.md) | 125 | `result-track:514ca1172b2fe5610405407e994e054e239993dca12a78740d47ec876a3f6e3b` |
| 11 | `theorem` | [ceil_nat](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/ceil-nat--c7447bf88e8cdd654df93f67.md) | 129 | `result-track:c7447bf88e8cdd654df93f67569f14c33b3391a814e8858cfb7f486d4f33b046` |
| 12 | `theorem` | [le_floor_iff](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/le-floor-iff--74964486652eb5309c54c015.md) | 138 | `result-track:74964486652eb5309c54c0151371ff41754aeb744c089abd80a02c640e0a2213` |
| 13 | `theorem` | [le_floor](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/le-floor--dc353be095cb508a3d209b16.md) | 141 | `result-track:dc353be095cb508a3d209b16315e426b93ad43309164ff48ef1e466f914e5499` |
| 14 | `theorem` | [gc_ceil_coe](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/gc-ceil-coe--e301728a50d38ee887ea8e67.md) | 144 | `result-track:e301728a50d38ee887ea8e67db3fa39ec2ae31c21d06580527153894e9400b16` |
| 15 | `theorem` | [ceil_le](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/ceil-le--e14285216d39752dbf4c1d5a.md) | 148 | `result-track:e14285216d39752dbf4c1d5ab51b1b246d7b859dd02d07b9dad1dfc6c666c639` |
| 16 | `theorem` | [lt_ceil](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/lt-ceil--876cfbf0654f848c93bc6f63.md) | 157 | `result-track:876cfbf0654f848c93bc6f6312cef329035e379cdc17e1bf8a60b5055e964e48` |
| 17 | `theorem` | [ceil_pos](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/ceil-pos--1dfc5780ff44bacd78bfe9fb.md) | 161 | `result-track:1dfc5780ff44bacd78bfe9fb2bad4b4edfbcae361f674ff2beb5159f4c77e626` |
| 18 | `class` | [FloorRing](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/floorring--c5438479b2020662b002fe87.md) | 172 | `declaration-track:c5438479b2020662b002fe8791971c3311dc78827749ff7ed28199b7fc0fdbd9` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/instance--88f46170f535af8ca36af799.md) | 182 | `declaration-track:88f46170f535af8ca36af7995e30a2daf4ef94ad953f1f57273158f5b2de8460` |
| 20 | `def` | [FloorRing.ofFloor](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/floorring-offloor--7edacf429b4c3973e9f31791.md) | 192 | `declaration-track:7edacf429b4c3973e9f3179125df1567e7c4e511b4c79c45ec6dd5f160994ec1` |
| 21 | `def` | [FloorRing.ofCeil](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/floorring-ofceil--c6fe3dc343631bc49088de6f.md) | 201 | `declaration-track:c6fe3dc343631bc49088de6f9149432b8198e5d7f59a1e565d6d1cbccdbe5922` |
| 22 | `def` | [floorAux](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/flooraux--98a089670aea99833cdb2917.md) | 209 | `declaration-track:98a089670aea99833cdb2917d02cd04e576272e17694cf45e1e9240a5eb0f9c1` |
| 23 | `theorem` | [exists_floor'](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/exists-floor--eb60c2b12b1d67a61d529b4b.md) | 219 | `result-track:eb60c2b12b1d67a61d529b4b7269dfee90284e7f0ac1fe4c05c27ae802a9d217` |
| 24 | `def` | [FloorRing.ofBounded](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/floorring-ofbounded--65591420175b288b78c96847.md) | 230 | `declaration-track:65591420175b288b78c96847e9dcce3bfd09d124e37c833ef831369a32cb1731` |
| 25 | `def` | [floor](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/floor--4ae6af75157c01cae29c61e1.md) | 248 | `declaration-track:4ae6af75157c01cae29c61e1ad40053168fbf6104237df9523d7619867860837` |
| 26 | `def` | [ceil](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/ceil--0e08766efb67712fd21f1050.md) | 252 | `declaration-track:0e08766efb67712fd21f1050b7ac739dae87f417bf2b4730a964f06be52d54f6` |
| 27 | `def` | [fract](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/fract--43c084aa15f9ee10d6dfc6fb.md) | 256 | `declaration-track:43c084aa15f9ee10d6dfc6fb1ead0f7953f6e621da0f990a2b6c326e7bd51926` |
| 28 | `theorem` | [floor_int](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/floor-int--f26ae33a13f3e986d6ff9ef7.md) | 260 | `result-track:f26ae33a13f3e986d6ff9ef79e554370eb4c5e4c9ce8f0a06b549567500278a7` |
| 29 | `theorem` | [ceil_int](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/ceil-int--463e53c0be7801ed3bc2dd2e.md) | 264 | `result-track:463e53c0be7801ed3bc2dd2e99f248e779c955b545e9edf782c679a864b84625` |
| 30 | `theorem` | [fract_int](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/fract-int--cb634a87b9f6d1a980e7db98.md) | 268 | `result-track:cb634a87b9f6d1a980e7db986f64372e8919a159a7fd0f43f91b1c599c9959ed` |
| 31 | `theorem` | [floorRing_floor_eq](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/floorring-floor-eq--acf7d05a4935f16aa2f69a95.md) | 280 | `result-track:acf7d05a4935f16aa2f69a95cb9d692563f7f0386d0d407f38c2a136adc2c1df` |
| 32 | `theorem` | [floorRing_ceil_eq](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/floorring-ceil-eq--746d64c545e4ef2d126a027c.md) | 284 | `result-track:746d64c545e4ef2d126a027c825a894d6ba9899459d0d6110c8342c6ce49d42b` |
| 33 | `theorem` | [gc_coe_floor](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/gc-coe-floor--84b59153a52480bacbb366fd.md) | 289 | `result-track:84b59153a52480bacbb366fd04114308ba1dfb1169007046c212d18d9c1d5437` |
| 34 | `theorem` | [le_floor](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/le-floor--429b555123ffb01c91d7cffc.md) | 292 | `result-track:429b555123ffb01c91d7cffc3b493814de358a217a4b083dbaacba32383bd4e7` |
| 35 | `theorem` | [floor_lt](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/floor-lt--3d0aaab5daa597d92334be84.md) | 295 | `result-track:3d0aaab5daa597d92334be84f7c0dd315e25c517ce78a9a33aa9fb032c8f44eb` |
| 36 | `theorem` | [floor_le](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/floor-le--1b9483f7666f9e25351e7601.md) | 299 | `result-track:1b9483f7666f9e25351e76018cd66da57a48107898c911af29782edd0073b35d` |
| 37 | `theorem` | [floor_le_iff](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/floor-le-iff--123db1814cbea37e4cef944f.md) | 302 | `result-track:123db1814cbea37e4cef944f3b217790bebd35e5fdf6ef24b9ea715ebbacff7d` |
| 38 | `theorem` | [lt_floor_iff](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/lt-floor-iff--9d5c8907a248d17ee9bc6a14.md) | 304 | `result-track:9d5c8907a248d17ee9bc6a14c984ac6bf4fe018f0e70801543da585af26ad080` |
| 39 | `theorem` | [floor_nonneg](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/floor-nonneg--35244fd701e11a0d8d81b64a.md) | 306 | `result-track:35244fd701e11a0d8d81b64a1040f81b46c175974c7e842b439645809aa68506` |
| 40 | `theorem` | [floor_lt_zero](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/floor-lt-zero--109a963b24985f90b1774493.md) | 308 | `result-track:109a963b24985f90b177449300b77c54b859de8ab691aef90209300edb08d882` |
| 41 | `theorem` | [gc_ceil_coe](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/gc-ceil-coe--556230d31a1091fdb9e6c607.md) | 312 | `result-track:556230d31a1091fdb9e6c607a24b5cd01fa092db92bb068b38b90100fca1c71c` |
| 42 | `theorem` | [ceil_le](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/ceil-le--f465b468fc680821d416b19c.md) | 315 | `result-track:f465b468fc680821d416b19c061a5e35acf780c8246e2deca5a92e91981e6a6f` |
| 43 | `theorem` | [lt_ceil](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/lt-ceil--7dedca295ff4dab0131a68e0.md) | 318 | `result-track:7dedca295ff4dab0131a68e09e41b5f82011ececa593aed11bc0626141c2f292` |
| 44 | `theorem` | [le_ceil](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/le-ceil--1101bbce8c1185fcb3ff14ed.md) | 322 | `result-track:1101bbce8c1185fcb3ff14ed990b6b4d79c3521d5d4602241e759e4603709139` |
| 45 | `lemma` | [le_ceil_iff](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/le-ceil-iff--75a7e049b7da2a99140576ba.md) | 325 | `result-track:75a7e049b7da2a99140576ba956f2ee705d9a17cf1bc644aef4c08bb152315c9` |
| 46 | `lemma` | [ceil_lt_iff](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/ceil-lt-iff--19b3f55d690077be9143ef1c.md) | 327 | `result-track:19b3f55d690077be9143ef1c5796889d4bb7750701448517360e0fc7dbc628d4` |
| 47 | `theorem` | [ceil_nonpos](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/ceil-nonpos--a22c62f6599411861e0cd927.md) | 329 | `result-track:a22c62f6599411861e0cd9277661d55d8aa68c046e89d133a7835ffcb4c234f6` |
| 48 | `theorem` | [ceil_pos](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/ceil-pos--f7512dfd95cd261c074670a4.md) | 332 | `result-track:f7512dfd95cd261c074670a4782b6bde894c0af67e7ffa70223c9424d3f4253f` |
| 49 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/instance--a94fe5afd0d35ea6135a70ab.md) | 343 | `declaration-track:a94fe5afd0d35ea6135a70ab2bcd7ef9d5c7afdd0695c0fd3d247ecdd23d07ae` |
| 50 | `theorem` | [Int.floor_toNat](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/int-floor-tonat--2b7be42d0d5f23610fa17be7.md) | 350 | `result-track:2b7be42d0d5f23610fa17be781eec3985b6c62205b9f6d5f40d59cd7b94c2daa` |
| 51 | `theorem` | [Int.ceil_toNat](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/int-ceil-tonat--5ac638db619114c8f248dbda.md) | 353 | `result-track:5ac638db619114c8f248dbdaf72ce2633d1612eeaec828e18567dba8e090af9c` |
| 52 | `theorem` | [Nat.floor_int](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/nat-floor-int--49d174d4e190e1c30dce587c.md) | 357 | `result-track:49d174d4e190e1c30dce587c680788e8d3e494f62571e7d7b04f79abb1727878` |
| 53 | `theorem` | [Nat.ceil_int](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/nat-ceil-int--072931207c647e54fd46a39b.md) | 361 | `result-track:072931207c647e54fd46a39bf7fe61e87842296e1cdee65096335380f9433b1d` |
| 54 | `theorem` | [intCast_mono](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/intcast-mono--ce8d9d29412bb02a3dd25f53.md) | 373 | `result-track:ce8d9d29412bb02a3dd25f536dff3b50a88e73b99968dd3d13a479a53e24a927` |
| 55 | `theorem` | [intCast_strictMono](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/intcast-strictmono--eb89a4ee8dcb75059f28aca8.md) | 378 | `result-track:eb89a4ee8dcb75059f28aca81df6385d8ca63b61db452c70bb75f4041768ee8a` |
| 56 | `theorem` | [ceil_nonneg](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/ceil-nonneg--f49425cfebca1802c1dc42d5.md) | 390 | `result-track:f49425cfebca1802c1dc42d5dc36c44c1026b76e6de4120439576b37075cd8e8` |
| 57 | `theorem` | [floor_nonpos](../../../../mathematics/Algebra/Defs/Variantf6cc4cbab72e40e7afadb67d625a720359c26b32b9293a72255df2018a7876f7.lean/declarations/floor-nonpos--43fed702ff5365a694c45283.md) | 395 | `result-track:43fed702ff5365a694c45283c4411a7038ad8b686c79257686b7b2889eec304a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
