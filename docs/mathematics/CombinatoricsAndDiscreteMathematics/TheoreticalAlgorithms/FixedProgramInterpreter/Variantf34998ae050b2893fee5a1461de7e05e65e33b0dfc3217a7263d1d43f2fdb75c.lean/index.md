# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FixedProgramInterpreter.Variantf34998ae050b2893fee5a1461de7e05e65e33b0dfc3217a7263d1d43f2fdb75c

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**23 observed declarations and anonymous commands**, 6 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variantf34998ae050b2893fee5a1461de7e05e65e33b0dfc3217a7263d1d43f2fdb75c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15108fba50eb1f256fd4dc73b3580ebb0ad42162`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variantf34998ae050b2893fee5a1461de7e05e65e33b0dfc3217a7263d1d43f2fdb75c.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [State](declarations/state--5e96f19f81f9d143e644630f.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [zeroState](declarations/zerostate--86f1df3ea7ea2054ae7b726b.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [programLengthBits](declarations/programlengthbits--616d959b9574c5d29e2be749.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [maxProgramBytes](declarations/maxprogrambytes--29ef691e2486a05be6340d6b.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [maxStackDepth](declarations/maxstackdepth--55f8384e8cb4a902e483c048.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [IndexBitPosition](declarations/indexbitposition--8e3033da9278f85a7b6fa623.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [Operation](declarations/operation--98fa6a24e4855734355fae3e.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [nextStackDepth](declarations/nextstackdepth--bdba6cff5259c78f6ddeb655.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [executeOperation](declarations/executeoperation--6b1435c08abe755a095aca6f.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [evaluateOperations](declarations/evaluateoperations--bb955ce0141367e9e1568994.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [validateOperationsFrom](declarations/validateoperationsfrom--8eb26f49289c6ebbe4859ab7.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [validateOperations](declarations/validateoperations--8d8ce7842ee0698900858cb4.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [DecodedProgram](declarations/decodedprogram--82305080bf05b43ca2bb7970.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [CheckedDecoder](declarations/checkeddecoder--e05da269c0ac9df3ab771d63.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [DecodedProgram.evaluate](declarations/decodedprogram-evaluate--0f36e9546063c37c5e387a44.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [DecodedProgram.evaluateOperations_eq_some_evaluate](declarations/decodedprogram-evaluateoperations-eq-some-evaluate--10bc5a6c2d04d2f65f100935.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [interpretChecked](declarations/interpretchecked--09431298a0ab8c95850eebbd.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [interpretTotal](declarations/interprettotal--3185c07ca5f207a87251a5a3.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [interpretTotal_eq_checked_getD](declarations/interprettotal-eq-checked-getd--226b0e3594418280e2cdaf69.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [interpretTotal_of_decode_some](declarations/interprettotal-of-decode-some--b55b2b566c14a7a445ef6d97.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [interpretChecked_of_decode_none](declarations/interpretchecked-of-decode-none--2832264e35c7fa1c79736888.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [interpretTotal_of_decode_none](declarations/interprettotal-of-decode-none--9012f44b6c0344dba5a60a51.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [interpretTotal_apply_of_decode_none](declarations/interprettotal-apply-of-decode-none--b6f009ebc540082b8020c289.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
