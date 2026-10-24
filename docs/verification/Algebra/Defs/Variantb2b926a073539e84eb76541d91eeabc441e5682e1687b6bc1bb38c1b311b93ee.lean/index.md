# Verification target: GRWTSK.Algebra.Defs.Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99f5c94b11b95b41da015a772f3ee4b444bb12ff",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99f5c94b11b95b41da015a772f3ee4b444bb12ff`.

Source path: `GRWTSK/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MkIffOfInductiveProp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Notation3` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PosMulMono](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/posmulmono--450f91cb9eee3479b0075185.md) | 95 | `declaration-track:450f91cb9eee3479b0075185464dec143935084385a46ab9613e908b2ebfcd23` |
| 2 | `class` | [PosMulStrictMono](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/posmulstrictmono--61fbc1535ed0df4b3eddc04c.md) | 102 | `declaration-track:61fbc1535ed0df4b3eddc04c5deccba918905bf632be38fb3fa0143e986383b6` |
| 3 | `class` | [PosMulReflectLT](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/posmulreflectlt--d85136f8565f7021c427afa2.md) | 109 | `declaration-track:d85136f8565f7021c427afa200e34cf67124b2cd189a41187a2685b3a4d43a70` |
| 4 | `class` | [PosMulReflectLE](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/posmulreflectle--b986ae77a9b1eff173a62d13.md) | 116 | `declaration-track:b986ae77a9b1eff173a62d1377ab8a2d7528c5898c2f2b5066038b04931fa716` |
| 5 | `class` | [MulPosMono](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mulposmono--b3470c5d37ee1affb680fda0.md) | 123 | `declaration-track:b3470c5d37ee1affb680fda0d5af908d035ba0e0aa31662d886895acbb034177` |
| 6 | `class` | [MulPosStrictMono](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mulposstrictmono--d331fd15b61ff15471e6c8de.md) | 130 | `declaration-track:d331fd15b61ff15471e6c8de4b89d43960a7c9d1a79a64c733ad678b3f40fbf4` |
| 7 | `class` | [MulPosReflectLT](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mulposreflectlt--7ae2cb6b10f2467a97b646b7.md) | 137 | `declaration-track:7ae2cb6b10f2467a97b646b721a3dcd068d108d4404a25f1bcbbdc8372136eda` |
| 8 | `class` | [MulPosReflectLE](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mulposreflectle--f87973e04fa737d8f98eaf83.md) | 144 | `declaration-track:f87973e04fa737d8f98eaf830f048d6c42067c2ba29d7c4e0507c266a531f528` |
| 9 | `instance` | [PosMulMono.to_covariantClass_pos_mul_le](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/posmulmono-to-covariantclass-pos-mul-le--c2400b66ca2d1bc50fa68e0e.md) | 155 | `declaration-track:c2400b66ca2d1bc50fa68e0ed909ada235d36bd64ca20e62739f5a86ba1ff7e7` |
| 10 | `instance` | [MulPosMono.to_covariantClass_pos_mul_le](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mulposmono-to-covariantclass-pos-mul-le--e813eb2b6b980c77e8f148db.md) | 159 | `declaration-track:e813eb2b6b980c77e8f148dbbff4951d6c3f7d47cd31958622edf06fb74220ee` |
| 11 | `instance` | [PosMulReflectLT.to_contravariantClass_pos_mul_lt](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/posmulreflectlt-to-contravariantclass-pos-mul-lt--100fc2376dccc31d88bfa8b6.md) | 163 | `declaration-track:100fc2376dccc31d88bfa8b668926eb47404953066bd2a9140a5b99373b6df07` |
| 12 | `instance` | [MulPosReflectLT.to_contravariantClass_pos_mul_lt](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mulposreflectlt-to-contravariantclass-pos-mul-lt--bde5a80467c5d0dd9d1e5a94.md) | 167 | `declaration-track:bde5a80467c5d0dd9d1e5a94bf85e14176acbb54c2156c715956942c865553c0` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/instance--e73c68b45f09e181282d6550.md) | 171 | `declaration-track:e73c68b45f09e181282d6550915840152e6a7bcedaeac3171caa0d32066a3c38` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/instance--1e4bc8cad28f24def7b46aa8.md) | 174 | `declaration-track:1e4bc8cad28f24def7b46aa8452d1aba8eda2fa97ecbed319c2a79392ab631db` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/instance--7ef314fd0dcc3db01275f57c.md) | 177 | `declaration-track:7ef314fd0dcc3db01275f57cf950ec4c44284e25e87b06a2d561d830dcfa77f6` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/instance--38262dcf8a58d2b66feaa823.md) | 180 | `declaration-track:38262dcf8a58d2b66feaa8235e97af38f32470f2ad9dd2ebae660fe2d34c6dc7` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/instance--d270454b2d9ee00e9f14f631.md) | 183 | `declaration-track:d270454b2d9ee00e9f14f631f127c91590e1348e93a64c9dce60b70316e53963` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/instance--dd3b74963e9714ece6486a94.md) | 186 | `declaration-track:dd3b74963e9714ece6486a943b6b067df6a53c8cd3b88b96fdc69b9ec54c5edc` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/instance--50f1eb0e6c13a4b7982313c5.md) | 189 | `declaration-track:50f1eb0e6c13a4b7982313c563076302a65aad26c2bb08e99b0184d7962e0d06` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/instance--2b5f73b707cb41c731a9d51b.md) | 192 | `declaration-track:2b5f73b707cb41c731a9d51ba2cc7bc1e9af2f6044be3b7ad094845bfb9e4a3a` |
| 21 | `theorem` | [mul_le_mul_of_nonneg_left](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-le-mul-of-nonneg-left--c862e43280edc6d338499167.md) | 196 | `result-track:c862e43280edc6d338499167ea2fd3c5b461085ee6e372a7c694ccaed6c1337e` |
| 22 | `theorem` | [mul_le_mul_of_nonneg_right](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-le-mul-of-nonneg-right--028c60dbb79726db4650aac2.md) | 200 | `result-track:028c60dbb79726db4650aac2ee7aa2e669eef5628332dd1b8a07a10feeda5695` |
| 23 | `theorem` | [mul_lt_mul_of_pos_left](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-lt-mul-of-pos-left--67a0baf78aa0b86d09a8e1ed.md) | 204 | `result-track:67a0baf78aa0b86d09a8e1eddba5cf9bb1adc91ea4f4767f7184dd57b5e6e7e5` |
| 24 | `theorem` | [mul_lt_mul_of_pos_right](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-lt-mul-of-pos-right--fda57408313a998804441a70.md) | 208 | `result-track:fda57408313a998804441a70deb46c7146afd893a3ff632d29f215547eb1e2ae` |
| 25 | `theorem` | [lt_of_mul_lt_mul_left](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/lt-of-mul-lt-mul-left--5b51d407fdbfa21e85a2ce53.md) | 211 | `result-track:5b51d407fdbfa21e85a2ce53a6b3d8e4d8ee63c38784333cff66d938f8b157c0` |
| 26 | `theorem` | [lt_of_mul_lt_mul_right](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/lt-of-mul-lt-mul-right--77b60a57126717f681001657.md) | 214 | `result-track:77b60a57126717f6810016579d90ee434bfdef0fc5980e7df89fac0249c971ff` |
| 27 | `theorem` | [le_of_mul_le_mul_left](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/le-of-mul-le-mul-left--ca5f831c0d3fc581431f0fbf.md) | 217 | `result-track:ca5f831c0d3fc581431f0fbf31d0c424e1b769bb6b2aed4c2dfeea5ee9235269` |
| 28 | `theorem` | [le_of_mul_le_mul_right](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/le-of-mul-le-mul-right--6b319f05c984fdcb1f4d2243.md) | 220 | `result-track:6b319f05c984fdcb1f4d2243d48ef95783bdf9f21d1766577201d3ac3a66f195` |
| 29 | `theorem` | [mul_lt_mul_left](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-lt-mul-left--c23cde04d9eb8a49e93f85b5.md) | 229 | `result-track:c23cde04d9eb8a49e93f85b5037311184645f74c09c6d6f9f7c72a0f906d9912` |
| 30 | `theorem` | [mul_lt_mul_right](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-lt-mul-right--5e50899a11babeb4a0c6f9b0.md) | 234 | `result-track:5e50899a11babeb4a0c6f9b06a3978cc01cf90cc963cfedcc24a23738a3e6272` |
| 31 | `theorem` | [mul_le_mul_left](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-le-mul-left--fa5c0fd9adffc60df21ef696.md) | 239 | `result-track:fa5c0fd9adffc60df21ef6964c639ec2dce609013b298565b2c765cd0430a8c5` |
| 32 | `theorem` | [mul_le_mul_right](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-le-mul-right--2c34dc02e3e8da9040cf0daa.md) | 243 | `result-track:2c34dc02e3e8da9040cf0daa5e94aa5e4f512454a098e2e9144667b6c7961165` |
| 33 | `theorem` | [mul_le_mul_of_nonneg](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-le-mul-of-nonneg--393fea48ce865f7274b9b34d.md) | 251 | `result-track:393fea48ce865f7274b9b34da03327e501557b67efdd226c421b24d430d9ce6c` |
| 34 | `theorem` | [mul_le_mul_of_nonneg'](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-le-mul-of-nonneg--52e3f703018841859b087be5.md) | 255 | `result-track:52e3f703018841859b087be548c1cd63474213ddb46f3853f5778953d031a0bb` |
| 35 | `theorem` | [mul_lt_mul_of_le_of_lt_of_pos_of_nonneg](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-lt-mul-of-le-of-lt-of-pos-of-nonneg--4acf81e82c4439662e27c07e.md) | 259 | `result-track:4acf81e82c4439662e27c07ee9a9e724c8bb1854f43a3b5db0497935064dbdca` |
| 36 | `theorem` | [mul_lt_mul_of_le_of_lt_of_nonneg_of_pos](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-lt-mul-of-le-of-lt-of-nonneg-of-pos--4e011c53023ce0c69ecaef8a.md) | 265 | `result-track:4e011c53023ce0c69ecaef8aa9f4e8cbcf78a72916559a53b934e93f21d714e3` |
| 37 | `theorem` | [mul_lt_mul_of_lt_of_le_of_nonneg_of_pos](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-lt-mul-of-lt-of-le-of-nonneg-of-pos--8d3cba9af4b08cd6fc47be1a.md) | 271 | `result-track:8d3cba9af4b08cd6fc47be1adc135c530bae3e41ed7fef52a38acf26b8ef2873` |
| 38 | `theorem` | [mul_lt_mul_of_lt_of_le_of_pos_of_nonneg](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-lt-mul-of-lt-of-le-of-pos-of-nonneg--18e7a986a501a41c9a715211.md) | 277 | `result-track:18e7a986a501a41c9a7152113e1609676c6b55b58b0edcf324337da0cc9d07ed` |
| 39 | `theorem` | [mul_lt_mul_of_pos](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-lt-mul-of-pos--7ab986446cb9ff6ca8c53fb4.md) | 283 | `result-track:7ab986446cb9ff6ca8c53fb41b1feb982e9339c1ccad1b3078b46f7b1abcdc6a` |
| 40 | `theorem` | [mul_lt_mul_of_pos'](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-lt-mul-of-pos--47a10f77c7e7f4a168708609.md) | 287 | `result-track:47a10f77c7e7f4a168708609648206bda7bacf9a59f6824b7ae09e81837cc949` |
| 41 | `theorem` | [mul_le_of_mul_le_of_nonneg_left](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-le-of-mul-le-of-nonneg-left--475827809f428ce06fda7c70.md) | 298 | `result-track:475827809f428ce06fda7c70b4e11c19be9be435c3a978e0015fba3787498e03` |
| 42 | `theorem` | [mul_lt_of_mul_lt_of_nonneg_left](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-lt-of-mul-lt-of-nonneg-left--e1a2d832e5166b7580ef39b2.md) | 302 | `result-track:e1a2d832e5166b7580ef39b2c697b496567287d7b7e267152c10c875dd4d2e89` |
| 43 | `theorem` | [le_mul_of_le_mul_of_nonneg_left](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/le-mul-of-le-mul-of-nonneg-left--334cf849f92edb0ac7824ad6.md) | 306 | `result-track:334cf849f92edb0ac7824ad6c5d11e3ea342dc81474ed2d49f7ab5461fba5abb` |
| 44 | `theorem` | [lt_mul_of_lt_mul_of_nonneg_left](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/lt-mul-of-lt-mul-of-nonneg-left--c7e4fe88825d40e12bfab3fa.md) | 310 | `result-track:c7e4fe88825d40e12bfab3fa5205b9400b856648fc5f0eddcff959359770969d` |
| 45 | `theorem` | [mul_le_of_mul_le_of_nonneg_right](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-le-of-mul-le-of-nonneg-right--d6e98758cabc97808ca756fe.md) | 314 | `result-track:d6e98758cabc97808ca756fe21913b59f214a157906b06a37990338d789d8bbc` |
| 46 | `theorem` | [mul_lt_of_mul_lt_of_nonneg_right](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mul-lt-of-mul-lt-of-nonneg-right--c31719c30ed16446b0d7e8f8.md) | 318 | `result-track:c31719c30ed16446b0d7e8f87e78a73294feabe4350bac9403fdc80cc1d1009a` |
| 47 | `theorem` | [le_mul_of_le_mul_of_nonneg_right](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/le-mul-of-le-mul-of-nonneg-right--8a0b7592c6d9e5cded419686.md) | 322 | `result-track:8a0b7592c6d9e5cded4196866bf54c15e2a8fb1db5e9fc1b6f0faf55b5a42e52` |
| 48 | `theorem` | [lt_mul_of_lt_mul_of_nonneg_right](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/lt-mul-of-lt-mul-of-nonneg-right--59b4b2ef5df431b05d2d4460.md) | 326 | `result-track:59b4b2ef5df431b05d2d4460d957d7b50af8a86d9184d106bcc83750d9c670a8` |
| 49 | `theorem` | [posMulMono_iff_mulPosMono](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/posmulmono-iff-mulposmono--7187a20e709949ff2fccb726.md) | 332 | `result-track:7187a20e709949ff2fccb726e403018b6673f66774300be6651923322bf4eef0` |
| 50 | `theorem` | [PosMulMono.toMulPosMono](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/posmulmono-tomulposmono--005100769e505e78833f5ba1.md) | 335 | `result-track:005100769e505e78833f5ba133d87d763096e49999640ebe45061dcac3d80fc4` |
| 51 | `theorem` | [posMulStrictMono_iff_mulPosStrictMono](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/posmulstrictmono-iff-mulposstrictmono--1b47d3b351ddfa6c58b5829d.md) | 337 | `result-track:1b47d3b351ddfa6c58b5829d9f9ab25cc0e0db1590e4827928b0d835ddeefc7e` |
| 52 | `theorem` | [PosMulStrictMono.toMulPosStrictMono](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/posmulstrictmono-tomulposstrictmono--78d896c9f3dbaf1d65d51b9c.md) | 340 | `result-track:78d896c9f3dbaf1d65d51b9c9c6fe204a60add9831fa05662c9762567264e6d7` |
| 53 | `theorem` | [posMulReflectLE_iff_mulPosReflectLE](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/posmulreflectle-iff-mulposreflectle--64e7819ca0a8801c2c874d3d.md) | 343 | `result-track:64e7819ca0a8801c2c874d3d1a9366e37e3896f9e6f768659e59b5da9a0c84ea` |
| 54 | `theorem` | [PosMulReflectLE.toMulPosReflectLE](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/posmulreflectle-tomulposreflectle--3862af9121268bba9af081aa.md) | 346 | `result-track:3862af9121268bba9af081aa10ae9a2d4cf759859843d91e71091b170898790c` |
| 55 | `theorem` | [posMulReflectLT_iff_mulPosReflectLT](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/posmulreflectlt-iff-mulposreflectlt--d8e75baa7b83c372abe10e06.md) | 349 | `result-track:d8e75baa7b83c372abe10e0602351008bea0bd4f4bed9b25a602b9f839c1b1aa` |
| 56 | `theorem` | [PosMulReflectLT.toMulPosReflectLT](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/posmulreflectlt-tomulposreflectlt--c460935e43fc4c94918107cd.md) | 352 | `result-track:c460935e43fc4c94918107cd80085af4c3f119929f476b6898e42155e55e447c` |
| 57 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/instance--315da21232349a4bcc1411f1.md) | 362 | `declaration-track:315da21232349a4bcc1411f1921b5fea3cb0fb24f3c83db33f2e831a37077c1c` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/instance--46bdb6cfc0a79f8fa8713a61.md) | 367 | `declaration-track:46bdb6cfc0a79f8fa8713a6127f904157303386fc8a0716f217695658f5687e9` |
| 59 | `theorem` | [PosMulReflectLE.toPosMulStrictMono](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/posmulreflectle-toposmulstrictmono--a73af6c02afd0d38865419b6.md) | 371 | `result-track:a73af6c02afd0d38865419b617f58690d999d6afedb617f0465033ca4e84c89d` |
| 60 | `theorem` | [MulPosReflectLE.toMulPosStrictMono](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mulposreflectle-tomulposstrictmono--110023cbfb05d40ae9f7ddb0.md) | 374 | `result-track:110023cbfb05d40ae9f7ddb05953545cfba219a0d6794cd87b85be5e4433973e` |
| 61 | `theorem` | [posMulStrictMono_iff_posMulReflectLE](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/posmulstrictmono-iff-posmulreflectle--8c302dcd9f7a558e88301fd4.md) | 377 | `result-track:8c302dcd9f7a558e88301fd47809d2c31cf8fcbdac235050816c25566ad951b0` |
| 62 | `theorem` | [mulPosStrictMono_iff_mulPosReflectLE](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mulposstrictmono-iff-mulposreflectle--a717df463a65b6f625604b76.md) | 380 | `result-track:a717df463a65b6f625604b762ed41be7557b1324a2c68f6eb979781102a17878` |
| 63 | `theorem` | [PosMulReflectLT.toPosMulMono](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/posmulreflectlt-toposmulmono--ef08c5598438345d8acb6f98.md) | 383 | `result-track:ef08c5598438345d8acb6f9863a3270bea84d5301591301dee3ee6086551f4e8` |
| 64 | `theorem` | [MulPosReflectLT.toMulPosMono](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mulposreflectlt-tomulposmono--37034a649e00fc1c3b5f2c05.md) | 386 | `result-track:37034a649e00fc1c3b5f2c05f59357b7ece86267a89c7279ae8a2f0d434d7388` |
| 65 | `theorem` | [PosMulMono.toPosMulReflectLT](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/posmulmono-toposmulreflectlt--d573da9724dd64be88f20bf6.md) | 389 | `result-track:d573da9724dd64be88f20bf6817bcabef95c4d7fb77aa8e3c6d777ad6e144cf8` |
| 66 | `theorem` | [MulPosMono.toMulPosReflectLT](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mulposmono-tomulposreflectlt--a833305b7d1f81ae551363d9.md) | 392 | `result-track:a833305b7d1f81ae551363d92899c61834cbe096471bce862293e38dcdce35bd` |
| 67 | `theorem` | [posMulMono_iff_posMulReflectLT](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/posmulmono-iff-posmulreflectlt--77cf0c1de00708ae008d7a54.md) | 399 | `result-track:77cf0c1de00708ae008d7a54d843b32515a2e83f21b98f2604beb3dd962f1dbb` |
| 68 | `theorem` | [mulPosMono_iff_mulPosReflectLT](../../../../mathematics/Algebra/Defs/Variantb2b926a073539e84eb76541d91eeabc441e5682e1687b6bc1bb38c1b311b93ee.lean/declarations/mulposmono-iff-mulposreflectlt--e15e263d1c9d4e27f7c784b7.md) | 402 | `result-track:e15e263d1c9d4e27f7c784b702269fad25e4cdb9bddcb33c539de12cba7091f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
