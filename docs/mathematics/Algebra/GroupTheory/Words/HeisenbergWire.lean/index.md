# GRWTSK.GroupTheory.Words.HeisenbergWire

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/GroupTheory/Words/HeisenbergWire.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a07c65b502f19d1b120a4895bbfb87e062fccc8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GroupTheory/Words/HeisenbergWire.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [PrefixState](declarations/prefixstate--6c70be437eed48c9c896bef8.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [prefixStart](declarations/prefixstart--2d1e6a8db679ff75752b584a.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [prefixStep](declarations/prefixstep--e72ecabccb535f8a12c243b6.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [prefixProduct](declarations/prefixproduct--c814c6830942c7d7073bc37f.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [prefixScan](declarations/prefixscan--29883becdeda778aa5e55dc0.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [prefixProduct_step](declarations/prefixproduct-step--00606314caa7b06b874eb592.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [prefixScan_product_aux](declarations/prefixscan-product-aux--0cf3a4d02e43977792b14819.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [prefixScan_product](declarations/prefixscan-product--2f2b4f1a2bb79fd0c7e112f2.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [prefixScan_inputHeight_aux](declarations/prefixscan-inputheight-aux--41228460a899987c6ec0a7fe.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [prefixScan_inputHeight](declarations/prefixscan-inputheight--a7b6e662ceeb0571def6da84.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [prefixScan_orderedArea](declarations/prefixscan-orderedarea--6de552574d68d06423a92090.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [unpackNatLE_length](declarations/unpacknatle-length--9385ce37ace94c256f595177.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [packNatLE_unpackNatLE](declarations/packnatle-unpacknatle--52f4856fa7ce8b486ef11995.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [CoordinateFits](declarations/coordinatefits--d539de254e7934fda51fb371.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [RecordFits](declarations/recordfits--9a20e4ac0643e66836ae9a7f.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [encodeCoordinate](declarations/encodecoordinate--04abb81827643f89453a8b0f.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [decodeCoordinate](declarations/decodecoordinate--bf49435f292eda72f631a794.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [encodeCoordinate_length](declarations/encodecoordinate-length--08961c4ed52df6c523d11500.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [decodeCoordinate_encodeCoordinate](declarations/decodecoordinate-encodecoordinate--5168796c0ec70c8958f0d90a.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [encodeRecord](declarations/encoderecord--f0341b520dd2275efaab0a92.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [decodeRecord](declarations/decoderecord--fd5276a5884f90b4a483418a.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [encodeRecord_length](declarations/encoderecord-length--b8b194995668415ec93ee8b6.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [take_field](declarations/take-field--ee54ed086de52f9a0cecb902.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [drop_field](declarations/drop-field--fe8a786d662b68684b81e912.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [decodeRecord_encodeRecord](declarations/decoderecord-encoderecord--d01b41c340f615b0abb3d192.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [decodeCoordinate_negative_zero](declarations/decodecoordinate-negative-zero--d13cd800d848ecc26d134af9.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [decodeCoordinate_unknown_tag](declarations/decodecoordinate-unknown-tag--dcac922ca99d4fc021446a77.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [encodeRecords](declarations/encoderecords--f6fc3c498c4a88fa1d496982.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [decodeRecords](declarations/decoderecords--c6fa17aefa4004090538a652.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [encodeRecords_length](declarations/encoderecords-length--baa8a093c9ca5cfed8057156.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [decodeRecords_encodeRecords](declarations/decoderecords-encoderecords--68bb877ae2aa579a85c7194a.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [magic](declarations/magic--f8217a374f6fce03a73c6a66.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [encodeEnvelope](declarations/encodeenvelope--a487309134615038481c96ed.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [decodeEnvelope](declarations/decodeenvelope--bd034f59df35ed8c94341783.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [encodeEnvelope_length](declarations/encodeenvelope-length--d4a0a22769559236921e54d6.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [decodeEnvelope_encodeEnvelope](declarations/decodeenvelope-encodeenvelope--1447f2ccc98a9f180fc27d3d.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [encodeEnvelope_injective](declarations/encodeenvelope-injective--eb5670774b572e26cd50b332.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [encodePipeline](declarations/encodepipeline--f9a9f268f62e171e4869c161.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [decodePipeline](declarations/decodepipeline--6415692cfe7655e2fb49e6b8.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [pipeline_roundtrip](declarations/pipeline-roundtrip--cf74c179b78308a24f074f55.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [pipeline_preserves_source](declarations/pipeline-preserves-source--b0c2fd7dc42ddd20ce502caa.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [pipeline_preserves_product](declarations/pipeline-preserves-product--9a6e23ae47169b078d66929a.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [pipeline_preserves_orderedArea](declarations/pipeline-preserves-orderedarea--70808c07dc6df60ca1a68db6.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [pipeline_preserves_centralHeight](declarations/pipeline-preserves-centralheight--deb1fb03f3c7015655b0dc53.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [pipeline_preserves_prefixProduct](declarations/pipeline-preserves-prefixproduct--99810af298e4f9b83faf0d83.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [pipeline_preserves_prefixArea](declarations/pipeline-preserves-prefixarea--4363d8a90bb2638592bbebac.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [pipeline_preserves_height](declarations/pipeline-preserves-height--52b428a89d0df33640846c7b.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
