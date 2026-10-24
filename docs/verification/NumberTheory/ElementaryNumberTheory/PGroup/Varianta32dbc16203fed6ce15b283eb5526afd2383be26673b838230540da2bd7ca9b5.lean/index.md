# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PGroup.Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9553a8a9e6494ed976482ce11813a26519cba29",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9553a8a9e6494ed976482ce11813a26519cba29`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Cyclic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPGroup](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/ispgroup--f7d00716a0a6658911e0b38d.md) | 22 | `declaration-track:f7d00716a0a6658911e0b38d83a423d9bf443c335b919a1f0202ea0be86b4b95` |
| 2 | `theorem` | [iff_orderOf](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/iff-orderof--b369bfb9bd91c840bb24156f.md) | 29 | `result-track:b369bfb9bd91c840bb24156fdc047fd2b6a40996e45d00e7166e5b511d2c69c4` |
| 3 | `theorem` | [of_card](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/of-card--d9d0d0ee65a77c148cf6946b.md) | 36 | `result-track:d9d0d0ee65a77c148cf6946b3de816b3725488d0ee7dd46880af964dddf57f63` |
| 4 | `theorem` | [of_bot](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/of-bot--0a7426988b157b5aa3dc6d86.md) | 39 | `result-track:0a7426988b157b5aa3dc6d8648a5c7350aa1cfdf84f5f578bdf6fce589d3f55a` |
| 5 | `theorem` | [iff_card](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/iff-card--cbf82d21e0bdb27a6142f75a.md) | 42 | `result-track:cbf82d21e0bdb27a6142f75a718d4c3c91a226f7728592f4fa0d2893a6f4ea87` |
| 6 | `theorem` | [of_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/of-injective--bc6fcdbb3bd551bed0541eae.md) | 62 | `result-track:bc6fcdbb3bd551bed0541eaed5ece1815bfcda13820ded7ad8e542500e17bf50` |
| 7 | `theorem` | [to_subgroup](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/to-subgroup--45bd57c77dc84bda583e074c.md) | 67 | `result-track:45bd57c77dc84bda583e074c9127c6aaf800191d8544ec94ad1c97dfd1a3706c` |
| 8 | `theorem` | [of_surjective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/of-surjective--b720a7b3da188a6120e976fc.md) | 70 | `result-track:b720a7b3da188a6120e976fc6e7a329fa087de057fc11e31af222e2a70c119d7` |
| 9 | `theorem` | [to_quotient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/to-quotient--1e2cb379f19b496229676a0b.md) | 75 | `result-track:1e2cb379f19b496229676a0b1e8fb26bc7366add76bfe95e6ed5352746d23641` |
| 10 | `theorem` | [of_equiv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/of-equiv--2b4352d36115481a620715a0.md) | 78 | `result-track:2b4352d36115481a620715a0f7761613669f505a51cacf9fb358c9a7e926ec9a` |
| 11 | `theorem` | [orderOf_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/orderof-coprime--22281f2a49e29dadf223e6c0.md) | 81 | `result-track:22281f2a49e29dadf223e6c0c42a33f314454ec1fe381edef375037d3e765ce4` |
| 12 | `def` | [powEquiv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/powequiv--fc2ac158f4493027f58212b8.md) | 86 | `declaration-track:fc2ac158f4493027f58212b87ec0b666581598a669f2fd379f8422d80958ac9f` |
| 13 | `theorem` | [powEquiv_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/powequiv-apply--13c45be8887e9a5973709824.md) | 99 | `result-track:13c45be8887e9a5973709824229047b60825c54c9a68c9b9d57ce58d0776df18` |
| 14 | `theorem` | [powEquiv_symm_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/powequiv-symm-apply--08e36b1ffa9d2668dd9a8abf.md) | 103 | `result-track:08e36b1ffa9d2668dd9a8abfc1a09fbcc7989aa489b3ffe3471622bcd25782b9` |
| 15 | `abbrev` | [powEquiv'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/powequiv--4f068105b099eea81fc68314.md) | 109 | `declaration-track:4f068105b099eea81fc683147ae99b314ee11792b9a8ee2bfdee13a90e164358` |
| 16 | `theorem` | [index](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/index--f9a1015bbddfa065fa1d3417.md) | 112 | `result-track:f9a1015bbddfa065fa1d3417b6a631bda3e23cdae29fe24783283e5c17512321` |
| 17 | `theorem` | [card_eq_or_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/card-eq-or-dvd--cd73a5e0bf3c84cbc43fbddb.md) | 120 | `result-track:cd73a5e0bf3c84cbc43fbddbee907dd8085c973d6d245a6230d3160e31a3702c` |
| 18 | `theorem` | [nontrivial_iff_card](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/nontrivial-iff-card--36ea1abe0e8e05dcfd3e5492.md) | 130 | `result-track:36ea1abe0e8e05dcfd3e5492f5969db7b60c7ffb6879e8009b7417df526f5fb2` |
| 19 | `theorem` | [card_orbit](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/card-orbit--11f6d24032e3720a5761401d.md) | 143 | `result-track:11f6d24032e3720a5761401db5299a6e4be042dfa788df8269c8963090e080b4` |
| 20 | `theorem` | [card_modEq_card_fixedPoints](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/card-modeq-card-fixedpoints--5f1cab0d5e81c927b43b4869.md) | 154 | `result-track:5f1cab0d5e81c927b43b4869f2c234657a2281b86a925f0f96c7146da48ca501` |
| 21 | `theorem` | [nonempty_fixed_point_of_prime_not_dvd_card](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/nonempty-fixed-point-of-prime-not-dvd-card--8ddd40ad600859fd9dcacd47.md) | 189 | `result-track:8ddd40ad600859fd9dcacd47e24bc74e87190b8f9ca8eb52741882b0b649d192` |
| 22 | `theorem` | [exists_fixed_point_of_prime_dvd_card_of_fixed_point](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/exists-fixed-point-of-prime-dvd-card-of-fixed-point--ebf4769934a2884a4cdc04e7.md) | 201 | `result-track:ebf4769934a2884a4cdc04e7da42ca183a35ea945a5df4c76ee27f692a19fcfd` |
| 23 | `theorem` | [center_nontrivial](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/center-nontrivial--450a69884c71e7ffb5f6ece1.md) | 212 | `result-track:450a69884c71e7ffb5f6ece18fca9bfc8c21c72c3fc6ea952ffdacc80a7ce86f` |
| 24 | `theorem` | [bot_lt_center](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/bot-lt-center--fcb6e7fff5f24c82318dd931.md) | 222 | `result-track:fcb6e7fff5f24c82318dd931a8f7b343a37a69f4d543055452607e5675cc8e75` |
| 25 | `theorem` | [to_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/to-le--0661e1493941673455abeedd.md) | 229 | `result-track:0661e1493941673455abeedd44f55901282a8a09f2792d3699c033e228e52a00` |
| 26 | `theorem` | [to_inf_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/to-inf-left--b10068481d259a375c5fd5fa.md) | 235 | `result-track:b10068481d259a375c5fd5fa41d2b787b45eddf029db265dd811ab607b2ec595` |
| 27 | `theorem` | [to_inf_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/to-inf-right--a392b3656457acde1fb835bf.md) | 238 | `result-track:a392b3656457acde1fb835bfa0fde6a603373ed98cfd3e12f09e489b96fdc79e` |
| 28 | `theorem` | [map](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/map--ff397be7049127810c5a5643.md) | 241 | `result-track:ff397be7049127810c5a56436936610a9b5dc8a3c46bbbb2980400bdabd6195f` |
| 29 | `theorem` | [comap_of_ker_isPGroup](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/comap-of-ker-ispgroup--37a3f549d58035651a17536f.md) | 246 | `result-track:37a3f549d58035651a17536f782a038d4adce4f9d5e4920fd2f425b84b793dc4` |
| 30 | `theorem` | [ker_isPGroup_of_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/ker-ispgroup-of-injective--1a6c21cc178172793272393f.md) | 255 | `result-track:1a6c21cc178172793272393f46cb26ee1597028331223a741143d56eed9aec60` |
| 31 | `theorem` | [comap_of_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/comap-of-injective--302a0bf2e4741cbc0f3a672c.md) | 259 | `result-track:302a0bf2e4741cbc0f3a672ce6a5fd78d6870aef1a222241411e87089bb7e096` |
| 32 | `theorem` | [comap_subtype](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/comap-subtype--dbd005f86b19a5dcbe9cec57.md) | 263 | `result-track:dbd005f86b19a5dcbe9cec57c3fdcf047638ddb0339d7bee38868aaa4e7b6a4d` |
| 33 | `theorem` | [to_sup_of_normal_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/to-sup-of-normal-right--bb874faed6f526e93543952c.md) | 267 | `result-track:bb874faed6f526e93543952cf14e5e93d97bbb8433741167051e5d2d24c05234` |
| 34 | `theorem` | [to_sup_of_normal_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/to-sup-of-normal-left--59582026561f0e4805ae0dfd.md) | 273 | `result-track:59582026561f0e4805ae0dfd7f73f0937d27f6cf34cb83113ba267c6c6c7b108` |
| 35 | `theorem` | [to_sup_of_normal_right'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/to-sup-of-normal-right--4058bfada3d0ca77689b5955.md) | 276 | `result-track:4058bfada3d0ca77689b5955c2ccaf6e2cd729cbd82c975d19ba213c78ea0d22` |
| 36 | `theorem` | [to_sup_of_normal_left'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/to-sup-of-normal-left--75458356186883e6122a037a.md) | 286 | `result-track:75458356186883e6122a037afecf5eb7cb605411decc4f70a19aab51f15d6884` |
| 37 | `theorem` | [coprime_card_of_ne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/coprime-card-of-ne--c63822fac913bdc9262b05b4.md) | 291 | `result-track:c63822fac913bdc9262b05b4473e8d6de50e8e525d0f31e78ff1a57143286604` |
| 38 | `theorem` | [disjoint_of_ne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/disjoint-of-ne--a3bd6e694357c648ffda9a43.md) | 300 | `result-track:a3bd6e694357c648ffda9a43cc4b8ddcadf9187d4736ec5e0488345cea479823` |
| 39 | `theorem` | [le_or_disjoint_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/le-or-disjoint-of-coprime--2103c63b8694dec1102a7d89.md) | 312 | `result-track:2103c63b8694dec1102a7d8925906c53907b9494f17a80d702204ebd6530c1dd` |
| 40 | `theorem` | [card_center_eq_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/card-center-eq-prime-pow--bbf6d7000098b8d58a202f02.md) | 345 | `result-track:bbf6d7000098b8d58a202f02693a653797a251a930dba7a808e8c9c037794fc9` |
| 41 | `theorem` | [cyclic_center_quotient_of_card_eq_prime_sq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/cyclic-center-quotient-of-card-eq-prime-sq--cbd01d4ae4f6571e8d810889.md) | 354 | `result-track:cbd01d4ae4f6571e8d810889ffe25d2a19ea2c25e89dad809e47414b1461c3ed` |
| 42 | `def` | [commGroupOfCardEqPrimeSq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/commgroupofcardeqprimesq--fe99bad69c30e26e647739d2.md) | 365 | `declaration-track:fe99bad69c30e26e647739d2a57ac8b723b39689ad78c03c012865e090be2ebc` |
| 43 | `theorem` | [commutative_of_card_eq_prime_sq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/commutative-of-card-eq-prime-sq--ac2d0a84dc8248dcfe9173eb.md) | 371 | `result-track:ac2d0a84dc8248dcfe9173eb69f562c0916e379db23a218f13f62efdd013d780` |
| 44 | `lemma` | [isPGroup_multiplicative](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/declarations/ispgroup-multiplicative--7dffb11cd3d783a331e6ad9d.md) | 381 | `result-track:7dffb11cd3d783a331e6ad9d7da326d0e12f42ab2fb9c3e76857bed8adaced81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
