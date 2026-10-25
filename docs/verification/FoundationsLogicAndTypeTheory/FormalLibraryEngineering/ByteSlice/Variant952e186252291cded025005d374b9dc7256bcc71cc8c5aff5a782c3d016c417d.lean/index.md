# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ByteSlice.Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcba31a36d16f61ed18d2a28fff1ba56a102c6b6",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcba31a36d16f61ed18d2a28fff1ba56a102c6b6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Std.Slice.Internal.ByteSliceData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/std-slice-internal-byteslicedata--a74a40bf32d3bff8b3b91e8f.md) | 38 | `declaration-track:a74a40bf32d3bff8b3b91e8f8aec77d06b6d8375dcb44caf348615498a7014d2` |
| 2 | `abbrev` | [ByteSlice](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/byteslice--56d3dc49131b4b2742e9b336.md) | 81 | `declaration-track:56d3dc49131b4b2742e9b336af4dad73c4e4a61d55c13143a499a60f2b424a3f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--be5bd81cac9a402ddbc2fcee.md) | 83 | `declaration-track:be5bd81cac9a402ddbc2fcee54cd26ca794cf5543ff2e0aa758aa6d622bd45a0` |
| 4 | `def` | [byteArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/bytearray--95149300fa1c354009ab5910.md) | 88 | `declaration-track:95149300fa1c354009ab5910e1cc7418cbbf39af175205b2e8135d9b9af4c2e1` |
| 5 | `def` | [start](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/start--8736c9a0f494545541ab969d.md) | 92 | `declaration-track:8736c9a0f494545541ab969dfd8b8c731c4a2bc6443f20bb923a1f917a45bbf7` |
| 6 | `def` | [stop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/stop--76d86cbae81e8f109490538a.md) | 96 | `declaration-track:76d86cbae81e8f109490538aeda9c4cf6f18a4f8c11adbdec3757d4a5c624218` |
| 7 | `theorem` | [start_le_stop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/start-le-stop--8b3e5f0d3f81a29bc0b935a1.md) | 100 | `result-track:8b3e5f0d3f81a29bc0b935a13438928c53e2a78c378acfba212d3907b4a85b00` |
| 8 | `theorem` | [stop_le_size_byteArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/stop-le-size-bytearray--9af3df75f99817f8787522ab.md) | 104 | `result-track:9af3df75f99817f8787522ab030340d00fd6d10ac9e594e8012349a2a93eed91` |
| 9 | `def` | [size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/size--1f81b27cc29aa1243d8463bd.md) | 110 | `declaration-track:1f81b27cc29aa1243d8463bdf29502f751a73838a7043c74e696a8758344576f` |
| 10 | `theorem` | [size_le_size_byteArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/size-le-size-bytearray--3b1e17461105e95a67f94f95.md) | 113 | `result-track:3b1e17461105e95a67f94f95f16f20119b0bd13f9e1603896a3b64eca4a7dca9` |
| 11 | `def` | [get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/get--f3eac1593c0b4e2e2e9fff71.md) | 124 | `declaration-track:f3eac1593c0b4e2e2e9fff7149dd29d3264ce30a5fe472f7456e91548845d6bc` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--5f95465e1f87f4bea96ab6fe.md) | 133 | `declaration-track:5f95465e1f87f4bea96ab6fef24a663a4a7fbe4bcbcb7cbddf1687bd21b51131` |
| 13 | `def` | [getD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/getd--0fb5d5f9b642c14ffa9bb13d.md) | 142 | `declaration-track:0fb5d5f9b642c14ffa9bb13d27008312e4e664bd10e3595966d51343e85df6dd` |
| 14 | `abbrev` | [get!](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/get--23f6075527c8497e0f4d5779.md) | 151 | `declaration-track:23f6075527c8497e0f4d5779b99a5c78d20effcaae84ceac5c827bc9bcbec07f` |
| 15 | `def` | [empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/empty--29c1a7cf1726ed97d4d8c366.md) | 159 | `declaration-track:29c1a7cf1726ed97d4d8c3663dec61438e5ac1b1dc664aa5103ec4d4989c7666` |
| 16 | `def` | [ofByteArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/ofbytearray--c3f2bb33b8bbf96e46649212.md) | 170 | `declaration-track:c3f2bb33b8bbf96e4664921220c113c62384df0896e294da36049c7f954a9dd0` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--e310172ea83ed5bfb0563527.md) | 178 | `declaration-track:e310172ea83ed5bfb05635274595b947b2fbbe77c4b118203d01280bd8418d3d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--eb126766e360b645bc677ea2.md) | 181 | `declaration-track:eb126766e360b645bc677ea23181b149a4a07e0a3291c8f57e208010d6155050` |
| 19 | `def` | [toByteArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/tobytearray--892f0e2474743226d2a4bedb.md) | 187 | `declaration-track:892f0e2474743226d2a4bedb6174faf74a747b8bd737187545a83aed85a94753` |
| 20 | `def` | [beq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/beq--5d019ed4c247d4c9cc8ad145.md) | 194 | `declaration-track:5d019ed4c247d4c9cc8ad145b2e6f86f151eff1ce7124b3efa9166cb8e510e14` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--b5590180848c8972f7e1c57c.md) | 197 | `declaration-track:b5590180848c8972f7e1c57cd92b90d374ebba40ac03d4f44879032343f5a10c` |
| 22 | `def` | [foldrM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/foldrm--c12ac22f4862b225d56d71f1.md) | 216 | `declaration-track:c12ac22f4862b225d56d71f155c7aae2f2e98a3ce3e49e493017c0ea5aa9f165` |
| 23 | `def` | [forM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/form--6704d595f3861a1e26dbf25f.md) | 231 | `declaration-track:6704d595f3861a1e26dbf25f60722a29336528b0ba3b4c322d0afee72000dd1a` |
| 24 | `def` | [foldr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/foldr--62516388acd2ce3d12881f68.md) | 251 | `declaration-track:62516388acd2ce3d12881f6807f7ed0c2cd6b9f7ffc0b0824513d19ba80f5227` |
| 25 | `def` | [slice](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/slice--b6ac59aa923b8267525b26a9.md) | 262 | `declaration-track:b6ac59aa923b8267525b26a92bbd554e60cbf9ebd535871ce1caf8b0a5580121` |
| 26 | `def` | [contains](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/contains--41c9f4a2ccc180b27ec59f81.md) | 290 | `declaration-track:41c9f4a2ccc180b27ec59f817be2c57a4853c109bc4c0489b3919034a7a103cc` |
| 27 | `def` | [toByteSlice](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/tobyteslice--cdaa5e0e911a2a3cf478c2fc.md) | 309 | `declaration-track:cdaa5e0e911a2a3cf478c2fc58aafef48e5aab169ff959a24a82377c53396deb` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--0567765be787bd9dfe640489.md) | 339 | `declaration-track:0567765be787bd9dfe6404895ce8ca3fd2608c26058245c1788e8fc003bd8dc8` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--e187ab45ed17913c99a5939b.md) | 344 | `declaration-track:e187ab45ed17913c99a5939b6a67e73b223fe883b0ae1f422c1ca1bfb9c6c11c` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--c5961f0461f3d45f69ede99b.md) | 349 | `declaration-track:c5961f0461f3d45f69ede99b067a3cc50e34844ae085ac5d12fa0bfdd4a2cc19` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--9ee31522d76bf4666011b9b0.md) | 354 | `declaration-track:9ee31522d76bf4666011b9b027a6d564cf07d48621a04a1a1523a96abecb13c7` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--82c9a3a55e5f5930240c5639.md) | 359 | `declaration-track:82c9a3a55e5f5930240c5639bcf86bc18cf2b1e51dd9deb6269e2c5696bb9bc2` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--22d18775803cf91de4da4d8a.md) | 364 | `declaration-track:22d18775803cf91de4da4d8a76ccee5835fe13271a6e4dcc6e8acbee8a4b839c` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--e41580130ea33bc9c2d50467.md) | 369 | `declaration-track:e41580130ea33bc9c2d504676e2a2e7fa5328e230db6f7ac685b0f8167c0d6ae` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--217902d51edd761be07cfb28.md) | 374 | `declaration-track:217902d51edd761be07cfb28addb9ede9440b8e8176589c5022e28082378cab9` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--cfc0427e7016b03cc98bc11c.md) | 379 | `declaration-track:cfc0427e7016b03cc98bc11c6bd6dcdf868a60b22d96fae1fb187d300e019a32` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--df7db81bb95c062975d67b7e.md) | 388 | `declaration-track:df7db81bb95c062975d67b7e097003571c90b54bf5604a1bea811b939cea537e` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--d84b4bf7a07dc3a50108f9c5.md) | 393 | `declaration-track:d84b4bf7a07dc3a50108f9c5fbbb1f2c9257a2cf68a47a907cdd544f3d0f5df2` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--19eb55b67fc17eb93b566221.md) | 398 | `declaration-track:19eb55b67fc17eb93b56622100d8e3f2e8f165ce102c66040c264952448c17d3` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--6ec1714258b5ef65e745a232.md) | 403 | `declaration-track:6ec1714258b5ef65e745a2328a033b84e5a7a09e871e2a6503d2000c4cbaff76` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--cb00bb52da57845d8e75363e.md) | 408 | `declaration-track:cb00bb52da57845d8e75363e8f32a1adadb5dc5e8538c0f58b0e416929c01895` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--930c0f7a856d3fca391e96ce.md) | 413 | `declaration-track:930c0f7a856d3fca391e96ce7bd29f056ae872a81a1911d9820feb0eec023be7` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--6014c49490324e424c7a6710.md) | 418 | `declaration-track:6014c49490324e424c7a6710fd2840366fcf895e02e95b8e07f4cdc3ef1044ab` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--a1276a6ea1200a21c844cee8.md) | 423 | `declaration-track:a1276a6ea1200a21c844cee85be452dd0d9804ebea6de289f6c309d972e7a9b2` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant952e186252291cded025005d374b9dc7256bcc71cc8c5aff5a782c3d016c417d.lean/declarations/instance--2460bb757559511146d6829c.md) | 428 | `declaration-track:2460bb757559511146d6829cfb2301c0d04cd8a8300f92bb755048b458023e2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
