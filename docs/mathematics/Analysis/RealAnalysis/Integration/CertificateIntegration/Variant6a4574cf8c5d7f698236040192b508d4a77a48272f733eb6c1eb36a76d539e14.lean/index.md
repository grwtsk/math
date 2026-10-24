# GRWTSK.Analysis.RealAnalysis.Integration.CertificateIntegration.Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `335e39587dbaa85521f4e8fc941808c68eeeb679`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [PartitionEntry](declarations/partitionentry--3d586103cbdacd39eeb07a81.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance--6f590a5f0d7b4c4ea8a89ad8.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [IntegralCertificate](declarations/integralcertificate--16a6d7a690d9b2bbb762dd85.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [checkCoverage](declarations/checkcoverage--b28fdaf4c3b6d303a0b39253.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [checkPartitionBound](declarations/checkpartitionbound--37c98ef653f9a3c02bafe068.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [checkAllBounds](declarations/checkallbounds--63bbf0bb3bc21d535d66353f.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [sumBounds](declarations/sumbounds--2c5e264de6b4be33928fe6a8.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [checkSumInTarget](declarations/checksumintarget--dba0d50b3d7409ec6ab773cf.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [verifyCertificate](declarations/verifycertificate--e5a00e3555f32ee15dbba1a7.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coverage_implies_partition](declarations/coverage-implies-partition--e23494403a669dc5a12449eb.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [singleton_mul_lo_eq_min](declarations/singleton-mul-lo-eq-min--ab1324e55f660cd3cf3a7ee8.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [singleton_mul_hi_eq_max](declarations/singleton-mul-hi-eq-max--934147caf43015a155c8e6e6.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [singleton_mul_lo_nonneg](declarations/singleton-mul-lo-nonneg--58216db512eeb28f0c8c76e0.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [singleton_mul_hi_nonneg](declarations/singleton-mul-hi-nonneg--6adb0090bbac17e869f7dee4.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [partition_bound_correct](declarations/partition-bound-correct--d5e5818ecfdb51703b4c84dc.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [foldl_add_mem](declarations/foldl-add-mem--b3d1a6155a70ca71a25ea70b.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sum_mem_sum_intervals](declarations/sum-mem-sum-intervals--b5035fef3b71e21ca6b534bf.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coverage_first_starts](declarations/coverage-first-starts--dc5d34cbbd0414995a8b12e1.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [checkContiguous_last_ends_aux](declarations/checkcontiguous-last-ends-aux--aaac05ef08faf6a6f9fdd6b4.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coverage_last_ends](declarations/coverage-last-ends--18cdb8e42b614c193d6055e7.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [checkContiguous_adjacent_aux](declarations/checkcontiguous-adjacent-aux--2a58eed8548f8bc102ebabc3.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coverage_adjacent](declarations/coverage-adjacent--2f730adadb43198c7a86fade.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [integrable_subinterval](declarations/integrable-subinterval--9f95d5ce549fadada10f55e2.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coverage_nonempty](declarations/coverage-nonempty--93dfd52c938aee35d9a1bb57.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coverage_tail_contiguous](declarations/coverage-tail-contiguous--aba60ad75ba85f2750a7d5a2.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [contiguous_all_hi_le_domain_hi](declarations/contiguous-all-hi-le-domain-hi--4a6fd069c33e8fe380e946ac.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [contiguous_entry_le_domain_hi](declarations/contiguous-entry-le-domain-hi--acc405b43bd82b0dbfc80a5c.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coverage_first_hi_le](declarations/coverage-first-hi-le--0eb3a4d101600e116d4ca44d.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coverage_entry_hi_le_domain_hi](declarations/coverage-entry-hi-le-domain-hi--956a7c495d203b4193034099.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coverage_entry_lo_ge_domain_lo](declarations/coverage-entry-lo-ge-domain-lo--c9e1a9b04e1e918ed25a79ac.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [checkContiguous_depends_only_on_hi](declarations/checkcontiguous-depends-only-on-hi--ae1fff1a96430f191b72cef5.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [contiguous_to_coverage_tail](declarations/contiguous-to-coverage-tail--ab27f28a1384e07e17bfc583.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coverage_integral_sum](declarations/coverage-integral-sum--09cf0be503e8197b928cfcf1.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [verify_certificate_correct](declarations/verify-certificate-correct--4dbc664555745f5d141dae7c.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [mkPartitionEntry](declarations/mkpartitionentry--10990ef5e0f59bb87bdff36f.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [midpoint_le_hi](declarations/midpoint-le-hi--95db88a6dd1c12203cdfeb20.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [lo_le_midpoint](declarations/lo-le-midpoint--f4668cf13cf7ee0d50c683d0.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [buildCertificateAux](declarations/buildcertificateaux--ee291814ce680facc0703137.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [buildCertificate](declarations/buildcertificate--b8ef61684c19a4fa9d470552.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [checkIntegralCertLowerBound](declarations/checkintegralcertlowerbound--4a5e5f267933625af7e95491.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [checkIntegralCertUpperBound](declarations/checkintegralcertupperbound--d68ca8559f0438cb3282b3de.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [verify_integral_cert_lower_bound](declarations/verify-integral-cert-lower-bound--1571eb0f6bd10a5b285823a7.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [verify_integral_cert_upper_bound](declarations/verify-integral-cert-upper-bound--d19a9e7dbe34874d520bb5ff.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
