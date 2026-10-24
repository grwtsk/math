# GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticBounds

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticBounds.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96654b6bc934d1a9aa4bd647892af3008f54f50b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticBounds.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsDyadicScale](declarations/isdyadicscale--416442c7bf30322abcbbd600.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [PaperAdmissible](declarations/paperadmissible--251186978a611205524959b8.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [totalScaleProduct](declarations/totalscaleproduct--d1149a15262a80f0b9791f40.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [divisibleScaleProduct](declarations/divisiblescaleproduct--9127fc69092a54a1a48579c9.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [selectedScaleProduct](declarations/selectedscaleproduct--9c4239dcad3fe2e51aef4b70.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [selectedWeightedScaleProduct](declarations/selectedweightedscaleproduct--2a45401967cb26552a25e7a0.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [selectedScaleProduct_empty](declarations/selectedscaleproduct-empty--7afdf2691d731c69dbe48b69.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [selectedWeightedScaleProduct_empty](declarations/selectedweightedscaleproduct-empty--21682c1500357c77fb760f39.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [selectedScaleProduct_univ](declarations/selectedscaleproduct-univ--857506ea63c589392e9de50e.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [divisibleScaleProduct_one](declarations/divisiblescaleproduct-one--2f7fdc10dc723b74cad8ded2.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [StrictCoordinateMembership](declarations/strictcoordinatemembership--1c8a78518d60aa616a6e4173.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [paperBoxFinset](declarations/paperboxfinset--63b5cefe29950bc1dfd0daec.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_paperBoxFinset](declarations/mem-paperboxfinset--144ca45f495949f2e717bc0a.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [paperBoxCard](declarations/paperboxcard--af2a3aeede6b5683a495c001.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [paperBoxCard_le_boxCard](declarations/paperboxcard-le-boxcard--3d747919fede32065dba18d7.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [fourierMajorant](declarations/fouriermajorant--3392b9a12317e592bda12b78.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [FourierEstimateFor](declarations/fourierestimatefor--8f6d5c0a4632f6b974c2d6f1.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [PaperFourierEstimate](declarations/paperfourierestimate--814f899120b02758c623b718.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [ClosedFourierEstimate](declarations/closedfourierestimate--515d88bad4e79d9dc9d03285.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [geometryMajorant](declarations/geometrymajorant--64ab6b8955167ae1461698b3.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [GeometryEstimateFor](declarations/geometryestimatefor--14a66aedbc1e875938eecb55.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [PaperGeometryEstimate](declarations/papergeometryestimate--8c0a8d27d6c721556f1dd066.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [ClosedGeometryEstimate](declarations/closedgeometryestimate--9e734eb430f24cccab6eb7d7.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [fourierEstimateFor_mono](declarations/fourierestimatefor-mono--4d736b89919439f8fcbe5b4d.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [geometryEstimateFor_mono](declarations/geometryestimatefor-mono--38745a959ffd3e7e99cf3d46.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [paperFourierEstimate_of_closed](declarations/paperfourierestimate-of-closed--d74ca81e7d852f30901931ac.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [paperGeometryEstimate_of_closed](declarations/papergeometryestimate-of-closed--453217b09deb9edf0686b1c4.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [HasClosedFourierEstimates](declarations/hasclosedfourierestimates--213310b8780eef7b13dd1283.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [HasClosedGeometryEstimates](declarations/hasclosedgeometryestimates--5d48fc7e1b75a4a56e3aa66a.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
