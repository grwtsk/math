# Verification target: GRWTSK.Algebra.Basic.Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3564649e4054ad4611df984217ad72b18a3de570",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3564649e4054ad4611df984217ad72b18a3de570`.

Source path: `GRWTSK/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/instance--0da2f26b5e473bd9c7746971.md) | 41 | `declaration-track:0da2f26b5e473bd9c7746971cdc57c9e9100e1a03ca795e8bbd876d3927bf562` |
| 2 | `theorem` | [mod_eq_sub_mul_div](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/mod-eq-sub-mul-div--d44b9aaac017df6d6e36e6ee.md) | 49 | `result-track:d44b9aaac017df6d6e36e6ee4937bcb8522068a7dcfb6825c23c183c507b8315` |
| 3 | `theorem` | [val_dvd_le](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/val-dvd-le--7e2f5190d288864cf6d1a63d.md) | 54 | `result-track:7e2f5190d288864cf6d1a63de17ca5e02fa541f16cb4eb7700a07663beb26691` |
| 4 | `theorem` | [mod_eq_zero](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/mod-eq-zero--e63cde9ae40c197db11db7f9.md) | 58 | `result-track:e63cde9ae40c197db11db7f96274c9fce41b125cb60242f1a15c89d2386cbd1d` |
| 5 | `theorem` | [mod_self](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/mod-self--0e555bed112676b0cb88fddc.md) | 69 | `result-track:0e555bed112676b0cb88fddcfd8cd916acd203707390c3f58f0d13caa00139a9` |
| 6 | `theorem` | [dvd_mod_iff](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/dvd-mod-iff--d4123de29b141e6e97c9bef7.md) | 72 | `result-track:d4123de29b141e6e97c9bef7c3cadb6b25c1ec6b7ca745e33d3ebf4208cb9391` |
| 7 | `theorem` | [mod_one](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/mod-one--5c673650b0d232d6a1a97a3c.md) | 76 | `result-track:5c673650b0d232d6a1a97a3c39524c0bb76e2b8e9f74e596a0cd687f0485206a` |
| 8 | `theorem` | [zero_mod](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/zero-mod--83a847e0f77e2aa6f2af4e9b.md) | 80 | `result-track:83a847e0f77e2aa6f2af4e9b96d050ad7685dcc9d6cbc96c9f8b33c6da5c08c2` |
| 9 | `theorem` | [zero_div](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/zero-div--f3da2867aa459c986ad4bfe9.md) | 84 | `result-track:f3da2867aa459c986ad4bfe9c6a2565d82a41382a67697d188d7998b72a84c52` |
| 10 | `theorem` | [div_self](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/div-self--cfaf665666d005f657259e5e.md) | 89 | `result-track:cfaf665666d005f657259e5eab55ab9c0660718b166a2970090fdd1f0a2faf8c` |
| 11 | `theorem` | [eq_div_of_mul_eq_left](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/eq-div-of-mul-eq-left--2a03d8562a5db8231390ab99.md) | 92 | `result-track:2a03d8562a5db8231390ab99bdb9760f0f928b953436a38a47057c76c4a45665` |
| 12 | `theorem` | [eq_div_of_mul_eq_right](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/eq-div-of-mul-eq-right--9e5863854554b5d9cb3c92c6.md) | 95 | `result-track:9e5863854554b5d9cb3c92c6e8d9742c2c40bdce6967b882138b38bf77ae6c26` |
| 13 | `theorem` | [mul_div_assoc](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/mul-div-assoc--2596462ec1f7cdd669415e02.md) | 98 | `result-track:2596462ec1f7cdd669415e02313f1152b92bdfea516cc9cf93d07e3387cdc7b7` |
| 14 | `theorem` | [mul_div_cancel'](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/mul-div-cancel--2325e4c6ba7f5ec7270119c0.md) | 105 | `result-track:2325e4c6ba7f5ec7270119c058fa08cc3f9494e65d489e5e98fcc92dca9aef0f` |
| 15 | `theorem` | [div_one](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/div-one--bb745897ce46752b0f61e362.md) | 110 | `result-track:bb745897ce46752b0f61e362389d6a677ce73177c968be8eb4cebd865fe32bea` |
| 16 | `theorem` | [div_dvd_of_dvd](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/div-dvd-of-dvd--554faf6ed0d26e3c466b408a.md) | 113 | `result-track:554faf6ed0d26e3c466b408a82b70d12fbe50ed06498de29d9e7e9246a4cc87a` |
| 17 | `theorem` | [dvd_div_of_mul_dvd](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/dvd-div-of-mul-dvd--bd1c2e706bc39dbc9fd96d06.md) | 121 | `result-track:bd1c2e706bc39dbc9fd96d067420a007df636d0d2280230d4f31a4171bc2444e` |
| 18 | `theorem` | [gcd_zero_right](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/gcd-zero-right--7353321c229685efa43e68d0.md) | 133 | `result-track:7353321c229685efa43e68d00944c1df9c16debf409f600cd2e2871d198f62c0` |
| 19 | `theorem` | [gcd_val](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/gcd-val--8a5dfe2bb97f34a8a757cb48.md) | 137 | `result-track:8a5dfe2bb97f34a8a757cb487bf271cabf7d7085934daae9aa91f00ccfe47e74` |
| 20 | `theorem` | [gcd_dvd](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/gcd-dvd--4344e53032155f1376b2e985.md) | 141 | `result-track:4344e53032155f1376b2e98544e8ec2f2cf3f4069f4e26b0107a8830f5ba2924` |
| 21 | `theorem` | [gcd_dvd_left](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/gcd-dvd-left--12bc11d2abda7229f6f1e04d.md) | 150 | `result-track:12bc11d2abda7229f6f1e04d71b1b2d9b9df22339f2f3c4f56415b44494ef3b3` |
| 22 | `theorem` | [gcd_dvd_right](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/gcd-dvd-right--ef51fd4357ee8121e5e7fc5f.md) | 153 | `result-track:ef51fd4357ee8121e5e7fc5fcf17c2ae7103a3ba42a3bd8081fda48e5cb9398d` |
| 23 | `theorem` | [gcd_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/gcd-eq-zero-iff--5442a22a287f89c05d2cdc34.md) | 156 | `result-track:5442a22a287f89c05d2cdc34d4dc85e580d8ac57b0376ff298d078555ef4b320` |
| 24 | `theorem` | [dvd_gcd](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/dvd-gcd--04f40ed1ef424fe9f2512028.md) | 161 | `result-track:04f40ed1ef424fe9f251202890dc8f4a3c4ebde0675389721ef4f677155182c1` |
| 25 | `theorem` | [gcd_eq_left](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/gcd-eq-left--5aedee7de70a1fd3f9998235.md) | 166 | `result-track:5aedee7de70a1fd3f99982354f6c01bb8758e8504425438e6e44432a24846555` |
| 26 | `theorem` | [gcd_one_left](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/gcd-one-left--8a601046c3861e473d1e4e10.md) | 172 | `result-track:8a601046c3861e473d1e4e107bfcf11c26b0c8fe26f17f072b69ce0d33bc604c` |
| 27 | `theorem` | [gcd_self](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/gcd-self--0b3dff1dee139ea5817ecd60.md) | 176 | `result-track:0b3dff1dee139ea5817ecd60edaf786fd80dbf6758d8c661711327b3f598a4d6` |
| 28 | `theorem` | [xgcdAux_fst](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/xgcdaux-fst--3439789f387f815a6e8c8e2a.md) | 180 | `result-track:3439789f387f815a6e8c8e2a130152420e3dc519c2edb76e6d5f0ed744b689af` |
| 29 | `theorem` | [xgcdAux_val](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/xgcdaux-val--898cb55d593e83445e219373.md) | 189 | `result-track:898cb55d593e83445e219373d21c5d8973ac79d5e28e70057400884d23fa46b2` |
| 30 | `def` | [P](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/p--dfaa5b17eefd6c9b67074552.md) | 192 | `declaration-track:dfaa5b17eefd6c9b67074552c8eee97151e82f76ed71065690dd154720c894ea` |
| 31 | `theorem` | [xgcdAux_P](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/xgcdaux-p--d221e4541fb6fbad7895864d.md) | 195 | `result-track:d221e4541fb6fbad7895864d993c8e86f9b8a593bab85ddd46663e6ac0943e9a` |
| 32 | `theorem` | [gcd_eq_gcd_ab](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/gcd-eq-gcd-ab--436e1929e87b7a409c2a4657.md) | 208 | `result-track:436e1929e87b7a409c2a46573f7afad3e53ebc76a08fc5d204455b2d8661be8f` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/instance--23cabdc6f5d60e84d40c8a63.md) | 215 | `declaration-track:23cabdc6f5d60e84d40c8a630317826f2bf3e1f9339a05d38186fea6769fd40e` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/instance--dcc862f11670b858bae36d98.md) | 221 | `declaration-track:dcc862f11670b858bae36d98c96e04d166e3007082abb1e0c76b6e9df5b00673` |
| 35 | `theorem` | [dvd_lcm_left](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/dvd-lcm-left--dc84b2ee9203dc1e6f315351.md) | 230 | `result-track:dc84b2ee9203dc1e6f315351e6a5a22342772137267b736024d90592fd95071e` |
| 36 | `theorem` | [dvd_lcm_right](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/dvd-lcm-right--5bccb0b900258b30d4148e83.md) | 239 | `result-track:5bccb0b900258b30d4148e836d8f2cd2719eab963f97462354bd75097060925c` |
| 37 | `theorem` | [lcm_dvd](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/lcm-dvd--6547ccd549164bfd316d2b8d.md) | 248 | `result-track:6547ccd549164bfd316d2b8dde575fd2a5a3897ec39e4939c9e009937626c566` |
| 38 | `theorem` | [lcm_dvd_iff](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/lcm-dvd-iff--4935e9d2ee019513bb303bcb.md) | 271 | `result-track:4935e9d2ee019513bb303bcb9c06bbb6ade700cea1c683c12939a0e270a6c10d` |
| 39 | `theorem` | [lcm_zero_left](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/lcm-zero-left--95b2a45b79e2b929c5cab285.md) | 276 | `result-track:95b2a45b79e2b929c5cab28573242ebf0f9c8409d4cd9d913ac0b9d48ba68a07` |
| 40 | `theorem` | [lcm_zero_right](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/lcm-zero-right--805d7a7087c7557006f4a9e5.md) | 279 | `result-track:805d7a7087c7557006f4a9e573cca9f45175f9f63eea923434202305527ec7f4` |
| 41 | `theorem` | [lcm_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/lcm-eq-zero-iff--52c1b59a8f3491dad2e156b2.md) | 282 | `result-track:52c1b59a8f3491dad2e156b2163ca9040af1cc984d2b871f4b5a1c0450b9b26c` |
| 42 | `theorem` | [gcd_mul_lcm](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/gcd-mul-lcm--83ef22c3ac4934e39c0b53a3.md) | 301 | `result-track:83ef22c3ac4934e39c0b53a37a2fd0c7910f1c51757827a9b1d41597155361a8` |
| 43 | `theorem` | [mul_div_mul_cancel](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/mul-div-mul-cancel--e25067fcddd89abc3a36285f.md) | 314 | `result-track:e25067fcddd89abc3a36285f1ace3e25642d7d368ab92157092091f5bc42d2fd` |
| 44 | `theorem` | [mul_div_mul_comm_of_dvd_dvd](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/mul-div-mul-comm-of-dvd-dvd--1b8f4c65a9a90c7ec5199f12.md) | 320 | `result-track:1b8f4c65a9a90c7ec5199f126dce0846aadd241db0515754298fc802a2d44794` |
| 45 | `theorem` | [add_mul_div_left](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/add-mul-div-left--1a24b5bd7806f4f8fc5c11d2.md) | 329 | `result-track:1a24b5bd7806f4f8fc5c11d28d0a65f348e17ecaea7e7dd13028b253163758f6` |
| 46 | `theorem` | [add_mul_div_right](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/add-mul-div-right--a9d80fc25d4f05f3233aa25b.md) | 334 | `result-track:a9d80fc25d4f05f3233aa25bb15404aa86d900bce1094e494321f4064b1a9f24` |
| 47 | `theorem` | [sub_mul_div_left](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/sub-mul-div-left--7765faf9d6c58c409aa822fa.md) | 338 | `result-track:7765faf9d6c58c409aa822fa8207d202e07769e8abc998d5c8a97c42a65354ee` |
| 48 | `theorem` | [sub_mul_div_right](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/sub-mul-div-right--7fb7e58fe48b712dd8370ccf.md) | 343 | `result-track:7fb7e58fe48b712dd8370ccfedf310bfe426daa2e1c6228ed470e2a0d3a340d1` |
| 49 | `theorem` | [mul_add_div_left](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/mul-add-div-left--c4b4f8b2bca037ca49967375.md) | 347 | `result-track:c4b4f8b2bca037ca49967375219be33e3b890dd5c217e2b3f176f5880f59ee49` |
| 50 | `theorem` | [mul_add_div_right](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/mul-add-div-right--ffa6f8b3c8a0a51da009e1fc.md) | 352 | `result-track:ffa6f8b3c8a0a51da009e1fcbebb57b7afcd6a29ee6b1df073c92dc4436175e1` |
| 51 | `theorem` | [mul_sub_div_left](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/mul-sub-div-left--b2d565d4fc703d84519955a2.md) | 356 | `result-track:b2d565d4fc703d84519955a23f6d3cc7003ac9c64cb304a65c9eda27373caa21` |
| 52 | `theorem` | [mul_sub_div_right](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/mul-sub-div-right--fe1d4548ac827fdb769781ba.md) | 361 | `result-track:fe1d4548ac827fdb769781ba77dc9841bd79d7bf96103929184acd42efc79cbf` |
| 53 | `theorem` | [div_mul](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/div-mul--46c47ae39923eeb92162a805.md) | 365 | `result-track:46c47ae39923eeb92162a805b8229104709d8508e3d0728fc39c046d4a18393a` |
| 54 | `theorem` | [div_div](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/div-div--1b82a3f9a5d55a75e4824b70.md) | 372 | `result-track:1b82a3f9a5d55a75e4824b7060872d1c356c29492c72aed1c90928ed33aa4dbb` |
| 55 | `theorem` | [div_add_div_of_dvd](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/div-add-div-of-dvd--ebe88dd7d9637f431ff079d2.md) | 379 | `result-track:ebe88dd7d9637f431ff079d2cbaa0092bb83926853c6df73f28f60b288aac864` |
| 56 | `theorem` | [div_sub_div_of_dvd](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/div-sub-div-of-dvd--a97ecf30c36cb9b940b82920.md) | 385 | `result-track:a97ecf30c36cb9b940b82920c5d0d8d2e9ac7cd0e0bda184128adfe956c4e19e` |
| 57 | `theorem` | [div_eq_iff_eq_mul_of_dvd](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/div-eq-iff-eq-mul-of-dvd--e54bdeb2f598386fcc1ca905.md) | 391 | `result-track:e54bdeb2f598386fcc1ca9057b0f5a7e3b91c1008eb1727cd79d096f74195066` |
| 58 | `theorem` | [eq_div_iff_mul_eq_of_dvd](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/eq-div-iff-mul-eq-of-dvd--ec3c23072da8f5e886074a52.md) | 397 | `result-track:ec3c23072da8f5e886074a52fc346e1f4d808fe9aab7e8496a23b5bee26163e7` |
| 59 | `theorem` | [div_eq_div_iff_mul_eq_mul_of_dvd](../../../../mathematics/Algebra/Basic/Variant90593bcc10d9fd39eed205f8b77108ac91362a539d91eb8b8b632fbbbf4cc5ac.lean/declarations/div-eq-div-iff-mul-eq-mul-of-dvd--34affda3702bfcc51048fc8f.md) | 401 | `result-track:34affda3702bfcc51048fc8f4972be8dffdb0e7e2e359b81e4dca4eef1aae4e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
