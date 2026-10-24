# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba9bda9cc76ce5a440bb52dcfe8ac14250d49201",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba9bda9cc76ce5a440bb52dcfe8ac14250d49201`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NeZero` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_of_sub_eq_zero'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/eq-of-sub-eq-zero--6156889f71a128cb85c66498.md) | 44 | `result-track:6156889f71a128cb85c664980f2860ad4741f9c8ba240fce3c84b1c83d6f9be6` |
| 2 | `theorem` | [pow_succ''](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/pow-succ--3e7fcc9c64159e3de86e19ff.md) | 50 | `result-track:3e7fcc9c64159e3de86e19ffe3832c8bc6e57212221a03b79e5ec9edeff667c5` |
| 3 | `class` | [MulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/mulzeroclass--94482f24c30147b13f9f3cc1.md) | 55 | `declaration-track:94482f24c30147b13f9f3cc1fbc9404df14695c6dbc28d491e42d1234269885f` |
| 4 | `class` | [IsLeftCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/isleftcancelmulzero--abfe8415cadd24e8c879ca04.md) | 63 | `declaration-track:abfe8415cadd24e8c879ca04a491597dbc9ebda83df734edd32450aea91877de` |
| 5 | `theorem` | [mul_left_cancel₀](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/mul-left-cancel--fa8d9bf2dc74ada1b732f63a.md) | 72 | `result-track:fa8d9bf2dc74ada1b732f63a42ac8ad7ee7c9e63d9bbc85ebf6710e76abd00fd` |
| 6 | `theorem` | [mul_right_injective₀](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/mul-right-injective--6407217473eb2b7e5b1f4b56.md) | 76 | `result-track:6407217473eb2b7e5b1f4b5677d9ef2f3edfed329d0d9fb745e9dc2b314ce0fd` |
| 7 | `class` | [IsRightCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/isrightcancelmulzero--26126d2cb1af142e5ec2f911.md) | 83 | `declaration-track:26126d2cb1af142e5ec2f9111b8bfe76052b5f2e818b65a141488cfc15166115` |
| 8 | `theorem` | [mul_right_cancel₀](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/mul-right-cancel--cff4aaa974842b9b5fc608db.md) | 92 | `result-track:cff4aaa974842b9b5fc608db959fcca3fee9f2274216770cf7d0eeee52f1dd1a` |
| 9 | `theorem` | [mul_left_injective₀](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/mul-left-injective--773ffa3c57fe6fa30d53e2bb.md) | 96 | `result-track:773ffa3c57fe6fa30d53e2bb05a2334385e9c1065749cfd38109c2c0986c1c50` |
| 10 | `class` | [IsCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/iscancelmulzero--da2c05505711640f92c19e92.md) | 103 | `declaration-track:da2c05505711640f92c19e92b44187709985dfb7c770b9580e949aef5711fda0` |
| 11 | `class` | [NoZeroDivisors](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/nozerodivisors--0c7f8cb9e7a5dfdf827a91eb.md) | 114 | `declaration-track:0c7f8cb9e7a5dfdf827a91ebd6e7d91e31a4e11c93c11bc9dbbe02fdddef0dc5` |
| 12 | `class` | [SemigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/semigroupwithzero--1396665688c96818f2f6c79f.md) | 122 | `declaration-track:1396665688c96818f2f6c79f185f29d825c400805ca21b7322482ca89a669022` |
| 13 | `class` | [MulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/mulzerooneclass--a316e73603f4d7da53e27c7f.md) | 126 | `declaration-track:a316e73603f4d7da53e27c7fff2b58f5fc32c00b8f9b61bf1a3e9a6d04674c8f` |
| 14 | `class` | [MonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/monoidwithzero--9b69521ed2bda12f3aae5602.md) | 131 | `declaration-track:9b69521ed2bda12f3aae56026e20f7d06d9f82ab0939b54a573a6b97c406597b` |
| 15 | `class` | [CancelMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/cancelmonoidwithzero--01f5e06b726bf59531cec47a.md) | 136 | `declaration-track:01f5e06b726bf59531cec47a76c3112f20d484e629e61af43938dc40c9e859f9` |
| 16 | `class` | [CommMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/commmonoidwithzero--229d874ddca7c894d78dea05.md) | 141 | `declaration-track:229d874ddca7c894d78dea0543b0a51de2005fe0aa8bd1d693db0157cd1cb021` |
| 17 | `lemma` | [IsLeftCancelMulZero.to_isRightCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/isleftcancelmulzero-to-isrightcancelmulzero--890bac7836e5c667a2db739c.md) | 148 | `result-track:890bac7836e5c667a2db739ce9ccf35e81696ad5cdac45b46f12203d4c82b2f9` |
| 18 | `lemma` | [IsRightCancelMulZero.to_isLeftCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/isrightcancelmulzero-to-isleftcancelmulzero--ccf2f35cbb9d60450deb513d.md) | 154 | `result-track:ccf2f35cbb9d60450deb513d73c768e1f8c6b1cdc5cdf334b977254f7507301c` |
| 19 | `lemma` | [IsLeftCancelMulZero.to_isCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/isleftcancelmulzero-to-iscancelmulzero--a4e089223a8bc251533d2987.md) | 160 | `result-track:a4e089223a8bc251533d29874b3bdf0d06c76b4d1cb8f61a15b5b5818305329f` |
| 20 | `lemma` | [IsRightCancelMulZero.to_isCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/isrightcancelmulzero-to-iscancelmulzero--1562c833a9d3de68950cf49f.md) | 165 | `result-track:1562c833a9d3de68950cf49f118e09e66cc880ad3a54ad2b6a38187bedc66de0` |
| 21 | `class` | [CancelCommMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/cancelcommmonoidwithzero--967a31e1d416b5f7b4d1ecc2.md) | 175 | `declaration-track:967a31e1d416b5f7b4d1ecc2c037889933094c385c6b66efd99e0da26e5f3cce` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/instance--134013f514586adddb857381.md) | 181 | `declaration-track:134013f514586adddb857381514a90a77bbd5a2f29169314615f14031e265ad6` |
| 23 | `class` | [GroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/groupwithzero--0b283ab321587424cd5849d9.md) | 191 | `declaration-track:0b283ab321587424cd5849d9f5ca308f39524b88290ce85a141b7591be155986` |
| 24 | `lemma` | [mul_inv_cancel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/mul-inv-cancel--b4205aa38e4438195e5069ad.md) | 201 | `result-track:b4205aa38e4438195e5069adbffc2d3f5de09b98657a5e15651b041239378a7f` |
| 25 | `class` | [CommGroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/commgroupwithzero--170d7f9233dae2f3c0570a1d.md) | 209 | `declaration-track:170d7f9233dae2f3c0570a1dceca0550bb79c3dfbb1539aa110fe29c899b3fdd` |
| 26 | `instance` | [NeZero.one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/nezero-one--eebb8a19dc665f3b525312f8.md) | 219 | `declaration-track:eebb8a19dc665f3b525312f8f26a0abe22290b67ced51c63b169765813adfc74` |
| 27 | `theorem` | [pullback_nonzero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/pullback-nonzero--114455caef0c3d1ef0715e98.md) | 233 | `result-track:114455caef0c3d1ef0715e984ab755c92c4ed1292e4c199a1997967add046cda` |
| 28 | `theorem` | [mul_eq_zero_of_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/mul-eq-zero-of-left--7d130468cc2b595f44a2ad14.md) | 246 | `result-track:7d130468cc2b595f44a2ad14b989e6e36ce97be0d3de58942ce36c22aead347c` |
| 29 | `theorem` | [mul_eq_zero_of_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/mul-eq-zero-of-right--e8902230f99a5ff7f6e16bce.md) | 249 | `result-track:e8902230f99a5ff7f6e16bce023386c64840631d6c5ddbb6b8f1a6bd26b592b8` |
| 30 | `theorem` | [mul_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/mul-eq-zero--c104972832bcf1420e2a867c.md) | 257 | `result-track:c104972832bcf1420e2a867ceca98c1a028c5387347827483c05d0082dbe2e29` |
| 31 | `theorem` | [zero_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/zero-eq-mul--ecdc597ba0cef27d8c78ccf4.md) | 265 | `result-track:ecdc597ba0cef27d8c78ccf4864109923fc1622c589e714679d4383d2e264aa8` |
| 32 | `theorem` | [mul_ne_zero_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/mul-ne-zero-iff--ac94bd04838958c20b32f56b.md) | 270 | `result-track:ac94bd04838958c20b32f56bc25801a0a4a6b49bc78ae4f1840bac349cecc1e3` |
| 33 | `theorem` | [mul_eq_zero_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/mul-eq-zero-comm--7f22c9d76afd21cd862e33cd.md) | 275 | `result-track:7f22c9d76afd21cd862e33cd0fd0394e408c1341484df3cd721bfd7f4482d833` |
| 34 | `theorem` | [mul_ne_zero_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/mul-ne-zero-comm--2b7a2282c04ca5edaafb2dfa.md) | 281 | `result-track:2b7a2282c04ca5edaafb2dfa45603bfdce23f7334e87863fad7601b89bfbe1f5` |
| 35 | `theorem` | [mul_self_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/mul-self-eq-zero--b850ac6615de4bc810be0dd4.md) | 284 | `result-track:b850ac6615de4bc810be0dd418552660c813dcc28343b3b5313cd12499052a90` |
| 36 | `theorem` | [zero_eq_mul_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/zero-eq-mul-self--c2528862418214ee9da80576.md) | 287 | `result-track:c2528862418214ee9da805762f9b574e52a9451f4586409883677087964595bb` |
| 37 | `theorem` | [mul_self_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/mul-self-ne-zero--032a023ec14cb41fbfd2f8cd.md) | 290 | `result-track:032a023ec14cb41fbfd2f8cdbcf9eea3d178f12259ab61567a845dce64d0c95e` |
| 38 | `theorem` | [zero_ne_mul_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/declarations/zero-ne-mul-self--345c2174c380bdc9965e74a0.md) | 293 | `result-track:345c2174c380bdc9965e74a0024938b9f42525386b0b2627bc7a2979cbda619a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
