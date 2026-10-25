# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Packet.Variant8798d3156b69092a65867e1ba5ae1f1945dfd14cc604607707eaa0a0ab673f9a

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 2 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Packet/Variant8798d3156b69092a65867e1ba5ae1f1945dfd14cc604607707eaa0a0ab673f9a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c32e88dcb72a5602745eea17f6158e5bc87e97cb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Packet/Variant8798d3156b69092a65867e1ba5ae1f1945dfd14cc604607707eaa0a0ab673f9a.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [structuralPacketMagic](declarations/structuralpacketmagic--dc7cde0d9dd55c55a66bf3de.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [structuralPacketSchemaVersion](declarations/structuralpacketschemaversion--fb45e08b92065270a94edc4f.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [structuralPacketHeaderBytes](declarations/structuralpacketheaderbytes--09188f7cdb6c3cb8048873db.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [structuralPacketDirectoryEntryBytes](declarations/structuralpacketdirectoryentrybytes--a103f94a2f9968827f7c5359.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [structuralPacketLittleEndianCode](declarations/structuralpacketlittleendiancode--640dc3dd28da6320756a2447.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [SectionKind](declarations/sectionkind--61cfbfb732b2c26f6d6358b6.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [SectionKind.code](declarations/sectionkind-code--cb6d1327a5ea11a9e8518ec1.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [SectionKind.ofCode?](declarations/sectionkind-ofcode--985ffdb08c54707f48ac2226.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sectionKindCode_roundtrip](declarations/sectionkindcode-roundtrip--3832add9c9645af8f09c87bd.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [requiredSectionKindsV1](declarations/requiredsectionkindsv1--2ef0b0b9ccd3f254591ba9e9.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [SectionDirectoryEntry](declarations/sectiondirectoryentry--aab1056d365ace79a2a03aa7.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [SectionDirectoryEntry.Valid](declarations/sectiondirectoryentry-valid--be3114890703ddfce11a8de7.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [sectionIntervalsDisjoint](declarations/sectionintervalsdisjoint--bf3e5f850ac7b561fc93053e.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [SectionsDisjoint](declarations/sectionsdisjoint--5e031b68cfb2b2c3778253c1.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [RequiredSectionsPresent](declarations/requiredsectionspresent--71814ecb13fec8deadfc6601.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [StructuralPacketHeaderV1](declarations/structuralpacketheaderv1--cbde40b34fe98428a5a8530f.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [StructuralPacketHeaderV1.Valid](declarations/structuralpacketheaderv1-valid--a63fc2025b2373d089ccfc91.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [DiagnosticSeverity](declarations/diagnosticseverity--b6c9200c4c3622997de8d4f0.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [DiagnosticRecord](declarations/diagnosticrecord--54aadc2da6c21279bd6e1d85.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [DiagnosticRecord.Valid](declarations/diagnosticrecord-valid--58b865a6ab5c59b38aa70c6d.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [orderedForestEdgeCount](declarations/orderedforestedgecount--20ef058ae049080b2f949ac3.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [StructuralPacketV1](declarations/structuralpacketv1--5f073cceab60f2fa1b865f73.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [StructuralPacketV1.WellFormed](declarations/structuralpacketv1-wellformed--7d82021daf03be5bb187b5f4.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [wellFormedPacket_projection_balanced](declarations/wellformedpacket-projection-balanced--06601d866a1eeb6e6b0c3588.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [StructuralPacketLimits](declarations/structuralpacketlimits--a34afb93351f4bb7f890ae19.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [OrderedSyntaxTree.depth](declarations/orderedsyntaxtree-depth--c825775984d49e2e9fbb2544.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [orderedForestDepth](declarations/orderedforestdepth--d4f216333f3e0185f599cb70.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [stringTableByteLength](declarations/stringtablebytelength--f8e42866c1f0433ab328bbb9.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [StructuralPacketV1.WithinLimits](declarations/structuralpacketv1-withinlimits--f05eeaa594c420962aeaae9c.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [CompletePacketDescriptor](declarations/completepacketdescriptor--ce7ac2bde4c7bc08666d1609.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [CompletePacketDescriptor.Valid](declarations/completepacketdescriptor-valid--5a7cf3a2395c49bffd38b720.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance--c057bb184bca1b5cc48b937c.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `inductive` | [StructuralPublication](declarations/structuralpublication--ec9bb02096a9bbdf3f6bf3d3.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `inductive` | [PacketHashFramingV1](declarations/packethashframingv1--3afd4d99e89f8ce2e1073473.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
