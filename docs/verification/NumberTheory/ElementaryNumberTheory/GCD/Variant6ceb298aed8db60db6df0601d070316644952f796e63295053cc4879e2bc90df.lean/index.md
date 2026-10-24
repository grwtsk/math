# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.GCD.Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aed4d3fb38c29e1d2d465d4b10d4c45b158fe5e4",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aed4d3fb38c29e1d2d465d4b10d4c45b158fe5e4`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Semiconj` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Operations` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Batteries.Data.Nat.Gcd` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Divisibility.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [xgcdAux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/xgcdaux--dce005d1953c9e54c2677d12.md) | 49 | `declaration-track:dce005d1953c9e54c2677d129a6873e7f3b1b968be499a0e35ae81ba67f30305` |
| 2 | `theorem` | [xgcd_zero_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/xgcd-zero-left--e53e186b4e2875501a439bad.md) | 58 | `result-track:e53e186b4e2875501a439bad04c17857269443a3134a1d04185d56d601233472` |
| 3 | `theorem` | [xgcdAux_rec](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/xgcdaux-rec--185413f8bbf1ad83b88c6141.md) | 60 | `result-track:185413f8bbf1ad83b88c6141baf7d1a04803bed94db17fc7b06be55da8cba8d7` |
| 4 | `def` | [xgcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/xgcd--bcfd7ee77ba72b050c1c42cf.md) | 67 | `declaration-track:bcfd7ee77ba72b050c1c42cf354a3d870669536284570d14ee9605bb50e63d8f` |
| 5 | `def` | [gcdA](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/gcda--26bbc1b1b7285c415f949fe4.md) | 71 | `declaration-track:26bbc1b1b7285c415f949fe4d30755d96c07aaa3bb2c61e1f3f711ff19349f12` |
| 6 | `def` | [gcdB](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/gcdb--1c4b94bb7d600e19734f752b.md) | 75 | `declaration-track:1c4b94bb7d600e19734f752ba132ed02ee5e0ee0b2a84cd3aefb873f0d1b6e6c` |
| 7 | `theorem` | [gcdA_zero_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/gcda-zero-left--bba632252036a5d75b87573e.md) | 79 | `result-track:bba632252036a5d75b87573e1ce953ed6cc495dd7d4e22fcda68917c7c189c36` |
| 8 | `theorem` | [gcdB_zero_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/gcdb-zero-left--aca39fa81bdb8b4d071abee3.md) | 84 | `result-track:aca39fa81bdb8b4d071abee357660b6d074737e648d1406c04bcce1645544113` |
| 9 | `theorem` | [gcdA_zero_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/gcda-zero-right--fc4371fb73737d85126be6b1.md) | 89 | `result-track:fc4371fb73737d85126be6b1bb4da1e4dae4ea6e00a13a9f42092c41e0764112` |
| 10 | `theorem` | [gcdB_zero_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/gcdb-zero-right--4965292c3bd4a1e2f9d02195.md) | 96 | `result-track:4965292c3bd4a1e2f9d02195933774fcd44e1f0a200edfb80ea1a691b4b544b2` |
| 11 | `theorem` | [xgcdAux_fst](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/xgcdaux-fst--e3570ed4da5e69a834e43be6.md) | 103 | `result-track:e3570ed4da5e69a834e43be67148b0c4df62ce155c1a96e4d9fccddbc8bd958c` |
| 12 | `theorem` | [xgcdAux_val](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/xgcdaux-val--2b065967ddd944e3d5c77d3f.md) | 108 | `result-track:2b065967ddd944e3d5c77d3f9ec70ce88c4a4eb0f458996e6732ad5559290b34` |
| 13 | `theorem` | [xgcd_val](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/xgcd-val--a6382143c4d2a784f7eef442.md) | 111 | `result-track:a6382143c4d2a784f7eef44279d5fc3a662bea8c7eacf580764189ae85ffd942` |
| 14 | `def` | [P](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/p--fa48fd07178cbd3b87f4120c.md) | 118 | `declaration-track:fa48fd07178cbd3b87f4120c97f09f41de8ce1ffea2634900f1f0108112afcaa` |
| 15 | `theorem` | [xgcdAux_P](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/xgcdaux-p--0da3058f0cc5b440e51cb420.md) | 121 | `result-track:0da3058f0cc5b440e51cb420ff995527cfa7184d7ba0423e1b59d5f9506f3702` |
| 16 | `theorem` | [gcd_eq_gcd_ab](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/gcd-eq-gcd-ab--6ed5afb86baf680627df5ecf.md) | 135 | `result-track:6ed5afb86baf680627df5ecf3eaea6dd58ec2034582c1e22f647eb65ff8e7977` |
| 17 | `theorem` | [exists_mul_emod_eq_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/exists-mul-emod-eq-gcd--799aa72ba3da27f437df8041.md) | 141 | `result-track:799aa72ba3da27f437df804172bb39213a58ddbf683c2d15a309971616552155` |
| 18 | `theorem` | [exists_mul_emod_eq_one_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/exists-mul-emod-eq-one-of-coprime--731af4578068e201bffa81f5.md) | 151 | `result-track:731af4578068e201bffa81f58cda141bd2633403ccf3ff2758bbfa84c1571ed3` |
| 19 | `theorem` | [gcd_def](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/gcd-def--567f8f5640bbbf8ac82436e4.md) | 163 | `result-track:567f8f5640bbbf8ac82436e4744c76369d081a7e6b5cd1c8db12028ddaa2f5c4` |
| 20 | `def` | [gcdA](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/gcda--07378c2fdada91bc2861b0d5.md) | 166 | `declaration-track:07378c2fdada91bc2861b0d52dca1fe311b0b7a6c6465e31ecbb0a06a74a51d3` |
| 21 | `def` | [gcdB](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/gcdb--68c8414c2d9a8733301ea87b.md) | 171 | `declaration-track:68c8414c2d9a8733301ea87b13475809aaaceca9822977e6512d08af88c45261` |
| 22 | `theorem` | [gcd_eq_gcd_ab](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/gcd-eq-gcd-ab--552bf226c4cd85fc2e1dd567.md) | 176 | `result-track:552bf226c4cd85fc2e1dd5670f293261424c4c0a77a914e1b8bbfe41360ea58f` |
| 23 | `theorem` | [lcm_def](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/lcm-def--ca7b4830b027b67b1138b79e.md) | 187 | `result-track:ca7b4830b027b67b1138b79e2b28a0c6ba3fc703d06e6bc65c535c3f376b3016` |
| 24 | `theorem` | [gcd_eq_one_of_gcd_mul_right_eq_one_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/gcd-eq-one-of-gcd-mul-right-eq-one-left--2f76f0278020748518177e35.md) | 199 | `result-track:2f76f0278020748518177e35b0965f65f5d0de2313385afb879e5badd547fa11` |
| 25 | `theorem` | [gcd_eq_one_of_gcd_mul_right_eq_one_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/gcd-eq-one-of-gcd-mul-right-eq-one-right--1a10bdc10f59f747a07003b4.md) | 204 | `result-track:1a10bdc10f59f747a07003b4c922965b97d58776c03ecd9492a507d8c2f11752` |
| 26 | `theorem` | [ne_zero_of_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/ne-zero-of-gcd--9e4c81caa3bdf3e49f7cf420.md) | 208 | `result-track:9e4c81caa3bdf3e49f7cf420d5a07ffbde21769af93d56da94461315411bea2b` |
| 27 | `theorem` | [exists_gcd_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/exists-gcd-one--e3ae636a81ada47ad0cb993d.md) | 212 | `result-track:e3ae636a81ada47ad0cb993dffa3eefac7c9480269079b7bc29ff86d9d632d59` |
| 28 | `theorem` | [exists_gcd_one'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/exists-gcd-one--3ebd5ec1972681acf6d928c9.md) | 217 | `result-track:3ebd5ec1972681acf6d928c995b99ef5a5b25d0e621afc70140b8abd5c0baf97` |
| 29 | `theorem` | [gcd_dvd_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/gcd-dvd-iff--b47798487575eccaa5461058.md) | 222 | `result-track:b47798487575eccaa5461058ab7502a1df6ad4fb8c3ead432e7c28f7a608ab6f` |
| 30 | `theorem` | [gcd_greatest](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/gcd-greatest--9f1e360fe0c41cdb57f5ea8c.md) | 232 | `result-track:9f1e360fe0c41cdb57f5ea8c09babdc885ed8cbc22927337060d85bc4f094f6a` |
| 31 | `theorem` | [dvd_of_dvd_mul_left_of_gcd_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/dvd-of-dvd-mul-left-of-gcd-one--efd38b3badd5f468b8b1831a.md) | 240 | `result-track:efd38b3badd5f468b8b1831a5761e2dfd42549714a9cf4fc6c3020c32a534126` |
| 32 | `theorem` | [dvd_of_dvd_mul_right_of_gcd_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/dvd-of-dvd-mul-right-of-gcd-one--4c77f18fe5d3e61e36fae0fd.md) | 251 | `result-track:4c77f18fe5d3e61e36fae0fd660dd89c10a0dd8fe6743ca21f4692a64971dfd9` |
| 33 | `theorem` | [gcd_least_linear](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/gcd-least-linear--7508ff72eec2cd22cfe887d4.md) | 258 | `result-track:7508ff72eec2cd22cfe887d4e24293dbfc13ebdbd0f67139529492cac09697aa` |
| 34 | `theorem` | [pow_gcd_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/pow-gcd-eq-one--2ecc6e50a08011b737b96f40.md) | 269 | `result-track:2ecc6e50a08011b737b96f40fdf34f41c7c63951fd5142997b59882635fc25a7` |
| 35 | `lemma` | [Commute.pow_eq_pow_iff_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/commute-pow-eq-pow-iff-of-coprime--27293f9ba3b7092b6d5530d7.md) | 281 | `result-track:27293f9ba3b7092b6d5530d7a6318d534fa88acfa45ce56b474cfae408ba5f5f` |
| 36 | `lemma` | [pow_eq_pow_iff_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/pow-eq-pow-iff-of-coprime--0114081e31d096ab7b1c30a0.md) | 301 | `result-track:0114081e31d096ab7b1c30a02b4e100030da508b8e15b2d2c8e22ddb5dc6aad5` |
| 37 | `lemma` | [pow_mem_range_pow_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/declarations/pow-mem-range-pow-of-coprime--7179f03268517335a4d2c663.md) | 304 | `result-track:7179f03268517335a4d2c663ccc0902bf71d6a023a395205b2e495cbfe257bd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
