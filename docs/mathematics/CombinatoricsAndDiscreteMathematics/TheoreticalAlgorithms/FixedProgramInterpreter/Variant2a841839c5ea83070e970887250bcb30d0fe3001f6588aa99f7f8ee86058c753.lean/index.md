# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FixedProgramInterpreter.Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**23 observed declarations and anonymous commands**, 6 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1031ef61768556191b4d9ab0462df7b8d339b28b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [State](declarations/state--0e7a1496fe78838cb7081b9b.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [zeroState](declarations/zerostate--dcdb2c73982d84c6afeb67d9.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [programLengthBits](declarations/programlengthbits--9c184371b7339275c32693d0.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [maxProgramBytes](declarations/maxprogrambytes--87e2afd805c86460544db7cc.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [maxStackDepth](declarations/maxstackdepth--7b8a14120caf23ac22a4a2c9.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [IndexBitPosition](declarations/indexbitposition--d60e81aa03ffb5856f682a23.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [Operation](declarations/operation--df03b6b07d5234b00f1ee495.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [nextStackDepth](declarations/nextstackdepth--ea6c10aa712841f46e9dbbe1.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [executeOperation](declarations/executeoperation--b663d3002308c1ae1768f178.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [evaluateOperations](declarations/evaluateoperations--7ad1719e7a4f36b66781eb64.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [validateOperationsFrom](declarations/validateoperationsfrom--376fd43724fb9f7f4de2ce8f.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [validateOperations](declarations/validateoperations--016a703bc3f584a3c5496e77.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [DecodedProgram](declarations/decodedprogram--51ebd3ee9aba9b87b3c73a7a.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [CheckedDecoder](declarations/checkeddecoder--71cb9d8f848f5fc9658f0342.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [DecodedProgram.evaluate](declarations/decodedprogram-evaluate--7ebe510337611259c78a5eb1.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [DecodedProgram.evaluateOperations_eq_some_evaluate](declarations/decodedprogram-evaluateoperations-eq-some-evaluate--4954efc34d3731867e83dfe7.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [interpretChecked](declarations/interpretchecked--09b6a9f53907db70cee41fbe.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [interpretTotal](declarations/interprettotal--f0c12bc57890167e83b14169.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [interpretTotal_eq_checked_getD](declarations/interprettotal-eq-checked-getd--96b0b2ba64786eb4fc0465aa.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [interpretTotal_of_decode_some](declarations/interprettotal-of-decode-some--56e47fe65c9af5184ccaa7f3.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [interpretChecked_of_decode_none](declarations/interpretchecked-of-decode-none--0165462b537725c2adec11a1.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [interpretTotal_of_decode_none](declarations/interprettotal-of-decode-none--b7f020b2dd83ecacca48b371.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [interpretTotal_apply_of_decode_none](declarations/interprettotal-apply-of-decode-none--05f518db4c25ce47151d9551.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
