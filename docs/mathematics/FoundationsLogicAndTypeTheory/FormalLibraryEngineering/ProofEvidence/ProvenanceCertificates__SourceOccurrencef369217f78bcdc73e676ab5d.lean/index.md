# GRWTSK.Logic.ProofEvidence.ProvenanceCertificates

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Logic/ProofEvidence/ProvenanceCertificates.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79b6aa7521b17e86e657c3310bbff263c8174d4c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [EvidenceGrade](declarations/evidencegrade--f57750d1f684ec187ff20aa4.md) | 10 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [SourceKind](declarations/sourcekind--f0e593e9d52b6efc0440e4aa.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [CircularityRisk](declarations/circularityrisk--47bc5f568b57a5c15d6d5d21.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [PacketMetadata](declarations/packetmetadata--5cb1af2598b6c18a1f039718.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [ExternalEvidence](declarations/externalevidence--faf332d0959fc869715e1319.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ExternalEvidence.grade](declarations/externalevidence-grade--159e18b4b16a6dc72f5d76ca.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ExternalEvidence.proof?](declarations/externalevidence-proof--a8fb2c8aa0f9cfca36061a22.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [ExternalResearchPacket](declarations/externalresearchpacket--8bfdc288fef439494b090235.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [ApplicabilityCertificate](declarations/applicabilitycertificate--fda600cfdb13720fbdc27e6f.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [consume](declarations/consume--35800695bb0d7134611a66cd.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [reference_cannot_be_consumed](declarations/reference-cannot-be-consumed--582de6523c085d3a74e66e75.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [finite_fixture_cannot_be_consumed](declarations/finite-fixture-cannot-be-consumed--c4333e6f36e4ecb8c0bde3c6.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [invalidated_cannot_be_consumed](declarations/invalidated-cannot-be-consumed--4ca1e3a9101b178e815efd50.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [consumption_supplies_native_proof](declarations/consumption-supplies-native-proof--c2fc70567f27febe39e5c9b7.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [RegisteredPacket](declarations/registeredpacket--e5ecfdc74933aca897137f63.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [Registry](declarations/registry--c205ff9ba1c49fb7e7c176b1.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Registry.register](declarations/registry-register--be1a89f61f9f26f520711742.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Registry.invalidate](declarations/registry-invalidate--e2a83158b1f344bc85a63d2f.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Registry.supersede](declarations/registry-supersede--df6eff6c9230ba702a76487f.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [Registry.active](declarations/registry-active--d7c8eaa693391870d2a72d08.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Registry.activeEntry](declarations/registry-activeentry--ef2ce42210e9c5db1620d866.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Registry.consumeEntry](declarations/registry-consumeentry--343bd8624ed306697774aed3.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [invalidation_preserves_packets](declarations/invalidation-preserves-packets--8ea4d03149c75f9f0aa1e04f.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [supersession_preserves_packets](declarations/supersession-preserves-packets--c4b178d6f9d3e80c1f091ce7.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [invalidation_disables](declarations/invalidation-disables--cd1a39ae36856c333cfedf0c.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [supersession_disables_old](declarations/supersession-disables-old--8359e2c747ea080ca4a1ef56.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [invalidation_blocks_registered_consumption](declarations/invalidation-blocks-registered-consumption--63b7461e05c9945ab6ba123d.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dependency_invalidation_blocks_consumption](declarations/dependency-invalidation-blocks-consumption--88009a9938e031c785121b00.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [registration_preserves_old](declarations/registration-preserves-old--6789b6c0cfaf0ab850c8f5a6.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [invalidation_preserves_evidence_grade](declarations/invalidation-preserves-evidence-grade--2a698a82dd6cd372a200e18d.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
