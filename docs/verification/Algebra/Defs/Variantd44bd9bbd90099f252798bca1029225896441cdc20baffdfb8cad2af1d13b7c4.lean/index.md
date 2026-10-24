# Verification target: GRWTSK.Algebra.Defs.Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fdf7f16581cbc72979764db38b5e2cdf355ea50",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fdf7f16581cbc72979764db38b5e2cdf355ea50`.

Source path: `GRWTSK/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean.json)

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
| 1 | `class` | [Algebra](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/algebra--ae54b9618c49b1bd73db5392.md) | 103 | `declaration-track:ae54b9618c49b1bd73db5392c5a4f808617297fa1bbffe57ffd69922d0842e3d` |
| 2 | `theorem` | [Algebra.subsingleton](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/algebra-subsingleton--fe4a47a48d2abb1689c38602.md) | 111 | `result-track:fe4a47a48d2abb1689c3860298916bd7470a79d7276f0f2db5152e4a545452f5` |
| 3 | `def` | [Algebra.cast](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/algebra-cast--43542bfba36967a7c0c43901.md) | 117 | `declaration-track:43542bfba36967a7c0c4390195ef1822f54886f52ff3047a8399d4b4c495b282` |
| 4 | `instance` | [coeHTCT](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/coehtct--7fa72202f0f03cbdfd4244cb.md) | 122 | `declaration-track:7fa72202f0f03cbdfd4244cbf159b43a82451ad6816b1eed7fc5944971693d8e` |
| 5 | `theorem` | [coe_zero](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/coe-zero--75a24f80a5c98865e2896d15.md) | 131 | `result-track:75a24f80a5c98865e2896d15e6ab64a93427cf1b63d9e28b33eb535470e56ef2` |
| 6 | `theorem` | [coe_one](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/coe-one--7e44235d99ac1148d7449bff.md) | 135 | `result-track:7e44235d99ac1148d7449bffab9df455d9556aaf812895781bfe6c4788e47ad2` |
| 7 | `theorem` | [coe_natCast](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/coe-natcast--b95bcb5705739a01793c3a79.md) | 139 | `result-track:b95bcb5705739a01793c3a79f43950d839f36ce93e436ea3efaa0b75f3083439` |
| 8 | `theorem` | [coe_add](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/coe-add--9e15fdd4d9a5dd5304257c80.md) | 143 | `result-track:9e15fdd4d9a5dd5304257c8045a7bdfbb5a74f4a6cd9b4cbf0b5209d3e64f048` |
| 9 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/coe-mul--a77a11adf6ff2beddfa73f3b.md) | 147 | `result-track:a77a11adf6ff2beddfa73f3bc384ca3f40c19b9ca8dfc6fe9b8722779a9fbef5` |
| 10 | `theorem` | [coe_pow](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/coe-pow--346d83a18b963f57f8a33394.md) | 151 | `result-track:346d83a18b963f57f8a333949fd34fc50f2d7f8d7407796b06e3198b587ebc7b` |
| 11 | `theorem` | [coe_neg](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/coe-neg--74818fe206e70ebbe1023701.md) | 161 | `result-track:74818fe206e70ebbe1023701aaf0b3c20895b86c79a7876182318216d8b03a8a` |
| 12 | `theorem` | [coe_sub](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/coe-sub--bebd43ac4cc2e51c87c4edd4.md) | 165 | `result-track:bebd43ac4cc2e51c87c4edd43c92c789a9ab83da3be27f7600ddd2975b2e9614` |
| 13 | `abbrev` | [RingHom.toAlgebra'](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/ringhom-toalgebra--3797f90608aa5f103ffcfcb0.md) | 179 | `declaration-track:3797f90608aa5f103ffcfcb035cc88519ac976c81a44f9af418357b621801569` |
| 14 | `theorem` | [RingHom.smul_toAlgebra'](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/ringhom-smul-toalgebra--8f3c8630274583ef51f9e796.md) | 188 | `result-track:8f3c8630274583ef51f9e796e0601acbbcfc9ab327568a99b0f189e60b857f24` |
| 15 | `theorem` | [RingHom.algebraMap_toAlgebra'](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/ringhom-algebramap-toalgebra--d7da6d2a2f31d0f296985588.md) | 194 | `result-track:d7da6d2a2f31d0f296985588acba33e88e8aff6293f0b395254c2edb49335d2e` |
| 16 | `abbrev` | [RingHom.toAlgebra](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/ringhom-toalgebra--f3491f742d53a16888e7f772.md) | 205 | `declaration-track:f3491f742d53a16888e7f7721c01dff8372f804635d2905d2241095cc656c4c4` |
| 17 | `theorem` | [RingHom.smul_toAlgebra](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/ringhom-smul-toalgebra--92d0f8c0724450caba3c127b.md) | 208 | `result-track:92d0f8c0724450caba3c127b1fa5c77c5118fb970eb6c7f7141a659338c2cc79` |
| 18 | `theorem` | [RingHom.algebraMap_toAlgebra](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/ringhom-algebramap-toalgebra--50f716b770785da047a49516.md) | 213 | `result-track:50f716b770785da047a49516f099898f19e996555c30f8d391c47d1c9c725518` |
| 19 | `abbrev` | [ofModule'](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/ofmodule--e31395fcdfb9a46e7e8d0d2c.md) | 226 | `declaration-track:e31395fcdfb9a46e7e8d0d2c8e551112d74110f6087ad0704bdbbf7a7e6e4783` |
| 20 | `abbrev` | [ofModule](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/ofmodule--adf917609de900be6c31f8c5.md) | 243 | `declaration-track:adf917609de900be6c31f8c51a1460a38fefade4531206138b28b3f30a2f975d` |
| 21 | `theorem` | [algebra_ext](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/algebra-ext--8ed1642226adbcbf51553a5d.md) | 258 | `result-track:8ed1642226adbcbf51553a5dec32a0afa1e406ecac155ed47741145d4830024e` |
| 22 | `lemma` | [_root_.GRWTSK.Algebra.Algebra.Variant8cd3931aa8f1e5295c6b7892a70dcf8f7e231df28ff0b6bed1a20b14a5f5a64c.toAlgebra_algebraMap](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/root-grwtsk-algebra-algebra-variant8cd3931aa8f1e5295c6b7892a70dcf8f7e231--02ef9d94d8b3589794622175.md) | 270 | `result-track:02ef9d94d8b358979462217552acfc520c8836f3b8ef047701a67761d87248a5` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/instance--01d06314b10d2e7cbe768b7e.md) | 275 | `declaration-track:01d06314b10d2e7cbe768b7ee0cbd9ddb9f1823279ee287627e841b2892483d1` |
| 24 | `theorem` | [smul_def](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/smul-def--644d4e606456cf5a6717e830.md) | 284 | `result-track:644d4e606456cf5a6717e830b9ce7b78e6f2ecf78cee211685f7f937f2d00d43` |
| 25 | `theorem` | [algebraMap_eq_smul_one](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/algebramap-eq-smul-one--65556e9a44fb7b0bd71479a9.md) | 287 | `result-track:65556e9a44fb7b0bd71479a941a3a5203092455b327d599b128ecfde0bd7d2b2` |
| 26 | `theorem` | [algebraMap_eq_smul_one'](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/algebramap-eq-smul-one--8a2f7391cbb7cafbdded7290.md) | 292 | `result-track:8a2f7391cbb7cafbdded729043264885b70b9eddc75f6af2c9fd834442815a8f` |
| 27 | `theorem` | [commutes](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/commutes--2377a5130495f862732e5fd8.md) | 296 | `result-track:2377a5130495f862732e5fd851a8778f8de007201e73be59184c2370022be227` |
| 28 | `lemma` | [commute_algebraMap_left](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/commute-algebramap-left--58759ae9874ca0f0d520b2ff.md) | 299 | `result-track:58759ae9874ca0f0d520b2fff439222dc23b45047fe46166f1450e1761a4f838` |
| 29 | `lemma` | [commute_algebraMap_right](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/commute-algebramap-right--246c81b8be4549becac4a39d.md) | 302 | `result-track:246c81b8be4549becac4a39d685632e6a82f8ac3ee367b210c12ebaf12620370` |
| 30 | `theorem` | [left_comm](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/left-comm--678369192a6d3774fe985914.md) | 306 | `result-track:678369192a6d3774fe985914e34fd083247fe145e75e0ed7ff0965c48f448845` |
| 31 | `theorem` | [right_comm](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/right-comm--ec423d997e515a303e4f2d28.md) | 311 | `result-track:ec423d997e515a303e4f2d28ae6eb22322b617ffe228936d74b50d419a9916a4` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/instance--1ddea9a2ced349bd67714683.md) | 316 | `declaration-track:1ddea9a2ced349bd6771468348bad7a02dd6b8db2e927976b6b214a57fdd1bee` |
| 33 | `theorem` | [_root_.GRWTSK.Algebra.Algebra.Variant8cd3931aa8f1e5295c6b7892a70dcf8f7e231df28ff0b6bed1a20b14a5f5a64c.RingHom.smulOneHom_eq_algebraMap](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/root-grwtsk-algebra-algebra-variant8cd3931aa8f1e5295c6b7892a70dcf8f7e231--bbed07b7a7e5e8b67c3d577f.md) | 320 | `result-track:bbed07b7a7e5e8b67c3d577fded879fd103667cc2638f0fce3f7ebcb3518990c` |
| 34 | `theorem` | [mul_smul_comm](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/mul-smul-comm--35b83bbd2182d9be7828de03.md) | 329 | `result-track:35b83bbd2182d9be7828de03869840f135b5e4e63561de0ac45df8acf9171a07` |
| 35 | `theorem` | [smul_mul_assoc](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/smul-mul-assoc--140c45631970f43a2ef690a6.md) | 335 | `result-track:140c45631970f43a2ef690a61a2c09e27ca0facab20ce611eacec815d4b7fd68` |
| 36 | `theorem` | [_root_.GRWTSK.Algebra.Algebra.Variant8cd3931aa8f1e5295c6b7892a70dcf8f7e231df28ff0b6bed1a20b14a5f5a64c.smul_algebraMap](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/root-grwtsk-algebra-algebra-variant8cd3931aa8f1e5295c6b7892a70dcf8f7e231--affa5ddfad410c26404dddba.md) | 339 | `result-track:affa5ddfad410c26404dddbaab288a60ff0a623bc227fa15b29c2ed02bf133ac` |
| 37 | `abbrev` | [compHom](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/comphom--0cc89b4512e2bb8f2a43eed0.md) | 352 | `declaration-track:0cc89b4512e2bb8f2a43eed03a71935bf192aca799d23d3de055be630d4d58ee` |
| 38 | `theorem` | [compHom_smul_def](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/comphom-smul-def--7aaaa20e159ceb6a053552a6.md) | 358 | `result-track:7aaaa20e159ceb6a053552a6d7e2b32d790a1ec030db2be2c5b461cb111923c6` |
| 39 | `theorem` | [compHom_algebraMap_eq](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/comphom-algebramap-eq--c8ab373489ce5b3a2a9374cb.md) | 362 | `result-track:c8ab373489ce5b3a2a9374cb080c135974aa5a317ab9dd3ca28ee1b69d0828c7` |
| 40 | `theorem` | [compHom_algebraMap_apply](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/comphom-algebramap-apply--66b7cffaa882e23372f5c54f.md) | 366 | `result-track:66b7cffaa882e23372f5c54f33378081a8b39418670004a17dfad8635d5717a7` |
| 41 | `def` | [linearMap](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/linearmap--702b9a130f40916c921ace82.md) | 378 | `declaration-track:702b9a130f40916c921ace82382567b7942c94d5eb2fd30b07c18141f1fb8b5b` |
| 42 | `theorem` | [linearMap_apply](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/linearmap-apply--93aac9dc51710b29b2884124.md) | 385 | `result-track:93aac9dc51710b29b28841248400bae16a1773cbb793b3d0ca1fb9d2bc741aa6` |
| 43 | `theorem` | [coe_linearMap](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/coe-linearmap--913b9a945e2afa4075392480.md) | 388 | `result-track:913b9a945e2afa4075392480c2f271ef50db20ce6f7a32bdb1e54aa6b58ddd72` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/instance--cde9ef3618045fb413054b9b.md) | 393 | `declaration-track:cde9ef3618045fb413054b9b0bf48e075e0c492189378be480ddb99419d4f029` |
| 45 | `lemma` | [linearMap_self](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/linearmap-self--6bac7ef05b8eb277d5157087.md) | 400 | `result-track:6bac7ef05b8eb277d51570879151d908f7301de8afe75a17ae4b61c8c3261f1f` |
| 46 | `lemma` | [algebraMap_self](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/algebramap-self--da1d2e540655e085d1c70abe.md) | 404 | `result-track:da1d2e540655e085d1c70abe40a4f7274eae2cf3a9bf042b926ce627d7aced34` |
| 47 | `lemma` | [algebraMap_self_apply](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/algebramap-self-apply--ae06e6f4383b2a6e0d71efec.md) | 405 | `result-track:ae06e6f4383b2a6e0d71efec9c85f087a3e0fa1008690a9227b1ec55419e83e4` |
| 48 | `theorem` | [algebraMap.coe_smul](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/algebramap-coe-smul--36a9ffb1fd404470f943fba1.md) | 417 | `result-track:36a9ffb1fd404470f943fba1c095c5ef06e6b66d003d493f392fefc247f72557` |
| 49 | `theorem` | [algebraMap.coe_smul'](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/algebramap-coe-smul--7c6ff70b15009385e33bda82.md) | 421 | `result-track:7c6ff70b15009385e33bda82b59da8a38e395e32eb46622204334087246d6dbe` |
| 50 | `theorem` | [algebraMap.smul](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/algebramap-smul--b56255d3b702185e95d48fde.md) | 425 | `result-track:b56255d3b702185e95d48fde17062b2549e56dd35f001ec2d47028b134d4fdd3` |
| 51 | `theorem` | [algebraMap.smul'](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/algebramap-smul--d3324fb6ae1af78715679eca.md) | 428 | `result-track:d3324fb6ae1af78715679eca5df416c77125f2791c900a6dcfdeb68bac931e0d` |
| 52 | `abbrev` | [IsUnital.toAlgebra](../../../../mathematics/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/declarations/isunital-toalgebra--33b8de4f6ad33dc1a7c475e0.md) | 438 | `declaration-track:33b8de4f6ad33dc1a7c475e045f5d05b78d4930a90161203d8f55109bb930f0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
