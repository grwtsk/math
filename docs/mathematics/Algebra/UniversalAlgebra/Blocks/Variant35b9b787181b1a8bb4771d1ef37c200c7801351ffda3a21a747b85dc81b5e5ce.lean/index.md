# GRWTSK.Algebra.UniversalAlgebra.Blocks.Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b06a466f0bede49d2cf036e9498fb595ab66e82a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BitString](declarations/bitstring--290633119608f4236db0e586.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [BitString.ext](declarations/bitstring-ext--879e4745437967659403e32e.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [BitString.empty](declarations/bitstring-empty--08783738c53d609fffa61a6a.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [BitString.ofBits](declarations/bitstring-ofbits--030bec67a8a141fe179398e2.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [ByteBitCodec](declarations/bytebitcodec--ba246f6cf4c7bedb30345210.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [rowsFor](declarations/rowsfor--dd7a90987fc9dc1f795a8559.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [payloadBits_le_rowsFor_mul](declarations/payloadbits-le-rowsfor-mul--8b2a732d0427851e22e26279.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rowsFor_minimal](declarations/rowsfor-minimal--5e295f9425608b0b1d38c70f.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [RawBitPacket](declarations/rawbitpacket--06bb3f79b6cc5a4a970fd8ce.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [RawBitPacket.ext](declarations/rawbitpacket-ext--895483cf83156e6287dea546.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [RawBitPacket.Canonical](declarations/rawbitpacket-canonical--ae55040a2376e6036c88d1ac.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [BitPacket](declarations/bitpacket--7a06149d80ec40091630a25b.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [rows](declarations/rows--d4253057697ac4ec66442474.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [matrix](declarations/matrix--2237becd09dd19f9663cb637.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [payloadBits](declarations/payloadbits--5f52a7ea72ae7d9dbb476557.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rows_mk](declarations/rows-mk--0add98ae0edc59dbb5cf9799.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [matrix_mk](declarations/matrix-mk--f27e3b7a3e93e5823a4d9be4.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [payloadBits_mk](declarations/payloadbits-mk--b1e576716940e767061a2e56.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [capacity](declarations/capacity--4c2e3e398a5e650c5ab8a283.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rows_eq](declarations/rows-eq--c183e8fb0ace7d20396baa20.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [padding](declarations/padding--f6ab214d343e46fa8689ff5f.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [block](declarations/block--54019a4d68f1a0c0f0afb95a.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [unblock](declarations/unblock--779c23eda35d5e51def5d0b0.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [block_rows](declarations/block-rows--1ef000fd32bbba9b1057e004.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [block_payloadBits](declarations/block-payloadbits--84fa8a9f4668e97b89067943.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [unblock_bitLength](declarations/unblock-bitlength--b441016613edfd4d4a739c80.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [unblock_block](declarations/unblock-block--37d32f4d454fb3640eb2ee82.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [block_unblock](declarations/block-unblock--e18c363d7eb4172deafe5f6e.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [blockEquiv](declarations/blockequiv--5a3488c4a20b0f0199a6b8b7.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [VariableMatrix](declarations/variablematrix--efe1d9e082decc4aaccb295b.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [BitPacket.toVariableMatrix](declarations/bitpacket-tovariablematrix--84969ceb9c36ccfb65af4d2d.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [zeroPayloadOne](declarations/zeropayloadone--583cd14b1d44a1943393eede.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [zeroPayloadTwo](declarations/zeropayloadtwo--2987529ec523ececd7ee7b0e.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [variableMatrix_forgets_payload_length](declarations/variablematrix-forgets-payload-length--9e85eb46767061ad9b0eb510.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
