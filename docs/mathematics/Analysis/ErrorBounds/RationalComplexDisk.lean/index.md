# GRWTSK.Analysis.ErrorBounds.RationalComplexDisk

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/ErrorBounds/RationalComplexDisk.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdf89eca42bf2fa5fd52f9e81a5665905418649e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/ErrorBounds/RationalComplexDisk.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Disk](declarations/disk--c4dcc704b1c90c55c98c12e0.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [point](declarations/point--058d360f9f88f69649c82176.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [diskAdd](declarations/diskadd--5015bf474a741fafbdcc267e.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [diskNeg](declarations/diskneg--883088a0522bcfdb25905b5d.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [diskSub](declarations/disksub--6c5a85282664e899bacab405.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [diskConj](declarations/diskconj--fcbbd4e9a1da29f5ce29a05c.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [centerSize](declarations/centersize--8dad529a97fec6c70b987813.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [diskMul](declarations/diskmul--235db496380408fb890a4a2a.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [diskSum](declarations/disksum--24fbe8d0b517969fb00a5447.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [readoutDisk](declarations/readoutdisk--0cdc41180bbddb5437eda061.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [lower](declarations/lower--113fc3ceb278fb51bc5db122.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [upper](declarations/upper--c41a2ae12816f21dd7457ba7.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [lowerClears](declarations/lowerclears--7c26431b360b8be65698aa06.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [center](declarations/center--88c5c3ce0f0da48379a776b6.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Contains](declarations/contains--6d5df7cc2ed4ff32914f318d.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [center_add](declarations/center-add--4fd1527617a9ec6064c3b0a3.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [center_neg](declarations/center-neg--3da661ca3157b628ee8181a4.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [center_conj](declarations/center-conj--c0b6aa6abc7aaf5b41afb9af.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [center_mul](declarations/center-mul--0d51e41301e1d3a0c58af78f.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [center_sum](declarations/center-sum--9d320ee5ded1fcebc31da52e.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [centerSize_nonnegative](declarations/centersize-nonnegative--4c6d0520f42e0dc853297154.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [center_norm_le](declarations/center-norm-le--d1c277b4dac772c06775413e.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [contains_radius_nonnegative](declarations/contains-radius-nonnegative--f7a9f1a7d883e59a7099089b.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [contains_point](declarations/contains-point--9e32b232597a5ee0031aab2e.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [contains_add](declarations/contains-add--627f81a691710a84f538a539.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [contains_neg](declarations/contains-neg--e4c5ed3b49461cab61823637.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [contains_sub](declarations/contains-sub--c14e095825ad283e942b0849.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [contains_conj](declarations/contains-conj--676c3c53456ebd66e2062a11.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [contains_mul](declarations/contains-mul--2d79641b9882c15931e10aa0.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [contains_sum](declarations/contains-sum--54282007c86f1c547371a63d.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [readoutDisk_contains](declarations/readoutdisk-contains--62b637f12e3993586295a379.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [contains_real_error](declarations/contains-real-error--15e87dd062fac0774848cd9c.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [contains_real_interval](declarations/contains-real-interval--1b946546d414d9e0a19ba08e.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [readoutDisk_real_error](declarations/readoutdisk-real-error--bc32a2aedeedac19128b8376.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [lowerClears_sound](declarations/lowerclears-sound--ffe9106c1ce1745a229c61fe.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [lowerClears_rejects_negative_radius](declarations/lowerclears-rejects-negative-radius--229b6141880c5227eef1f01e.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [lowerClears_rejects_equality](declarations/lowerclears-rejects-equality--13c352afb683b1260996274c.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [radius_product_required_fixture](declarations/radius-product-required-fixture--4b0f29f0b80e4afcc69de72a.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [rational_readout_radius_fixture](declarations/rational-readout-radius-fixture--07a1a821845e4ac5b7863636.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [imaginaryMatrixDisk](declarations/imaginarymatrixdisk--2c7cceda4df4ff84f70a299b.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [imaginaryTestDisk](declarations/imaginarytestdisk--61eb74c8af7b475f3d6d369b.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [imaginary_readout_disk_fixture](declarations/imaginary-readout-disk-fixture--5509c973fba3db31b9f7ac63.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [strict_threshold_fixture](declarations/strict-threshold-fixture--b195453b5a71b7bcc97a81cf.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
