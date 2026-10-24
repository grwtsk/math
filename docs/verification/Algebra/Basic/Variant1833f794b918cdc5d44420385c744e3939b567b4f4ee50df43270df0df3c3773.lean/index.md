# Verification target: GRWTSK.Algebra.Basic.Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fd0badb66012076b199bedb214e29e0eff010c1",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fd0badb66012076b199bedb214e29e0eff010c1`.

Source path: `GRWTSK/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_div_cancel_left](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/mul-div-cancel-left--0d5a32235d7cc1c33c40c29b.md) | 35 | `result-track:0d5a32235d7cc1c33c40c29bb60d76a77db56a221693b8c4e0fd7f7a0a329962` |
| 2 | `theorem` | [mul_div_cancel](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/mul-div-cancel--48be83d3bf8e247282308b33.md) | 44 | `result-track:48be83d3bf8e247282308b33c5f979a2f81a0c0c07443f1f88908f83794bd95d` |
| 3 | `theorem` | [mod_eq_zero](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/mod-eq-zero--fa063bc29ba4c76e9ed7c594.md) | 50 | `result-track:fa063bc29ba4c76e9ed7c5941cca1c0b90a2b6b8d3ab27757c4c9ac6afebf6db` |
| 4 | `theorem` | [mod_self](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/mod-self--f34b05c42d6dbf25b237fd1f.md) | 62 | `result-track:f34b05c42d6dbf25b237fd1f6c15772d6f267c2636001e7e6cf967416ec0d399` |
| 5 | `theorem` | [dvd_mod_iff](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/dvd-mod-iff--eb320bf9b3f5934f79432070.md) | 66 | `result-track:eb320bf9b3f5934f79432070ed3b94ca0aaac2b41ae2fb7ee42ae3ef8312172d` |
| 6 | `theorem` | [mod_one](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/mod-one--da6bc72945064f4250b65e06.md) | 71 | `result-track:da6bc72945064f4250b65e061236bcb1dc43f46198dd99f96a25690c1d5ec4de` |
| 7 | `theorem` | [zero_mod](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/zero-mod--a68837aacc4ba9ca40224918.md) | 76 | `result-track:a68837aacc4ba9ca4022491824776a913de37b87be3d134dc0380ef8ec31be88` |
| 8 | `theorem` | [zero_div](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/zero-div--59dd7e1f95aca198777b2a0c.md) | 81 | `result-track:59dd7e1f95aca198777b2a0cedcd727445ce3eb15f6699e8f569c2059fcc78f4` |
| 9 | `theorem` | [div_self](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/div-self--499a582fdf04cbee9efc7eee.md) | 87 | `result-track:499a582fdf04cbee9efc7eeee1e8a53130e9bf56134110a3d67733d3ce9f29a7` |
| 10 | `theorem` | [eq_div_of_mul_eq_left](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/eq-div-of-mul-eq-left--b19b08620ac7932207b9db76.md) | 91 | `result-track:b19b08620ac7932207b9db76e700b7258ebd7cdfd7aae9d3918e2fe0ea9dac8b` |
| 11 | `theorem` | [eq_div_of_mul_eq_right](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/eq-div-of-mul-eq-right--1fdc609c24effc203a5dfbc9.md) | 95 | `result-track:1fdc609c24effc203a5dfbc96c10dbc4aead378554d2df92ea4029abdc9549ef` |
| 12 | `theorem` | [mul_div_assoc](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/mul-div-assoc--0bde06234d79d55f6b33c0d4.md) | 99 | `result-track:0bde06234d79d55f6b33c0d4d75237bd947873f55e37fae69cfc170fe44bea8b` |
| 13 | `theorem` | [mul_div_cancel'](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/mul-div-cancel--ebe887dc08aa4569ae426273.md) | 107 | `result-track:ebe887dc08aa4569ae426273761ec6db6cd54ceefa2402dfca93046df52f0be0` |
| 14 | `theorem` | [div_one](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/div-one--512ca6afc6a0431b43512742.md) | 113 | `result-track:512ca6afc6a0431b43512742b51d8b883464d2fc1f74d9ef06438344867f5157` |
| 15 | `theorem` | [div_dvd_of_dvd](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/div-dvd-of-dvd--406ef956fed47a928153b15a.md) | 117 | `result-track:406ef956fed47a928153b15aeadb80bc89333e576ed13adbdcc38ec2b2d4fc84` |
| 16 | `theorem` | [dvd_div_of_mul_dvd](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/dvd-div-of-mul-dvd--28f48afb10cf1ac6bdd377f0.md) | 127 | `result-track:28f48afb10cf1ac6bdd377f0066963fdd8364d9a9449bfc294f0827fe090cd70` |
| 17 | `theorem` | [gcd_zero_right](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/gcd-zero-right--21b95b2a589d14114772f95f.md) | 140 | `result-track:21b95b2a589d14114772f95f7696c85f84676dff2a300809594680bfa915bb60` |
| 18 | `theorem` | [gcd_val](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/gcd-val--bde4f6179f26f4d1efe55a95.md) | 145 | `result-track:bde4f6179f26f4d1efe55a958d64dd83e0ea37ce99e93fd8155d718eabf4eb56` |
| 19 | `theorem` | [gcd_dvd](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/gcd-dvd--303cf1e35a00521d8ad5b01b.md) | 150 | `result-track:303cf1e35a00521d8ad5b01b3d4953a91f0d2e9dc3524c0ba4bef1d278541e43` |
| 20 | `theorem` | [gcd_dvd_left](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/gcd-dvd-left--ca594bec0c945a8f073427be.md) | 160 | `result-track:ca594bec0c945a8f073427be23e9eb1fa5cf52a95297bc7abe9b3b40b771e3c7` |
| 21 | `theorem` | [gcd_dvd_right](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/gcd-dvd-right--8088b510f0b106aa531a621a.md) | 164 | `result-track:8088b510f0b106aa531a621a0ebe795f45c96ebc75ed65aae2679526db7cbd67` |
| 22 | `theorem` | [gcd_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/gcd-eq-zero-iff--5a47dd2afb3f32fbba9a316f.md) | 168 | `result-track:5a47dd2afb3f32fbba9a316f1fd416274863b72b8bca2d01f6d4e7eb2a2237c5` |
| 23 | `theorem` | [dvd_gcd](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/dvd-gcd--57a3387cbc4e4b80a7cf5cce.md) | 174 | `result-track:57a3387cbc4e4b80a7cf5cce0e580edf6fc41d4e128905ff9d70a1798daf385c` |
| 24 | `theorem` | [gcd_eq_left](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/gcd-eq-left--5ea6e1fb0dd74f795283b2ec.md) | 180 | `result-track:5ea6e1fb0dd74f795283b2ec61788a643719e052ddfbcefb66bf94c4795ed30a` |
| 25 | `theorem` | [gcd_one_left](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/gcd-one-left--38837b84462834948e6a33b4.md) | 187 | `result-track:38837b84462834948e6a33b4e065f5221b124655489adc38646ba03b6edb9f12` |
| 26 | `theorem` | [gcd_self](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/gcd-self--30710b52f543968853864ea9.md) | 192 | `result-track:30710b52f543968853864ea9e087797b510000be927a96cfbbd0bc0d9d729b2a` |
| 27 | `theorem` | [xgcdAux_fst](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/xgcdaux-fst--6a4a0143f6e095dce2045cfe.md) | 197 | `result-track:6a4a0143f6e095dce2045cfe7faa21b8581f0ac02f7fa32b7ff606d7b63dbd48` |
| 28 | `theorem` | [xgcdAux_val](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/xgcdaux-val--eb15814ae59242130c54837a.md) | 207 | `result-track:eb15814ae59242130c54837a7a3717f8168de1fca15c505b2784ae3228d12bbb` |
| 29 | `def` | [P](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/p--7bc8b3b234f357a162980522.md) | 211 | `declaration-track:7bc8b3b234f357a1629805227c3515d0700526883aaf1cd204cde25ed3a21f69` |
| 30 | `theorem` | [xgcdAux_P](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/xgcdaux-p--c3a961f89f260d704d4d412f.md) | 214 | `result-track:c3a961f89f260d704d4d412fdb77df16e9f902cdd04d462db8fa50ab38f3828e` |
| 31 | `theorem` | [gcd_eq_gcd_ab](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/gcd-eq-gcd-ab--9edf3da6e9eae8e5270cca55.md) | 229 | `result-track:9edf3da6e9eae8e5270cca5571fa4b7ce7c577d23aaa714890b58d0f86504010` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/instance--3798e951eff22a49a0bf471e.md) | 237 | `declaration-track:3798e951eff22a49a0bf471e1b8ab88a85bfbf729705354cddd8bfee6e7c61f1` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/instance--6e5502e28c415a4c012f4915.md) | 243 | `declaration-track:6e5502e28c415a4c012f49154fd918ea3675ac00d6d29c70c56447b0f23efdd7` |
| 34 | `theorem` | [dvd_lcm_left](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/dvd-lcm-left--821d30138cce7902a965abc1.md) | 252 | `result-track:821d30138cce7902a965abc1d841ccf561f6c57554d2c0271109e1ca1a1698ff` |
| 35 | `theorem` | [dvd_lcm_right](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/dvd-lcm-right--945f7a288227291fd3c71102.md) | 262 | `result-track:945f7a288227291fd3c71102fe6426d03f79f4aa88b5cfd6dd29e696c4366b2b` |
| 36 | `theorem` | [lcm_dvd](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/lcm-dvd--0d241edc353f6e249be7b514.md) | 272 | `result-track:0d241edc353f6e249be7b514990700c21a07476cfa475353590521995a5cd6d6` |
| 37 | `theorem` | [lcm_dvd_iff](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/lcm-dvd-iff--a971146073c3312f27d33883.md) | 296 | `result-track:a971146073c3312f27d33883b70f25ce1d62a66c8df9cce5d02b7ace5e7d6473` |
| 38 | `theorem` | [lcm_zero_left](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/lcm-zero-left--e3b80b8c2e431f8b1ccfd233.md) | 302 | `result-track:e3b80b8c2e431f8b1ccfd2336fbf358dfd967a13ddd8aceb00404d03a7be6546` |
| 39 | `theorem` | [lcm_zero_right](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/lcm-zero-right--e310a9020e6463ee77e0f8ed.md) | 306 | `result-track:e310a9020e6463ee77e0f8ed9c71bda57ff41287963ac0bb5b2e8dab8905e09c` |
| 40 | `theorem` | [lcm_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/lcm-eq-zero-iff--6b11081ca7971b003a1ff438.md) | 310 | `result-track:6b11081ca7971b003a1ff43843a4e2fbf22d9080b23fc534e5a075d99c22f1ae` |
| 41 | `theorem` | [gcd_mul_lcm](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/gcd-mul-lcm--59b22864dc48e132ac7ab704.md) | 330 | `result-track:59b22864dc48e132ac7ab7046fb9a5c27a3b6309bf6a40f94982955288f63c6d` |
| 42 | `theorem` | [mul_div_mul_cancel](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/mul-div-mul-cancel--beb0e67c1684c0658324c0ce.md) | 344 | `result-track:beb0e67c1684c0658324c0cee3e155c2229b7929cf916533563ef059b43bea2a` |
| 43 | `theorem` | [mul_div_mul_comm_of_dvd_dvd](../../../../mathematics/Algebra/Basic/Variant1833f794b918cdc5d44420385c744e3939b567b4f4ee50df43270df0df3c3773.lean/declarations/mul-div-mul-comm-of-dvd-dvd--26f6327c16a4f8b8a36185a1.md) | 351 | `result-track:26f6327c16a4f8b8a36185a1aec6e250e18f212b033e60049d6abcf4bd758d6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
