# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c66021e40f6aefda3b98f207041cc0c16f83e53f",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c66021e40f6aefda3b98f207041cc0c16f83e53f`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean.json)

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
| 1 | `theorem` | [pos](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/pos--aed81d55056fb0f48c485967.md) | 45 | `result-track:aed81d55056fb0f48c485967717271e3bdbadb8db96aa1c1dc812180cc34508a` |
| 2 | `lemma` | [mk'_num_den](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/mk-num-den--cba08e60b91e3ed2203dc405.md) | 47 | `result-track:cba08e60b91e3ed2203dc405f8048c5200b192fbee6f60fcecf914f2e838d9ef` |
| 3 | `theorem` | [ofInt_eq_cast](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/ofint-eq-cast--39faaf337c57851b4fd3ca96.md) | 50 | `result-track:39faaf337c57851b4fd3ca962eb863aaae1d9516355e32e43491151bb7919d9e` |
| 4 | `lemma` | [intCast_injective](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/intcast-injective--82970ce9fd31fea55a7a72e5.md) | 53 | `result-track:82970ce9fd31fea55a7a72e5b0a442b9ef6055c2a9ea2335f55f4bc5fe45fa1a` |
| 5 | `lemma` | [natCast_injective](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/natcast-injective--90151a484e1bdfc6e0015f96.md) | 54 | `result-track:90151a484e1bdfc6e0015f96fea71ff9a805f59aab432729a6f34883b80c4166` |
| 6 | `lemma` | [intCast_eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/intcast-eq-one-iff--3659d819dc02ed0219d3bbe2.md) | 57 | `result-track:3659d819dc02ed0219d3bbe2851984300eb650398e575f13fa127371f57af7ab` |
| 7 | `lemma` | [natCast_eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/natcast-eq-one-iff--7dac07c3ba83ac92bf42c2ae.md) | 59 | `result-track:7dac07c3ba83ac92bf42c2ae4b4423cb1079a0debe7eaa07238b56f1f29829f6` |
| 8 | `lemma` | [mkRat_eq_divInt](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/mkrat-eq-divint--17bc7a46490fb2ecd29872d2.md) | 61 | `result-track:17bc7a46490fb2ecd29872d2c3bc45f44f56816deb31f62b772f5fdaa63fbfe3` |
| 9 | `lemma` | [mk'_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/mk-zero--e26a2c3f5b4b8d38d988a85b.md) | 63 | `result-track:e26a2c3f5b4b8d38d988a85b7dd7e80c6e0bf46e0be1642cdbe0f89ed46e9490` |
| 10 | `lemma` | [num_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/num-ne-zero--831b20406f074f4d22879c05.md) | 65 | `result-track:831b20406f074f4d22879c058d8229cc3511c16cac5f4f3b79981a7f0019446e` |
| 11 | `lemma` | [den_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/den-ne-zero--4d59154cbf382ddbe1061a5e.md) | 67 | `result-track:4d59154cbf382ddbe1061a5e2328b1ccbcbe9abb49b995e494cc6482e6aac095` |
| 12 | `theorem` | [divInt_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/divint-eq-zero--dffecc07548abfb93795dfbf.md) | 70 | `result-track:dffecc07548abfb93795dfbf68669b18ee885302b1fdd1a4e0150300a4cda11a` |
| 13 | `theorem` | [divInt_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/divint-ne-zero--d7ad64d70e45a83ce11c95f7.md) | 73 | `result-track:d7ad64d70e45a83ce11c95f74f44d133434a5ae75b77f3197b173e4a67e4d696` |
| 14 | `theorem` | [intCast_eq_divInt](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/intcast-eq-divint--6c784cca21a4ff4b20ce8466.md) | 79 | `result-track:6c784cca21a4ff4b20ce8466a66d7b11570831a0d21cb3dac021f2a397770b07` |
| 15 | `theorem` | [lift_binop_eq](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/lift-binop-eq--df63dd0ce8280f138658e2d2.md) | 81 | `result-track:df63dd0ce8280f138658e2d22908cc8b9cdf9daaea6cd1b9217d2d9c906da597` |
| 16 | `lemma` | [neg_def](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/neg-def--4280d812247db62c16215a00.md) | 99 | `result-track:4280d812247db62c16215a00dc41d81cdccf45a03dafe11501baf60ea8967caf` |
| 17 | `lemma` | [divInt_neg](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/divint-neg--2dfd4b887a4ec94fb8c3e9f3.md) | 101 | `result-track:2dfd4b887a4ec94fb8c3e9f36108679f68d66c8e975d306ea0b45a3ba17f95fa` |
| 18 | `lemma` | [mk'_mul_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/mk-mul-mk--07c48dad97b92aacc8cf57ad.md) | 103 | `result-track:07c48dad97b92aacc8cf57addf7a8fd1780e4a6a22fa0fa8055bdba89b623d63` |
| 19 | `lemma` | [mul_eq_mkRat](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/mul-eq-mkrat--55b063221fd09ba3cb210d4f.md) | 109 | `result-track:55b063221fd09ba3cb210d4f3c30158623739893c4b885828756e4c32adb281e` |
| 20 | `lemma` | [pow_eq_mkRat](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/pow-eq-mkrat--b0ce43cd402ad9f798e0245b.md) | 112 | `result-track:b0ce43cd402ad9f798e0245b025f70636c62318732c387de1b160f4ff8e74b2d` |
| 21 | `lemma` | [pow_eq_divInt](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/pow-eq-divint--86f4f4503ceaa8692417ce67.md) | 115 | `result-track:86f4f4503ceaa8692417ce6701d64b800cd77cef41246f83ca098aafa828c752` |
| 22 | `lemma` | [mk'_pow](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/mk-pow--7a8d09b19d2227d27f4253e5.md) | 118 | `result-track:7a8d09b19d2227d27f4253e564e3c583c1b373573faf0fbcebce807d180f6dcc` |
| 23 | `lemma` | [inv_mkRat](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/inv-mkrat--899b334f5f4aeac35ae6f9bd.md) | 122 | `result-track:899b334f5f4aeac35ae6f9bdacb2c848553254cf9c7a3c652c80ca59ea721c2f` |
| 24 | `lemma` | [divInt_div_divInt](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/divint-div-divint--9b37d8b6043eed965cdf622b.md) | 125 | `result-track:9b37d8b6043eed965cdf622b6856ecd72e8e1744a63c8c09312a496ebbaf63bc` |
| 25 | `lemma` | [div_def'](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/div-def--a027d72ce17cc751d262d50c.md) | 129 | `result-track:a027d72ce17cc751d262d50c402f71bb5ad466b57cd17bd67991373665239eab` |
| 26 | `lemma` | [divInt_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/divint-one--4ec6f3556f08bf2a2296b6b5.md) | 134 | `result-track:4ec6f3556f08bf2a2296b6b5399371e133b17e90cec3de5867d5983c9be5bbeb` |
| 27 | `lemma` | [divInt_one_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/divint-one-one--9c1ac5e1fe3fd1dd75305eaf.md) | 136 | `result-track:9c1ac5e1fe3fd1dd75305eaf68bb228f0b85989e07cfe8ead269d35a191337d1` |
| 28 | `theorem` | [zero_ne_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/zero-ne-one--4ae8d59a1b5fce6042075856.md) | 138 | `result-track:4ae8d59a1b5fce6042075856960763713bc464fd3f98797f7d8cc469d5613b84` |
| 29 | `instance` | [nontrivial](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/nontrivial--d546884c97535999eaefcde8.md) | 145 | `declaration-track:d546884c97535999eaefcde82da9e49f4977c0043d92b26adbadbafc3a8d061f` |
| 30 | `instance` | [addCommGroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/addcommgroup--4ff117d4544e1d425d6633fe.md) | 149 | `declaration-track:4ff117d4544e1d425d6633feb37ba3d976cc581d111b697877bc4a7bf7b0262a` |
| 31 | `instance` | [addGroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/addgroup--acf3a24dc91f4bf95b38d4b1.md) | 169 | `declaration-track:acf3a24dc91f4bf95b38d4b112b27e9666b65ea3cf304d11bbde7bfda2eb4f7e` |
| 32 | `instance` | [addCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/addcommmonoid--0c1aa8d8382eb13a17e24902.md) | 171 | `declaration-track:0c1aa8d8382eb13a17e249023272b484c278a973c517db0e0224eebc4aa4eea6` |
| 33 | `instance` | [addMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/addmonoid--6da62e049cf0fdfb50e073ff.md) | 173 | `declaration-track:6da62e049cf0fdfb50e073ffae8c3c2c57bcd5f509a72c9e9e2e63a6a6ee15d3` |
| 34 | `instance` | [addLeftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/addleftcancelsemigroup--7cfcd6f2e4a91191737007fa.md) | 175 | `declaration-track:7cfcd6f2e4a91191737007faa9675ed32b4d7f052df44e6663bd94b0d98c8998` |
| 35 | `instance` | [addRightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/addrightcancelsemigroup--a894968abb66933311798968.md) | 177 | `declaration-track:a894968abb66933311798968c0e49acffef6469e75b16dc4a18fb989d5d4ce06` |
| 36 | `instance` | [addCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/addcommsemigroup--ad8bc3af8397fd4be888facc.md) | 179 | `declaration-track:ad8bc3af8397fd4be888facc007a94668f02238639f47b8225972330bc9cbfb3` |
| 37 | `instance` | [addSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/addsemigroup--6bccdf79de45d1c9373e430a.md) | 181 | `declaration-track:6bccdf79de45d1c9373e430a2aebab9e1f205a9e2794f9ef6c2e88a4a0463dc0` |
| 38 | `instance` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/commmonoid--515bb1cc6c31be9a4b855fd8.md) | 183 | `declaration-track:515bb1cc6c31be9a4b855fd8110bd3e84e03a6bed82c620a7517afcfc8ee5e1a` |
| 39 | `instance` | [monoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/monoid--355cdd7f008f0983cf191587.md) | 192 | `declaration-track:355cdd7f008f0983cf191587d0204a81211b6a6992b2c4ba3562058093792f39` |
| 40 | `instance` | [commSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/commsemigroup--1160be55fa150bbb53038425.md) | 194 | `declaration-track:1160be55fa150bbb530384251e96e8df2c7174716896f2cd682662f077bd8990` |
| 41 | `instance` | [semigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/semigroup--9ffe4341ce2572c2cf7dd612.md) | 196 | `declaration-track:9ffe4341ce2572c2cf7dd61207c4e3b69682f918cad77d07d9a673428db6ac70` |
| 42 | `theorem` | [den_neg_eq_den](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/den-neg-eq-den--c68736133c5d3fb08c5c4a20.md) | 199 | `result-track:c68736133c5d3fb08c5c4a20e8903a716b9f59a47af423f019f9bb222b3ac017` |
| 43 | `theorem` | [num_neg_eq_neg_num](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/num-neg-eq-neg-num--090cc2c4777f5f347420c845.md) | 203 | `result-track:090cc2c4777f5f347420c845aecdb53d5d3e295013746d17c128119b061ff721` |
| 44 | `theorem` | [num_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/num-zero--717279eeba6f2d06c8375eb0.md) | 207 | `result-track:717279eeba6f2d06c8375eb022a1ac290bb0dd13c8021ae4847ed27e9b29259c` |
| 45 | `theorem` | [den_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/den-zero--1f1cb56b7122b175e677b163.md) | 211 | `result-track:1f1cb56b7122b175e677b1635504c70d6a37ecf53848012fbf18366232cce79b` |
| 46 | `lemma` | [zero_of_num_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/zero-of-num-zero--367336410b0cf1bf8bb68947.md) | 214 | `result-track:367336410b0cf1bf8bb68947dd372ae7e8f48b79b5fad48d34ee1a25fde01048` |
| 47 | `theorem` | [zero_iff_num_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/zero-iff-num-zero--2d821c30995ceedb2cdafc8b.md) | 216 | `result-track:2d821c30995ceedb2cdafc8beec6c97c127064156339dd6bd615e3ee1fd0340d` |
| 48 | `theorem` | [num_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/num-one--6ecf32be1cb7eac1b5f958bf.md) | 220 | `result-track:6ecf32be1cb7eac1b5f958bf4c5529148d920f6a877a7095ce4458ea03856cff` |
| 49 | `theorem` | [den_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/den-one--6f5efa84d72d40d93ffb17d6.md) | 224 | `result-track:6f5efa84d72d40d93ffb17d6a71c513114297a6539793bb717bff2e246d9a0bc` |
| 50 | `theorem` | [mk_num_ne_zero_of_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/mk-num-ne-zero-of-ne-zero--833ae2aa930cf6bf2a2d0e85.md) | 227 | `result-track:833ae2aa930cf6bf2a2d0e85f80238e3c2efbb952774fd9242f05301dd1f106a` |
| 51 | `theorem` | [mk_denom_ne_zero_of_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/mk-denom-ne-zero-of-ne-zero--618f9f3256e4cda2440cd553.md) | 230 | `result-track:618f9f3256e4cda2440cd553844af4db4a49031477bf5d4aab5e10c6c3af21e1` |
| 52 | `theorem` | [divInt_ne_zero_of_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/divint-ne-zero-of-ne-zero--7f3bc67f12a97aeac1fa26e5.md) | 233 | `result-track:7f3bc67f12a97aeac1fa26e504aaf428a424b352dedc80d859ffda0fe47d275b` |
| 53 | `theorem` | [add_divInt](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/add-divint--dfedb6a46ce902856abba11a.md) | 238 | `result-track:dfedb6a46ce902856abba11a75353ea5f42d302c5b75d9ac76ed90a9ddc68410` |
| 54 | `lemma` | [intCast_div_eq_divInt](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/intcast-div-eq-divint--56a3bae5ba9bf9fd981661b2.md) | 244 | `result-track:56a3bae5ba9bf9fd981661b2b1dbe73b93b041e80c3d6b7e1c9a6cd856afb8a7` |
| 55 | `theorem` | [natCast_div_eq_divInt](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/natcast-div-eq-divint--e417aeda31e0c10d846bd302.md) | 246 | `result-track:e417aeda31e0c10d846bd302df2325306d19afb8c27c8e1e6da678fe86575c68` |
| 56 | `theorem` | [divInt_mul_divInt_cancel](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/divint-mul-divint-cancel--e8f3fa087903d401f098b1b7.md) | 248 | `result-track:e8f3fa087903d401f098b1b7f17d11bb2f48c7f913bfd9c6435e818f79dc4fdf` |
| 57 | `theorem` | [coe_int_num_of_den_eq_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/coe-int-num-of-den-eq-one--8f26110d3fc56aae8a385e69.md) | 254 | `result-track:8f26110d3fc56aae8a385e69e6ed54ec00f94c6b9663135092c8bf0ae51a9111` |
| 58 | `lemma` | [eq_num_of_isInt](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/eq-num-of-isint--ee1e6650020e47b5fabe7704.md) | 259 | `result-track:ee1e6650020e47b5fabe7704c6982dfd3b4494ba7af32ced63af0f19edc9f192` |
| 59 | `theorem` | [den_eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/den-eq-one-iff--2edbb741c155e746fca5eefa.md) | 263 | `result-track:2edbb741c155e746fca5eefaf0fce0c0f95cd104c0ac5b6c133e65bf44f0d17e` |
| 60 | `instance` | [canLift](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/canlift--973ac59a2d8f0ce0c2bc84ae.md) | 266 | `declaration-track:973ac59a2d8f0ce0c2bc84ae72b66066a169753f67c59b560601cbde8215ef45` |
| 61 | `def` | [divCasesOn](../../../../../mathematics/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/declarations/divcaseson--13837edd71763c5eccf6a2e8.md) | 281 | `declaration-track:13837edd71763c5eccf6a2e8a58901cf57028ab73979bfb3c985ba17aed590a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
