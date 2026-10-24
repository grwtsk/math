# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Gcd.Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aef83cd28124dae32c7efabff673e84b9a6f981e",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Gcd/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aef83cd28124dae32c7efabff673e84b9a6f981e`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Gcd/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean.json)

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
| 1 | `def` | [Coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime--c13d5ed411aab4f9f6ff7e54.md) | 20 | `declaration-track:c13d5ed411aab4f9f6ff7e54eda2ea4be656eec2a80636077f341fbb38ca34e1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/instance--13bd7c20a7c31d8d8004e854.md) | 23 | `declaration-track:13bd7c20a7c31d8d8004e85419bb8204efc9ad2e01c0779e9f117b8b0718593e` |
| 3 | `theorem` | [coprime_iff_gcd_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-iff-gcd-eq-one--5106ac277af1dae0a775e001.md) | 25 | `result-track:5106ac277af1dae0a775e001ba06c703cbb5576a1a25bc02d1843b4bf5f1e81a` |
| 4 | `theorem` | [Coprime.gcd_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-gcd-eq-one--1ad699bb26873e6b3265c702.md) | 27 | `result-track:1ad699bb26873e6b3265c70288fb91533fc97ddb75762b7332263eff7b3dcbed` |
| 5 | `theorem` | [Coprime.symm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-symm--10502d89ab2ceeb64b07cc64.md) | 29 | `result-track:10502d89ab2ceeb64b07cc64302ffbb17519f7fc0d0426ce5c63840ff57bc745` |
| 6 | `theorem` | [coprime_comm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-comm--89c95b81bdb0439754713a3b.md) | 31 | `result-track:89c95b81bdb0439754713a3be7c1597ad8b70f2a7f40af085518b68105d9f7b9` |
| 7 | `theorem` | [Coprime.dvd_of_dvd_mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-dvd-of-dvd-mul-right--24ee1f98870e86551823a97b.md) | 33 | `result-track:24ee1f98870e86551823a97b41e0af15b31a74c83b7c11661b49729baa27371f` |
| 8 | `theorem` | [Coprime.dvd_of_dvd_mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-dvd-of-dvd-mul-left--339d1a32c3dd505b3fb21309.md) | 37 | `result-track:339d1a32c3dd505b3fb21309a1aeb90dfbeeab0696ff79acdff1b6fb4bfe8985` |
| 9 | `theorem` | [Coprime.gcd_mul_left_cancel](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-gcd-mul-left-cancel--d1d3fb8494ca966a509494ee.md) | 40 | `result-track:d1d3fb8494ca966a509494eeb510fba715a8e841320d80b33e4962e75ecc7dd2` |
| 10 | `theorem` | [Coprime.gcd_mul_right_cancel](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-gcd-mul-right-cancel--d753d85c3acf5d9697f41279.md) | 47 | `result-track:d753d85c3acf5d9697f41279ae403baeac5ced7995602620f2288c4fccfde724` |
| 11 | `theorem` | [Coprime.gcd_mul_left_cancel_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-gcd-mul-left-cancel-right--e3d81b7e8faff34354d288ec.md) | 50 | `result-track:e3d81b7e8faff34354d288ecef0eef8e763b2a86c4fa9261184c33ee9e1c8684` |
| 12 | `theorem` | [Coprime.gcd_mul_right_cancel_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-gcd-mul-right-cancel-right--23b7ec677148f0ea194c0270.md) | 54 | `result-track:23b7ec677148f0ea194c02709b68e543e950fd869c250549b5d97c6c76ec64f3` |
| 13 | `theorem` | [coprime_div_gcd_div_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-div-gcd-div-gcd--8b8bc94ad422467ccf57cf10.md) | 58 | `result-track:8b8bc94ad422467ccf57cf103b4c7b33cb9f81cd98ebc8caa178824c2499e26d` |
| 14 | `theorem` | [not_coprime_of_dvd_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/not-coprime-of-dvd-of-dvd--c4f553a3e7cfd5616b11bca0.md) | 62 | `result-track:c4f553a3e7cfd5616b11bca0c76fc6217dfc1f42d3b30b1f81545a7ceb304451` |
| 15 | `theorem` | [exists_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/exists-coprime--11d320e7163fe3e2ff59d9e1.md) | 66 | `result-track:11d320e7163fe3e2ff59d9e11ed0b11ef6fd5855b34eb8a6cf98d88fbd0f61b9` |
| 16 | `theorem` | [exists_coprime'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/exists-coprime--b1a00ac3ee49e34fa43d19e6.md) | 78 | `result-track:b1a00ac3ee49e34fa43d19e61c83495b77d81a799b40b3be29f928683776b71d` |
| 17 | `theorem` | [Coprime.mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-mul--0047ee37e01e39f81d242c14.md) | 82 | `result-track:0047ee37e01e39f81d242c1426e45e8a5635c4b1b962488f0602abce68f2379a` |
| 18 | `theorem` | [Coprime.mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-mul-right--764d705c4033c80435e0cc14.md) | 85 | `result-track:764d705c4033c80435e0cc14c5c3d76492451e2b878b6f1eb1ca7760109331e5` |
| 19 | `theorem` | [Coprime.coprime_dvd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-coprime-dvd-left--b3ebe4a3f64dc9690d87a2dc.md) | 88 | `result-track:b3ebe4a3f64dc9690d87a2dc23fb0af94a93c9ca04341bc3a2e975b494128fbb` |
| 20 | `theorem` | [Coprime.coprime_dvd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-coprime-dvd-right--366673eefdd68ef035221e5f.md) | 94 | `result-track:366673eefdd68ef035221e5f618492fbb50671c651fc123dd38acf768eb01e82` |
| 21 | `theorem` | [Coprime.coprime_mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-coprime-mul-left--dbcd8c8e691d04f67390d0a7.md) | 97 | `result-track:dbcd8c8e691d04f67390d0a7dfb0f4595026f3e0aa9c440264990a6adcd99549` |
| 22 | `theorem` | [Coprime.coprime_mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-coprime-mul-right--aefeb06a43426cefd1c2ad3c.md) | 100 | `result-track:aefeb06a43426cefd1c2ad3cfa78459d92e41ab40159c84b8b52335249221fde` |
| 23 | `theorem` | [Coprime.coprime_mul_left_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-coprime-mul-left-right--05e78f6be1fe7072379cb67d.md) | 103 | `result-track:05e78f6be1fe7072379cb67d1ee58f2582ebc1b0f14eda841755378d954d953d` |
| 24 | `theorem` | [Coprime.coprime_mul_right_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-coprime-mul-right-right--fac09a367edf93a9e5b4493a.md) | 106 | `result-track:fac09a367edf93a9e5b4493ad8698b628845e997c18bc05395e0906cd5c9c895` |
| 25 | `theorem` | [Coprime.coprime_div_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-coprime-div-left--398ee8251bb7939d441ea14a.md) | 109 | `result-track:398ee8251bb7939d441ea14a63531abd736be0208c0303146ce63abf50f0f235` |
| 26 | `theorem` | [Coprime.coprime_div_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-coprime-div-right--ebdd5ffdf2b582777bff3a0e.md) | 121 | `result-track:ebdd5ffdf2b582777bff3a0ecc0152783d261756a53e1971404ae3bc22507cbb` |
| 27 | `theorem` | [coprime_mul_iff_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-mul-iff-left--fefa180bd62c573316f398df.md) | 124 | `result-track:fefa180bd62c573316f398df2e83b65410e389a8e82134450d24a544a55d0da5` |
| 28 | `theorem` | [coprime_mul_iff_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-mul-iff-right--be34a4bf219cffa3d128ddd7.md) | 128 | `result-track:be34a4bf219cffa3d128ddd7c37f14b5597da60305188eaf36a8dd58d5b9da34` |
| 29 | `theorem` | [Coprime.gcd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-gcd-left--19abd9a3d92656b658a381dc.md) | 131 | `result-track:19abd9a3d92656b658a381dc09348ab5deb2508c99c17ee76cf57c88c825e2dc` |
| 30 | `theorem` | [Coprime.gcd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-gcd-right--715a18eafc3e88040a0793c1.md) | 134 | `result-track:715a18eafc3e88040a0793c199880dda75332515d956876bb9f95be8a8a1ee6a` |
| 31 | `theorem` | [Coprime.gcd_both](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-gcd-both--30ce8bae7ccd5f2a6253b29f.md) | 137 | `result-track:30ce8bae7ccd5f2a6253b29fdda8274bc891ab0e37dc80d0274cfdc3b112bf98` |
| 32 | `theorem` | [Coprime.mul_dvd_of_dvd_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-mul-dvd-of-dvd-of-dvd--c5eebc587d0efa2473485093.md) | 140 | `result-track:c5eebc587d0efa24734850930bc729ac7d7205fe276bb2c044aaa717d18bb291` |
| 33 | `theorem` | [coprime_zero_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-zero-left--8efd14792a9807f4628e04bf.md) | 144 | `result-track:8efd14792a9807f4628e04bff9960e40bf15b66388ff0d8cb74ef3ce47eac8b4` |
| 34 | `theorem` | [coprime_zero_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-zero-right--8aaa314b843691ac9fe8df8f.md) | 146 | `result-track:8aaa314b843691ac9fe8df8fa411c7f5f0003c61dd2d33e2292ed0f6fa7ec18d` |
| 35 | `theorem` | [coprime_one_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-one-left--1bf0f7f5d046fa19550e09af.md) | 148 | `result-track:1bf0f7f5d046fa19550e09af83db503dfdf842c7c3baa8685ba8784fbded07e0` |
| 36 | `theorem` | [coprime_one_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-one-right--f8552a7a6631f23aee7a51d7.md) | 150 | `result-track:f8552a7a6631f23aee7a51d7c0d6095d4654fae245a5167eaa42f3d82012e9e2` |
| 37 | `theorem` | [coprime_one_left_eq_true](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-one-left-eq-true--ed86f54c5ed0915ab7980e66.md) | 152 | `result-track:ed86f54c5ed0915ab7980e665ce8c165d59fde4c25649b1692792eb1f5878328` |
| 38 | `theorem` | [coprime_one_right_eq_true](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-one-right-eq-true--e060e415e03b78a8a3905d5a.md) | 154 | `result-track:e060e415e03b78a8a3905d5a030647761fd67f6d0a5630cc2930972301005599` |
| 39 | `theorem` | [coprime_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-self--9208e1931e1fbc7c90cfba88.md) | 156 | `result-track:9208e1931e1fbc7c90cfba88ac5fc82112f782b5d5d9516b04de1bb8877e1f34` |
| 40 | `theorem` | [Coprime.pow_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-pow-left--63efb93ebaed41afb9a08c18.md) | 158 | `result-track:63efb93ebaed41afb9a08c186a6bea26cd5c6167294df39a5eea7cdedf5dd1cc` |
| 41 | `theorem` | [Coprime.pow_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-pow-right--aa3109b566bb9cea86da2407.md) | 163 | `result-track:aa3109b566bb9cea86da2407754b5a8592994673e2a5e7868b56c13eca4303d4` |
| 42 | `theorem` | [Coprime.pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-pow--7fe1e0dede06ef3bf2095821.md) | 166 | `result-track:7fe1e0dede06ef3bf20958219b6ad82e06aa64607bd9cad13cda5c5975c50bd2` |
| 43 | `theorem` | [Coprime.eq_one_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-eq-one-of-dvd--60e02d1b1c680c984f1bff09.md) | 169 | `result-track:60e02d1b1c680c984f1bff09363771b1f2f283ce3665b55a1acc510d7c7eb1fc` |
| 44 | `theorem` | [Coprime.gcd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/coprime-gcd-mul--0470dd64ab943162555a2d33.md) | 172 | `result-track:0470dd64ab943162555a2d33b9c5bc8db34d79809997fa4302991839a7b5d501` |
| 45 | `theorem` | [gcd_mul_gcd_of_coprime_of_mul_eq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean/declarations/gcd-mul-gcd-of-coprime-of-mul-eq-mul--2d90a570b7c531fe56845725.md) | 179 | `result-track:2d90a570b7c531fe56845725eecefcc0a2f2810720744d81dd24f1599e27e37d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
