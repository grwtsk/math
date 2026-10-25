# GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProofEvidence.ProvenanceCertificates

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProofEvidence/ProvenanceCertificates.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79b6aa7521b17e86e657c3310bbff263c8174d4c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrence0bbc942bdec956b52fbbeb5c.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [EvidenceGrade](declarations/evidencegrade--11027393c7959f71a88c80cb.md) | 10 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [SourceKind](declarations/sourcekind--a0f8bb4d9cdb771c42167f46.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [CircularityRisk](declarations/circularityrisk--82d8a21ae1d834820ad8dc9f.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [PacketMetadata](declarations/packetmetadata--56b464db3b812c64d632eca3.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [ExternalEvidence](declarations/externalevidence--3a0df3b5877ac481294bc6ea.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ExternalEvidence.grade](declarations/externalevidence-grade--bf6a478c2de59350553655a3.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ExternalEvidence.proof?](declarations/externalevidence-proof--8e2ec0e510816a54abc60a6d.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [ExternalResearchPacket](declarations/externalresearchpacket--0641101ac3d4f5470b139d78.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [ApplicabilityCertificate](declarations/applicabilitycertificate--d453e640ee8be3374f72e2db.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [consume](declarations/consume--dba4aecfac485f2d5099e864.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [reference_cannot_be_consumed](declarations/reference-cannot-be-consumed--a62867ae9092cf1599bc027c.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [finite_fixture_cannot_be_consumed](declarations/finite-fixture-cannot-be-consumed--d6d7672607a9515147af7151.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [invalidated_cannot_be_consumed](declarations/invalidated-cannot-be-consumed--8f108215cb1eeb410d356079.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [consumption_supplies_native_proof](declarations/consumption-supplies-native-proof--4ebe5be3602c5a4060cd71b1.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [RegisteredPacket](declarations/registeredpacket--9fec8e24116f9f5ecc7eea2c.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [Registry](declarations/registry--ee5e54cc1b58244e29af4a74.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Registry.register](declarations/registry-register--873b9ea9e2f5dcdcda00f2ae.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Registry.invalidate](declarations/registry-invalidate--09d1b98d7db1a57680d96c8a.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Registry.supersede](declarations/registry-supersede--53d999942057383141a7a918.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [Registry.active](declarations/registry-active--e86f638ba9ccd16fdd1c5f91.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Registry.activeEntry](declarations/registry-activeentry--6a5bf89886115a38898ec7cf.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Registry.consumeEntry](declarations/registry-consumeentry--c3edb4bb992cfa3ccf23eceb.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [invalidation_preserves_packets](declarations/invalidation-preserves-packets--3d7c3bc6a571c3d00e1cfbbb.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [supersession_preserves_packets](declarations/supersession-preserves-packets--4cea7dcc49af4706235332e6.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [invalidation_disables](declarations/invalidation-disables--000741378af25a3e0502370c.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [supersession_disables_old](declarations/supersession-disables-old--9ca92ceb52e0314281dbc902.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [invalidation_blocks_registered_consumption](declarations/invalidation-blocks-registered-consumption--d1d297a20c8cb743759b5280.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dependency_invalidation_blocks_consumption](declarations/dependency-invalidation-blocks-consumption--2b8f4ca94cbbd1fe44934243.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [registration_preserves_old](declarations/registration-preserves-old--23a74ed54777152817cf093c.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [invalidation_preserves_evidence_grade](declarations/invalidation-preserves-evidence-grade--3cf87f91b03987eff0bc918f.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
