# GRWTSK.Analysis.RealAnalysis.RealFunctions.ExactRationalRounding.Variant03d73452c99c6fd3.SignedRoundingAndNormalization

[Complete source index](../../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**23 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `201ec1edefe87aef531ed47a39063015aeb278ba`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [RasterRounding](declarations/rasterrounding--b7679a7cee4a7c873a4e14ad.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [RasterRounding.round](declarations/rasterrounding-round--cd7c9df6e149e0c493cda1fb.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [round_positive_tie](declarations/round-positive-tie--f4d55dd49d21ac4c00b61c0c.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [round_negative_tie](declarations/round-negative-tie--a7bed92816a9115f86da85cc.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [round_zero](declarations/round-zero--863202630f3867a1702f2ebb.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [SignedInteger](declarations/signedinteger--744675b44fe540b0b4e8c59f.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [RasterRounding.roundSigned](declarations/rasterrounding-roundsigned--72bf41e4112fa54e48f1b6aa.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [RasterRounding.roundSigned_value](declarations/rasterrounding-roundsigned-value--72968fd30b63a4ebc8ba282c.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [roundSigned_negative_tie_value](declarations/roundsigned-negative-tie-value--ee0372736ced6f9de1f82ea1.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [roundSigned_negative_tie_sign](declarations/roundsigned-negative-tie-sign--5f192b4956a4a618683878d7.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [roundSigned_positive_tie_sign](declarations/roundsigned-positive-tie-sign--314b9dfd872ce5047ed1ba8d.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [AxisDirection](declarations/axisdirection--a34a1a3c7d7bf7c43934b964.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [SignedRational](declarations/signedrational--8d64a019a6a28b4d32cc72aa.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [normalizeSignedInteger](declarations/normalizesignedinteger--cb83556978e6ecba90b08007.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [normalizeSignedRasterCoordinate](declarations/normalizesignedrastercoordinate--02edcb32ca3ed89037f3103c.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [normalizeSigned_negative_tie_value](declarations/normalizesigned-negative-tie-value--5c4148cc2c8b6ca0f4408243.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [normalizeSigned_negative_tie_sign](declarations/normalizesigned-negative-tie-sign--692b392e065cfb0a2268730d.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [normalizeSigned_negative_tie_decreasing](declarations/normalizesigned-negative-tie-decreasing--a9bf7a35a690a149c876294e.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [normalizeRasterCoordinate](declarations/normalizerastercoordinate--3a8bcb3d07827b437e9fd002.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [normalizeRasterCoordinate_decreasing](declarations/normalizerastercoordinate-decreasing--312bc9bf0291ec42f68671b5.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `inductive` | [RoundingScalarSign](declarations/roundingscalarsign--23a1c3af0572ef015c9f61eb.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [roundingScalarSign](declarations/roundingscalarsign--fd10e67fe98d3d3cb54e932d.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [roundingScalarSign_zero](declarations/roundingscalarsign-zero--4c04f0d972481dabbaefc11d.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
