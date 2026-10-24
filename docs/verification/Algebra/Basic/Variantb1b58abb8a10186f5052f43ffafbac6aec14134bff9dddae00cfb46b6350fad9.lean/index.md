# Verification target: GRWTSK.Algebra.Basic.Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "625b3283e6ecd7c3ee3acda4bc3acc51f895f4d7",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `625b3283e6ecd7c3ee3acda4bc3acc51f895f4d7`.

Source path: `GRWTSK/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_div_cancel_left](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/mul-div-cancel-left--18ebf3c05d5c2ab3b4fab40b.md) | 43 | `result-track:18ebf3c05d5c2ab3b4fab40b9043dd7b16eb0acce7e603ec51b7a29833e7e4cc` |
| 2 | `theorem` | [mul_div_cancel](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/mul-div-cancel--0e5816de20e552e2707b0b67.md) | 52 | `result-track:0e5816de20e552e2707b0b671bd216d83637a5e1ad297eba987605efd6c1da37` |
| 3 | `theorem` | [mod_eq_zero](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/mod-eq-zero--1403cc659e7b376f85ad04d8.md) | 58 | `result-track:1403cc659e7b376f85ad04d8e304e9abb2e42fe37878c035229939cce98116b2` |
| 4 | `theorem` | [mod_self](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/mod-self--c10bf208140a28c58a4c6ef4.md) | 70 | `result-track:c10bf208140a28c58a4c6ef47252f415e7c26cb3a22399d95203c5c528e2a913` |
| 5 | `theorem` | [dvd_mod_iff](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/dvd-mod-iff--b645d4448299fdf8cdd553bb.md) | 74 | `result-track:b645d4448299fdf8cdd553bb2b23a1068af38e44d039437979e6f2ed337af590` |
| 6 | `theorem` | [mod_one](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/mod-one--ddb2cfce73c50fb192419ab1.md) | 79 | `result-track:ddb2cfce73c50fb192419ab162ea0125b3f1e640cfb6ab55a679f52b1b81f116` |
| 7 | `theorem` | [zero_mod](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/zero-mod--24942c307bda78cf163f13cd.md) | 84 | `result-track:24942c307bda78cf163f13cdac08f3d8a8e09550a8624b5a1506e8e2f6f77605` |
| 8 | `theorem` | [zero_div](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/zero-div--28a5a7ee4e4d41afca3264b1.md) | 89 | `result-track:28a5a7ee4e4d41afca3264b12f600718b7053b66ff41c86a7d816bfe3287e4da` |
| 9 | `theorem` | [div_self](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/div-self--c8148552a59e59233c21575d.md) | 95 | `result-track:c8148552a59e59233c21575d4d5fc544b8bb3b503398ee69f18babeeac5de0e8` |
| 10 | `theorem` | [eq_div_of_mul_eq_left](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/eq-div-of-mul-eq-left--878f42a171b144d6dde6c689.md) | 99 | `result-track:878f42a171b144d6dde6c6891fbbcd0bc98dcd4ca46f757ae843fc37923f0e6d` |
| 11 | `theorem` | [eq_div_of_mul_eq_right](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/eq-div-of-mul-eq-right--48335562f1e5865c505e53f6.md) | 103 | `result-track:48335562f1e5865c505e53f61387db16dafe78ebc2b7d7ba1a01fa455394456a` |
| 12 | `theorem` | [mul_div_assoc](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/mul-div-assoc--f3d7a04a05b9e25432ed66e6.md) | 107 | `result-track:f3d7a04a05b9e25432ed66e6679779481f0bd167ffc3962b14b641f43d12fe44` |
| 13 | `theorem` | [mul_div_cancel'](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/mul-div-cancel--909e961229e6530ecad41452.md) | 115 | `result-track:909e961229e6530ecad41452f8a2b1213f20a078c170593b4a14b64e38a49b17` |
| 14 | `theorem` | [div_one](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/div-one--b8cbdcfe047910eeabf5058a.md) | 121 | `result-track:b8cbdcfe047910eeabf5058a8a6e46097f5de5495c997c8c61d0384daba4c76a` |
| 15 | `theorem` | [div_dvd_of_dvd](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/div-dvd-of-dvd--e54c0fbaf5ef00a08a0e2825.md) | 125 | `result-track:e54c0fbaf5ef00a08a0e2825207231d3a94a4fd7009d3eb82b55b4a3e3d1cedf` |
| 16 | `theorem` | [dvd_div_of_mul_dvd](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/dvd-div-of-mul-dvd--80563abc74bf31493c7d74e9.md) | 135 | `result-track:80563abc74bf31493c7d74e9fe5bad57981cf8eb5ce5f566b73e1d5110298133` |
| 17 | `theorem` | [gcd_zero_right](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/gcd-zero-right--0796455f3c125940d6a4ce82.md) | 148 | `result-track:0796455f3c125940d6a4ce829819543119eef0726a0904cf19807aeb2a5ad9fa` |
| 18 | `theorem` | [gcd_val](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/gcd-val--5cef16616a5202eb344db32c.md) | 153 | `result-track:5cef16616a5202eb344db32c6751cb772b550b25f210736c348a057ec1af2382` |
| 19 | `theorem` | [gcd_dvd](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/gcd-dvd--11294e591fc0f11bb500783a.md) | 158 | `result-track:11294e591fc0f11bb500783aedb6012eecd0f1509415ae5f530bc65a92b5270b` |
| 20 | `theorem` | [gcd_dvd_left](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/gcd-dvd-left--1bd125efca827423393d1aef.md) | 168 | `result-track:1bd125efca827423393d1aefa546a797c156ffc9438c2b99dc4214d247b2de1e` |
| 21 | `theorem` | [gcd_dvd_right](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/gcd-dvd-right--201f762b0bc72b4d4f9ffbe6.md) | 172 | `result-track:201f762b0bc72b4d4f9ffbe6e999ae2ebdc2c11ce162dae85320de14e1e7dbec` |
| 22 | `theorem` | [gcd_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/gcd-eq-zero-iff--030cea364d54ed9f3f91a4be.md) | 176 | `result-track:030cea364d54ed9f3f91a4bef9b09835b1c4461cf66b2ef03b4726e93e26950b` |
| 23 | `theorem` | [dvd_gcd](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/dvd-gcd--2de8ed85796ee96f691340da.md) | 182 | `result-track:2de8ed85796ee96f691340da6cb583834c72c440b4ab97dbe39649806f263565` |
| 24 | `theorem` | [gcd_eq_left](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/gcd-eq-left--5e0a1980d6176cd91354bac0.md) | 188 | `result-track:5e0a1980d6176cd91354bac07eddc83d316e97a5781021e6d2f5bfc821ea25ad` |
| 25 | `theorem` | [gcd_one_left](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/gcd-one-left--127f80f2d5337e6491467211.md) | 195 | `result-track:127f80f2d5337e6491467211d6acb31fd48497e59cabd008c54757caabb40404` |
| 26 | `theorem` | [gcd_self](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/gcd-self--caa07e9c064e7fdc3d30a16e.md) | 200 | `result-track:caa07e9c064e7fdc3d30a16e5c33f6124ba3a149b3e4d7b264ac24487e91da13` |
| 27 | `theorem` | [xgcdAux_fst](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/xgcdaux-fst--eb076c0c83ff84c85fa31cc8.md) | 205 | `result-track:eb076c0c83ff84c85fa31cc8daa1c8083436222a5626c5aafafbed325e5c0236` |
| 28 | `theorem` | [xgcdAux_val](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/xgcdaux-val--0c4aaca3e3eff6469d1e9317.md) | 215 | `result-track:0c4aaca3e3eff6469d1e9317da145ecefae06a007506fc22cb2b1944fa7f63ab` |
| 29 | `def` | [P](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/p--32bd55594e3a4f027784e43c.md) | 219 | `declaration-track:32bd55594e3a4f027784e43c22057d8ce0d9bf3be1103352030b66ad80a1f8c6` |
| 30 | `theorem` | [xgcdAux_P](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/xgcdaux-p--cd044aa78a8c2a6efaf93316.md) | 222 | `result-track:cd044aa78a8c2a6efaf93316d0d5fe0c939b257cc75f3d7f3492fba84736e9c8` |
| 31 | `theorem` | [gcd_eq_gcd_ab](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/gcd-eq-gcd-ab--c4e8558706dc4a595e0b874b.md) | 237 | `result-track:c4e8558706dc4a595e0b874b1a169649cd4fb80b64d9d4fdf7b168116ad5142d` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/instance--911a5d736519619ef1d1493d.md) | 245 | `declaration-track:911a5d736519619ef1d1493d17a7ee9cab7fa40976dcf87c8bb924a1a439ed0a` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/instance--8fe22e3e0caa5eaac4947696.md) | 251 | `declaration-track:8fe22e3e0caa5eaac4947696259f24bac0cb3b4eea12adf3d114d34551e0abd1` |
| 34 | `theorem` | [dvd_lcm_left](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/dvd-lcm-left--9f7a9c2b3ebd49e2aa087ff9.md) | 260 | `result-track:9f7a9c2b3ebd49e2aa087ff9136586e78352b896ab1a3b5dab4373ae5d07fe30` |
| 35 | `theorem` | [dvd_lcm_right](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/dvd-lcm-right--649e8978dfaf2624b99aa5aa.md) | 270 | `result-track:649e8978dfaf2624b99aa5aacb9580e01258e04daec0c065203985acb1ed4bc4` |
| 36 | `theorem` | [lcm_dvd](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/lcm-dvd--f44b24fc7fc9aa0baaed4ff5.md) | 280 | `result-track:f44b24fc7fc9aa0baaed4ff5d9c3d658690097e185e2f7d8cac7fc2db411d876` |
| 37 | `theorem` | [lcm_dvd_iff](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/lcm-dvd-iff--ac68733b8b93741a93039af6.md) | 304 | `result-track:ac68733b8b93741a93039af6cff76a984fee3c9ad3784254b064b044c11e6aea` |
| 38 | `theorem` | [lcm_zero_left](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/lcm-zero-left--9e5bb1ce1c1ebb507504d8ac.md) | 310 | `result-track:9e5bb1ce1c1ebb507504d8ac7b2f440579411bea39b5adbbf3b3baaed6a8f03f` |
| 39 | `theorem` | [lcm_zero_right](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/lcm-zero-right--0056de0582179d3f921a3b43.md) | 314 | `result-track:0056de0582179d3f921a3b4373043871930df92f4f9e8dd588c1a601a14db1ef` |
| 40 | `theorem` | [lcm_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/lcm-eq-zero-iff--bbf90b69a5c822892ca6ac97.md) | 318 | `result-track:bbf90b69a5c822892ca6ac971a913c7451342ffcf10e7ba19a97f05028c8fb4b` |
| 41 | `theorem` | [gcd_mul_lcm](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/gcd-mul-lcm--9ede67f5417b333ed029681d.md) | 338 | `result-track:9ede67f5417b333ed029681d2099598dce1eca7ed5839725a704127d97f1bf44` |
| 42 | `theorem` | [mul_div_mul_cancel](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/mul-div-mul-cancel--d0370d6131e0de6c237b62d9.md) | 352 | `result-track:d0370d6131e0de6c237b62d94ac5c20020465b8711bd159ad4fc5ed38dd20ce0` |
| 43 | `theorem` | [mul_div_mul_comm_of_dvd_dvd](../../../../mathematics/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/declarations/mul-div-mul-comm-of-dvd-dvd--c900acf1d16bfed91b956c00.md) | 359 | `result-track:c900acf1d16bfed91b956c00699a4ecb92faf5261dfd4024b394b284cfb4ccd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
