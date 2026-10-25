# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7659707cfb462aee4fe5cfb00901ad061ddb9c1",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7659707cfb462aee4fe5cfb00901ad061ddb9c1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Lean.Expr.Rat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Result` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Qq` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Location` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/syntax--2fbc5c32eba3514f05612c96.md) | 32 | `declaration-track:2fbc5c32eba3514f05612c96379384ef49973883f3fb9e46aac163a892dc373e` |
| 2 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/initialize--d2cd413f757cc9ad04759ede.md) | 37 | `declaration-track:d2cd413f757cc9ad04759ede76f3325722ee2c48f4ad4b6a3164b1d60309b266` |
| 3 | `structure` | [NormNumExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/normnumext--ab4723b233ff99335b7ad8fc.md) | 42 | `declaration-track:ab4723b233ff99335b7ad8fc2f5c297e9bd7b90db2a036a148ea4d8432f15a54` |
| 4 | `def` | [mkNormNumExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/mknormnumext--c4dac9f3860c165b44d696c7.md) | 55 | `declaration-track:c4dac9f3860c165b44d696c73b176c36b9a7a54158be4af960ffce5f20930456` |
| 5 | `abbrev` | [Entry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/entry--e702c0c9b6d2d2da380d42eb.md) | 61 | `declaration-track:e702c0c9b6d2d2da380d42ebd2bd3bd14529cdd6b946c4814de9be8d6b952105` |
| 6 | `structure` | [NormNums](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/normnums--34f5010b438364f9a89e4871.md) | 64 | `declaration-track:34f5010b438364f9a89e4871a8422ddf7515bb954b005111a4d885610f2f6c33` |
| 7 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/initialize--9ee2078ad7bb89aacf2f1857.md) | 72 | `declaration-track:9ee2078ad7bb89aacf2f18571ae4560d31beb3122871f088be90ff4d8f4cefc1` |
| 8 | `def` | [derive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/derive--3efb8d2521d8f99657b5d0ac.md) | 86 | `declaration-track:3efb8d2521d8f99657b5d0aceb67f4e82e459e9fa318d5292d01b65896b30537` |
| 9 | `def` | [deriveNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/derivenat--764e38a12c7ae707c23efc31.md) | 108 | `declaration-track:764e38a12c7ae707c23efc313c3fc5ab7a5df02f9d219393c11d7636e0ad66f5` |
| 10 | `def` | [deriveInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/deriveint--b29db7717e150bc772700e68.md) | 116 | `declaration-track:b29db7717e150bc772700e68dc08be311dd26fe8a9da01ca0ce1dc0667142e46` |
| 11 | `def` | [deriveRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/deriverat--0cd6e396968ca5523387d8fc.md) | 125 | `declaration-track:0cd6e396968ca5523387d8fc253c40a3a65cf33100f92fb53de789298490f27b` |
| 12 | `def` | [deriveBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/derivebool--5394604ea7d462936c0923d7.md) | 133 | `declaration-track:5394604ea7d462936c0923d78ef25990343c2fa51ea49de6bf0b00323fec74b0` |
| 13 | `def` | [deriveBoolOfIff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/deriveboolofiff--dd050c6365c693c36d9e0500.md) | 139 | `declaration-track:dd050c6365c693c36d9e0500e63273d0bab5c80e9d2e2e31b8f58051d66685fa` |
| 14 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/eval--b7ac859caaa16a2be7d05e5b.md) | 148 | `declaration-track:b7ac859caaa16a2be7d05e5b06bd4c1e8197b03bcd672ebe838f34134074e397` |
| 15 | `def` | [NormNums.eraseCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/normnums-erasecore--ca3b30eba925bfe498837d51.md) | 155 | `declaration-track:ca3b30eba925bfe498837d51afea399821cb710af59ca4f5760b968d27b6ea25` |
| 16 | `def` | [NormNums.erase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/normnums-erase--6e4b84986dd1487305a0636d.md) | 164 | `declaration-track:6e4b84986dd1487305a0636dfae3cc7ce94bea158aecc1c205accc595cfdd0f4` |
| 17 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/initialize--2eac52039c02202bd663baa4.md) | 171 | `declaration-track:2eac52039c02202bd663baa48c48ae72eb402d3d3715e0b540bb9a450fc671a2` |
| 18 | `def` | [tryNormNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/trynormnum--5f6d2e16a5c18ee7bcaa768c.md) | 198 | `declaration-track:5f6d2e16a5c18ee7bcaa768c95e80467135de1807017de1c24f8a239cfa80748` |
| 19 | `def` | [discharge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/discharge--487a1e5206b2590f4a8774a2.md) | 207 | `declaration-track:487a1e5206b2590f4a8774a2b353c498a1a711a2df8b56e13f6d220c0f546ea5` |
| 20 | `def` | [methods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/methods--49e9a40dcf301bd82f86e308.md) | 210 | `declaration-track:49e9a40dcf301bd82f86e30838ab8d8908313b681ac4ac912e0cca3941bdd589` |
| 21 | `def` | [deriveSimp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/derivesimp--d74550d87aa22bc9913ffd9b.md) | 222 | `declaration-track:d74550d87aa22bc9913ffd9bd1d841d6e01c0aabf36c220893c7b78eafda92ae` |
| 22 | `def` | [normNumAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/normnumat--a55d0209488741aae56cf9e6.md) | 237 | `declaration-track:a55d0209488741aae56cf9e6ccc4c12fc30d65498e4b722f448ebc7d2b8ad371` |
| 23 | `def` | [getSimpContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/getsimpcontext--3029d9046e13e019b1c17b62.md) | 277 | `declaration-track:3029d9046e13e019b1c17b6294ce53d74bad958a81046e6dd9cec6e34a02edd3` |
| 24 | `def` | [elabNormNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/elabnormnum--7d799f7edbf3bd274ca90acd.md) | 302 | `declaration-track:7d799f7edbf3bd274ca90acdd50f2178d1df94af85053280b5e2962bf4a013f9` |
| 25 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/elab--4516452635ff8c4efd76e905.md) | 324 | `declaration-track:4516452635ff8c4efd76e90573271b68abca393cbb70ebd17a2fe2106ba54b42` |
| 26 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/elab--72960e8a867f2586528d946d.md) | 329 | `declaration-track:72960e8a867f2586528d946da517c551ce3deaf2f389d531d2d8f941ae5cb5f1` |
| 27 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/syntax--b094eee4a2bd8e4fb36e7cf5.md) | 334 | `declaration-track:b094eee4a2bd8e4fb36e7cf5a2a1c1faeb5cc77f8d17710ab842048d82bce1a9` |
| 28 | `def` | [elabNormNum1Conv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/elabnormnum1conv--c5dabbc01c959e690bdba9c1.md) | 337 | `declaration-track:c5dabbc01c959e690bdba9c198cc6f6e7e628c97fb39a28eb2dd30c8f16744d4` |
| 29 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/syntax--c48d71b28e31e2d48e6ff25d.md) | 341 | `declaration-track:c48d71b28e31e2d48e6ff25ded097afecac7c972a453aec02483852f18c9861c` |
| 30 | `def` | [elabNormNumConv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/elabnormnumconv--2feacd351d7b754993358134.md) | 345 | `declaration-track:2feacd351d7b754993358134efb4ac4483b3675458a78d514f16b1f3ad9cf9a9` |
| 31 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/declarations/macro--7cce48a8c72f008f6983ce4e.md) | 365 | `declaration-track:7cce48a8c72f008f6983ce4e4ab9bacd7d2af46c7deca35f1ac07162389b197f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
