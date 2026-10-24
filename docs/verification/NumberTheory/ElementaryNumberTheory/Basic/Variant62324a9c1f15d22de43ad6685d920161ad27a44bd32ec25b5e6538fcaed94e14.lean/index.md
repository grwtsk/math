# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "557b63973d459f440219343462e5ed436cc2e2ba",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `557b63973d459f440219343462e5ed436cc2e2ba`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Associated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Parity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_mul_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-mul-iff--ccde652cb56e10b7a1f3d5f9.md) | 33 | `result-track:ccde652cb56e10b7a1f3d5f916d02111b37fc7a3cbf9d283a3b69ee1c2acd9c1` |
| 2 | `theorem` | [not_prime_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/not-prime-mul--becde6292467625fe77b5a29.md) | 36 | `result-track:becde6292467625fe77b5a2993802eaa451ff21729264b5457396ff3735750d2` |
| 3 | `theorem` | [not_prime_mul'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/not-prime-mul--0e0ce0486f44404105299540.md) | 39 | `result-track:0e0ce0486f44404105299540d97384997c4b33b4b74261da4675dcde1b06efe1` |
| 4 | `theorem` | [Prime.dvd_iff_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-dvd-iff-eq--c3396a3ae88698a497adc373.md) | 42 | `result-track:c3396a3ae88698a497adc373678d90938301d8ef36c1ca7fd6285dae887bc604` |
| 5 | `theorem` | [Prime.eq_two_or_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-eq-two-or-odd--dc109aaa1cf0c58416464c31.md) | 49 | `result-track:dc109aaa1cf0c58416464c3156907afa224a02991a2b685af41b8178021596b1` |
| 6 | `theorem` | [Prime.eq_two_or_odd'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-eq-two-or-odd--3ad76475162bb629bccb68c1.md) | 53 | `result-track:3ad76475162bb629bccb68c10502cd228626256292db6610603798e28d83bd63` |
| 7 | `theorem` | [Prime.five_le_of_ne_two_of_ne_three](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-five-le-of-ne-two-of-ne-three--32128973574a4f66f9dc7b45.md) | 58 | `result-track:32128973574a4f66f9dc7b45fac7c4d99cbe8e6a1554ba87455713a736cd8a4d` |
| 8 | `theorem` | [Prime.pred_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-pred-pos--7d7bef743ffaedff25102ffd.md) | 66 | `result-track:7d7bef743ffaedff25102ffd444fb142283100d944b3712145d7c12cc51eebc0` |
| 9 | `theorem` | [succ_pred_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/succ-pred-prime--72cd6de5c048676d610ebebe.md) | 69 | `result-track:72cd6de5c048676d610ebebe227c56bf6d8bd166fce1bab2ad9a6d874cf6bb31` |
| 10 | `theorem` | [exists_dvd_of_not_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/exists-dvd-of-not-prime--d7e492ae47d47dd8d3ab99a3.md) | 72 | `result-track:d7e492ae47d47dd8d3ab99a3ebc76eb5b6dae40a4dcd1d7c9f1c8161984a43e8` |
| 11 | `theorem` | [exists_dvd_of_not_prime2](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/exists-dvd-of-not-prime2--15baa70071a5974c9203eaec.md) | 76 | `result-track:15baa70071a5974c9203eaec428b4c0a66fcff3188d490872d6acbc8f816e7fc` |
| 12 | `theorem` | [not_prime_of_dvd_of_ne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/not-prime-of-dvd-of-ne--98eaf8b6ced3e4d263cab505.md) | 81 | `result-track:98eaf8b6ced3e4d263cab5057a788a731e8e7e0176de3b250c43477ef105f7a9` |
| 13 | `theorem` | [not_prime_of_dvd_of_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/not-prime-of-dvd-of-lt--8d4d69afb2bdc5140cca9189.md) | 84 | `result-track:8d4d69afb2bdc5140cca918950e7c24875ce1136ff9c7d1d679862241699e349` |
| 14 | `theorem` | [not_prime_iff_exists_dvd_ne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/not-prime-iff-exists-dvd-ne--f889efd28e1df6097e2e761f.md) | 87 | `result-track:f889efd28e1df6097e2e761f9bf185351fac94c10170a9ee9794bfe8167eef47` |
| 15 | `theorem` | [not_prime_iff_exists_dvd_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/not-prime-iff-exists-dvd-lt--2c99ff8a1c3aea79a019b929.md) | 90 | `result-track:2c99ff8a1c3aea79a019b9293b02e95b6fb054c7a1e8e2372c2f880ce033f813` |
| 16 | `theorem` | [dvd_of_forall_prime_mul_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/dvd-of-forall-prime-mul-dvd--860c7cf0bb7da2e55dd53939.md) | 93 | `result-track:860c7cf0bb7da2e55dd539392319e369864806472c4a072ca742f8d85421cdde` |
| 17 | `theorem` | [Prime.even_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-even-iff--5a02a570ee286423bd9438e0.md) | 100 | `result-track:5a02a570ee286423bd9438e037dc0795e102afc783333c7e86ac4ee3c653f7f1` |
| 18 | `theorem` | [Prime.odd_of_ne_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-odd-of-ne-two--560a25962072040a907cc02c.md) | 103 | `result-track:560a25962072040a907cc02c661a6557bb8ce0f91d70c68a8e3cb6c797c24414` |
| 19 | `theorem` | [Prime.even_sub_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-even-sub-one--d6010bb1713261a2f7d6bb85.md) | 106 | `result-track:d6010bb1713261a2f7d6bb85e3c96eb84a024ac1e3c8775803246d46e0942b31` |
| 20 | `theorem` | [Prime.mod_two_eq_one_iff_ne_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-mod-two-eq-one-iff-ne-two--37e9496be854c252d37bda6c.md) | 110 | `result-track:37e9496be854c252d37bda6c85932280e157a3dc7d7078601eff2d621a087999` |
| 21 | `theorem` | [coprime_of_dvd'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/coprime-of-dvd--bedc043a53e66d3fff458de7.md) | 115 | `result-track:bedc043a53e66d3fff458de71543d488a03802abcdcaf22b398ef697eb29cf4e` |
| 22 | `theorem` | [Prime.dvd_iff_not_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-dvd-iff-not-coprime--8f49998baf2085aee9525aa9.md) | 118 | `result-track:8f49998baf2085aee9525aa9f46b95d94756829f9fa09f3e625c249147fb38e0` |
| 23 | `theorem` | [Prime.not_coprime_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-not-coprime-iff-dvd--a0a79c419781f116029e8970.md) | 121 | `result-track:a0a79c419781f116029e89707f50f4966bba4cb16efd05edf8cf3eaf327d8026` |
| 24 | `lemma` | [coprime_of_lt_minFac](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/coprime-of-lt-minfac--910c46e0988c33c35471b431.md) | 132 | `result-track:910c46e0988c33c35471b43176e113bcf762efcb4dff1a33bcd11a8b2820bb5b` |
| 25 | `lemma` | [gcd_eq_one_of_lt_minFac](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/gcd-eq-one-of-lt-minfac--338e69d5386eb818cb671b98.md) | 139 | `result-track:338e69d5386eb818cb671b98bc6009664f07d05d17d5c7e793a07b155666f3de` |
| 26 | `theorem` | [Prime.not_dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-not-dvd-mul--8150a2417495ae053ceec974.md) | 142 | `result-track:8150a2417495ae053ceec97436abbf521e5799f3e894a740e89a236e02ead4c8` |
| 27 | `lemma` | [coprime_two_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/coprime-two-left--54be4ecd762fdbfa08d028aa.md) | 145 | `result-track:54be4ecd762fdbfa08d028aad338ce0c302f3ca30f1772df9c16ee121ac081ee` |
| 28 | `lemma` | [coprime_two_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/coprime-two-right--eb406a9d23fa9b92f72ded81.md) | 148 | `result-track:eb406a9d23fa9b92f72ded8175d2ab1e937e71685d2b29c57414632baddd23d9` |
| 29 | `theorem` | [Prime.dvd_of_dvd_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-dvd-of-dvd-pow--344489520d4bccd513126e2e.md) | 153 | `result-track:344489520d4bccd513126e2e90f09d0beb7045b80bc7f801f8178ae5336cc32d` |
| 30 | `theorem` | [Prime.not_prime_pow'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-not-prime-pow--80bad2137bdbfb58f9383cbb.md) | 156 | `result-track:80bad2137bdbfb58f9383cbb9c7d9f4bc7523134c3976ccde260d5c63889c607` |
| 31 | `theorem` | [Prime.not_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-not-prime-pow--8f67c1049a5eeadd6f63d7bd.md) | 159 | `result-track:8f67c1049a5eeadd6f63d7bdd3e6775d1bf0d548aa6bb9a913dca3e6c5538b74` |
| 32 | `theorem` | [Prime.eq_one_of_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-eq-one-of-pow--75b1af6c40f7aedfa06a532d.md) | 162 | `result-track:75b1af6c40f7aedfa06a532d57df2fdc7b95559eaf1e34935831423c4ca8acda` |
| 33 | `theorem` | [Prime.pow_eq_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-pow-eq-iff--775985669d0225af738a457f.md) | 165 | `result-track:775985669d0225af738a457fab9302557cd427616c3d35c35dc9984c5c44f426` |
| 34 | `theorem` | [Prime.mul_eq_prime_sq_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-mul-eq-prime-sq-iff--dc21f352e59b7b3d5953c89b.md) | 170 | `result-track:dc21f352e59b7b3d5953c89be487a327c0997054bd6b33379bcc87172320eb39` |
| 35 | `theorem` | [Prime.coprime_pow_of_not_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-coprime-pow-of-not-dvd--4e1e891f8fc63d5373649d56.md) | 196 | `result-track:4e1e891f8fc63d5373649d56737053451d595ba9b5a5168d129e10818bff48e3` |
| 36 | `theorem` | [coprime_primes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/coprime-primes--b1c8616a0ef99744a97b8654.md) | 199 | `result-track:b1c8616a0ef99744a97b865458695bb87f110f31472c9105a0627b02ecfa9a68` |
| 37 | `theorem` | [coprime_pow_primes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/coprime-pow-primes--ea6ba7acc4970fd5645149a8.md) | 202 | `result-track:ea6ba7acc4970fd5645149a85f27268fa4cacd5f417ff1e06bc877288183d4df` |
| 38 | `theorem` | [coprime_or_dvd_of_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/coprime-or-dvd-of-prime--e2f4985fe1afc622a337a95b.md) | 206 | `result-track:e2f4985fe1afc622a337a95be8a07061f857dfd1bbb4a6b5d0b90c0ad1528ddb` |
| 39 | `theorem` | [coprime_of_lt_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/coprime-of-lt-prime--51cd2fd1a797f12c7dd5bc64.md) | 209 | `result-track:51cd2fd1a797f12c7dd5bc640f12160d36ee5ba92dbb3c2e44338a28928ead26` |
| 40 | `theorem` | [eq_or_coprime_of_le_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/eq-or-coprime-of-le-prime--b1a945544a3cec2d86a875c7.md) | 212 | `result-track:b1a945544a3cec2d86a875c79e5a6ddb0de71ff8352c7245ba3de151da5e3bf3` |
| 41 | `theorem` | [prime_eq_prime_of_dvd_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-eq-prime-of-dvd-pow--2b2a20f32a31ac3baa692737.md) | 216 | `result-track:2b2a20f32a31ac3baa69273755ef86fd245ff318f59f96d94e275d22baf357d4` |
| 42 | `theorem` | [dvd_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/dvd-prime-pow--7ad3905fa236c800bbcbc703.md) | 219 | `result-track:7ad3905fa236c800bbcbc703293c280cff1507d3b4c358e48b663cd83968c3ba` |
| 43 | `theorem` | [Prime.dvd_mul_of_dvd_ne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/prime-dvd-mul-of-dvd-ne--7ac7f838a97d35c11b276c03.md) | 222 | `result-track:7ac7f838a97d35c11b276c03cfceaaa17d9e179c49d93d2e7a10ce25ad090e93` |
| 44 | `theorem` | [eq_prime_pow_of_dvd_least_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/eq-prime-pow-of-dvd-least-prime-pow--df5124c48559412c261e9eb6.md) | 230 | `result-track:df5124c48559412c261e9eb682fca5e035defd2504b8f35dc816f4dc8d75f2f1` |
| 45 | `theorem` | [ne_one_iff_exists_prime_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/ne-one-iff-exists-prime-dvd--0a3910b387c93e28d8df57f2.md) | 236 | `result-track:0a3910b387c93e28d8df57f232ab7947c4d91659de78b3800b62fb240dd30b0d` |
| 46 | `theorem` | [eq_one_iff_not_exists_prime_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/eq-one-iff-not-exists-prime-dvd--567eb5d2c123c8b140e2d74a.md) | 245 | `result-track:567eb5d2c123c8b140e2d74aeed4547cd57cd16887b9f9de8c3c800c9bbdaa50` |
| 47 | `theorem` | [succ_dvd_or_succ_dvd_of_succ_sum_dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant62324a9c1f15d22de43ad6685d920161ad27a44bd32ec25b5e6538fcaed94e14.lean/declarations/succ-dvd-or-succ-dvd-of-succ-sum-dvd-mul--e40d531b0820f9338cabe5a0.md) | 248 | `result-track:e40d531b0820f9338cabe5a0d242cccc62bac49cc2a2bbf4c856f8523cb0a877` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
