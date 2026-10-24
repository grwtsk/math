# GRWTSK.Analysis.ErrorBounds.ComplexExpScaling

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/ErrorBounds/ComplexExpScaling.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f346671610e4c06e4cb5befd909e7b6ff792218`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/ErrorBounds/ComplexExpScaling.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [squaredValue](declarations/squaredvalue--b2fdbee25c302ea0f4dd7946.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [squaringRadius](declarations/squaringradius--540a3445e25bb042288bfcfc.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [roundedRadius](declarations/roundedradius--5e661f85336aad1035ea6536.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [scaledTaylor](declarations/scaledtaylor--3bc33891744c4c2006c34dfc.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [scaledRadius](declarations/scaledradius--1c224c83e0586e34393f8806.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [squaredValue_zero](declarations/squaredvalue-zero--da182a7559776396a08cfc7b.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [squaredValue_succ](declarations/squaredvalue-succ--6251ad94378e033c2d8a5eb1.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [squaringRadius_nonneg](declarations/squaringradius-nonneg--5355ad0972814c3df0aa23e0.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [squaringRadius_eq](declarations/squaringradius-eq--f76cc46e1e8b901abd1668c9.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [roundedRadius_zero_rounding](declarations/roundedradius-zero-rounding--3cb5c0708464014b6451ae0e.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [square_error](declarations/square-error--c3e26b41aa3d50d1eb573519.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [norm_squaredValue_le_one](declarations/norm-squaredvalue-le-one--73d7d10f08905ee3e1cec3dc.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [squaring_error](declarations/squaring-error--b33453e12e33c337109dbcb5.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [squaring_trace_error](declarations/squaring-trace-error--7c6e0dfbb98dc34cb9bea31b.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [norm_exp_le_one](declarations/norm-exp-le-one--1043d842e8c67a56dbd4bd7f.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [scaled_re_nonpos](declarations/scaled-re-nonpos--0acf9c9e76be60d136000115.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [exponential_reconstruct](declarations/exponential-reconstruct--c8c182036b2c95157e09a6f7.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [scaled_seed_error](declarations/scaled-seed-error--407f2abd2ecdfd3ab4bc7432.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [scaled_exp_error](declarations/scaled-exp-error--2b97333d8121e775cf3c837b.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [scaled_exp_trace_error](declarations/scaled-exp-trace-error--193dfdf4d29a80eb82aa4b00.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [one_add_pow_mul_remaining_le_one](declarations/one-add-pow-mul-remaining-le-one--acaad4fdc440dc6a2ceb85d8.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [squaringRadius_le_fraction](declarations/squaringradius-le-fraction--ac3910d18b0ae3d7d6419acb.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [squaringRadius_le_twice](declarations/squaringradius-le-twice--7b68a108c3f7d3c5eac2c37a.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [scaled_exp_error_le_twice](declarations/scaled-exp-error-le-twice--5b6788a8594ea949c5ebd68d.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [quadratic_radius_control](declarations/quadratic-radius-control--c1ddfdf939f574595ad1d64e.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [outside_unit_disk_control](declarations/outside-unit-disk-control--550fdd8c6637052642f0ae6a.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [early_rounding_control](declarations/early-rounding-control--b61d1da5ab1e27a1faa606e3.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [empty_seed_control](declarations/empty-seed-control--e0c7a5c9abec001c7e7e1d4f.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [zero_exponent_exact](declarations/zero-exponent-exact--75b7eff2341e52cb2842cf25.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
