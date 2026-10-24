# GRWTSK.Analysis.Convolution.PolynomialBumpRegularity

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Convolution/PolynomialBumpRegularity.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e69ce777a982e13ffb069e3c91a184b40b4f139d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/Convolution/PolynomialBumpRegularity.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [indicator_hasDerivAt](declarations/indicator-hasderivat--a93ba6aa5dc55d1fcdd2fb25.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [thirdInterior](declarations/thirdinterior--17b8948c41cb4ff764618f57.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [secondInterior_hasDerivAt](declarations/secondinterior-hasderivat--ba27710648889c365bdc9f98.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [thirdInterior_endpoints](declarations/thirdinterior-endpoints--dc6911fbd65caf30a19df91d.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [normalizedInterior](declarations/normalizedinterior--7e840a8833b602e40f37ab6a.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [normalizedInteriorDerivative](declarations/normalizedinteriorderivative--9cb77c3c3238d4b551bb836c.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [normalizedTest_eq_indicator](declarations/normalizedtest-eq-indicator--743a19446565bf35f37cfdb1.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [normalizedInterior_hasDerivAt](declarations/normalizedinterior-hasderivat--00a8881259f70906a87cf545.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [normalizedInteriorDerivative_continuous](declarations/normalizedinteriorderivative-continuous--a560ea16abc8e19d156b8efc.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [normalizedInterior_frontier](declarations/normalizedinterior-frontier--cf4dfb8f05ff02f540629970.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [normalizedTest_contDiff](declarations/normalizedtest-contdiff--cf0a36ba48580ef1a0f438aa.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [normalizedTest_zero_of_le_abs](declarations/normalizedtest-zero-of-le-abs--d4b06e6f7c30f7572c69230a.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [normalizedTest_hasCompactSupport](declarations/normalizedtest-hascompactsupport--b6dcb87f30dfd36139e8e57b.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [normalizedTest_integrable](declarations/normalizedtest-integrable--c52eb2d043972bef215565b2.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [correlation_product_integrable](declarations/correlation-product-integrable--8334c0b16360233a2653fa91.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [reflectedTest_hasCompactSupport](declarations/reflectedtest-hascompactsupport--ee65dc30e65a00c5b5411890.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [reflectedTest_integrable](declarations/reflectedtest-integrable--1ced076abdf118aba10c40d6.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sourceCorrelation_eq_convolution](declarations/sourcecorrelation-eq-convolution--979aa566376603769b3086fc.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sourceCorrelation_contDiff](declarations/sourcecorrelation-contdiff--e4470576905ac7beccd5d4a0.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sourceCorrelation_eq_zero_of_two_mul_le_abs](declarations/sourcecorrelation-eq-zero-of-two-mul-le-abs--ff20edd839c2748e63d11783.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sourceCorrelation_upper_endpoint](declarations/sourcecorrelation-upper-endpoint--7c4dc03c13b4cb820e769080.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sourceCorrelation_lower_endpoint](declarations/sourcecorrelation-lower-endpoint--d56f0542eb980017ec5af8b1.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sourceCorrelation_hasCompactSupport](declarations/sourcecorrelation-hascompactsupport--3724ab5898c397856f2f6107.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sourceCorrelation_integrable](declarations/sourcecorrelation-integrable--5ce8a0cf4819327d0cbfad3d.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sourceCorrelation_even](declarations/sourcecorrelation-even--96615d2ca9ce86611439fdde.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [sourceCorrelation_seams_contDiffAt](declarations/sourcecorrelation-seams-contdiffat--57c97bec1e9c0cb4cea4543f.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [correlation_certificate](declarations/correlation-certificate--dfe4cbc7485802d54e24702d.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
