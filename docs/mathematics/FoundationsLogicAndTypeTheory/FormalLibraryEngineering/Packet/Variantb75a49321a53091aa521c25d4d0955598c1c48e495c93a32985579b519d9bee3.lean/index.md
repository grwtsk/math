# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Packet.Variantb75a49321a53091aa521c25d4d0955598c1c48e495c93a32985579b519d9bee3

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 2 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Packet/Variantb75a49321a53091aa521c25d4d0955598c1c48e495c93a32985579b519d9bee3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cfd0b4ffd352b7d42178e5fd21c932ad1c60ae2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Packet/Variantb75a49321a53091aa521c25d4d0955598c1c48e495c93a32985579b519d9bee3.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [structuralPacketMagic](declarations/structuralpacketmagic--e58416c3e3053299666bf9dc.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [structuralPacketSchemaVersion](declarations/structuralpacketschemaversion--1b21595ffab2ad2e2667bb97.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [structuralPacketHeaderBytes](declarations/structuralpacketheaderbytes--6c968736cccb0f2a9a182677.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [structuralPacketDirectoryEntryBytes](declarations/structuralpacketdirectoryentrybytes--93174eeae10c3f92d3c2f763.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [structuralPacketLittleEndianCode](declarations/structuralpacketlittleendiancode--3ca29f18fde1d01447c0e25d.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [SectionKind](declarations/sectionkind--96527613a79e8a6702dd3568.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [SectionKind.code](declarations/sectionkind-code--a6ff580dd2003bc85dab69a7.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [SectionKind.ofCode?](declarations/sectionkind-ofcode--07e04f0c7def45976901e40b.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sectionKindCode_roundtrip](declarations/sectionkindcode-roundtrip--2f1dfe9da2b1cddc46fe6b9a.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [requiredSectionKindsV1](declarations/requiredsectionkindsv1--3b6febce71321394247899c1.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [SectionDirectoryEntry](declarations/sectiondirectoryentry--df61c9a18342882d4b9d92fa.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [SectionDirectoryEntry.Valid](declarations/sectiondirectoryentry-valid--75f572de4b9f0ce8e8111f53.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [sectionIntervalsDisjoint](declarations/sectionintervalsdisjoint--02dac0f86931e368f0d67b02.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [SectionsDisjoint](declarations/sectionsdisjoint--a06ad3fdebf352f29652bd18.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [RequiredSectionsPresent](declarations/requiredsectionspresent--699625336c5541eb35af5238.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [StructuralPacketHeaderV1](declarations/structuralpacketheaderv1--ca03872a6f621b58717b33df.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [StructuralPacketHeaderV1.Valid](declarations/structuralpacketheaderv1-valid--4f58ca05ecb3da7779d6b429.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [DiagnosticSeverity](declarations/diagnosticseverity--679c714e9c12e0ea63b05a57.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [DiagnosticRecord](declarations/diagnosticrecord--41e8e420283ac678255835ba.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [DiagnosticRecord.Valid](declarations/diagnosticrecord-valid--a5be6479888e9a57c0c76120.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [orderedForestEdgeCount](declarations/orderedforestedgecount--f9575eefa14234ad75644d46.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [StructuralPacketV1](declarations/structuralpacketv1--0712f06ede7fef5be9614c39.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [StructuralPacketV1.WellFormed](declarations/structuralpacketv1-wellformed--5a5aa191515e17e709e7bfb3.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [wellFormedPacket_projection_balanced](declarations/wellformedpacket-projection-balanced--9da3aff4d9a4728b4d874877.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [StructuralPacketLimits](declarations/structuralpacketlimits--4662dbec9780b7aa5902cb99.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [OrderedSyntaxTree.depth](declarations/orderedsyntaxtree-depth--1ec5649222e1b8a67fa124a8.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [orderedForestDepth](declarations/orderedforestdepth--0729cb69766fb78184c72da7.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [stringTableByteLength](declarations/stringtablebytelength--cc73d80fadb2f018180928ca.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [StructuralPacketV1.WithinLimits](declarations/structuralpacketv1-withinlimits--6580f737105c7dbaed3ee9a6.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [CompletePacketDescriptor](declarations/completepacketdescriptor--1b46d8d3f43548299ccdc3f5.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [CompletePacketDescriptor.Valid](declarations/completepacketdescriptor-valid--b395fb785f6a4b59f7ba621d.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance--d5838fe4e014b9a507f73bf0.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `inductive` | [StructuralPublication](declarations/structuralpublication--d4a0cf6b626598bb502dc485.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `inductive` | [PacketHashFramingV1](declarations/packethashframingv1--17d5aab15b41cb487841ac42.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
