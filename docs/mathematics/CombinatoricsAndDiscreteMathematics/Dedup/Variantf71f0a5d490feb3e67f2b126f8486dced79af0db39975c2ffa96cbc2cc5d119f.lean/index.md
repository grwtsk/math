# GRWTSK.CombinatoricsAndDiscreteMathematics.Dedup.Variantf71f0a5d490feb3e67f2b126f8486dced79af0db39975c2ffa96cbc2cc5d119f

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variantf71f0a5d490feb3e67f2b126f8486dced79af0db39975c2ffa96cbc2cc5d119f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `558784b0d6409f80bc9a65b3b52c36ceb2f25631`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/Dedup/Variantf71f0a5d490feb3e67f2b126f8486dced79af0db39975c2ffa96cbc2cc5d119f.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [dedup_eq_self](declarations/dedup-eq-self--96e20ff280cd6e35cd5abbd5.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toFinset](declarations/tofinset--9cbcb2dae0bc80aee3e096cc.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toFinset_val](declarations/tofinset-val--791b204541441fd64af43033.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [toFinset_eq](declarations/tofinset-eq--4ccbf5fb9ee0887695e307f2.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Nodup.toFinset_inj](declarations/nodup-tofinset-inj--6fe02cfb807e64dce1eef137.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_toFinset](declarations/mem-tofinset--1579fa93a241595ce330afa5.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toFinset_subset](declarations/tofinset-subset--317bc7c410813cbd78b90da3.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toFinset_ssubset](declarations/tofinset-ssubset--83e3b74187c7719f5e4db262.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toFinset_dedup](declarations/tofinset-dedup--542f4aee0feceda7052e8310.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [isWellFounded_ssubset](declarations/iswellfounded-ssubset--1bd7a5ca9fc9a41a2a983cd3.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [val_toFinset](declarations/val-tofinset--c90d65021d96b5f8eb2095b4.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [val_le_iff_val_subset](declarations/val-le-iff-val-subset--e106d6f3bf93e8fd3500294d.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toFinset](declarations/tofinset--56944f03112db2cdf5ed65f0.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toFinset_val](declarations/tofinset-val--7cc5877471fb703da7d28e86.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toFinset_coe](declarations/tofinset-coe--773fb6cddfc7358249571bc6.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toFinset_eq](declarations/tofinset-eq--5350b705d2eb05845436aa3c.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_toFinset](declarations/mem-tofinset--57c80e850684262a4ea2aeed.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_toFinset](declarations/coe-tofinset--fa78b92cb29a83170c514df8.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toFinset_surj_on](declarations/tofinset-surj-on--178ce52daf1409f39d3356e1.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toFinset_surjective](declarations/tofinset-surjective--c2cbb6d651b6d9855a688784.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toFinset_eq_iff_perm_dedup](declarations/tofinset-eq-iff-perm-dedup--36af451337207a07ccc32005.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toFinset.ext_iff](declarations/tofinset-ext-iff--43550e3e756eb1936bacad40.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toFinset.ext](declarations/tofinset-ext--28ce558f03597fd48ea0285a.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toFinset_eq_of_perm](declarations/tofinset-eq-of-perm--cad6e5bd950ca147800bd785.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [perm_of_nodup_nodup_toFinset_eq](declarations/perm-of-nodup-nodup-tofinset-eq--3363ee5dd08e22f047d59aad.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toFinset_reverse](declarations/tofinset-reverse--ae1006d1047fd63ef6c1f15c.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [toList](declarations/tolist--f516f802d485012b36717df8.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [nodup_toList](declarations/nodup-tolist--b05ed906d1f3bb646da785c1.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mem_toList](declarations/mem-tolist--0c12a352328f7a0432a3d7e0.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_toList](declarations/coe-tolist--442777997145147ac8fb5d5c.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toList_toFinset](declarations/tolist-tofinset--bfe64cbb3c0f1ac4b686acb9.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [_root_.List.toFinset_toList](declarations/root-list-tofinset-tolist--78e927a624bf0bd0b14b69d0.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [exists_list_nodup_eq](declarations/exists-list-nodup-eq--6185a01174de551b7bde1d0b.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
