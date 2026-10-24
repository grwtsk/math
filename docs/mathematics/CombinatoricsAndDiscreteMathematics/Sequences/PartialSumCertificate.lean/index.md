# GRWTSK.Combinatorics.Sequences.PartialSumCertificate

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/Sequences/PartialSumCertificate.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04761e9e3d2533cc919c68a5dcfeb83028fe2ecd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumCertificate.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [OrderingCertificate](declarations/orderingcertificate--27f0c6474745c190c7346ebb.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [CertificateRejection](declarations/certificaterejection--24628cabddd1b814fa5cbcd7.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [certificateChecks](declarations/certificatechecks--aefc7dcf99edf0910b1658a0.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance--49ee1ce90e0ffc822f12f377.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [checkCertificate](declarations/checkcertificate--26a8b396dd0f2a3e3c356a83.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [diagnoseCertificate](declarations/diagnosecertificate--c6cdff734a683cc819618f99.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [checkCertificate_eq_true](declarations/checkcertificate-eq-true--4c36516f62ac917d8a8d5433.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [diagnoseCertificate_none_iff](declarations/diagnosecertificate-none-iff--e493825789acf9a0318e7a8c.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [checkCertificate_sound](declarations/checkcertificate-sound--5f927fe94e31586b8174890e.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [checkCertificate_packet_sum](declarations/checkcertificate-packet-sum--a3328846db35614b13db8d22.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [checkCertificate_prime_labels](declarations/checkcertificate-prime-labels--3b6afd105ac4d118a64bb754.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [geometry_produces_accepted_certificate](declarations/geometry-produces-accepted-certificate--96a73a2646129088216fa71b.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [validUnrootedCertificate](declarations/validunrootedcertificate--93ecfe8effbe7abc661a128b.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [validUnrootedCertificate_accepted](declarations/validunrootedcertificate-accepted--4bfd2dcbce47ac067d982378.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [zeroLabelCertificate](declarations/zerolabelcertificate--7fe646435b9b0803dfe41008.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [zeroLabelCertificate_rejected](declarations/zerolabelcertificate-rejected--cdfd600e4a03d2dbe5b66084.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [duplicateLabelCertificate](declarations/duplicatelabelcertificate--783c4081e51578d5245cc833.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [duplicateLabelCertificate_rejected](declarations/duplicatelabelcertificate-rejected--355e80dae3ecf4e0fea68cb0.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [duplicateLabel_distinct_sums](declarations/duplicatelabel-distinct-sums--3945869f95b929d69353132b.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [collidingCertificate](declarations/collidingcertificate--8f665d95ea111f1b3579e9ff.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [collidingCertificate_rejected](declarations/collidingcertificate-rejected--16220ce3fdb375166eea97df.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [repairedCertificate](declarations/repairedcertificate--8452f7bc365691d236c760ec.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [repairedCertificate_accepted](declarations/repairedcertificate-accepted--65bd3a8df1f7908037baaa75.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [excessiveSwapCertificate](declarations/excessiveswapcertificate--17bcec7d3ec7c34ec45fb03b.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [excessiveSwapCertificate_rejected](declarations/excessiveswapcertificate-rejected--f1dce1907642a55f3db1065d.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [intersectingSwapCertificate](declarations/intersectingswapcertificate--c52619f7af5e02fb46ecff01.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [intersectingSwapCertificate_rejected](declarations/intersectingswapcertificate-rejected--f987d8ecdd391052ffe7f57c.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
