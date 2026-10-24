# GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Path.Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e022e62198ed910c05085ab204d1406d5dd71e2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Path](declarations/path--3148f178ed62e39e14fe0dc5.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Hom.toPath](declarations/hom-topath--c7d653f360b4f9f66e610960.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [nil_ne_cons](declarations/nil-ne-cons--287cfdb220aa46e24a28f718.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [cons_ne_nil](declarations/cons-ne-nil--752500108b3a1db9ffb59ae7.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [obj_eq_of_cons_eq_cons](declarations/obj-eq-of-cons-eq-cons--0ec2c661a3c66e115e55ceec.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [heq_of_cons_eq_cons](declarations/heq-of-cons-eq-cons--6eaa641b09ac5b5438bb06f9.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [hom_heq_of_cons_eq_cons](declarations/hom-heq-of-cons-eq-cons--68fbc2c6e8161882d13aff76.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [length](declarations/length--8915d41405abe6b77bd2260d.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance--d0fce78e19a729f51856bb31.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [length_nil](declarations/length-nil--ac578e5fdc08c26833ac35f3.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [length_cons](declarations/length-cons--b3f0e9fb7286ec3d1a797fd7.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eq_of_length_zero](declarations/eq-of-length-zero--60fd69dae7db31ff0a8be5ff.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [eq_nil_of_length_zero](declarations/eq-nil-of-length-zero--f67262b04037531ebd48ec72.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [comp](declarations/comp--53e6868e374a8f43e6990ccb.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [comp_cons](declarations/comp-cons--288e85328160deb7be7d5e67.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [comp_nil](declarations/comp-nil--2e9725b95c5b91a8276553ec.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [nil_comp](declarations/nil-comp--cadd75019d9b95874ba08c9d.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [comp_assoc](declarations/comp-assoc--0bfd8ad157843538bc9dab51.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [length_comp](declarations/length-comp--d23f3601987b63b92473f7fb.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [comp_inj](declarations/comp-inj--6141c7bfb6cc3acafe573221.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [comp_inj'](declarations/comp-inj--9db3b00d8a0242eda07df3ab.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [comp_injective_left](declarations/comp-injective-left--4c9aad4cc80c2bccdcab0039.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [comp_injective_right](declarations/comp-injective-right--c2aa52d68583db7d9d7a89da.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [comp_inj_left](declarations/comp-inj-left--096abee6e517152dd131c33d.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [comp_inj_right](declarations/comp-inj-right--f5a657003ecd11bb706b51a0.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [eq_toPath_comp_of_length_eq_succ](declarations/eq-topath-comp-of-length-eq-succ--b4488157b4b79db10907df52.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [toList](declarations/tolist--975fe64cd6aad9dfdc874fd9.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toList_comp](declarations/tolist-comp--9552ea7465dd6239f4a3c5fd.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toList_chain_nonempty](declarations/tolist-chain-nonempty--43a0dc1cfd6ef2ae7e9766f5.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toList_injective](declarations/tolist-injective--ab3754436a67bec78cb3e697.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toList_inj](declarations/tolist-inj--408caf0ba809b1a5419e67d4.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [mapPath](declarations/mappath--e5d2f033bf09aeeab8bbdfc7.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mapPath_nil](declarations/mappath-nil--23761e253113475a39a692f2.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mapPath_cons](declarations/mappath-cons--5c5808b4c537590faecf3093.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mapPath_comp](declarations/mappath-comp--ccbcb488ebed6048eadc632e.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mapPath_toPath](declarations/mappath-topath--924915c1cc6eae84cb11e03a.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mapPath_id](declarations/mappath-id--e26c9b171feafe772f939046.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mapPath_comp_apply](declarations/mappath-comp-apply--27305c5a1c34ff6a4f04de01.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
