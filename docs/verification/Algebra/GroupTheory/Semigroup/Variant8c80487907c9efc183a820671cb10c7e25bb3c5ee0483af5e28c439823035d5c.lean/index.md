# Verification target: GRWTSK.Algebra.GroupTheory.Semigroup.Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4f438f7ce2bad8d7a0dcb9911d76948e6a194f8",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4f438f7ce2bad8d7a0dcb9911d76948e6a194f8`.

Source path: `GRWTSK/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean.json)

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
| 1 | `class` | [IsLeftCancelMul](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/isleftcancelmul--5120d0e79072848370719882.md) | 31 | `declaration-track:5120d0e7907284837071988226c091c661f0ea3ce6a1543f50590dc92a4873e8` |
| 2 | `class` | [IsRightCancelMul](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/isrightcancelmul--efc4e9180fed119189c46afe.md) | 35 | `declaration-track:efc4e9180fed119189c46afe57ccc5fc2e0d31caa7dfcacd9110188d4ea09c82` |
| 3 | `class` | [IsCancelMul](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/iscancelmul--ba3b3bbbfb712ec3abf2de0a.md) | 40 | `declaration-track:ba3b3bbbfb712ec3abf2de0a051de363ade88d284d135f4e8d838ace8fe4af5a` |
| 4 | `class` | [IsLeftCancelAdd](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/isleftcanceladd--18f56f61e12c19b9c225be9d.md) | 43 | `declaration-track:18f56f61e12c19b9c225be9d43fa732e354aa22cedda3f67650cf709978669fa` |
| 5 | `class` | [IsRightCancelAdd](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/isrightcanceladd--87504678d4c416d60d8c4e97.md) | 51 | `declaration-track:87504678d4c416d60d8c4e97059ea605ba9d62f7f0c31d76d4b92cac1f47d1be` |
| 6 | `class` | [IsCancelAdd](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/iscanceladd--b2f0b56aa4ea69201b77f3da.md) | 60 | `declaration-track:b2f0b56aa4ea69201b77f3daa6227a9f16abe064fa1d8d3d83e30a2fab76322c` |
| 7 | `theorem` | [isCancelMul_iff_forall_isRegular](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/iscancelmul-iff-forall-isregular--bc5a969f736049cc0fa2258b.md) | 69 | `result-track:bc5a969f736049cc0fa2258b136259298f660b9e7f60de47c0c7fc4404f94cbd` |
| 8 | `theorem` | [IsLeftRegular.all](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/isleftregular-all--46f2d34a034b5b5d8969f326.md) | 76 | `result-track:46f2d34a034b5b5d8969f326138f9a70551674401fa8cb7f537659c0049ded7e` |
| 9 | `theorem` | [IsRightRegular.all](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/isrightregular-all--fa2911c725b6220153276cf4.md) | 81 | `result-track:fa2911c725b6220153276cf4e45e2b8ca2aa85cf10214edb8a90abab4df2580c` |
| 10 | `theorem` | [IsRegular.all](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/isregular-all--94a2d209daf95f01d2ce97a8.md) | 86 | `result-track:94a2d209daf95f01d2ce97a86dd2f34c98548363362588a345a9641bec682432` |
| 11 | `theorem` | [mul_left_cancel](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/mul-left-cancel--e0b2be8e462f38166b533c6a.md) | 95 | `result-track:e0b2be8e462f38166b533c6a13fcbdf5713700ff8897423a72c6814839045c30` |
| 12 | `theorem` | [mul_left_cancel_iff](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/mul-left-cancel-iff--6136dbf415b85801112367ac.md) | 99 | `result-track:6136dbf415b85801112367ac6f47e03e44a1247164a2822b2991748b0abdcc7a` |
| 13 | `theorem` | [mul_right_injective](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/mul-right-injective--e63a3831e7f90b7df3f46204.md) | 103 | `result-track:e63a3831e7f90b7df3f46204ec05dbc2f7dc13ea5eb5b2cdba54b08fb366c2e8` |
| 14 | `theorem` | [mul_right_inj](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/mul-right-inj--fc447a5bde40a7cd65389d8c.md) | 106 | `result-track:fc447a5bde40a7cd65389d8c5496fcbf1631455219606174447f371ededb7767` |
| 15 | `theorem` | [mul_ne_mul_right](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/mul-ne-mul-right--64749f63c6c56c3fbd5b2e09.md) | 110 | `result-track:64749f63c6c56c3fbd5b2e0918348815cd90bb696a86704f09dcfda062384ec1` |
| 16 | `theorem` | [mul_right_cancel](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/mul-right-cancel--3342a6f2b0f761063acb6057.md) | 120 | `result-track:3342a6f2b0f761063acb6057a1b407f2f774a9ed5a5059893fb407d6bd199545` |
| 17 | `theorem` | [mul_right_cancel_iff](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/mul-right-cancel-iff--607fdc66f987ca741e56c32b.md) | 124 | `result-track:607fdc66f987ca741e56c32b58a6cb43e558ba041f96ef545d44bc9260938117` |
| 18 | `theorem` | [mul_left_injective](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/mul-left-injective--95b2cb4d696048066a9b34ca.md) | 128 | `result-track:95b2cb4d696048066a9b34cabbc8440f412dde881b859e0d49f9aeab41e2da9d` |
| 19 | `theorem` | [mul_left_inj](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/mul-left-inj--eeaf2c56af0a8bf00fbb1bb2.md) | 131 | `result-track:eeaf2c56af0a8bf00fbb1bb2809c5cf776bf6baa4d36199defe090a576c31e8b` |
| 20 | `theorem` | [mul_ne_mul_left](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/mul-ne-mul-left--4f0529bdbb2684428b4dcd06.md) | 135 | `result-track:4f0529bdbb2684428b4dcd06d8178803d7246decdc63bfe8cb954c4e0637c4f6` |
| 21 | `class` | [Semigroup](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/semigroup--f619cd316d277a2752e42b4e.md) | 144 | `declaration-track:f619cd316d277a2752e42b4e5e365f9426bf378d1a2c96068987a96f5a1af3de` |
| 22 | `class` | [AddSemigroup](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/addsemigroup--b4521aa9f38eeb16d2b50fec.md) | 150 | `declaration-track:b4521aa9f38eeb16d2b50fecaf425b8eda99653ed7d6213605b1ed2cddb908a7` |
| 23 | `theorem` | [mul_assoc](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/mul-assoc--c863bf3bef5c789f3b904a08.md) | 161 | `result-track:c863bf3bef5c789f3b904a08fa1f04e8fef0339865e204ade742a5d9f0947317` |
| 24 | `class` | [IsAddCommutative](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/isaddcommutative--1760647d899b1c0fc501efdf.md) | 169 | `declaration-track:1760647d899b1c0fc501efdf188ee6bf188026b7760d3665e025c9569595ac6d` |
| 25 | `class` | [IsMulCommutative](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/ismulcommutative--6057c5885434168b1dda81d5.md) | 174 | `declaration-track:6057c5885434168b1dda81d561553141a6741b07b3ed48f6ec2ef28c7aee37b2` |
| 26 | `lemma` | [isMulCommutative_iff](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/ismulcommutative-iff--c1990e76c215fd62510159c3.md) | 181 | `result-track:c1990e76c215fd62510159c38a7d04211ced76597e2f77a44101923f0ed29405` |
| 27 | `lemma` | [mul_comm'](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/mul-comm--549623972f4c2792a1e7335e.md) | 194 | `result-track:549623972f4c2792a1e7335ecf156876c7d0b68c7b5fa84aa53cabd3f6f10981` |
| 28 | `class` | [AddCommMagma](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/addcommmagma--058a09e8c1ed9b772c139a56.md) | 201 | `declaration-track:058a09e8c1ed9b772c139a56c407f3b84464d6073647189105758aca903e0a16` |
| 29 | `class` | [CommMagma](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/commmagma--a6e74b2415b575da8d6d74c6.md) | 207 | `declaration-track:a6e74b2415b575da8d6d74c67b9bdb9ab83b592baad5c9b6375dbc2cb1f65bbd` |
| 30 | `class` | [CommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/commsemigroup--5ed8358b20a421db4109f388.md) | 215 | `declaration-track:5ed8358b20a421db4109f388e24257ed21dad30f167e272d7e479314ab579a8a` |
| 31 | `class` | [AddCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/addcommsemigroup--3b51c2a4ffe0c1059943c186.md) | 219 | `declaration-track:3b51c2a4ffe0c1059943c186308ca9b8f1af2cdfed90bc9bda2a0851ba41601c` |
| 32 | `theorem` | [mul_comm](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/mul-comm--f7e59d223311460543a422a4.md) | 228 | `result-track:f7e59d223311460543a422a4626bcf58e977ef98492171b5ceec1896859f2689` |
| 33 | `instance` | [CommMagma.to_isCommutative](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/commmagma-to-iscommutative--e1e9f25678a226ef534be85f.md) | 231 | `declaration-track:e1e9f25678a226ef534be85fccd450783c35058b9188f036b754dda5ab677c6b` |
| 34 | `lemma` | [isLeftRegular_iff_isRegular](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/isleftregular-iff-isregular--57bb9280f14d749591b068d7.md) | 234 | `result-track:57bb9280f14d749591b068d7e0f20044018f7d833018a2970863bbb784a282bd` |
| 35 | `lemma` | [isRightRegular_iff_isRegular](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/isrightregular-iff-isregular--33ae61e6ff767bb8e0a32cd8.md) | 238 | `result-track:33ae61e6ff767bb8e0a32cd8d9056a01e9b281c1bbaf33fc102a9eaaf9741b76` |
| 36 | `lemma` | [CommMagma.IsRightCancelMul.toIsLeftCancelMul](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/commmagma-isrightcancelmul-toisleftcancelmul--1c0938d31361f9306fae70d3.md) | 244 | `result-track:1c0938d31361f9306fae70d3f0c777c8bb8f029cbe7159e816124e7499caaa2a` |
| 37 | `lemma` | [CommMagma.IsLeftCancelMul.toIsRightCancelMul](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/commmagma-isleftcancelmul-toisrightcancelmul--8af174e3050c0cc385da65f6.md) | 251 | `result-track:8af174e3050c0cc385da65f6a94986cd9036772aab56d2cb121ba2f65637c96e` |
| 38 | `lemma` | [CommMagma.IsLeftCancelMul.toIsCancelMul](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/commmagma-isleftcancelmul-toiscancelmul--a87d8610878da4d054cd9278.md) | 258 | `result-track:a87d8610878da4d054cd92781026b004ad6237976950068f6529734e0a0f914e` |
| 39 | `lemma` | [CommMagma.IsRightCancelMul.toIsCancelMul](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/commmagma-isrightcancelmul-toiscancelmul--e5192b97f1c48ac63209df6b.md) | 264 | `result-track:e5192b97f1c48ac63209df6b4e3ea2d6b8dd91b1ed1b2a6b0da474418cb84e7e` |
| 40 | `class` | [LeftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/leftcancelsemigroup--b4fc78e441d337119c93522a.md) | 271 | `declaration-track:b4fc78e441d337119c93522abfd472b905c785afaa43a29e3db2cd60f7dcbbab` |
| 41 | `class` | [AddLeftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/addleftcancelsemigroup--3bb774a296dd7eafdea5ad65.md) | 284 | `declaration-track:3bb774a296dd7eafdea5ad657ea5b29c7ef02e478c47a2ea6e4d9f219ecd0d72` |
| 42 | `class` | [RightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/rightcancelsemigroup--ec5284c6650d449c26f34f17.md) | 298 | `declaration-track:ec5284c6650d449c26f34f179be1c161ae8d9cadc4272e7b8596833f76329c6c` |
| 43 | `class` | [AddRightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/declarations/addrightcancelsemigroup--07fb7a989fe1d6ff46d51010.md) | 305 | `declaration-track:07fb7a989fe1d6ff46d51010f6a2e907e1750cfd0f00345cc723bf84d295d011` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
