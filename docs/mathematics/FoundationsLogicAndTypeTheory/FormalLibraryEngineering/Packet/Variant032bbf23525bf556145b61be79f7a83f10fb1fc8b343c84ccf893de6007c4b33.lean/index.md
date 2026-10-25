# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Packet.Variant032bbf23525bf556145b61be79f7a83f10fb1fc8b343c84ccf893de6007c4b33

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 2 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Packet/Variant032bbf23525bf556145b61be79f7a83f10fb1fc8b343c84ccf893de6007c4b33.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e14939cb27f7097329953daf8c8292cb36a9e30`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Packet/Variant032bbf23525bf556145b61be79f7a83f10fb1fc8b343c84ccf893de6007c4b33.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [structuralPacketMagic](declarations/structuralpacketmagic--accdcf9d1cf2208806fbf3db.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [structuralPacketSchemaVersion](declarations/structuralpacketschemaversion--077925f380510b27352a78c9.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [structuralPacketHeaderBytes](declarations/structuralpacketheaderbytes--8e315957ffe9b8f505e96eae.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [structuralPacketDirectoryEntryBytes](declarations/structuralpacketdirectoryentrybytes--37a4fa3b2e516b0b51055c53.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [structuralPacketLittleEndianCode](declarations/structuralpacketlittleendiancode--6749d18fec5fda007a12ac13.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [SectionKind](declarations/sectionkind--aef54d68d8d5ec09cb5b6bab.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [SectionKind.code](declarations/sectionkind-code--0b365c7428f5d6b97f27241d.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [SectionKind.ofCode?](declarations/sectionkind-ofcode--ed564678a3b989eacf2d1352.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sectionKindCode_roundtrip](declarations/sectionkindcode-roundtrip--f2500bc99d4078cc8a0efd76.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [requiredSectionKindsV1](declarations/requiredsectionkindsv1--3fc4b27951ff7fef9ce991bf.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [SectionDirectoryEntry](declarations/sectiondirectoryentry--84558a79088c78b801a3f71e.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [SectionDirectoryEntry.Valid](declarations/sectiondirectoryentry-valid--14469bdeeec87221aa74a3f9.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [sectionIntervalsDisjoint](declarations/sectionintervalsdisjoint--c396bc514fd8c8fa9623a938.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [SectionsDisjoint](declarations/sectionsdisjoint--a82bf9dbfb0f333a310479ad.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [RequiredSectionsPresent](declarations/requiredsectionspresent--8f125cbf6744e7bc02d6a156.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [StructuralPacketHeaderV1](declarations/structuralpacketheaderv1--3525879efc66eb1376ccfb4c.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [StructuralPacketHeaderV1.Valid](declarations/structuralpacketheaderv1-valid--684d5353441daae9404ff1ae.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [DiagnosticSeverity](declarations/diagnosticseverity--b100484eccb4b8809cb45d1c.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [DiagnosticRecord](declarations/diagnosticrecord--889707791e45ba842ec61274.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [DiagnosticRecord.Valid](declarations/diagnosticrecord-valid--dea198f2b889dea8abcf5c78.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [orderedForestEdgeCount](declarations/orderedforestedgecount--f681dcea0a41cbbc1679a1e6.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [StructuralPacketV1](declarations/structuralpacketv1--b22a55dc4db6cf5ca7a58069.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [StructuralPacketV1.WellFormed](declarations/structuralpacketv1-wellformed--4cd335910fc1a0f7fba0baf9.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [wellFormedPacket_projection_balanced](declarations/wellformedpacket-projection-balanced--34bbe1642ed99806f202182e.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [StructuralPacketLimits](declarations/structuralpacketlimits--9bb1281ab8c4c9b8c4d07cd9.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [OrderedSyntaxTree.depth](declarations/orderedsyntaxtree-depth--f0a5105fef7466de55cbb98e.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [orderedForestDepth](declarations/orderedforestdepth--9ee0a1d4d873a29d458e7f11.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [stringTableByteLength](declarations/stringtablebytelength--bbe92fbc83f65853cc7db65a.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [StructuralPacketV1.WithinLimits](declarations/structuralpacketv1-withinlimits--fb59ff69c2d57edd3c10da6e.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [CompletePacketDescriptor](declarations/completepacketdescriptor--69550d6b372cf9fec564c951.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [CompletePacketDescriptor.Valid](declarations/completepacketdescriptor-valid--c200985e7c407b6299837e10.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance--b07f659845460d9369907d36.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `inductive` | [StructuralPublication](declarations/structuralpublication--18731367256792f9312dea54.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `inductive` | [PacketHashFramingV1](declarations/packethashframingv1--b3b67212367e6d3bda8c7b51.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
