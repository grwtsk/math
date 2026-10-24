# GRWTSK.NumberTheory.ElementaryNumberTheory.GCD.Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aed4d3fb38c29e1d2d465d4b10d4c45b158fe5e4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [xgcdAux](declarations/xgcdaux--dce005d1953c9e54c2677d12.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [xgcd_zero_left](declarations/xgcd-zero-left--e53e186b4e2875501a439bad.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [xgcdAux_rec](declarations/xgcdaux-rec--185413f8bbf1ad83b88c6141.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [xgcd](declarations/xgcd--bcfd7ee77ba72b050c1c42cf.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [gcdA](declarations/gcda--26bbc1b1b7285c415f949fe4.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [gcdB](declarations/gcdb--1c4b94bb7d600e19734f752b.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [gcdA_zero_left](declarations/gcda-zero-left--bba632252036a5d75b87573e.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [gcdB_zero_left](declarations/gcdb-zero-left--aca39fa81bdb8b4d071abee3.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [gcdA_zero_right](declarations/gcda-zero-right--fc4371fb73737d85126be6b1.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [gcdB_zero_right](declarations/gcdb-zero-right--4965292c3bd4a1e2f9d02195.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [xgcdAux_fst](declarations/xgcdaux-fst--e3570ed4da5e69a834e43be6.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [xgcdAux_val](declarations/xgcdaux-val--2b065967ddd944e3d5c77d3f.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [xgcd_val](declarations/xgcd-val--a6382143c4d2a784f7eef442.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [P](declarations/p--fa48fd07178cbd3b87f4120c.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [xgcdAux_P](declarations/xgcdaux-p--0da3058f0cc5b440e51cb420.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [gcd_eq_gcd_ab](declarations/gcd-eq-gcd-ab--6ed5afb86baf680627df5ecf.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [exists_mul_emod_eq_gcd](declarations/exists-mul-emod-eq-gcd--799aa72ba3da27f437df8041.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [exists_mul_emod_eq_one_of_coprime](declarations/exists-mul-emod-eq-one-of-coprime--731af4578068e201bffa81f5.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [gcd_def](declarations/gcd-def--567f8f5640bbbf8ac82436e4.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [gcdA](declarations/gcda--07378c2fdada91bc2861b0d5.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [gcdB](declarations/gcdb--68c8414c2d9a8733301ea87b.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [gcd_eq_gcd_ab](declarations/gcd-eq-gcd-ab--552bf226c4cd85fc2e1dd567.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [lcm_def](declarations/lcm-def--ca7b4830b027b67b1138b79e.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [gcd_eq_one_of_gcd_mul_right_eq_one_left](declarations/gcd-eq-one-of-gcd-mul-right-eq-one-left--2f76f0278020748518177e35.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [gcd_eq_one_of_gcd_mul_right_eq_one_right](declarations/gcd-eq-one-of-gcd-mul-right-eq-one-right--1a10bdc10f59f747a07003b4.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ne_zero_of_gcd](declarations/ne-zero-of-gcd--9e4c81caa3bdf3e49f7cf420.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [exists_gcd_one](declarations/exists-gcd-one--e3ae636a81ada47ad0cb993d.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [exists_gcd_one'](declarations/exists-gcd-one--3ebd5ec1972681acf6d928c9.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [gcd_dvd_iff](declarations/gcd-dvd-iff--b47798487575eccaa5461058.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [gcd_greatest](declarations/gcd-greatest--9f1e360fe0c41cdb57f5ea8c.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [dvd_of_dvd_mul_left_of_gcd_one](declarations/dvd-of-dvd-mul-left-of-gcd-one--efd38b3badd5f468b8b1831a.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [dvd_of_dvd_mul_right_of_gcd_one](declarations/dvd-of-dvd-mul-right-of-gcd-one--4c77f18fe5d3e61e36fae0fd.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [gcd_least_linear](declarations/gcd-least-linear--7508ff72eec2cd22cfe887d4.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [pow_gcd_eq_one](declarations/pow-gcd-eq-one--2ecc6e50a08011b737b96f40.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [Commute.pow_eq_pow_iff_of_coprime](declarations/commute-pow-eq-pow-iff-of-coprime--27293f9ba3b7092b6d5530d7.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [pow_eq_pow_iff_of_coprime](declarations/pow-eq-pow-iff-of-coprime--0114081e31d096ab7b1c30a0.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [pow_mem_range_pow_of_coprime](declarations/pow-mem-range-pow-of-coprime--7179f03268517335a4d2c663.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
