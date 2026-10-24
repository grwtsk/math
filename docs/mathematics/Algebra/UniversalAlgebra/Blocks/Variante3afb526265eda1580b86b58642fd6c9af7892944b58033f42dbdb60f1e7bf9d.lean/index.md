# GRWTSK.Algebra.UniversalAlgebra.Blocks.Variante3afb526265eda1580b86b58642fd6c9af7892944b58033f42dbdb60f1e7bf9d

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Blocks/Variante3afb526265eda1580b86b58642fd6c9af7892944b58033f42dbdb60f1e7bf9d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae10cc237a7795dee4e544d313e52871204f8e88`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UniversalAlgebra/Blocks/Variante3afb526265eda1580b86b58642fd6c9af7892944b58033f42dbdb60f1e7bf9d.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BitString](declarations/bitstring--f3df7179eac572357560d26c.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [BitString.ext](declarations/bitstring-ext--b7a3bdd8caf4f92df05be956.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [BitString.empty](declarations/bitstring-empty--ee97359ae0f886b86d32914c.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [BitString.ofBits](declarations/bitstring-ofbits--bc5a5ad1e9b667c1dcc202b8.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [ByteBitCodec](declarations/bytebitcodec--11c21389fd2b132d7144e669.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [rowsFor](declarations/rowsfor--574298967459a051657f833f.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [payloadBits_le_rowsFor_mul](declarations/payloadbits-le-rowsfor-mul--790cde7bb8a1660fba218ace.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rowsFor_minimal](declarations/rowsfor-minimal--55d6f595cd593d854dab90a7.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [RawBitPacket](declarations/rawbitpacket--d2c6d1668c4f723a7420e027.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [RawBitPacket.ext](declarations/rawbitpacket-ext--efff22571c73b9a9967dc893.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [RawBitPacket.Canonical](declarations/rawbitpacket-canonical--845bfba9b54b561c727506c7.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [BitPacket](declarations/bitpacket--6ecfcd7d83d5e14a2df1609f.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [rows](declarations/rows--f6b2a59917eed39cab683609.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [matrix](declarations/matrix--4bf4d97f9ced1f9101622a55.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [payloadBits](declarations/payloadbits--2a4b214700aa07170cddfb07.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rows_mk](declarations/rows-mk--ae2967f6720dcb5f4c859e0c.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [matrix_mk](declarations/matrix-mk--b7eb88073e1bc49b5cc1a0b3.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [payloadBits_mk](declarations/payloadbits-mk--95c29a8921fd5bff477fa260.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [capacity](declarations/capacity--ebb8004fba751e517e820c91.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rows_eq](declarations/rows-eq--b14e92b2bf0e671b9862e76c.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [padding](declarations/padding--189f12bc90816a4e2879712f.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [block](declarations/block--d0d59da39a99136065878619.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [unblock](declarations/unblock--9b2a4370da3569110ed0f79d.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [block_rows](declarations/block-rows--7769b8c20db48ef58b47b150.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [block_payloadBits](declarations/block-payloadbits--e282e836f44caa1db7659074.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [unblock_bitLength](declarations/unblock-bitlength--b0acee0c563d3cb965ec54df.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [unblock_block](declarations/unblock-block--d0bc3ca308049f986ad63d49.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [block_unblock](declarations/block-unblock--44e322a9342683c2196c6d3b.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [blockEquiv](declarations/blockequiv--376411d262693fdd2d0dab5f.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [VariableMatrix](declarations/variablematrix--1738a67af6d4ae9e36136e38.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [BitPacket.toVariableMatrix](declarations/bitpacket-tovariablematrix--9e00bce70b2133f22b3406b6.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [zeroPayloadOne](declarations/zeropayloadone--11211595e5eec418683fe1e0.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [zeroPayloadTwo](declarations/zeropayloadtwo--657f0363f2229f73283f63a3.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [variableMatrix_forgets_payload_length](declarations/variablematrix-forgets-payload-length--08ab8c8278064b34bc65d251.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
