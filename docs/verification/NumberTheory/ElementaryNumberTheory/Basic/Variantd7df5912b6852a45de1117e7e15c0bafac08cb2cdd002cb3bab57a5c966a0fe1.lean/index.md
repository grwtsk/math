# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ba57cfd458820ca15ce92e94c018394dc81a2db",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ba57cfd458820ca15ce92e94c018394dc81a2db`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean.json)

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
| 1 | `theorem` | [prime_mul_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-mul-iff--27c8e2d26d25a1327f45191a.md) | 33 | `result-track:27c8e2d26d25a1327f45191aeb6626134c1f5bc45d11159a3133067bc1b0e20c` |
| 2 | `theorem` | [not_prime_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/not-prime-mul--f756f7328a197116ed6e2d4b.md) | 36 | `result-track:f756f7328a197116ed6e2d4b96457b64a6d960d63def15e0e707668178ce08eb` |
| 3 | `theorem` | [not_prime_of_mul_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/not-prime-of-mul-eq--18f629e2b4cbd4e3625f1052.md) | 39 | `result-track:18f629e2b4cbd4e3625f1052acf90fa7525c52ded8e0c19f3dc792eb3aec8031` |
| 4 | `theorem` | [Prime.dvd_iff_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-dvd-iff-eq--eb6ad30073dfcf63780227ac.md) | 42 | `result-track:eb6ad30073dfcf63780227acbe2915e823b8d57a90be00b9530b11c8ade87d19` |
| 5 | `theorem` | [Prime.eq_two_or_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-eq-two-or-odd--cad2ddb30f3197f8aeab9419.md) | 49 | `result-track:cad2ddb30f3197f8aeab94195ffaa7324d01b34b1a07d5048cff09f21f31efac` |
| 6 | `theorem` | [Prime.eq_two_or_odd'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-eq-two-or-odd--a0d17e96e282d3d59f9d490f.md) | 53 | `result-track:a0d17e96e282d3d59f9d490f0add4906a561e87166c1cddc99ce3adff7f644b4` |
| 7 | `theorem` | [Prime.five_le_of_ne_two_of_ne_three](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-five-le-of-ne-two-of-ne-three--71576009663c2c17a8f9a75d.md) | 58 | `result-track:71576009663c2c17a8f9a75d5e67ff78b77d9e4831720e1b1e8505507e92b97f` |
| 8 | `theorem` | [Prime.pred_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-pred-pos--d9cd74968546a3a21d03c46c.md) | 66 | `result-track:d9cd74968546a3a21d03c46cda135ebf5c62e4a3f8d3241adeab15c5627524ac` |
| 9 | `theorem` | [succ_pred_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/succ-pred-prime--4fd3c7779205691b08f439b0.md) | 69 | `result-track:4fd3c7779205691b08f439b05f41fb28a5d93222305b089bfbd6ac1fc30510d8` |
| 10 | `theorem` | [exists_dvd_of_not_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/exists-dvd-of-not-prime--a3fc8438d8d31466b50716bd.md) | 72 | `result-track:a3fc8438d8d31466b50716bd4d48e29d3d958195f3ade4448636737051ed6acd` |
| 11 | `theorem` | [exists_dvd_of_not_prime2](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/exists-dvd-of-not-prime2--9f0e417ba3d78a9ecc903121.md) | 76 | `result-track:9f0e417ba3d78a9ecc90312103ff389b77da821c7f3b0b44329f011cea43fd99` |
| 12 | `theorem` | [not_prime_of_dvd_of_ne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/not-prime-of-dvd-of-ne--554d2b2f5014064a435b06b2.md) | 81 | `result-track:554d2b2f5014064a435b06b2de362d6ca6a3770069dee007526182bc42291522` |
| 13 | `theorem` | [not_prime_of_dvd_of_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/not-prime-of-dvd-of-lt--cbda298e19d63e31f731cfb6.md) | 84 | `result-track:cbda298e19d63e31f731cfb6c40a92f72380d3a5a7d3abe4bbb66c8d876fad3d` |
| 14 | `theorem` | [not_prime_iff_exists_dvd_ne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/not-prime-iff-exists-dvd-ne--d6670b2e8f7dfa39502a102f.md) | 87 | `result-track:d6670b2e8f7dfa39502a102f32a667909e917dc2f948294994239dda041fd810` |
| 15 | `theorem` | [not_prime_iff_exists_dvd_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/not-prime-iff-exists-dvd-lt--9e04617bf5f59a20a09378ab.md) | 90 | `result-track:9e04617bf5f59a20a09378ab765506b48287d1ae1462ad6307f6fcf18c4ce33a` |
| 16 | `theorem` | [not_prime_iff_exists_mul_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/not-prime-iff-exists-mul-eq--b9c1f62292b6173aeab8f308.md) | 93 | `result-track:b9c1f62292b6173aeab8f308babc3aae514b01c310d2336bee2d0b03c9ff2ecd` |
| 17 | `theorem` | [dvd_of_forall_prime_mul_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/dvd-of-forall-prime-mul-dvd--988fab0f7baaecefb70308ce.md) | 97 | `result-track:988fab0f7baaecefb70308ce7da26c60e087a58497ecd137616de3f2b4a3cc29` |
| 18 | `theorem` | [Prime.even_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-even-iff--c21faff3f24165920e36b904.md) | 104 | `result-track:c21faff3f24165920e36b904357f8b466dfb47a9240f18c4b34e4910017feca4` |
| 19 | `theorem` | [Prime.odd_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-odd-iff--29998b872a5e4bb4e02d795d.md) | 107 | `result-track:29998b872a5e4bb4e02d795d8b591e74282faa832ce66ccdc52b34795f92348b` |
| 20 | `theorem` | [Prime.odd_of_ne_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-odd-of-ne-two--81b1e9b8725a14972a51f28d.md) | 111 | `result-track:81b1e9b8725a14972a51f28d0af016a89a40d46ae7170a12bc337119db57f32a` |
| 21 | `theorem` | [Prime.even_sub_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-even-sub-one--5bfcb3def94ae6e6192c553d.md) | 114 | `result-track:5bfcb3def94ae6e6192c553d3c799e08a72f9dd2cd63510033d3bb31b585f9a3` |
| 22 | `theorem` | [forall_prime_iff_two_and_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/forall-prime-iff-two-and-odd--468e67d308b6319eaf9e2f59.md) | 118 | `result-track:468e67d308b6319eaf9e2f597fecdfafc2e29cebc630ae1d061128b0eeac766a` |
| 23 | `theorem` | [Prime.mod_two_eq_one_iff_ne_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-mod-two-eq-one-iff-ne-two--cc00f4b5b4c123f6e7ce45e9.md) | 129 | `result-track:cc00f4b5b4c123f6e7ce45e9ae84c90964b6e778eb1ac9aff0724f933bb9517d` |
| 24 | `theorem` | [coprime_of_dvd'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/coprime-of-dvd--0cf61f1fdc3fae39916c51c9.md) | 134 | `result-track:0cf61f1fdc3fae39916c51c9a94569524acc72adad51fcb837a316271986dc87` |
| 25 | `theorem` | [Prime.dvd_iff_not_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-dvd-iff-not-coprime--86b47476833d3683be1eb293.md) | 137 | `result-track:86b47476833d3683be1eb293caf9ccc237029c3732acae6607f4d65f6c4b41fd` |
| 26 | `theorem` | [Prime.not_coprime_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-not-coprime-iff-dvd--fe18800218263d6d2a8bb586.md) | 140 | `result-track:fe18800218263d6d2a8bb5860b4ba70fe4ca26c9bbfd2b0d80f30b7c3f9da433` |
| 27 | `lemma` | [coprime_of_lt_minFac](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/coprime-of-lt-minfac--02777a43d789a8dd33fb0611.md) | 151 | `result-track:02777a43d789a8dd33fb06112eb385ffc32274752bdeb2c483ddb9a4b3cc7f6f` |
| 28 | `lemma` | [gcd_eq_one_of_lt_minFac](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/gcd-eq-one-of-lt-minfac--c8b85736995dc6ead06bb8dc.md) | 158 | `result-track:c8b85736995dc6ead06bb8dc7b13bad62fb74f1b3957f761e809b3e7623a5df7` |
| 29 | `theorem` | [Prime.not_dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-not-dvd-mul--3318a41b7ad3666a4a13d461.md) | 161 | `result-track:3318a41b7ad3666a4a13d4614e105673bd2cfc0f97105344f7b0f0b9f0fb6776` |
| 30 | `lemma` | [coprime_two_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/coprime-two-left--aef66ffe60e5b56d2f302024.md) | 164 | `result-track:aef66ffe60e5b56d2f302024bd643da29b949eae40df22c29e73985201c25025` |
| 31 | `lemma` | [coprime_two_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/coprime-two-right--53961e682a15b7a9ace175c6.md) | 167 | `result-track:53961e682a15b7a9ace175c67e90d94724620d2a36349b6bdcbbb271f520f2f9` |
| 32 | `theorem` | [Prime.dvd_of_dvd_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-dvd-of-dvd-pow--a364a3d1554788cc7cc49af4.md) | 172 | `result-track:a364a3d1554788cc7cc49af43437cc972df77dc50e10d99a5a9b66f4465abb2c` |
| 33 | `theorem` | [Prime.not_prime_pow'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-not-prime-pow--e5c373bdd73eeab23eea030d.md) | 175 | `result-track:e5c373bdd73eeab23eea030d03458c1785e7c414e08ef52bb71f3308b0cd5ecf` |
| 34 | `theorem` | [Prime.not_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-not-prime-pow--daf7de93d6455f44b51d2ce4.md) | 178 | `result-track:daf7de93d6455f44b51d2ce418a94fc5164926dfd2fdc5ec462e5f97c7ffa29a` |
| 35 | `theorem` | [Prime.eq_one_of_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-eq-one-of-pow--97e0cdb1870ecb2529ebc431.md) | 181 | `result-track:97e0cdb1870ecb2529ebc43175a4861a0cad28f770f62098dc92006cbff751b4` |
| 36 | `theorem` | [Prime.pow_eq_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-pow-eq-iff--fc7a3e47b2ceea454682d593.md) | 184 | `result-track:fc7a3e47b2ceea454682d593cfc559db00953e9d9da625b9fb97900fd42bc309` |
| 37 | `theorem` | [Prime.mul_eq_prime_sq_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-mul-eq-prime-sq-iff--709b85a7fe6e687e5cc44141.md) | 189 | `result-track:709b85a7fe6e687e5cc44141ded498e1104484ca8e03f79380db4f1f173812d4` |
| 38 | `theorem` | [Prime.coprime_pow_of_not_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-coprime-pow-of-not-dvd--30665bfdc96906c42d329ce8.md) | 214 | `result-track:30665bfdc96906c42d329ce85d5482fa12b2479b59731d55cf058ebef6b83b64` |
| 39 | `theorem` | [coprime_primes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/coprime-primes--4f3495172866008afa3ef2ff.md) | 217 | `result-track:4f3495172866008afa3ef2ff5efc9b37f8eb3b722903bba693ced5f5b3c4ba1f` |
| 40 | `theorem` | [coprime_pow_primes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/coprime-pow-primes--b83b4db46b62efcb62ab484a.md) | 220 | `result-track:b83b4db46b62efcb62ab484a231bca5c41bc02fd4d0b66ea80a4a3273b15fd93` |
| 41 | `theorem` | [coprime_or_dvd_of_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/coprime-or-dvd-of-prime--cc873105e0c01e4d7b1a5109.md) | 224 | `result-track:cc873105e0c01e4d7b1a510951e90f421adbfb88b78c339abe4741581a913a65` |
| 42 | `theorem` | [coprime_of_lt_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/coprime-of-lt-prime--1edb8d20c73d64bfb5f18fec.md) | 227 | `result-track:1edb8d20c73d64bfb5f18fec688d9de68fc8333fd1b4e5e609ccdb07b674fa53` |
| 43 | `theorem` | [eq_or_coprime_of_le_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/eq-or-coprime-of-le-prime--f3b8d9409194fca5889017bb.md) | 231 | `result-track:f3b8d9409194fca5889017bbf4fe16d823adfabb6fac912bdba8356fae695b20` |
| 44 | `theorem` | [prime_eq_prime_of_dvd_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-eq-prime-of-dvd-pow--4a1938d88982a444d1475d5b.md) | 235 | `result-track:4a1938d88982a444d1475d5ba5ac06de3b25b59ecea468aa6d6df0e35e5dfe3a` |
| 45 | `theorem` | [dvd_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/dvd-prime-pow--f5ce8f8dd0c1acc5cf4e4838.md) | 238 | `result-track:f5ce8f8dd0c1acc5cf4e483871ebc403394d5721d4d0e2fb1192aad3fcdd65b3` |
| 46 | `theorem` | [Prime.dvd_mul_of_dvd_ne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/prime-dvd-mul-of-dvd-ne--7028885cd0fa145f2409721f.md) | 241 | `result-track:7028885cd0fa145f2409721fcf89d0a1e233137433656747398ebea2d5baf40f` |
| 47 | `theorem` | [eq_prime_pow_of_dvd_least_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/eq-prime-pow-of-dvd-least-prime-pow--68e85cc6ccd03d40ec15480e.md) | 249 | `result-track:68e85cc6ccd03d40ec15480e717aa2b755f8b817d5a5c9f0118020f65f27a707` |
| 48 | `theorem` | [ne_one_iff_exists_prime_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/ne-one-iff-exists-prime-dvd--415b5bd465b0f1e7781d7c59.md) | 255 | `result-track:415b5bd465b0f1e7781d7c597de2a023e3e746a0ac0795a6e161532451ddb525` |
| 49 | `theorem` | [eq_one_iff_not_exists_prime_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/eq-one-iff-not-exists-prime-dvd--4d071c4d3440654843d950ca.md) | 264 | `result-track:4d071c4d3440654843d950ca8579cf316557f1204988b9ce99fe65565c8bef0f` |
| 50 | `theorem` | [succ_dvd_or_succ_dvd_of_succ_sum_dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/declarations/succ-dvd-or-succ-dvd-of-succ-sum-dvd-mul--38c8e4c289c66f20aae78bb8.md) | 267 | `result-track:38c8e4c289c66f20aae78bb8a6b2a89749f7ed28e9c5b8f233debc25cfde57b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
