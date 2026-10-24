# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LiteralReadsetCertificates

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c08a274ade74b651a0c2516f9a50b088ae71407`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bytes](declarations/bytes--987bce862359666db3e9734a.md) | 12 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [SourceKey](declarations/sourcekey--54fca59981feaa67e0b9c8da.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [TargetKey](declarations/targetkey--05c28b99788480e2a51fc8bd.md) | 14 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [ReadSet](declarations/readset--ad2635ba019659c2f78c6571.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [Binding](declarations/binding--fa99298b5b3c9c0d2baf749c.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Occurrence](declarations/occurrence--65cafe7c43ab3f2609178e56.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Output](declarations/output--803aa6647017f89a1df34494.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [ByteOccurrence](declarations/byteoccurrence--014145f16e57f32c68757afd.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [ByteOutput](declarations/byteoutput--59ff68ea4c7af85270fea5ee.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [slot](declarations/slot--7858b8a1b33494647ab58714.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [sourcePayload](declarations/sourcepayload--bbac73b62ee65a4f12697ca7.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [realize](declarations/realize--591ac4b89881668c9d20a323.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [renderOccurrences](declarations/renderoccurrences--152f28ed3206e1da57bb1e4f.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [renderOutputs](declarations/renderoutputs--e90d9f500fbefe41985474a6.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [keysAt](declarations/keysat--4c7696f9de10d4f1e0843c7a.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [completeSourceKeys](declarations/completesourcekeys--7b15b5bde305224c6fe5c9c3.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [bindingKeys](declarations/bindingkeys--f43ccd88c8bd8abe96b1acbd.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [canonicalReadSet](declarations/canonicalreadset--f7dc92adbaa1796dfdaf79c2.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance--561c62ac63ef3ae96b884605.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [readsetsCheck](declarations/readsetscheck--b69ddc48a66d1f7600f46cee.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [coverageCheck](declarations/coveragecheck--85b27acdc404d1f34414d92c.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [certificateCheck](declarations/certificatecheck--483f54eb643c41651e11e315.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [readsetsCheck_spec](declarations/readsetscheck-spec--1bb255aa663c12b760cc3048.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [certificateCheck_spec](declarations/certificatecheck-spec--2f2c379f819fdbecbc6ce44c.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [accepted_readset_exact](declarations/accepted-readset-exact--184ec6ca0c57392ea24a6f20.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [accepted_complete_source_keys](declarations/accepted-complete-source-keys--e77cef3647d67ad7d9f8e8af.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [stale_literal_readset_rejected](declarations/stale-literal-readset-rejected--32d710a50146eda659e5f89c.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [omitted_source_occurrence_rejected](declarations/omitted-source-occurrence-rejected--0f09515facc8e6bc4e375fb9.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [sourcePayload_exact](declarations/sourcepayload-exact--3a5a1d7f2c3f32c23286f7ba.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [missing_source_slot_rejected](declarations/missing-source-slot-rejected--0fdfcc9b793200c2cbd0ce33.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coverageCheck_sound](declarations/coveragecheck-sound--e3d4c71f6494c403afc7dc80.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [accepted_exact_decode](declarations/accepted-exact-decode--aefaa1721a6807025dfc82bb.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [same_literal_slot_equal](declarations/same-literal-slot-equal--90aba0c004f5e66543f75da2.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [digest_equality_does_not_imply_bytes](declarations/digest-equality-does-not-imply-bytes--b850eece096325aec524cf32.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [targetLess](declarations/targetless--7501801381e282c46bb90690.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance--477209740292c8e067f29ca1.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [outputKeys](declarations/outputkeys--94fa0b4fe26661c58d7ec55f.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [planCertificateCheck](declarations/plancertificatecheck--bc0e305d850ceb4f229b776c.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [planCertificateCheck_spec](declarations/plancertificatecheck-spec--46be2514aa17a923316b5243.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [accepted_literal_objects_exact](declarations/accepted-literal-objects-exact--5c1382a7d6337ad1f6d63fe3.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [accepted_output_inventory_exact](declarations/accepted-output-inventory-exact--eba649e45bafb4fa525f0536.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [accepted_output_keys_unique](declarations/accepted-output-keys-unique--3f8dbe7a6ccda9c77062df4c.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [literal_payload_drift_rejected](declarations/literal-payload-drift-rejected--36c2becc05dd4a882d19fd88.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [changed_output_inventory_rejected](declarations/changed-output-inventory-rejected--3aa5b14ae0ef694534bb821d.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [plan_certificate_exact_decode](declarations/plan-certificate-exact-decode--da56c7c4b38426d504ca9401.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `example` | [(anonymous)](declarations/example--d19c67fa3b5432ada6202167.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
