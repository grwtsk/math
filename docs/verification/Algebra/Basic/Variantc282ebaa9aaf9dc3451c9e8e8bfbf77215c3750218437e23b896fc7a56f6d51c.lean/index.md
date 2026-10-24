# Verification target: GRWTSK.Algebra.Basic.Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b99b4b31bb24159cd33c61720542181c5ee4466",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b99b4b31bb24159cd33c61720542181c5ee4466`.

Source path: `GRWTSK/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/instance--6b30b4cef1819d4bf6197f1b.md) | 33 | `declaration-track:6b30b4cef1819d4bf6197f1bc2a1c723667458af65309560fff9dff8064dcb1c` |
| 2 | `theorem` | [mod_eq_sub_mul_div](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/mod-eq-sub-mul-div--19eefabee437dcca035e0592.md) | 41 | `result-track:19eefabee437dcca035e059242823a869336a410a5215f5e5ee1890840984054` |
| 3 | `theorem` | [val_dvd_le](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/val-dvd-le--2e715267637bbd40edf809b3.md) | 46 | `result-track:2e715267637bbd40edf809b36b7ea85e4f73c3b194b9dd78adc619708786c674` |
| 4 | `theorem` | [mod_eq_zero](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/mod-eq-zero--e2a66f8f23976dc5b6bceda8.md) | 50 | `result-track:e2a66f8f23976dc5b6bceda831683e3e014736b0536146141bb2c9464d8f6c50` |
| 5 | `theorem` | [mod_self](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/mod-self--86e27ad553f03fa6a47ebacc.md) | 61 | `result-track:86e27ad553f03fa6a47ebacc20148970fbbcb9591fdd117fd70808b83d108ad7` |
| 6 | `theorem` | [dvd_mod_iff](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/dvd-mod-iff--ab5c5c4bfa66eb3471a0a62f.md) | 64 | `result-track:ab5c5c4bfa66eb3471a0a62f8ebc43901490586dc2f2d814217293f9179cca34` |
| 7 | `theorem` | [mod_one](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/mod-one--b44bf23425b70f53e76d3e39.md) | 68 | `result-track:b44bf23425b70f53e76d3e391eba48338b0fbfb6cbda439526d4ea953b8684da` |
| 8 | `theorem` | [zero_mod](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/zero-mod--5fa8ce75ed5fcaf9915b5ad6.md) | 72 | `result-track:5fa8ce75ed5fcaf9915b5ad6a064c803587744cb86f35c1f10e202c191e12a7c` |
| 9 | `theorem` | [zero_div](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/zero-div--eb586409b11894bcfdf2a4c8.md) | 76 | `result-track:eb586409b11894bcfdf2a4c85b1c7ca6c5329c1879e71c7e8331213e45f64b1e` |
| 10 | `theorem` | [div_self](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/div-self--4a276ff00a6a34c823b59079.md) | 81 | `result-track:4a276ff00a6a34c823b590792b997247afcc1b72a5e990b63b909a7f0214c428` |
| 11 | `theorem` | [eq_div_of_mul_eq_left](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/eq-div-of-mul-eq-left--78a8382d029dbdde2dc2ee91.md) | 84 | `result-track:78a8382d029dbdde2dc2ee91d890f3aa4a42b5464a564cbb37decc753157460e` |
| 12 | `theorem` | [eq_div_of_mul_eq_right](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/eq-div-of-mul-eq-right--f4d5fe6edad75d7dc77cef7b.md) | 87 | `result-track:f4d5fe6edad75d7dc77cef7b1fd397e144dc40f87b4049af37eea2e7568f5db0` |
| 13 | `theorem` | [mul_div_assoc](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/mul-div-assoc--5913212759ddd11ef5572f0b.md) | 90 | `result-track:5913212759ddd11ef5572f0bd63b368391ac80a7c80eb508ebdad477b5407b67` |
| 14 | `theorem` | [mul_div_cancel'](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/mul-div-cancel--624b421c9421ef7dfcc6427f.md) | 97 | `result-track:624b421c9421ef7dfcc6427f0afc4df057c2491a4f8dd1e4b45066c1e2ca0a99` |
| 15 | `theorem` | [div_one](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/div-one--1894937ed2a35998eda67165.md) | 102 | `result-track:1894937ed2a35998eda6716587742de584d5f8cd2af605dac3c59bc95698bb69` |
| 16 | `theorem` | [div_dvd_of_dvd](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/div-dvd-of-dvd--53ba0f483ba2b6bab0bf427d.md) | 105 | `result-track:53ba0f483ba2b6bab0bf427df9462b3ca00f35eb18c44d453fa6fcb34ddc3c87` |
| 17 | `theorem` | [dvd_div_of_mul_dvd](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/dvd-div-of-mul-dvd--1dec9a771c61fa614c61481c.md) | 113 | `result-track:1dec9a771c61fa614c61481c7ffe2aa57ad497da104d201bce39c41f56629ab0` |
| 18 | `theorem` | [gcd_zero_right](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/gcd-zero-right--5b724929842a51454b2aaec7.md) | 125 | `result-track:5b724929842a51454b2aaec7b34ac5063d634c3c06ede4c0837fd78d7e33bbe8` |
| 19 | `theorem` | [gcd_val](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/gcd-val--5d466ab24fae16f8495cc551.md) | 129 | `result-track:5d466ab24fae16f8495cc551fe7dc077a87466167febcc6f0e7ae9f14a81f635` |
| 20 | `theorem` | [gcd_dvd](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/gcd-dvd--d9e07cb7d2244dae7ad910f0.md) | 133 | `result-track:d9e07cb7d2244dae7ad910f0e8d95c538da87af513b4748beb997779a55991ae` |
| 21 | `theorem` | [gcd_dvd_left](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/gcd-dvd-left--e59d1e85b41a88a7f1972d42.md) | 142 | `result-track:e59d1e85b41a88a7f1972d4299712c1a51719c6906e26ecc13b7a4268582382f` |
| 22 | `theorem` | [gcd_dvd_right](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/gcd-dvd-right--7ad5cb3c0c2bb62b685f8e6b.md) | 145 | `result-track:7ad5cb3c0c2bb62b685f8e6b5ebf134ebeb6d484dcda6470c4257caa1ebd93de` |
| 23 | `theorem` | [gcd_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/gcd-eq-zero-iff--4589e0e7aebf3183b71cd2a9.md) | 148 | `result-track:4589e0e7aebf3183b71cd2a96ca45ae2e01bfd445e794c93c3f55968d22df00f` |
| 24 | `theorem` | [dvd_gcd](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/dvd-gcd--58229b44dcf77333a30fbb97.md) | 153 | `result-track:58229b44dcf77333a30fbb97a8da9d57070d9b1fef1cba04ef325e1883756e8a` |
| 25 | `theorem` | [gcd_eq_left](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/gcd-eq-left--fb1e8da48c796e52bc2fa2ad.md) | 158 | `result-track:fb1e8da48c796e52bc2fa2adbc7760f893fd393a18e8faf9f3af108326b73cfa` |
| 26 | `theorem` | [gcd_one_left](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/gcd-one-left--c860b761d4ec75d01fa4065a.md) | 164 | `result-track:c860b761d4ec75d01fa4065a2926baba943ee849eed57161f967cbf1951e66aa` |
| 27 | `theorem` | [gcd_self](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/gcd-self--6946f9b992f6216286828a6c.md) | 168 | `result-track:6946f9b992f6216286828a6caa24b7c08079e373ea5448301413ba718b2368bb` |
| 28 | `theorem` | [xgcdAux_fst](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/xgcdaux-fst--1fe02b7ec860363d9880adb1.md) | 172 | `result-track:1fe02b7ec860363d9880adb138f63570ab31f8e204f16405e139d02dde2e3957` |
| 29 | `theorem` | [xgcdAux_val](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/xgcdaux-val--150aad197fe967b952a33668.md) | 181 | `result-track:150aad197fe967b952a3366893a219dacc6e4cabb6de38bc8f5f1525cb21fbdb` |
| 30 | `def` | [P](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/p--b338b66eb5ac99cf6425afa6.md) | 184 | `declaration-track:b338b66eb5ac99cf6425afa6a17f576bc970c3fab6dea4a58579de771a9af89d` |
| 31 | `theorem` | [xgcdAux_P](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/xgcdaux-p--b7ec5bce7edc5dc0b7021800.md) | 187 | `result-track:b7ec5bce7edc5dc0b7021800fe3be90b7b7597a38d430e3a9196a775c81e85b0` |
| 32 | `theorem` | [gcd_eq_gcd_ab](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/gcd-eq-gcd-ab--321e1f4dcf0379e5d11a54b3.md) | 200 | `result-track:321e1f4dcf0379e5d11a54b34fcc18db2f572946d1f085051e2e49081679fc3b` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/instance--4e7a657f47d1f3c2adfa960e.md) | 207 | `declaration-track:4e7a657f47d1f3c2adfa960e1693c85e5210fed9397cf03431fe980e17b872a3` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/instance--b4b1a166acc1c93ee2c9601a.md) | 213 | `declaration-track:b4b1a166acc1c93ee2c9601a38959c7f89bbf5aaca690abeb9e7089654dee5e2` |
| 35 | `theorem` | [dvd_lcm_left](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/dvd-lcm-left--2eb3a678f7b5ec8691bb9caa.md) | 222 | `result-track:2eb3a678f7b5ec8691bb9caade6ad70be382eb330e80fb83aeb0613c9174de80` |
| 36 | `theorem` | [dvd_lcm_right](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/dvd-lcm-right--389a6a4c5d100bf85013b823.md) | 231 | `result-track:389a6a4c5d100bf85013b82304710c9aeddbdba490e4dc67f55d92cf105d2ff3` |
| 37 | `theorem` | [lcm_dvd](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/lcm-dvd--94a574a714e4df7f9ce870b3.md) | 240 | `result-track:94a574a714e4df7f9ce870b33875ce7436d8f938e11ff75b0a8dac061897cc5f` |
| 38 | `theorem` | [lcm_dvd_iff](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/lcm-dvd-iff--f4bb846bbec281d0470442b9.md) | 263 | `result-track:f4bb846bbec281d0470442b9a0f83b7033c62ebd5f1992e944b2bca12e17c07b` |
| 39 | `theorem` | [lcm_zero_left](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/lcm-zero-left--e863993e15f961da77baad7a.md) | 268 | `result-track:e863993e15f961da77baad7a248fbb490890991cee6acb5f1b56cdb3dc976ac0` |
| 40 | `theorem` | [lcm_zero_right](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/lcm-zero-right--30ce194e9ab26027f4f7cc96.md) | 271 | `result-track:30ce194e9ab26027f4f7cc96c468c4acf2de479375b55a9dc03868900d8b9541` |
| 41 | `theorem` | [lcm_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/lcm-eq-zero-iff--018134a68c51b72f1266a014.md) | 274 | `result-track:018134a68c51b72f1266a014a407bb59e1432fccd042d73abfcda5e832ae17b4` |
| 42 | `theorem` | [gcd_mul_lcm](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/gcd-mul-lcm--28f02139b16a66f41184c6db.md) | 293 | `result-track:28f02139b16a66f41184c6db02a8088adb3815c66a6b604db8a5eef641bc42d2` |
| 43 | `theorem` | [mul_div_mul_cancel](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/mul-div-mul-cancel--e66b6b78ca39b2b05107e52a.md) | 306 | `result-track:e66b6b78ca39b2b05107e52aaac970fd8f7ae1274861908409407477f5dd127b` |
| 44 | `theorem` | [mul_div_mul_comm_of_dvd_dvd](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/mul-div-mul-comm-of-dvd-dvd--7575f82623f367b302108a6e.md) | 312 | `result-track:7575f82623f367b302108a6e4b21e5440c3eb1aec079479333235e469ddf85e8` |
| 45 | `theorem` | [add_mul_div_left](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/add-mul-div-left--ffedc2326dae7d249387d1ff.md) | 321 | `result-track:ffedc2326dae7d249387d1ff3f3f97a383d166dc409891cc8d16898014aabc3f` |
| 46 | `theorem` | [add_mul_div_right](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/add-mul-div-right--e77e29a154acff4fbd88a9be.md) | 326 | `result-track:e77e29a154acff4fbd88a9bedab9a0f35894b5526d38294308deffdd0dc76de7` |
| 47 | `theorem` | [sub_mul_div_left](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/sub-mul-div-left--17a4e2a690ff22a5a36951ef.md) | 330 | `result-track:17a4e2a690ff22a5a36951ef5d607a66c1e86e1f8f1a3d4fbc5af35de1555703` |
| 48 | `theorem` | [sub_mul_div_right](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/sub-mul-div-right--c566885095c95f10d7c532ec.md) | 335 | `result-track:c566885095c95f10d7c532ec626da791c953de5a7c4b5b3a0a739eb2d778a53b` |
| 49 | `theorem` | [mul_add_div_left](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/mul-add-div-left--074fd48a6d140d926b960957.md) | 339 | `result-track:074fd48a6d140d926b960957f5a2b27367431604b6848cacb46f7e423e634a98` |
| 50 | `theorem` | [mul_add_div_right](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/mul-add-div-right--1376538c691c6293e0c40414.md) | 344 | `result-track:1376538c691c6293e0c40414c80b43430f2ed275a151a6317b4f482af2a997c6` |
| 51 | `theorem` | [mul_sub_div_left](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/mul-sub-div-left--1e6d6d83f0ee37fcb4551b03.md) | 348 | `result-track:1e6d6d83f0ee37fcb4551b038704b5485683977c3ac59922708ddca8f8cc577d` |
| 52 | `theorem` | [mul_sub_div_right](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/mul-sub-div-right--454c603f00e6b261b10bb8e1.md) | 353 | `result-track:454c603f00e6b261b10bb8e15aacc325d77ad3be42feb0a80a2a054fc0f53794` |
| 53 | `theorem` | [div_mul](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/div-mul--2ed9e959e27c7fa830535917.md) | 357 | `result-track:2ed9e959e27c7fa83053591790ee5d89dce2a1c5c6d2b9b753602bd068cd392e` |
| 54 | `theorem` | [div_div](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/div-div--2e7f739cf20c491fd2645d83.md) | 364 | `result-track:2e7f739cf20c491fd2645d831bb56572df66260b029b4d5c5a44bb6ed70c5832` |
| 55 | `theorem` | [div_add_div_of_dvd](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/div-add-div-of-dvd--8136c245c2468c09ddbb28a1.md) | 371 | `result-track:8136c245c2468c09ddbb28a1289703dbf834c2a33631a65b3132a47d44f2a650` |
| 56 | `theorem` | [div_sub_div_of_dvd](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/div-sub-div-of-dvd--dc0c292b4e79b7015f287256.md) | 377 | `result-track:dc0c292b4e79b7015f28725687c040c38162bea10a5c51a4751efb6780b898c6` |
| 57 | `theorem` | [div_eq_iff_eq_mul_of_dvd](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/div-eq-iff-eq-mul-of-dvd--8e882b0cff88b55b26ad025a.md) | 383 | `result-track:8e882b0cff88b55b26ad025afacc56f1a656399731bcc713094792a447949de8` |
| 58 | `theorem` | [eq_div_iff_mul_eq_of_dvd](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/eq-div-iff-mul-eq-of-dvd--6b5996c5549685cd25bb2c89.md) | 389 | `result-track:6b5996c5549685cd25bb2c8977f9ed4f2a0abd02cc414cdea2ffbe5ad2df8270` |
| 59 | `theorem` | [div_eq_div_iff_mul_eq_mul_of_dvd](../../../../mathematics/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/declarations/div-eq-div-iff-mul-eq-mul-of-dvd--6c4958dda382da609d82b6cf.md) | 393 | `result-track:6c4958dda382da609d82b6cfa0aee3cdd388bf2ea602bf5153ee530f4ec6c522` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
