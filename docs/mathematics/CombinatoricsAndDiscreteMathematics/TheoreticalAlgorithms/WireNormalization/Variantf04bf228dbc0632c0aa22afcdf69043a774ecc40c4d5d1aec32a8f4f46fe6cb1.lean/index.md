# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WireNormalization.Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `951ec54205177dc3d307fb2a19405ffaceeb7b9b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [WireTerm](declarations/wireterm--7ed7571564d832b0d33a552f.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [WireTerm.decode](declarations/wireterm-decode--92e94baba4e5a2aad7659bc6.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [WireTerm.encode](declarations/wireterm-encode--30aff79bab8684a311125567.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [decode_encode](declarations/decode-encode--dc9443f3fb134600bdfd9312.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [encode_decode](declarations/encode-decode--a790fa39a9d1b6f771a43966.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [WireTerm.nodeCost](declarations/wireterm-nodecost--3b105e114dd866b81e2318bd.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [nodeCost_eq_size](declarations/nodecost-eq-size--ae3d292c359adb9cf2c2d7e0.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [Packet](declarations/packet--86e1274156cdacc07ca7e777.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [PacketValid](declarations/packetvalid--e1e5952758c2f3b947db9487.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance--0f8fe34d2fb81432f21ebb05.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [checkPacket](declarations/checkpacket--cd5648c546d44d82726adb82.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [checkPacket_correct](declarations/checkpacket-correct--2ae773f8591bbfb2b51ed7cf.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [CheckedPacket](declarations/checkedpacket--124c4fdc3b1d50854dfc6eda.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [admitPacket](declarations/admitpacket--24e096ef5ca005a71785742b.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [admitPacket_sound](declarations/admitpacket-sound--b6cd2c41b171f31d7ae2f614.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [normalizePacket](declarations/normalizepacket--918b74bc1acf2f3dc5ba50e1.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [normalizePacket_valid](declarations/normalizepacket-valid--51631dde21da58fc1fcc471f.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [normalizePacket_semantics](declarations/normalizepacket-semantics--4ceee99be321ae1e9bea6871.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [normalizePacket_readout](declarations/normalizepacket-readout--9db02ee2349070a18882911e.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [fixture](declarations/fixture--a9c1e382bcf97cb144298817.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [fixture_admitted](declarations/fixture-admitted--f54329f418c7dbed3a93d0f9.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [checkedFixture](declarations/checkedfixture--c37e24962bb4cbc9f3b3441c.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [fixture_normalized](declarations/fixture-normalized--d6e36094a8aa08e0d0c62ab0.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [wrong_context_rejected](declarations/wrong-context-rejected--80f37a1b8fe74b4ca0bc3eff.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [undeclared_constructor_rejected](declarations/undeclared-constructor-rejected--60e9deef0e884747b42cd9e1.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [changed_source_rejected](declarations/changed-source-rejected--1af834ea5d7fe290888ee4e0.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
