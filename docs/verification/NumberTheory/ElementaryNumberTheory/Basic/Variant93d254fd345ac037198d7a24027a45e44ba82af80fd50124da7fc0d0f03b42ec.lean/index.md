# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3caeed3eeb8eff928f5bc937eab24168bceb1122",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3caeed3eeb8eff928f5bc937eab24168bceb1122`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean.json)

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
| 1 | `theorem` | [gcd_greatest](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/gcd-greatest--10fc67ba8cf755d333cc737a.md) | 35 | `result-track:10fc67ba8cf755d333cc737a1806413225af3edb73bf2870d9c152e964b680a8` |
| 2 | `theorem` | [gcd_right_comm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/gcd-right-comm--71bf3864afe6ebb90dd8dfba.md) | 39 | `result-track:71bf3864afe6ebb90dd8dfbaf6203756d553544a6679e87c8c3b1a2675ab4728` |
| 3 | `theorem` | [gcd_gcd_gcd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/gcd-gcd-gcd-right--ec8586c5567cda7f0d08fd63.md) | 42 | `result-track:ec8586c5567cda7f0d08fd63ccc99215371bcff6b523ad31b8c88a4247a988f4` |
| 4 | `theorem` | [gcd_gcd_gcd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/gcd-gcd-gcd-left--5cf2e288cb4e6994dd5bc9b5.md) | 45 | `result-track:5cf2e288cb4e6994dd5bc9b5398cdd8f20eefb898a195678b93529726d89bcf4` |
| 5 | `theorem` | [pow_sub_one_mod_pow_sub_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/pow-sub-one-mod-pow-sub-one--ab185029150b3cebc41f6d69.md) | 51 | `result-track:ab185029150b3cebc41f6d6908189ac32ded84c2ea78c7fad2de655346ad3107` |
| 6 | `theorem` | [pow_sub_one_gcd_pow_sub_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/pow-sub-one-gcd-pow-sub-one--23cf276854d51dc06e2e4eaa.md) | 68 | `result-track:23cf276854d51dc06e2e4eaa70f944cb5242e5976b9bd0fbe4e052f319436e9d` |
| 7 | `theorem` | [dvd_lcm_of_dvd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/dvd-lcm-of-dvd-left--0db7236447d33578c79237e8.md) | 77 | `result-track:0db7236447d33578c79237e87f3a0edc7187410190539341a923d6ad7c69f771` |
| 8 | `theorem` | [dvd_of_lcm_right_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/dvd-of-lcm-right-dvd--7da1cacce9154c0d32d907e8.md) | 82 | `result-track:7da1cacce9154c0d32d907e8be18f97d347925102334a53e882f518b4701fc75` |
| 9 | `theorem` | [dvd_lcm_of_dvd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/dvd-lcm-of-dvd-right--a635773395740ea8b17b3c0f.md) | 85 | `result-track:a635773395740ea8b17b3c0fd97d467f2bc86223724ac53f160f94c09aee6e48` |
| 10 | `theorem` | [dvd_of_lcm_left_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/dvd-of-lcm-left-dvd--a25f61dca4933ef1a5c08b27.md) | 90 | `result-track:a25f61dca4933ef1a5c08b27c8abeb44cf9b07074d80c3c0ea973cf7cd02c1d3` |
| 11 | `theorem` | [Coprime.lcm_eq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-lcm-eq-mul--8c4d5e5ca043033ec087ca02.md) | 99 | `result-track:8c4d5e5ca043033ec087ca02fcf8300e371ea3c1e346e5780bebdd1dc3ffdfdb` |
| 12 | `instance` | [Coprime.stdSymm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-stdsymm--01d8fa1a7172d2e854dd3656.md) | 102 | `declaration-track:01d8fa1a7172d2e854dd365684d84790f359edbf832abd762f4a3ea6d39d1d5a` |
| 13 | `theorem` | [Coprime.dvd_mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-dvd-mul-right--3e2bd50281b847df5734019c.md) | 107 | `result-track:3e2bd50281b847df5734019c9842e074b685db15ee9cb0e0c22160fb41432c94` |
| 14 | `theorem` | [Coprime.dvd_mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-dvd-mul-left--286561077edbd23dc6d5e644.md) | 110 | `result-track:286561077edbd23dc6d5e64431c494dc46e9e4bbbf39a6c78674cb0cad3d9c52` |
| 15 | `theorem` | [coprime_add_self_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-add-self-right--f799a7dfdf3d81a588fc60d3.md) | 114 | `result-track:f799a7dfdf3d81a588fc60d313651cb231a35fa91efc347cbb476754da402042` |
| 16 | `theorem` | [coprime_self_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-self-add-right--0c4be3b2b2c63e1b55616c01.md) | 118 | `result-track:0c4be3b2b2c63e1b55616c0156656caac24610f96d07fe9e965706e66c6d2af0` |
| 17 | `theorem` | [coprime_add_self_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-add-self-left--089fae87eaba48897be678e7.md) | 122 | `result-track:089fae87eaba48897be678e71e807936b36efa75920250fb600a7653267ef710` |
| 18 | `theorem` | [coprime_self_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-self-add-left--f7aaad8b982b8bdbc131e279.md) | 126 | `result-track:f7aaad8b982b8bdbc131e279dec7fe42dc5e7863052370c2fb92ef57a95b3fbb` |
| 19 | `theorem` | [coprime_add_mul_right_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-add-mul-right-right--447640146faf956fd52377e9.md) | 130 | `result-track:447640146faf956fd52377e9a79ad6f5c12f090302e23904147b83839ebcada4` |
| 20 | `theorem` | [coprime_add_mul_left_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-add-mul-left-right--7e15bd77344fe45199a8a491.md) | 134 | `result-track:7e15bd77344fe45199a8a49187c0504aa99c06490cb792e33b728f000f585e7e` |
| 21 | `theorem` | [coprime_mul_right_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-mul-right-add-right--a98d4ecbc9b429ae21c8a637.md) | 138 | `result-track:a98d4ecbc9b429ae21c8a6375bf4282d2ee29bf6ae625fc91cdf292755ef9c8b` |
| 22 | `theorem` | [coprime_mul_left_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-mul-left-add-right--376aa760106ff55253864d19.md) | 142 | `result-track:376aa760106ff55253864d190f18c3a32f835353f2caeabe02b223eb72f90e43` |
| 23 | `theorem` | [coprime_add_mul_right_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-add-mul-right-left--3299ccd6519d0fbafcb7c819.md) | 146 | `result-track:3299ccd6519d0fbafcb7c819711dd0bee11c51b7484e3f77b00d461d723ae208` |
| 24 | `theorem` | [coprime_add_mul_left_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-add-mul-left-left--1707f019923aca6f23cace82.md) | 150 | `result-track:1707f019923aca6f23cace829189643a45c1db09fa2390b8162004953fd12914` |
| 25 | `theorem` | [coprime_mul_right_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-mul-right-add-left--b9bf2ce304c580214fceec19.md) | 154 | `result-track:b9bf2ce304c580214fceec191b6cf20bfafe256eca1bf06f6067130f9a97fa3b` |
| 26 | `theorem` | [coprime_mul_left_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-mul-left-add-left--6fbf54f4dc8da9e0b747e519.md) | 158 | `result-track:6fbf54f4dc8da9e0b747e5197eeeeda948eb37c4e3bbc8c73c8eb883aed3f624` |
| 27 | `lemma` | [add_coprime_iff_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/add-coprime-iff-left--31642e465906bbb8ece53a6d.md) | 161 | `result-track:31642e465906bbb8ece53a6dbf5927f4445866ad9c1ea0bc5cb4536625050102` |
| 28 | `lemma` | [add_coprime_iff_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/add-coprime-iff-right--959b11884abd92180772e4c1.md) | 164 | `result-track:959b11884abd92180772e4c1f81816d46bfc833c9b0a4f0605ff059ac5565c30` |
| 29 | `lemma` | [coprime_add_iff_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-add-iff-left--21ce7a4ff2f9296b03f3a9fc.md) | 167 | `result-track:21ce7a4ff2f9296b03f3a9fca61bac881b87ba8d3bc8e3cbd0d307c5a38558a0` |
| 30 | `lemma` | [coprime_add_iff_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-add-iff-right--1b6b0826fec5be0a4811e781.md) | 170 | `result-track:1b6b0826fec5be0a4811e781a7f7727f96e7262a74f612cd533e236ea806a0c4` |
| 31 | `lemma` | [Coprime.of_dvd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-of-dvd-left--635995501cc3553e74023225.md) | 174 | `result-track:635995501cc3553e74023225fc5f62f15e73b57b08cd0f1a4493e70929a5335b` |
| 32 | `lemma` | [Coprime.of_dvd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-of-dvd-right--211b2d4a9e75b6e4ad77b1fc.md) | 177 | `result-track:211b2d4a9e75b6e4ad77b1fc4d8e07cd7aa5d392a054683c5ac7cb48fa185264` |
| 33 | `lemma` | [Coprime.of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-of-dvd--0c2f202059c6b36fdfb99978.md) | 180 | `result-track:0c2f202059c6b36fdfb99978069516ac7e8d8e09037c42d7da8d0c4c6655af88` |
| 34 | `theorem` | [coprime_sub_self_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-sub-self-left--f53550ceb2537b627fc57b63.md) | 184 | `result-track:f53550ceb2537b627fc57b63e1711bbef3b7cb413fc26c08776c846dcba19ddc` |
| 35 | `theorem` | [coprime_sub_self_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-sub-self-right--c5b19be0b5b78cf08e02135b.md) | 188 | `result-track:c5b19be0b5b78cf08e02135bb78949428ae9a02673005aa0b760cef91a2add03` |
| 36 | `theorem` | [coprime_self_sub_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-self-sub-left--4b21642ce93bf8237db66d79.md) | 192 | `result-track:4b21642ce93bf8237db66d79ed26cc17f5540194703a582a2bf5a878714dc67c` |
| 37 | `theorem` | [coprime_self_sub_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-self-sub-right--93a3cca7c6c7c426dcff95ba.md) | 196 | `result-track:93a3cca7c6c7c426dcff95ba84729fa6a0996126c17e906d2775450e20d88c84` |
| 38 | `theorem` | [coprime_pow_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-pow-left-iff--01a2d86fab05b47dcd9973b6.md) | 200 | `result-track:01a2d86fab05b47dcd9973b6ed494baecad689c539076aec2de1ed998965fbc1` |
| 39 | `theorem` | [coprime_pow_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-pow-right-iff--f0a17ffdbde488ae7cbc28a2.md) | 207 | `result-track:f0a17ffdbde488ae7cbc28a2e9b30e96a90ee646839e72b23d0072167be0a082` |
| 40 | `theorem` | [not_coprime_zero_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/not-coprime-zero-zero--ce71ced269c47ed454d72378.md) | 211 | `result-track:ce71ced269c47ed454d72378b948af1b3808ccc7827859a004d40a641910b169` |
| 41 | `theorem` | [coprime_one_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-one-left-iff--f4e4e83e425ca2619f2ce76d.md) | 213 | `result-track:f4e4e83e425ca2619f2ce76deb04dd67f138a60b1bf416e2cea58bee9025e275` |
| 42 | `theorem` | [coprime_one_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-one-right-iff--2703ab257eb9eb370f0d1bd7.md) | 215 | `result-track:2703ab257eb9eb370f0d1bd7d239fddcf216f8da4abfc5b67e3957aa4e195881` |
| 43 | `theorem` | [gcd_mul_of_coprime_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/gcd-mul-of-coprime-of-dvd--82495de86ae1b6f43fca79fb.md) | 217 | `result-track:82495de86ae1b6f43fca79fb4b90df189637d55d854c6855038a93dc45f9608f` |
| 44 | `theorem` | [Coprime.eq_of_mul_eq_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-eq-of-mul-eq-zero--4acd17383a4128d3d9f0a38a.md) | 224 | `result-track:4acd17383a4128d3d9f0a38a0c38e3537c67ae93d1702ab8beca33ffddabe02a` |
| 45 | `theorem` | [coprime_iff_isRelPrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-iff-isrelprime--fa2e4d5866e4ef91de4ca00b.md) | 230 | `result-track:fa2e4d5866e4ef91de4ca00bd3ed6787f40fc88bdf34fa5ab3f1a5b080491a7d` |
| 46 | `theorem` | [eq_one_of_dvd_coprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/eq-one-of-dvd-coprimes--bf00a94f8a000c6955a5dd09.md) | 235 | `result-track:bf00a94f8a000c6955a5dd09a604958264faafc7d289508f389e262a6090bd85` |
| 47 | `theorem` | [Coprime.mul_add_mul_ne_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/coprime-mul-add-mul-ne-mul--710382f132b41f4260b6a984.md) | 239 | `result-track:710382f132b41f4260b6a984342972041d59b7f9f3197bab43802eb057601bd5` |
| 48 | `theorem` | [gcd_mul_gcd_eq_iff_dvd_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/gcd-mul-gcd-eq-iff-dvd-mul-of-coprime--ad59314ba927a7e33aa51e1c.md) | 256 | `result-track:ad59314ba927a7e33aa51e1c24e0233e3857aaff5ba15d9b056c8fc57202fd49` |
| 49 | `lemma` | [div_mul_div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/div-mul-div--914bbc7028449d9998de9e90.md) | 262 | `result-track:914bbc7028449d9998de9e90dfdfffee53838bd2c3bcbe34dfeb504eea0f8823` |
| 50 | `lemma` | [div_dvd_div_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/div-dvd-div-left--f30631cf222c3a5e64299495.md) | 268 | `result-track:f30631cf222c3a5e64299495d8c71c4cf371554b42f459b56a3929f57217eb9b` |
| 51 | `lemma` | [div_dvd_div_iff_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/div-dvd-div-iff-left--03ff4e1d5ded534777c9a864.md) | 272 | `result-track:03ff4e1d5ded534777c9a864e1dcd19d0c2a45356a2b2a4c00a2c08334acdfac` |
| 52 | `lemma` | [div_dvd_div_iff_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/div-dvd-div-iff-right--d78edf8a82409d0aee2c7d9b.md) | 277 | `result-track:d78edf8a82409d0aee2c7d9bbe207419801f7a2b9bbed4cb9086a2a72c5b2046` |
| 53 | `lemma` | [div_lcm_eq_div_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant93d254fd345ac037198d7a24027a45e44ba82af80fd50124da7fc0d0f03b42ec.lean/declarations/div-lcm-eq-div-gcd--ff8d6698f46418d9dd99b5d7.md) | 282 | `result-track:ff8d6698f46418d9dd99b5d7958e33c04474ffa290adc65575838642713bbccd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
