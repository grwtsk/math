# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4c364ea6b8f2a1d85abbcc355591643d71e5c13",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4c364ea6b8f2a1d85abbcc355591643d71e5c13`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Order.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gcd_greatest](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/gcd-greatest--caa40b6493a44d75371d63e9.md) | 27 | `result-track:caa40b6493a44d75371d63e98dcccf86b22fa8f8e4cdd9126430595f67d34af3` |
| 2 | `theorem` | [gcd_add_mul_right_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/gcd-add-mul-right-right--c89b51ad38ef395a3a1ddaa2.md) | 34 | `result-track:c89b51ad38ef395a3a1ddaa23b60e9f38cfa64f0ab2a7a44ad7c30b7f0d151f3` |
| 3 | `theorem` | [gcd_add_mul_left_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/gcd-add-mul-left-right--b320b73c14e16a3f1e7b6645.md) | 39 | `result-track:b320b73c14e16a3f1e7b664567be87f2a9ae98c8b53d51178896f3ac64e2abc8` |
| 4 | `theorem` | [gcd_mul_right_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/gcd-mul-right-add-right--227caf604ab57905fd9b5e43.md) | 44 | `result-track:227caf604ab57905fd9b5e43bde8f9d8bab281efec8ffaf461b5cbcf8d131400` |
| 5 | `theorem` | [gcd_mul_left_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/gcd-mul-left-add-right--084c613ceb7f025b70b6940c.md) | 48 | `result-track:084c613ceb7f025b70b6940cb74dce35fefdbd8bdf17d24bf5552bca9ef49090` |
| 6 | `theorem` | [gcd_add_mul_right_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/gcd-add-mul-right-left--0f217a1f06873199fa49bfe9.md) | 52 | `result-track:0f217a1f06873199fa49bfe92adc7cfbe5252eac5a09dff2b6a2ee31bced9fb6` |
| 7 | `theorem` | [gcd_add_mul_left_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/gcd-add-mul-left-left--30e2ac8ee71ef23684421b70.md) | 57 | `result-track:30e2ac8ee71ef23684421b70fdf74cf3abf60fea3f4436bd28a57b9d0c995009` |
| 8 | `theorem` | [gcd_mul_right_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/gcd-mul-right-add-left--da68c5fd598c01a49f1c0f41.md) | 62 | `result-track:da68c5fd598c01a49f1c0f41156e426fca15a0b787867d7bbdf02172cb9bef32` |
| 9 | `theorem` | [gcd_mul_left_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/gcd-mul-left-add-left--cb956457d3cc7a761f290250.md) | 67 | `result-track:cb956457d3cc7a761f2902509e00bdc5abe0ecd32339c507d0df2594c29455ff` |
| 10 | `theorem` | [gcd_add_self_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/gcd-add-self-right--c43bc7b7f8837aa7cc2913f4.md) | 73 | `result-track:c43bc7b7f8837aa7cc2913f49b036f1edeedb1ca1ea8add70208656f08ed20dd` |
| 11 | `theorem` | [gcd_add_self_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/gcd-add-self-left--5c1da8b6ed8aa82ef496c036.md) | 78 | `result-track:5c1da8b6ed8aa82ef496c036961c60c74102091a16428bd60d26850e6b7e45b2` |
| 12 | `theorem` | [gcd_self_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/gcd-self-add-left--af2f15df68bc1e8fe7c532b2.md) | 83 | `result-track:af2f15df68bc1e8fe7c532b2968a24d7d5977876446732a6dd29177bc382fec4` |
| 13 | `theorem` | [gcd_self_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/gcd-self-add-right--122a41cceab812b3393984ea.md) | 87 | `result-track:122a41cceab812b3393984ea773ff7630009332e038bed487163e7c29ca43815` |
| 14 | `theorem` | [lcm_dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/lcm-dvd-mul--4fb8f2fbb5c877a0307c9004.md) | 93 | `result-track:4fb8f2fbb5c877a0307c9004af51cb2eac10b5b7900086fe498d47b6bbde344b` |
| 15 | `theorem` | [lcm_dvd_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/lcm-dvd-iff--c838d0ee7544a3e3cf407f52.md) | 97 | `result-track:c838d0ee7544a3e3cf407f52a3915b40b7a7a113d3be8ff60f6228fc4785d7c3` |
| 16 | `theorem` | [lcm_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/lcm-pos--4225836c9e4611bcd7b9bfb6.md) | 101 | `result-track:4225836c9e4611bcd7b9bfb6e4746079caad585f9395269563f5f0f7674d0c49` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/instance--af6a644624317d3bc9a707ea.md) | 112 | `declaration-track:af6a644624317d3bc9a707eadc6d1f07299b0acff65b80a5c3b064c6ba3465fa` |
| 18 | `theorem` | [coprime.lcm_eq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-lcm-eq-mul--0d1442dbb39636b149c28557.md) | 114 | `result-track:0d1442dbb39636b149c285573590ab7fb517359e3ff8d6d1a502e783b8a57fe1` |
| 19 | `theorem` | [coprime.symmetric](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-symmetric--17d68017f09773fe8fd75bd9.md) | 118 | `result-track:17d68017f09773fe8fd75bd98d1a8f6d040b22eb4d5962b706b9330be2136e4a` |
| 20 | `theorem` | [coprime.dvd_mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-dvd-mul-right--e619419e9931bd277eae4189.md) | 121 | `result-track:e619419e9931bd277eae4189dbf3bb061f7135368922bf6f3eb35283fbb44351` |
| 21 | `theorem` | [coprime.dvd_mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-dvd-mul-left--71bd424d629f794cfe9539d8.md) | 125 | `result-track:71bd424d629f794cfe9539d8228172d8107fb987decde5af42a774b57a73c2db` |
| 22 | `theorem` | [coprime_add_self_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-add-self-right--7e3fc25116564b54470259a8.md) | 130 | `result-track:7e3fc25116564b54470259a85d95ed7e4010919513ca1ad4ae88dc56489669db` |
| 23 | `theorem` | [coprime_self_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-self-add-right--de9884ef5b51c750fac446b9.md) | 135 | `result-track:de9884ef5b51c750fac446b9e48d38964bee1b0f50cc4274e68e88c97eef730e` |
| 24 | `theorem` | [coprime_add_self_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-add-self-left--1e9eea73bcda69375814833e.md) | 140 | `result-track:1e9eea73bcda69375814833e21ba7e30a75c812671503d22fade678dbf4e05d1` |
| 25 | `theorem` | [coprime_self_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-self-add-left--c7346265e144c0cfa869de11.md) | 145 | `result-track:c7346265e144c0cfa869de11d4453b2be2f5695380ce74ca95db71939c84e758` |
| 26 | `theorem` | [coprime_add_mul_right_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-add-mul-right-right--79470ae945b378e51fcae5dc.md) | 150 | `result-track:79470ae945b378e51fcae5dce44b333ce0bb5caa75672d496ccdcb019fd25899` |
| 27 | `theorem` | [coprime_add_mul_left_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-add-mul-left-right--3c80e81ef9a0137fcdaa4825.md) | 155 | `result-track:3c80e81ef9a0137fcdaa4825787d63041f46174a8b6ce804088eb110b9e1f323` |
| 28 | `theorem` | [coprime_mul_right_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-mul-right-add-right--78570fe458958a68614ddfee.md) | 160 | `result-track:78570fe458958a68614ddfeedfd42e55b94c894ec801461b16aab419353383ce` |
| 29 | `theorem` | [coprime_mul_left_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-mul-left-add-right--790ed39ff0d076b255722c73.md) | 165 | `result-track:790ed39ff0d076b255722c7364e45ddc54e016f985d4b49d8e5019fb09ca8069` |
| 30 | `theorem` | [coprime_add_mul_right_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-add-mul-right-left--03b66d41fae2e904eef06561.md) | 170 | `result-track:03b66d41fae2e904eef065610904882b60a90c98248d8c23543dcc7365464a63` |
| 31 | `theorem` | [coprime_add_mul_left_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-add-mul-left-left--007cadd607ea97d0d7e3810f.md) | 175 | `result-track:007cadd607ea97d0d7e3810f76f13cda625a10a7521b4b71e48184aeabee9527` |
| 32 | `theorem` | [coprime_mul_right_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-mul-right-add-left--ce94d2593d747d9fe7073f7f.md) | 180 | `result-track:ce94d2593d747d9fe7073f7ff5387129a5dfdd2d8458b8c721eeacfd6bd38d13` |
| 33 | `theorem` | [coprime_mul_left_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-mul-left-add-left--14379ef05d56766259d70024.md) | 185 | `result-track:14379ef05d56766259d700242a3570cef53e154bb2470a92c61a50d9cc3e23ea` |
| 34 | `theorem` | [coprime_pow_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-pow-left-iff--95dd93208af6189f0886d080.md) | 190 | `result-track:95dd93208af6189f0886d08087f3a4d781e61ab8534569b975624d57679d3adb` |
| 35 | `theorem` | [coprime_pow_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-pow-right-iff--0a75fef082a13c14e2730ab8.md) | 198 | `result-track:0a75fef082a13c14e2730ab883d7b903d1c471dd20c4d5fd73bf5ff8a8e0d38a` |
| 36 | `theorem` | [not_coprime_zero_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/not-coprime-zero-zero--fac5953ff76fed2ad420456c.md) | 203 | `result-track:fac5953ff76fed2ad420456c1058c7426ac69f1bac3391eeaa31a0bd02a6e554` |
| 37 | `theorem` | [coprime_one_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-one-left-iff--9a3c558dd6bb1c958ca54bbb.md) | 206 | `result-track:9a3c558dd6bb1c958ca54bbbe153ac466c134165dcad78d179b3f2b039fd9495` |
| 38 | `theorem` | [coprime_one_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-one-right-iff--4b5d0fc9d30866e7dcaffdd4.md) | 209 | `result-track:4b5d0fc9d30866e7dcaffdd4b76d70736b3cfa158b225e17ebc6c5fc5fba4f86` |
| 39 | `theorem` | [gcd_mul_of_coprime_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/gcd-mul-of-coprime-of-dvd--c8dadb75869795ed62f25985.md) | 212 | `result-track:c8dadb75869795ed62f2598565b49ed2acf78cf80ffab68955b770fd64e669ea` |
| 40 | `theorem` | [coprime.eq_of_mul_eq_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-eq-of-mul-eq-zero--d69db66d9911635ed96ef968.md) | 220 | `result-track:d69db66d9911635ed96ef968fbaee7adb77d4edaa0ba734df862931faa166013` |
| 41 | `def` | [prodDvdAndDvdOfDvdProd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/proddvdanddvdofdvdprod--9de14dbad6eac82fabfc940c.md) | 231 | `declaration-track:9de14dbad6eac82fabfc940cd7189954f7339899dc6752bf5f37a8f7517b5d60` |
| 42 | `theorem` | [dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/dvd-mul--741cf51591894c470b198bbd.md) | 247 | `result-track:741cf51591894c470b198bbd037f0ef05c93384af76c57df34621f9ed864a1d4` |
| 43 | `theorem` | [pow_dvd_pow_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/pow-dvd-pow-iff--a8e2c5f1fcf3f9f9f427a8cc.md) | 256 | `result-track:a8e2c5f1fcf3f9f9f427a8cca766afc45aff83c8b155caf5d8e8621f1aba38d9` |
| 44 | `theorem` | [eq_one_of_dvd_coprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/eq-one-of-dvd-coprimes--46d8d2e5671e9474689e8b63.md) | 269 | `result-track:46d8d2e5671e9474689e8b63199b3ab93e5e0ecda128d95fa9ee71a2f20460ce` |
| 45 | `theorem` | [coprime.mul_add_mul_ne_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3ace767da10eaa3ad6ba6b6172e9467ba3350f3312708dea2bf5b30e80fe40.lean/declarations/coprime-mul-add-mul-ne-mul--fc6abb97e7e862ae68844c0d.md) | 277 | `result-track:fc6abb97e7e862ae68844c0daae7a047452a467915a1ae7c54fb7a85c891ff9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
