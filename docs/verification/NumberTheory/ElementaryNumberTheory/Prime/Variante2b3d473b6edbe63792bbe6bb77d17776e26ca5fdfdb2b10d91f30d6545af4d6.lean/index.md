# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Prime.Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b288f2c40934262651eac3375384ac648e7934f",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b288f2c40934262651eac3375384ac648e7934f`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toPNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/topnat--eecf14c68a7bda23bcb3b1ac.md) | 28 | `declaration-track:eecf14c68a7bda23bcb3b1acf1711a488217b9035ffd004d87373049523ac9ec` |
| 2 | `instance` | [coePNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coepnat--2cc9e7f74829a16c9347ad2a.md) | 31 | `declaration-track:2cc9e7f74829a16c9347ad2ac01174a6e986abed7486b96b0e7f5d6e26550fd8` |
| 3 | `theorem` | [coe_pnat_nat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coe-pnat-nat--c6dc5cc7f785145660c6dc3d.md) | 35 | `result-track:c6dc5cc7f785145660c6dc3d486746d877f337c280726163f3a79fd700e84e13` |
| 4 | `theorem` | [coe_pnat_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coe-pnat-injective--428bcbef9e1bc17152583443.md) | 38 | `result-track:428bcbef9e1bc1715258344390e03a3c804e0b4248c7fe8c47b07568b4fe1bb7` |
| 5 | `theorem` | [coe_pnat_inj](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coe-pnat-inj--18276c57b8c99359b69b1822.md) | 42 | `result-track:18276c57b8c99359b69b1822d250d80bcb293842523672f383bee177b714f821` |
| 6 | `def` | [gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/gcd--4a5292e58e29e91e1edd8e9d.md) | 53 | `declaration-track:4a5292e58e29e91e1edd8e9d02a0e4178ebde4a512ed2e30cd7054cfca111894` |
| 7 | `def` | [lcm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/lcm--31443c5b2f3630c51c9e3b97.md) | 58 | `declaration-track:31443c5b2f3630c51c9e3b975317d102639dffd0eb48c89c00f9c3865e0cbcea` |
| 8 | `theorem` | [gcd_coe](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/gcd-coe--2080d8bebf412c4034133ddc.md) | 65 | `result-track:2080d8bebf412c4034133ddc90ff744d4d7a1335398d9d5b7c5a80bfb5a65597` |
| 9 | `theorem` | [lcm_coe](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/lcm-coe--f09c2a108d40dcdfae12ea04.md) | 69 | `result-track:f09c2a108d40dcdfae12ea047d154a8d05231ecf9b926b2289d9717c7f14ef13` |
| 10 | `theorem` | [gcd_dvd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/gcd-dvd-left--20d1ece222d235caa84bc4a4.md) | 72 | `result-track:20d1ece222d235caa84bc4a47b92e97cd2df81ccc0f97e13884e3d2b4c8d207d` |
| 11 | `theorem` | [gcd_dvd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/gcd-dvd-right--18ec91bbf8787e9e0b5a3b99.md) | 75 | `result-track:18ec91bbf8787e9e0b5a3b997d32896361382f50d421eb09e7bb32516217ab44` |
| 12 | `theorem` | [dvd_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/dvd-gcd--c24b7e8c67a0c17c722f3470.md) | 78 | `result-track:c24b7e8c67a0c17c722f3470a9f4ca05fde93f0c6df017598daf73ca3fb0e29c` |
| 13 | `theorem` | [dvd_lcm_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/dvd-lcm-left--226d9f126f3d7df6d5f5ae5d.md) | 81 | `result-track:226d9f126f3d7df6d5f5ae5d1d6c777aa88187f293be6cede8ff7bd9b80dca77` |
| 14 | `theorem` | [dvd_lcm_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/dvd-lcm-right--504ed30083b18be5e2636e47.md) | 84 | `result-track:504ed30083b18be5e2636e47b68754edde464a40d8c3cccb1b2ad0dee51c9437` |
| 15 | `theorem` | [lcm_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/lcm-dvd--aae85151cb7c967a7670b60a.md) | 87 | `result-track:aae85151cb7c967a7670b60aea72c944ff665e451cb2ba37095910491a051bb3` |
| 16 | `theorem` | [gcd_mul_lcm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/gcd-mul-lcm--71c98e8bfcd92b1fcd5d5dc8.md) | 90 | `result-track:71c98e8bfcd92b1fcd5d5dc89a86dc2b68323e1648951be540e748e5036f37b8` |
| 17 | `theorem` | [eq_one_of_lt_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/eq-one-of-lt-two--431d950eee8ba5499eb49cf8.md) | 93 | `result-track:431d950eee8ba5499eb49cf838761952da1ed3ebdf249526837d3603573cf329` |
| 18 | `def` | [Prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/prime--a42aa55e6628b346e993e1e9.md) | 104 | `declaration-track:a42aa55e6628b346e993e1e9946026590dde4194548abe066bd7205e1cdeaf6b` |
| 19 | `theorem` | [Prime.one_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/prime-one-lt--d6703f3a4eb89e15c978356d.md) | 107 | `result-track:d6703f3a4eb89e15c978356dfa6e9f1364d1ae015f377b270dc22af2facdf3cd` |
| 20 | `theorem` | [prime_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/prime-two--00b360addf98c2ccd6b647ee.md) | 110 | `result-track:00b360addf98c2ccd6b647eea18959231b9e52308da7bd94b7750b0eb6cc2f77` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/instance--a51a09d0b123324b58810de2.md) | 113 | `declaration-track:a51a09d0b123324b58810de2f1ab05e9a443eb6755fdbf1bf7b27306dff244e8` |
| 22 | `instance` | [fact_prime_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/fact-prime-two--d1535da77e817a5b49810bf0.md) | 115 | `declaration-track:d1535da77e817a5b49810bf0fa419b4ff969acc7cd2fd98d4bbb77c47d06c618` |
| 23 | `theorem` | [prime_three](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/prime-three--33db9911c1a46e07fa22e22f.md) | 118 | `result-track:33db9911c1a46e07fa22e22f565196ae4f2638a4978cf10087e0e01345edc6f4` |
| 24 | `instance` | [fact_prime_three](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/fact-prime-three--ef0b873ba24ddea62b3d40d0.md) | 121 | `declaration-track:ef0b873ba24ddea62b3d40d06fd8b5473bcfb460700ef70d5525e89fd0a6c06f` |
| 25 | `theorem` | [prime_five](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/prime-five--40de2f9c0e8a2d4ea47511a8.md) | 124 | `result-track:40de2f9c0e8a2d4ea47511a8e822171a19038532efb0ed4e3d8509c7cce53ea8` |
| 26 | `instance` | [fact_prime_five](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/fact-prime-five--2de10f507d3483c418858a33.md) | 127 | `declaration-track:2de10f507d3483c418858a336b7bd078b9a4d8d2d0525c6a47a66c678fdc6fa0` |
| 27 | `theorem` | [dvd_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/dvd-prime--4bec6a5989656f110d03f723.md) | 130 | `result-track:4bec6a5989656f110d03f723bdee9e7d0fa252dc49bcafc17159fd91610f7220` |
| 28 | `theorem` | [Prime.ne_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/prime-ne-one--32bf3997554c0ac06b9b8200.md) | 135 | `result-track:32bf3997554c0ac06b9b8200319eef23186a100d87435f061be41f5253e91ff4` |
| 29 | `theorem` | [not_prime_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/not-prime-one--a1fa55b9f6a970b6b6624a3b.md) | 143 | `result-track:a1fa55b9f6a970b6b6624a3b38f9da7c6cd473b2e03e297184060c9e508ac077` |
| 30 | `theorem` | [Prime.not_dvd_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/prime-not-dvd-one--54c72002f7fc0954fcbb2d91.md) | 146 | `result-track:54c72002f7fc0954fcbb2d91bade3635a4e5ba3e05a41509acfaa1e929ccba92` |
| 31 | `theorem` | [exists_prime_and_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/exists-prime-and-dvd--8d425d279db5670728c8bb05.md) | 150 | `result-track:8d425d279db5670728c8bb05741ee30e03787227ef680d6a89224f0d3cd52ac8` |
| 32 | `def` | [Coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coprime--652204e09be260b082a540b2.md) | 162 | `declaration-track:652204e09be260b082a540b2e8aa97fe7fed57b012b75dc74ee03c9a30a9360d` |
| 33 | `theorem` | [coprime_coe](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coprime-coe--e3f5f75dda0abdadec9fd467.md) | 166 | `result-track:e3f5f75dda0abdadec9fd4676db772371003eeb111bbf5ff5ca4ab27e4869b1c` |
| 34 | `theorem` | [Coprime.mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coprime-mul--abd8ad72eb76285a17b4d162.md) | 171 | `result-track:abd8ad72eb76285a17b4d162baadea534c93c7942acbb5f0268dc49919dd0b70` |
| 35 | `theorem` | [Coprime.mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coprime-mul-right--e1826df07b2fb347d579fe4f.md) | 176 | `result-track:e1826df07b2fb347d579fe4f63ed4f901592165b5e2a5d528df4b28cbdd922ca` |
| 36 | `theorem` | [gcd_comm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/gcd-comm--d16e5d59185db004d3041544.md) | 181 | `result-track:d16e5d59185db004d3041544e4c8c92ae6fa1bd003c66e840b42bf9dec62b3a6` |
| 37 | `theorem` | [gcd_eq_left_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/gcd-eq-left-iff-dvd--1b463bf7895cacd371a3b48c.md) | 186 | `result-track:1b463bf7895cacd371a3b48c64733044811babdfa9c25f47de86062456fcfabc` |
| 38 | `theorem` | [gcd_eq_right_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/gcd-eq-right-iff-dvd--2743b7ddd790304c7fcd4a87.md) | 190 | `result-track:2743b7ddd790304c7fcd4a874e5ff1ca81ae54487b982ec4f59ef162fe1f080a` |
| 39 | `theorem` | [Coprime.gcd_mul_left_cancel](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coprime-gcd-mul-left-cancel--1c2fd470f4ad7e7c9837860c.md) | 194 | `result-track:1c2fd470f4ad7e7c9837860cd85bbbc6e3bd0fc0f24fa581e2825209ee5dd4e8` |
| 40 | `theorem` | [Coprime.gcd_mul_right_cancel](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coprime-gcd-mul-right-cancel--0271be9b92f0a6ab15b368bf.md) | 199 | `result-track:0271be9b92f0a6ab15b368bfeab36fef701cdb320b59c11b6e05a1f079c6084a` |
| 41 | `theorem` | [Coprime.gcd_mul_left_cancel_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coprime-gcd-mul-left-cancel-right--74d03caae0e77a3dec33d120.md) | 202 | `result-track:74d03caae0e77a3dec33d1205c52d1ae641e095e4a15e5dcf4f930082d560ef3` |
| 42 | `theorem` | [Coprime.gcd_mul_right_cancel_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coprime-gcd-mul-right-cancel-right--6337a5510012fe6c09dcd2b8.md) | 207 | `result-track:6337a5510012fe6c09dcd2b8bf8122ef98336d9c77248f84ee6f4e648b488798` |
| 43 | `theorem` | [one_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/one-gcd--0b99311f00c3703a2a3b7d9f.md) | 213 | `result-track:0b99311f00c3703a2a3b7d9f742325924b0d606384b6265abe4ae498b7848f95` |
| 44 | `theorem` | [gcd_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/gcd-one--274870c09d07400179d2fbea.md) | 218 | `result-track:274870c09d07400179d2fbeac96f98da8efa567d5e4aacd3bb95454eec729daf` |
| 45 | `theorem` | [Coprime.symm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coprime-symm--c2b0e7460584a1d51ef753e7.md) | 223 | `result-track:c2b0e7460584a1d51ef753e7feee54b3b1894559719979cf01cc1a5fbd868b11` |
| 46 | `theorem` | [one_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/one-coprime--bdff3936ef2de830b56adb09.md) | 229 | `result-track:bdff3936ef2de830b56adb090296d2d14dc08587e2266ac02d3afe12de55b328` |
| 47 | `theorem` | [coprime_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coprime-one--2a46f34e2540a37c89595b55.md) | 233 | `result-track:2a46f34e2540a37c89595b551b21cc712be1124a04080ac2af190982a057bf9f` |
| 48 | `theorem` | [Coprime.coprime_dvd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coprime-coprime-dvd-left--cd7776375573e1507deea4cb.md) | 236 | `result-track:cd7776375573e1507deea4cbe1a0138f024536ac039fe38b92023da15e16b19f` |
| 49 | `theorem` | [Coprime.factor_eq_gcd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coprime-factor-eq-gcd-left--346a81b8a7afc75969802827.md) | 241 | `result-track:346a81b8a7afc75969802827b86bd47ebdf90d0345c41a16b3ed59177ddcf438` |
| 50 | `theorem` | [Coprime.factor_eq_gcd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coprime-factor-eq-gcd-right--1103d828455b68adf86bf7fd.md) | 249 | `result-track:1103d828455b68adf86bf7fdd2668a728fc6f6356dd12a675739ce9a6739d413` |
| 51 | `theorem` | [Coprime.factor_eq_gcd_left_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coprime-factor-eq-gcd-left-right--9d40f3051de12452d945fae1.md) | 252 | `result-track:9d40f3051de12452d945fae1617d36dc86baeb6c225ca1f1698216f0b7d553a0` |
| 52 | `theorem` | [Coprime.factor_eq_gcd_right_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coprime-factor-eq-gcd-right-right--f59c44e3db590f7e87c17714.md) | 255 | `result-track:f59c44e3db590f7e87c1771445aa2be8173accb2ead8f2fb695e93b22d3596c2` |
| 53 | `theorem` | [Coprime.gcd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coprime-gcd-mul--7e2f56d5bc5a3ab4b9c265ea.md) | 260 | `result-track:7e2f56d5bc5a3ab4b9c265ea9c0f268e2aa3ef234d0355688851b521a50d2f06` |
| 54 | `theorem` | [gcd_eq_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/gcd-eq-left--92db2de4b0c156905b3c1d88.md) | 265 | `result-track:92db2de4b0c156905b3c1d88dd030d2d4fe24f743eeef9ba18c1299eb5dd6494` |
| 55 | `theorem` | [Coprime.pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variante2b3d473b6edbe63792bbe6bb77d17776e26ca5fdfdb2b10d91f30d6545af4d6.lean/declarations/coprime-pow--260a60a9b46eeeec47a03c4f.md) | 272 | `result-track:260a60a9b46eeeec47a03c4f299466c760d0e2bd1f6e0824e970a0a6bfad9ba7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
