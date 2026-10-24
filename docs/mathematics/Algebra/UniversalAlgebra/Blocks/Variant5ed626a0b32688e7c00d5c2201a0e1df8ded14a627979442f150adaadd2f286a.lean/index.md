# GRWTSK.Algebra.UniversalAlgebra.Blocks.Variant5ed626a0b32688e7c00d5c2201a0e1df8ded14a627979442f150adaadd2f286a

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Blocks/Variant5ed626a0b32688e7c00d5c2201a0e1df8ded14a627979442f150adaadd2f286a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8dcbe8d728cab4beff7a052daf87e3ac29c83971`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UniversalAlgebra/Blocks/Variant5ed626a0b32688e7c00d5c2201a0e1df8ded14a627979442f150adaadd2f286a.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BitString](declarations/bitstring--b4f28b11cc48b052d29464e5.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [BitString.ext](declarations/bitstring-ext--9799f88e1f169939ae59dd6b.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [BitString.empty](declarations/bitstring-empty--8419210df8f11c85e094fcd4.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [BitString.ofBits](declarations/bitstring-ofbits--9feddd3e79c432caa75794a2.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [ByteBitCodec](declarations/bytebitcodec--29a4d5071a90867ec6ddc05e.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [rowsFor](declarations/rowsfor--643c75ad1651a88c5794f536.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [payloadBits_le_rowsFor_mul](declarations/payloadbits-le-rowsfor-mul--2a53a25eb7288e9210384a2c.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rowsFor_minimal](declarations/rowsfor-minimal--51d346463f82dc88ec81b139.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [RawBitPacket](declarations/rawbitpacket--ff4abc91f90af731b518b633.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [RawBitPacket.ext](declarations/rawbitpacket-ext--c75c95285a6cea933319f5ef.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [RawBitPacket.Canonical](declarations/rawbitpacket-canonical--a0e727a6a3602f0c0db55f65.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [BitPacket](declarations/bitpacket--a02079f2397429318a9ee692.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [rows](declarations/rows--d7083656ed1d90e18ddb467e.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [matrix](declarations/matrix--47f226fb952a84ff96fdc0bd.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [payloadBits](declarations/payloadbits--be5eff80ec6c93da2d779433.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rows_mk](declarations/rows-mk--87c045d56ff153ad9087bb6e.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [matrix_mk](declarations/matrix-mk--133e0c7ec3a70c0cfe938d6b.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [payloadBits_mk](declarations/payloadbits-mk--2f3c1cc2818a779a5844fc61.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [capacity](declarations/capacity--6d1b39399bbb019247b16a90.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rows_eq](declarations/rows-eq--815daf55acc885bfc51499b6.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [padding](declarations/padding--b5385b14b169e85cc9170ef8.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [block](declarations/block--5c1d9bd87ad9ac19a1f56669.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [unblock](declarations/unblock--0c7bfc91e278b2737f7cdd01.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [block_rows](declarations/block-rows--4f269d9bfeca4bf40431563c.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [block_payloadBits](declarations/block-payloadbits--70c9cfe818247fa32b70c548.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [unblock_bitLength](declarations/unblock-bitlength--4648b10863deb8dc3991af9a.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [unblock_block](declarations/unblock-block--435a5d2a851100e21828b30e.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [block_unblock](declarations/block-unblock--f34b6c52c21ea8cde8f14c2f.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [blockEquiv](declarations/blockequiv--f1b2436744b6089ce1ef0a76.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [VariableMatrix](declarations/variablematrix--6f89144b3dc74cebcde93fb1.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [BitPacket.toVariableMatrix](declarations/bitpacket-tovariablematrix--8b77bc3ca4d4abb65870b903.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [zeroPayloadOne](declarations/zeropayloadone--7cc404229497a0bc5cce0e49.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [zeroPayloadTwo](declarations/zeropayloadtwo--a0c87df32fd92847d232b037.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [variableMatrix_forgets_payload_length](declarations/variablematrix-forgets-payload-length--7643ab1a847aec3d3b34dd64.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
