# Verification target: GRWTSK.Algebra.Defs.Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "696759ce00b04e2cb17f3c0f1d70dc7203275dd2",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `696759ce00b04e2cb17f3c0f1d70dc7203275dd2`.

Source path: `GRWTSK/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean.json)

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
| 1 | `class` | [SMulZeroClass](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/smulzeroclass--4ffe600b1757366402d41f2d.md) | 50 | `declaration-track:4ffe600b1757366402d41f2d3dc99789d84835e3bd50430f982a970cc9dccccf` |
| 2 | `theorem` | [smul_zero](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/smul-zero--d2995991374b80c6633ced79.md) | 59 | `result-track:d2995991374b80c6633ced79fefbc32011392d59b5797df8fc42b2d3a56a641f` |
| 3 | `lemma` | [smul_ite_zero](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/smul-ite-zero--2c84817b442a460681901c80.md) | 62 | `result-track:2c84817b442a460681901c802943e07a78a2d87ff145749dfb9e44038c811cbd` |
| 4 | `lemma` | [smul_eq_zero_of_right](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/smul-eq-zero-of-right--36d6b52c4403647863148be1.md) | 65 | `result-track:36d6b52c4403647863148be1ca70be8d4079f85f0dcb49e72431dce857edbb6e` |
| 5 | `lemma` | [right_ne_zero_of_smul](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/right-ne-zero-of-smul--0a43e186e13d18fe78b2188a.md) | 66 | `result-track:0a43e186e13d18fe78b2188acba13e2a1453aace830100c0f510885b476f4fea` |
| 6 | `abbrev` | [Function.Injective.smulZeroClass](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/function-injective-smulzeroclass--52052590320c7b1bf5c912eb.md) | 70 | `declaration-track:52052590320c7b1bf5c912ebfb2d7b776c7d73a2e774c596d1eb3a9ad1fed224` |
| 7 | `abbrev` | [ZeroHom.smulZeroClass](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/zerohom-smulzeroclass--9a1add607f7fa4ca1fd4e40b.md) | 77 | `declaration-track:9a1add607f7fa4ca1fd4e40bed638f17d63a8900d59e6b77851c1d0019a3e51b` |
| 8 | `abbrev` | [Function.Surjective.smulZeroClassLeft](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/function-surjective-smulzeroclassleft--6c41d10e26b808d9653c27de.md) | 86 | `declaration-track:6c41d10e26b808d9653c27de2c3872cac6446145c22a91560b4579b9054ef1ac` |
| 9 | `abbrev` | [SMulZeroClass.compFun](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/smulzeroclass-compfun--8252c78d6741bbea0bb1b11c.md) | 96 | `declaration-track:8252c78d6741bbea0bb1b11c0c27e2e4409ae87f762504c9c11e9d4d56d1fa61` |
| 10 | `def` | [SMulZeroClass.toZeroHom](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/smulzeroclass-tozerohom--becb8f7e6f4dfa6e40426ccc.md) | 103 | `declaration-track:becb8f7e6f4dfa6e40426cccc24e4faf7f2f95eb508867de96cf8a0d76fb7e06` |
| 11 | `class` | [SMulWithZero](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/smulwithzero--0f91498acbe22af048c99c10.md) | 116 | `declaration-track:0f91498acbe22af048c99c10dd034553579103a94234a309d2144e690d8b5cbb` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/instance--3d401e6d19e7c01b66c78b3b.md) | 121 | `declaration-track:3d401e6d19e7c01b66c78b3bee9e6c9ebe30d7058c80e4c02736785559648f17` |
| 13 | `instance` | [MulZeroClass.toOppositeSMulWithZero](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/mulzeroclass-tooppositesmulwithzero--cfc616fe07fe043f8dc0c9b4.md) | 127 | `declaration-track:cfc616fe07fe043f8dc0c9b4c4eb0b19454c6bc065644185b31e8a6efb6ca748` |
| 14 | `theorem` | [zero_smul](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/zero-smul--0240c6d0508989aa083557f8.md) | 134 | `result-track:0240c6d0508989aa083557f8200d34c010102dc24425abc25738b33c5752c6dd` |
| 15 | `lemma` | [smul_eq_zero_of_left](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/smul-eq-zero-of-left--06d69e5a5ef3cfdf3ff7ee45.md) | 139 | `result-track:06d69e5a5ef3cfdf3ff7ee45aa95c7533bdb7ddda374ae6c735603e851a39720` |
| 16 | `lemma` | [left_ne_zero_of_smul](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/left-ne-zero-of-smul--505b21274be11d72e21c94cb.md) | 140 | `result-track:505b21274be11d72e21c94cba84d5d0e98d6345ef24efc4cda9e398ed22c9fe0` |
| 17 | `abbrev` | [Function.Injective.smulWithZero](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/function-injective-smulwithzero--5567c9527078adbb22b0d38e.md) | 146 | `declaration-track:5567c9527078adbb22b0d38e7c9de08842faf4b79f755f27a41071019f1156cf` |
| 18 | `abbrev` | [Function.Surjective.smulWithZero](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/function-surjective-smulwithzero--962dadc10bd72b9925061df0.md) | 153 | `declaration-track:962dadc10bd72b9925061df024059788c3ed19abd6ea59c79b8c149ccfc4d605` |
| 19 | `def` | [SMulWithZero.compHom](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/smulwithzero-comphom--49d5dd638ccc95fea41174d0.md) | 164 | `declaration-track:49d5dd638ccc95fea41174d0d8a1ee5469ad38e852654ef5452b3d01b24a32bc` |
| 20 | `instance` | [AddMonoid.natSMulWithZero](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/addmonoid-natsmulwithzero--4c8835136106bbe23b60496a.md) | 171 | `declaration-track:4c8835136106bbe23b60496ac4e717719e717057741927fc3868b840acacf2ed` |
| 21 | `instance` | [AddGroup.intSMulWithZero](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/addgroup-intsmulwithzero--48da7e3c88b11409af70740a.md) | 175 | `declaration-track:48da7e3c88b11409af70740a5ae90c1f159275eb0fa0880c05b39a80070f33b4` |
| 22 | `class` | [MulActionWithZero](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/mulactionwithzero--48a4ec0bd600d0cddc525315.md) | 185 | `declaration-track:48a4ec0bd600d0cddc52531572df9453c852f409a405beefff83acbf5ac7ae4a` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/instance--02e5afab4e565ae85cc29cfa.md) | 193 | `declaration-track:02e5afab4e565ae85cc29cfa0fecc3aff6387fb38815de694d2bf452072e4df7` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/instance--bc6097e7637e5efb43623dc3.md) | 199 | `declaration-track:bc6097e7637e5efb43623dc3674a690a9b6ae94d0893c1c55ab981d20588dfd6` |
| 25 | `instance` | [MonoidWithZero.toOppositeMulActionWithZero](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/monoidwithzero-tooppositemulactionwithzero--9d8490bc1ae921ee711c604d.md) | 204 | `declaration-track:9d8490bc1ae921ee711c604dad49876f8e8715cf06970a0168c3a342178c8285` |
| 26 | `lemma` | [MulActionWithZero.subsingleton](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/mulactionwithzero-subsingleton--6b3004b5e8db78dbb2a11c79.md) | 207 | `result-track:6b3004b5e8db78dbb2a11c7905bc4b7e59b992ee9b8e77fee1b1f55ac741ae0e` |
| 27 | `lemma` | [MulActionWithZero.nontrivial](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/mulactionwithzero-nontrivial--6dbe1c7cf24ce6a31dc36f0d.md) | 212 | `result-track:6dbe1c7cf24ce6a31dc36f0dc238e5b6b44a98ea954d6f79b25ea7c04064ed45` |
| 28 | `lemma` | [ite_zero_smul](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/ite-zero-smul--26e602e0116d14809b5348fa.md) | 219 | `result-track:26e602e0116d14809b5348fa300e4807344ce9ba33945a8b812ca2af27b6ae8e` |
| 29 | `lemma` | [boole_smul](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/boole-smul--86000f4eef8a1ba8cd63d9cf.md) | 222 | `result-track:86000f4eef8a1ba8cd63d9cf1be444d363c8ce8b6fdbf1e6c3b011e3224407d3` |
| 30 | `lemma` | [Pi.single_apply_smul](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/pi-single-apply-smul--43e4abd251ab79bcf1a893cb.md) | 224 | `result-track:43e4abd251ab79bcf1a893cb900d4e9276f3496d0f6d97bb3e2c2c9a9ed001f2` |
| 31 | `abbrev` | [Function.Injective.mulActionWithZero](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/function-injective-mulactionwithzero--5ebfde42a805c21683a5230f.md) | 230 | `declaration-track:5ebfde42a805c21683a5230f37222cd3dd5f39d31e369aad74ea12761598ced2` |
| 32 | `abbrev` | [Function.Surjective.mulActionWithZero](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/function-surjective-mulactionwithzero--fe5b3bdc19f4a12c4e07adde.md) | 236 | `declaration-track:fe5b3bdc19f4a12c4e07adde6f98724e79a82bae3cc783eb289717ecc08ab780` |
| 33 | `def` | [MulActionWithZero.compHom](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/mulactionwithzero-comphom--7aef21b096c795dc7df12bb6.md) | 244 | `declaration-track:7aef21b096c795dc7df12bb6b8418430d16259a12b477e7d1a6c24dcf73bdad7` |
| 34 | `lemma` | [smul_inv₀](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/smul-inv--e4df9e075b3a5077ab70e4e4.md) | 255 | `result-track:e4df9e075b3a5077ab70e4e43f0185f5b4dc9abe0f9fae451c6909d01a36f2db` |
| 35 | `class` | [DistribSMul](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/distribsmul--e21e5d556e7d211cca873b02.md) | 270 | `declaration-track:e21e5d556e7d211cca873b02a8a6bc5d6649d68ce603c0fe7e1f30313c802d30` |
| 36 | `theorem` | [smul_add](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/smul-add--734eeccb56d76f6a6f297846.md) | 278 | `result-track:734eeccb56d76f6a6f2978467f757a3a3516f33af66d3b11f444abf52f7254df` |
| 37 | `abbrev` | [Function.Injective.distribSMul](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/function-injective-distribsmul--029c6bf03a82f0d630cd24d1.md) | 284 | `declaration-track:029c6bf03a82f0d630cd24d117a3fd9d95e0f40ac2bba1f5dd10e8923de60691` |
| 38 | `abbrev` | [Function.Surjective.distribSMul](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/function-surjective-distribsmul--e2af5e0f29ae8bfb8a97d9db.md) | 292 | `declaration-track:e2af5e0f29ae8bfb8a97d9db110d202458ec88ded31ecb99a244942b6851f58c` |
| 39 | `abbrev` | [Function.Surjective.distribSMulLeft](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/function-surjective-distribsmulleft--a8aaec56a244180c48ab9950.md) | 304 | `declaration-track:a8aaec56a244180c48ab9950f206d67dc15a34e85bf9082434e9d574acda0b07` |
| 40 | `abbrev` | [DistribSMul.compFun](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/distribsmul-compfun--f97844f6546a0e0c13fd231d.md) | 314 | `declaration-track:f97844f6546a0e0c13fd231d4bd30fda43e8abd0ff877abcfc0ea1c00ac1242f` |
| 41 | `def` | [DistribSMul.toAddMonoidHom](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/distribsmul-toaddmonoidhom--a5f7fc71d5f58d87ac9ce1eb.md) | 320 | `declaration-track:a5f7fc71d5f58d87ac9ce1ebfd5033084ae764371b008c0f2a7bbe7a46cd8ddd` |
| 42 | `instance` | [AddMonoid.nat_smulCommClass](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/addmonoid-nat-smulcommclass--748923dca5ce1a7dce32bbbc.md) | 323 | `declaration-track:748923dca5ce1a7dce32bbbcd4f90ea2ed7023cfb54ff1ce3fc45df54e7a6b94` |
| 43 | `instance` | [AddMonoid.nat_smulCommClass'](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/addmonoid-nat-smulcommclass--70a518b28ab7c229449bfec2.md) | 328 | `declaration-track:70a518b28ab7c229449bfec22c356b592cbfe3b09b2be3606a3b2417ff7a0a2d` |
| 44 | `class` | [DistribMulAction](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/distribmulaction--50a4df2b02cbd35b5df299d2.md) | 346 | `declaration-track:50a4df2b02cbd35b5df299d20cd57b9d17150f9d1e02a9adba44d0b0696ef5e0` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/instance--02e6ab2db3ef51f8a5b61901.md) | 357 | `declaration-track:02e6ab2db3ef51f8a5b619019ff185c2ebbbe8f9794fd07bc92bf44775157cdb` |
| 46 | `example` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/example--9f5a02d7a1eb4478e047bc34.md) | 362 | `declaration-track:9f5a02d7a1eb4478e047bc34dc995535fa9c2637d9564a79afca7735e25c58ee` |
| 47 | `abbrev` | [Function.Injective.distribMulAction](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/function-injective-distribmulaction--edf54659c216869cb74942e8.md) | 370 | `declaration-track:edf54659c216869cb74942e853893c695d42538bef83e4f6813bb2c59d585942` |
| 48 | `abbrev` | [Function.Surjective.distribMulAction](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/function-surjective-distribmulaction--29ce8864e4fe102004c1d34e.md) | 377 | `declaration-track:29ce8864e4fe102004c1d34e86d625117cebfb721a96cdaaa9ef95bb87934bb6` |
| 49 | `def` | [DistribMulAction.toAddMonoidEnd](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/distribmulaction-toaddmonoidend--bbffad54102798970b1ea9cd.md) | 387 | `declaration-track:bbffad54102798970b1ea9cdbbaedf498aea5ad7443420fe4a31b02863911425` |
| 50 | `instance` | [AddGroup.int_smulCommClass](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/addgroup-int-smulcommclass--b6cd5608c6a776e17803670f.md) | 399 | `declaration-track:b6cd5608c6a776e17803670f5097cb541f75fced700c9e62fd45c60458fd0c52` |
| 51 | `instance` | [AddGroup.int_smulCommClass'](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/addgroup-int-smulcommclass--7d5488bfccfd55303750049f.md) | 403 | `declaration-track:7d5488bfccfd55303750049faa4d52cd445f6add33b302069858042499971ccd` |
| 52 | `theorem` | [smul_neg](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/smul-neg--78debdf23c2d43e67e164ddf.md) | 407 | `result-track:78debdf23c2d43e67e164ddfe088e20369b680cb16097425a64cd81d947901f1` |
| 53 | `theorem` | [smul_sub](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/smul-sub--e0e49c51966ac20b45e68177.md) | 410 | `result-track:e0e49c51966ac20b45e681777352b3ad4a50b81fd16d79d9659524946ba7b5cd` |
| 54 | `lemma` | [smul_eq_zero_iff_eq](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/smul-eq-zero-iff-eq--72a5c4aef9b136be71106b5f.md) | 418 | `result-track:72a5c4aef9b136be71106b5fa3bb084ab9b90a186fd3191b08ab45a93107781d` |
| 55 | `lemma` | [smul_ne_zero_iff_ne](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/smul-ne-zero-iff-ne--a18d0ade1b54bbe0890f9312.md) | 421 | `result-track:a18d0ade1b54bbe0890f9312d557fe48cbbd12276136e2ab9fbe5943e3230756` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/instance--720e26cd82674d231058d1f4.md) | 429 | `declaration-track:720e26cd82674d231058d1f4859027717567bda664fe223441038aaa16cbb748` |
| 57 | `theorem` | [smul_inv₀'](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/smul-inv--606599fabe44bd5ac6a23796.md) | 435 | `result-track:606599fabe44bd5ac6a237961210f97ad9a1526bada0c05216b77735e4a1b5e3` |
| 58 | `theorem` | [smul_div₀'](../../../../mathematics/Algebra/Defs/Variant4c2c9bee8d7257b08f18c7fca074320a51199c5379015f8a5fd006cc5051c28a.lean/declarations/smul-div--f0aa8bd0ee3186454dffcbe0.md) | 441 | `result-track:f0aa8bd0ee3186454dffcbe04f5a932b0a13e9a0420a9dd40789e44eafaca5d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
