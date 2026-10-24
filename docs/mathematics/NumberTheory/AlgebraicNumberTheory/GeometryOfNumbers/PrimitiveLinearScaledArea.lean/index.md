# GRWTSK.GeometryOfNumbers.PrimitiveLinearScaledArea

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/GeometryOfNumbers/PrimitiveLinearScaledArea.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b106efe2886be623ec3f1bbf501aab8736fa0296`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [castIntVector](declarations/castintvector--8a69af096bb24d7d1696165b.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [anisotropicScale](declarations/anisotropicscale--7bd397f820e9dd48c965ae2e.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [scaledFirstVector](declarations/scaledfirstvector--fe6df4faa5f67f326873cf15.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [scaledSecondVector](declarations/scaledsecondvector--5d956f5eac591e8d9d011abf.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [scaledNormalCross](declarations/scalednormalcross--6c205762db29dc858c7a206b.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [castIntVector_cross](declarations/castintvector-cross--0ce2709ea37a8f365381c64a.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [anisotropicScale_cross](declarations/anisotropicscale-cross--f98f0584f026dfceec6bfe6d.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [scaledFirst_cross_scaledSecond](declarations/scaledfirst-cross-scaledsecond--aa230069e47eb209eece9d2d.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [squaredNorm3](declarations/squarednorm3--0bc6d828fcfe4295db5c525e.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [scaledAreaSq](declarations/scaledareasq--123f9378bf3b8fe2ecdcb26f.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [scaledNormalSq](declarations/scalednormalsq--7b88b5fbfd3eaeb3129abbd2.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [boxVolume](declarations/boxvolume--d9f18ea77fcf24880d83b017.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [boxVolume_pos](declarations/boxvolume-pos--b6f5a342279aeaa5ebad0496.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [boxVolume_ne_zero](declarations/boxvolume-ne-zero--2380fb2cefd6015126b21891.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [scaledAreaSq_nonneg](declarations/scaledareasq-nonneg--422b8b2296d277dfcc9aff35.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [scaledAreaSq_eq_scaledNormalSq_div](declarations/scaledareasq-eq-scalednormalsq-div--87299b5f9f07477f45adf569.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [scaledAreaSq_mul_boxVolume_sq](declarations/scaledareasq-mul-boxvolume-sq--85f36fb5c2e439704108e79c.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [scaleHeight_sq_le_scaledNormalSq](declarations/scaleheight-sq-le-scalednormalsq--f05598f7191548caf67ab319.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [scaleHeight_sq_le_scaledAreaSq_mul_boxVolume_sq](declarations/scaleheight-sq-le-scaledareasq-mul-boxvolume-sq--3c2b1d47e144bb5882b36819.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [scaledAreaSq_pos](declarations/scaledareasq-pos--8127d0c0d441f8c73c3df242.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [scaledArea](declarations/scaledarea--f49a83a8a2c19248c06bb647.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [scaledArea_sq](declarations/scaledarea-sq--c9cfb0923f94232cd2867a66.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [normalizedHeight_nonneg](declarations/normalizedheight-nonneg--82fb5bc95e9403dc9ac11659.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [normalizedHeight_sq_le_scaledAreaSq](declarations/normalizedheight-sq-le-scaledareasq--62144db533178ca8d31a347a.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [normalizedHeight_le_scaledArea](declarations/normalizedheight-le-scaledarea--81377b5b480df3c2c771eada.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [ScaledAreaCertificate](declarations/scaledareacertificate--41c41af482c33452fff42d96.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [canonicalScaledAreaCertificate](declarations/canonicalscaledareacertificate--5e392fba1c627d0493af36e6.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
