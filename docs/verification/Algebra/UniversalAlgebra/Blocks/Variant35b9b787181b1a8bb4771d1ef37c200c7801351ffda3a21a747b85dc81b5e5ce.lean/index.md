# Verification target: GRWTSK.Algebra.UniversalAlgebra.Blocks.Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b06a466f0bede49d2cf036e9498fb595ab66e82a",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b06a466f0bede49d2cf036e9498fb595ab66e82a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FilesystemCodec.Serialization` — import line 1; external provider; requires a separately pinned dependency.
- `BinaryMatrix.GaloisField` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Div` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BitString](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/bitstring--290633119608f4236db0e586.md) | 31 | `declaration-track:290633119608f4236db0e5861b73c239aa862bd518049d461c5f4f9b9680df3a` |
| 2 | `theorem` | [BitString.ext](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/bitstring-ext--879e4745437967659403e32e.md) | 38 | `result-track:879e4745437967659403e32e7a521e6998547da980b4c5786826eeec0360df57` |
| 3 | `def` | [BitString.empty](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/bitstring-empty--08783738c53d609fffa61a6a.md) | 50 | `declaration-track:08783738c53d609fffa61a6ae17a1dd59a427dae6ab7dc5b1505d3fc3d2f80a8` |
| 4 | `def` | [BitString.ofBits](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/bitstring-ofbits--030bec67a8a141fe179398e2.md) | 54 | `declaration-track:030bec67a8a141fe179398e256468112a4db133110869e23445885720a9dc634` |
| 5 | `abbrev` | [ByteBitCodec](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/bytebitcodec--ba246f6cf4c7bedb30345210.md) | 58 | `declaration-track:ba246f6cf4c7bedb30345210ea045698e974edc37f6a3d229a1db1dcd4faea31` |
| 6 | `def` | [rowsFor](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/rowsfor--dd7a90987fc9dc1f795a8559.md) | 64 | `declaration-track:dd7a90987fc9dc1f795a85594a93e977181e5d1a0a3d46e53b61d04c92918d15` |
| 7 | `theorem` | [payloadBits_le_rowsFor_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/payloadbits-le-rowsfor-mul--8b2a732d0427851e22e26279.md) | 68 | `result-track:8b2a732d0427851e22e2627929177eb0474e6e7fcfbcf7da6ff133b6c9e72cb7` |
| 8 | `theorem` | [rowsFor_minimal](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/rowsfor-minimal--5e295f9425608b0b1d38c70f.md) | 74 | `result-track:5e295f9425608b0b1d38c70f17f994684583bd0440441d077ca46a0d19f5ef52` |
| 9 | `structure` | [RawBitPacket](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/rawbitpacket--06bb3f79b6cc5a4a970fd8ce.md) | 83 | `declaration-track:06bb3f79b6cc5a4a970fd8ce28e312d64d01a6d9603501e0b4a6647db5148ace` |
| 10 | `theorem` | [RawBitPacket.ext](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/rawbitpacket-ext--895483cf83156e6287dea546.md) | 91 | `result-track:895483cf83156e6287dea546d5e09413ca00ef75440dfb49f5ebf2c538eeec74` |
| 11 | `def` | [RawBitPacket.Canonical](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/rawbitpacket-canonical--ae55040a2376e6036c88d1ac.md) | 108 | `declaration-track:ae55040a2376e6036c88d1acfd29e0a55b02e32161a1cbc9a735c617d6075b42` |
| 12 | `def` | [BitPacket](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/bitpacket--7a06149d80ec40091630a25b.md) | 116 | `declaration-track:7a06149d80ec40091630a25bdff5adce86ba791256cf4da9812e3b9142f63f3e` |
| 13 | `def` | [rows](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/rows--d4253057697ac4ec66442474.md) | 122 | `declaration-track:d4253057697ac4ec6644247460c31ea5640b2f77bda6b17de2fbc1857831b095` |
| 14 | `def` | [matrix](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/matrix--2237becd09dd19f9663cb637.md) | 126 | `declaration-track:2237becd09dd19f9663cb6378fd62bab5f538b10b398454fcc037479ce39d4c9` |
| 15 | `def` | [payloadBits](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/payloadbits--5f52a7ea72ae7d9dbb476557.md) | 130 | `declaration-track:5f52a7ea72ae7d9dbb47655726de7ae113d1a67d2742cf9795bf62bbcb0a15d6` |
| 16 | `theorem` | [rows_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/rows-mk--0add98ae0edc59dbb5cf9799.md) | 133 | `result-track:0add98ae0edc59dbb5cf97998333803705441636c9b82a80b1bcd05d194f36e1` |
| 17 | `theorem` | [matrix_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/matrix-mk--f27e3b7a3e93e5823a4d9be4.md) | 136 | `result-track:f27e3b7a3e93e5823a4d9be4f968a36415ce6f118cb2d1543255804b71aaacc9` |
| 18 | `theorem` | [payloadBits_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/payloadbits-mk--b1e576716940e767061a2e56.md) | 139 | `result-track:b1e576716940e767061a2e56c2e44bd3423f8580a9e510c2e14da981c056b6b6` |
| 19 | `theorem` | [capacity](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/capacity--4c2e3e398a5e650c5ab8a283.md) | 142 | `result-track:4c2e3e398a5e650c5ab8a283c44304fe1a2e19c3482068f9a61dcac7cec055ae` |
| 20 | `theorem` | [rows_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/rows-eq--c183e8fb0ace7d20396baa20.md) | 146 | `result-track:c183e8fb0ace7d20396baa20d249251a672314bd1056b01b717a96bc61284fa9` |
| 21 | `theorem` | [padding](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/padding--f6ab214d343e46fa8689ff5f.md) | 150 | `result-track:f6ab214d343e46fa8689ff5f71a85b3283ee09953a0e6f68052b74bd528feec1` |
| 22 | `def` | [block](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/block--54019a4d68f1a0c0f0afb95a.md) | 164 | `declaration-track:54019a4d68f1a0c0f0afb95aa375a7a2d5903a45f56d9eb540cd323320a44708` |
| 23 | `def` | [unblock](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/unblock--779c23eda35d5e51def5d0b0.md) | 177 | `declaration-track:779c23eda35d5e51def5d0b0206e20c24d2e77172dba3cfb19f81f3127e762e6` |
| 24 | `theorem` | [block_rows](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/block-rows--1ef000fd32bbba9b1057e004.md) | 183 | `result-track:1ef000fd32bbba9b1057e0049419bc12a65e061c31c7662c350846e3bc7d9fac` |
| 25 | `theorem` | [block_payloadBits](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/block-payloadbits--84fa8a9f4668e97b89067943.md) | 188 | `result-track:84fa8a9f4668e97b89067943551ed3758353ff81d9b60eb713bdd261e471ec76` |
| 26 | `theorem` | [unblock_bitLength](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/unblock-bitlength--b441016613edfd4d4a739c80.md) | 193 | `result-track:b441016613edfd4d4a739c80c03f02f591523111e19c8d1a00566bb5bbb4adfd` |
| 27 | `theorem` | [unblock_block](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/unblock-block--37d32f4d454fb3640eb2ee82.md) | 199 | `result-track:37d32f4d454fb3640eb2ee82186f7e1b30c3674612cdeb918f5a7b8943be1144` |
| 28 | `theorem` | [block_unblock](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/block-unblock--e18c363d7eb4172deafe5f6e.md) | 213 | `result-track:e18c363d7eb4172deafe5f6e319da706c8bbb24e0fd3c1e0755ed93328f3914b` |
| 29 | `def` | [blockEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/blockequiv--5a3488c4a20b0f0199a6b8b7.md) | 234 | `declaration-track:5a3488c4a20b0f0199a6b8b7c76d72580272f97093d3f695ed3959d94fc1afc6` |
| 30 | `abbrev` | [VariableMatrix](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/variablematrix--efe1d9e082decc4aaccb295b.md) | 243 | `declaration-track:efe1d9e082decc4aaccb295b0878ea549eb913a86db182cc7c52eb841f876702` |
| 31 | `def` | [BitPacket.toVariableMatrix](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/bitpacket-tovariablematrix--84969ceb9c36ccfb65af4d2d.md) | 247 | `declaration-track:84969ceb9c36ccfb65af4d2d786cdec0ab015ae15a6379fbeb3b5cdd5bb0c637` |
| 32 | `def` | [zeroPayloadOne](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/zeropayloadone--583cd14b1d44a1943393eede.md) | 251 | `declaration-track:583cd14b1d44a1943393eedec94a9b6b1b3bab72d918725daebbac00e1189621` |
| 33 | `def` | [zeroPayloadTwo](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/zeropayloadtwo--2987529ec523ececd7ee7b0e.md) | 255 | `declaration-track:2987529ec523ececd7ee7b0edd694e76b598f8f815366f30e15e87acb3e953ba` |
| 34 | `theorem` | [variableMatrix_forgets_payload_length](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean/declarations/variablematrix-forgets-payload-length--9e85eb46767061ad9b0eb510.md) | 262 | `result-track:9e85eb46767061ad9b0eb5109d2441194b62ab66f114e52645b55c4c8c3cbadb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
