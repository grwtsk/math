# GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechPadicNorm

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `442a65803df5872febff260baf3473d5e0b0966d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Slot](declarations/slot--d57c94fc9202e48034ed758b.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [RationalData](declarations/rationaldata--fbfee4fff8e3f14f51469312.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [slotsNonempty](declarations/slotsnonempty--e76a495f7359ea2d6929978a.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [rawCoordinates](declarations/rawcoordinates--36550b0c5e7d7bea495d888e.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [frameQ](declarations/frameq--a1b8e21f2344027dbd047680.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [minimumQ](declarations/minimumq--1e4b4b622e800f8a017d1697.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [reducedPortQ](declarations/reducedportq--50de7ba2ff1b3aa1d1b5fda3.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [combinedQ](declarations/combinedq--a5a19de4f58ab1cbd7174e56.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [weights](declarations/weights--d5c3e7cd45cf244f22aed639.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [permutation](declarations/permutation--f06007b7ac9822c30defd0b9.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [combinedQ_integer](declarations/combinedq-integer--63fb982e7adc17a2581e5167.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [frame_combinedQ](declarations/frame-combinedq--6e1ddcb329ffecdc71d6804e.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [weights_ne_zero](declarations/weights-ne-zero--edd2a5dd015d1a2461aa978c.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [inverseQ](declarations/inverseq--254ba572c17a069b30ac2f90.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [inverseQ_combinedQ](declarations/inverseq-combinedq--717e2fa1f8d194f4e8206306.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [combinedQ_inverseQ](declarations/combinedq-inverseq--4b85087b80118e7b7bd26ebe.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [targetNorm](declarations/targetnorm--8c7825933b5728c20fb21565.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [frame_isometry](declarations/frame-isometry--f9d944509698540d1cde354d.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [InverseBound](declarations/inversebound--64510bbf091da52d70711881.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [inverse_bound_columns](declarations/inverse-bound-columns--6c6a0b4e0c483fb42bef3324.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [inverseFactor](declarations/inversefactor--cf26739171a1e9ab9ebab616.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [signed_clearing_norm](declarations/signed-clearing-norm--62403c88bca59e94c32152c2.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [weight_dvd_clearing](declarations/weight-dvd-clearing--9e3512848a86a62578180ab4.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [inverse_bound_iff](declarations/inverse-bound-iff--9f2519e6f4dfbcaa5becf4df.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [inverseFactor_depth](declarations/inversefactor-depth--4bab677202581919b3d08fd0.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [forward_nonexpanding](declarations/forward-nonexpanding--930f1162c320ba1dad28b27b.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [forward_bound_iff](declarations/forward-bound-iff--543f321fb411276423d8986f.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [inverse_estimate](declarations/inverse-estimate--6e4842329b567173f7df7b57.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [inverseFactor_off_support](declarations/inversefactor-off-support--277c7fd2bc1c5a9a7bf6736a.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [log_inverseFactor](declarations/log-inversefactor--fbda691713d137a72b0832b3.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [log_inverseFactor_nonneg](declarations/log-inversefactor-nonneg--3cf683dd1578b76c9425571b.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [finiteInverseCost](declarations/finiteinversecost--d0d2e7e7058ab3f1887f6231.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [finiteInverseCost_eq](declarations/finiteinversecost-eq--9e24d97fa6bc1c2a45de10e0.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
