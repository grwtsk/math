# GRWTSK.NumberTheory.Moebius.SignedAbelDepthWeightedDispersion

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**20 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e94e13369e116a21d9a68f9bef72b368b8f1ee5e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [signedAbelDepthAmplitude](declarations/signedabeldepthamplitude--fc72900131af8083e3d71a10.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [signedAbelDepthWeight](declarations/signedabeldepthweight--1cf9fdb681ae8408884e1dda.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [signedAbelDepthWeight_nonneg](declarations/signedabeldepthweight-nonneg--c91edf2d5f748d613405ee85.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [weightedMertensDyadicSignedAbelCell_eq_amplitude_mul_weight](declarations/weightedmertensdyadicsignedabelcell-eq-amplitude-mul-weight--57b41e3654ffa0f0a63efbfe.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [weightedMertensDyadicSignedAbelDepthSlice_eq_weightedBilinear](declarations/weightedmertensdyadicsignedabeldepthslice-eq-weightedbilinear--14e649bb24278b09050bfc86.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [weightedMertensSignedAbelDepthBilinearModel](declarations/weightedmertenssignedabeldepthbilinearmodel--b59e86ea758c5c1bef4cc19f.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [weightedMertensSignedAbelDepthMass](declarations/weightedmertenssignedabeldepthmass--5e6b7228b6d4e3939c9635fb.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [weightedMertensSignedAbelDepthQuadraticEnergy](declarations/weightedmertenssignedabeldepthquadraticenergy--8f99e62b743564a21952d6e9.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [weightedMertensSignedAbelDepthMass_nonneg](declarations/weightedmertenssignedabeldepthmass-nonneg--22aafc6c83e666435b1d8745.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [weightedMertensSignedAbelDepthQuadraticEnergy_nonneg](declarations/weightedmertenssignedabeldepthquadraticenergy-nonneg--78182af1308bb6b9eccd3fe7.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [weightedMertensDyadicSignedAbelDepthSlice_sq_le_dispersion](declarations/weightedmertensdyadicsignedabeldepthslice-sq-le-dispersion--b17c1b6197e658a1c04a5982.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [weightedMertensSignedAbelDepthDispersionRadius](declarations/weightedmertenssignedabeldepthdispersionradius--d2300364cab8223d23187231.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [weightedMertensSignedAbelDepthDispersionRadius_nonneg](declarations/weightedmertenssignedabeldepthdispersionradius-nonneg--d98a751275c5e781ecbc575c.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [weightedMertensDyadicSignedAbelDepthSlice_le_dispersionRadius](declarations/weightedmertensdyadicsignedabeldepthslice-le-dispersionradius--7bb79d957f1ad0134f86e224.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [weightedMertensDyadicSignedAbelDispersionMajorant](declarations/weightedmertensdyadicsignedabeldispersionmajorant--5817bb3e1913bb92be812f50.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [weightedMertensDyadicSignedAbelDispersionMajorant_nonneg](declarations/weightedmertensdyadicsignedabeldispersionmajorant-nonneg--d06cc517c699579d6f8c4326.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [weightedMertensDyadicSignedAbelDepthPacket_le_dispersionMajorant](declarations/weightedmertensdyadicsignedabeldepthpacket-le-dispersionmajorant--6361b7f81bfd74e2d636b661.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [SubpolynomialDyadicSignedAbelWeightedDispersion](declarations/subpolynomialdyadicsignedabelweighteddispersion--fe3e0733a7a5a94161b8bfad.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [subpolynomialDyadicSignedAbelDepthPacket_of_weightedDispersion](declarations/subpolynomialdyadicsignedabeldepthpacket-of-weighteddispersion--5a01d2fb0e4b5749a159cda4.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicSignedAbelWeightedDispersion](declarations/riemannhypothesis-of-subpolynomialdyadicsignedabelweighteddispersion--f880032312d1bd08edf3a12c.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
