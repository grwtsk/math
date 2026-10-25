# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Short.Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6284db7565d1874061c3dca820122c352d20aacc",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6284db7565d1874061c3dca820122c352d20aacc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Regular` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Birthday` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Short](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/short--ecfbe6f46104b2863cbfc9e5.md) | 43 | `declaration-track:ecfbe6f46104b2863cbfc9e5df4193dfeb6a084a16db191666f18da756c6fe0f` |
| 2 | `instance` | [subsingleton_short](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/subsingleton-short--cf688dd6ec67e2b21cad05a9.md) | 48 | `declaration-track:cf688dd6ec67e2b21cad05a988ba4c8a3340c08485bd22897aa24f353888b18f` |
| 3 | `theorem` | [subsingleton_short_example](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/subsingleton-short-example--a3419fbb9e5668db2db835e1.md) | 59 | `result-track:a3419fbb9e5668db2db835e1522f6113c148864f347713695fef512483bc7cbb` |
| 4 | `def` | [Short.mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/short-mk--ead6e60029b96ae1302be62e.md) | 83 | `declaration-track:ead6e60029b96ae1302be62e51995ee9764a7308a952314c2bec2f7f4bfc1a34` |
| 5 | `def` | [fintypeLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/fintypeleft--1f601708ebf7881d80065e6d.md) | 96 | `declaration-track:1f601708ebf7881d80065e6d9b006108e5101db6484bfb2cbcdc036573e71fed` |
| 6 | `instance` | [fintypeLeftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/fintypeleftmoves--319a776cb1803e0f64260cb2.md) | 101 | `declaration-track:319a776cb1803e0f64260cb2a154535f7758e2ce2382103b9b359d087e4a264a` |
| 7 | `def` | [fintypeRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/fintyperight--a187c2338ccebf70bd17077f.md) | 107 | `declaration-track:a187c2338ccebf70bd17077ff11b44c040fecdefe573ce677bfa8d8c9eee8823` |
| 8 | `instance` | [fintypeRightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/fintyperightmoves--0276d5db98daf32cd8cd6b60.md) | 112 | `declaration-track:0276d5db98daf32cd8cd6b60a323f9a92d5afb34def3640e01e20424a53e24bf` |
| 9 | `instance` | [moveLeftShort](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/moveleftshort--3e32699d58be4db477edad72.md) | 115 | `declaration-track:3e32699d58be4db477edad721acc78878556a8414bb17628717527d55ff2b345` |
| 10 | `def` | [moveLeftShort'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/moveleftshort--27fa95f2af15ba9b0824de3f.md) | 122 | `declaration-track:27fa95f2af15ba9b0824de3f821cf57c511e81d507357bc424db20ddfad46277` |
| 11 | `instance` | [moveRightShort](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/moverightshort--b5fce12dec10f54d52fcaba8.md) | 127 | `declaration-track:b5fce12dec10f54d52fcaba896743129d4480ad04d732c87951be64e3a45bf04` |
| 12 | `def` | [moveRightShort'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/moverightshort--84676dd90d1dc4e5fb62a08d.md) | 134 | `declaration-track:84676dd90d1dc4e5fb62a08d52aa3f01bd3474d5688ec59756c8f345eb5e4614` |
| 13 | `theorem` | [short_birthday](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/short-birthday--184b3b40caa2297e544573a1.md) | 139 | `result-track:184b3b40caa2297e544573a1d1886e5ee92e8fce6c8394cac8a566ec71b10079` |
| 14 | `def` | [Short.ofIsEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/short-ofisempty--3fd944e2fb5253e45dd54f34.md) | 157 | `declaration-track:3fd944e2fb5253e45dd54f34bcf52949f3295d2fd2e367324cba7f95c0a595df` |
| 15 | `instance` | [short0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/short0--fc237d51147ce19728df2126.md) | 162 | `declaration-track:fc237d51147ce19728df21265fe73fa9cd68673729aec4b507e7f5c5f9493107` |
| 16 | `instance` | [short1](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/short1--d3d4210f2202813c0d80fb55.md) | 165 | `declaration-track:d3d4210f2202813c0d80fb55781c47cd2f6f1aa7453bb5b94ec0f82b04efac62` |
| 17 | `class` | [inductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/inductive--c0efca4d68cf78454570b8a5.md) | 169 | `declaration-track:c0efca4d68cf78454570b8a528a2aebd538003f23b4b61be7001add0d4e12583` |
| 18 | `instance` | [ListShort.cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/listshort-cons--6a4b332232cb649f2754b885.md) | 178 | `declaration-track:6a4b332232cb649f2754b885f65bd5e34cbf81f8faafdaea442476f466f73404` |
| 19 | `instance` | [listShortGet](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/listshortget--5eb5c68515b9efa713211aff.md) | 183 | `declaration-track:5eb5c68515b9efa713211affd7f3bbe3f8bfcce27f83b10af9685173becc6923` |
| 20 | `instance` | [shortOfLists](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/shortoflists--5ccfe0aa4e419552d4181243.md) | 189 | `declaration-track:5ccfe0aa4e419552d4181243fd9aa82faffc7dc37e313ad30dbe775b549a12c9` |
| 21 | `def` | [shortOfRelabelling](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/shortofrelabelling--53ddc842703f140e8d7680d2.md) | 194 | `declaration-track:53ddc842703f140e8d7680d2723e2a8a00277ae576fc4d1d055f2bc4a221cd5c` |
| 22 | `instance` | [shortNeg](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/shortneg--566ff7ead2ee84150fb9fb54.md) | 203 | `declaration-track:566ff7ead2ee84150fb9fb54b3929d19bb1d4ecf3fda312307695bc0812b0968` |
| 23 | `instance` | [shortAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/shortadd--761e8c47441329fabacf6ebe.md) | 207 | `declaration-track:761e8c47441329fabacf6ebe501c67b7240701325266acbd266b863f73b5c26d` |
| 24 | `instance` | [shortNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/shortnat--218f437f9a1c7b54e44b26bb.md) | 216 | `declaration-track:218f437f9a1c7b54e44b26bb5dd396d66ce6c7b80e5387fcdbdf9b08e542fd51` |
| 25 | `instance` | [shortOfNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/shortofnat--01c62dfce672e8bb3fad1d9c.md) | 220 | `declaration-track:01c62dfce672e8bb3fad1d9cdec58e8dc4e958f17c1a138a91e26cc34643c16e` |
| 26 | `instance` | [shortBit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/shortbit0--459fbd0b562a812b0f9ad989.md) | 222 | `declaration-track:459fbd0b562a812b0f9ad989698417fa32cfc35bc5f869740d50f00cb725f654` |
| 27 | `instance` | [shortBit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/shortbit1--b96930aacaac3accb3422ae6.md) | 224 | `declaration-track:b96930aacaac3accb3422ae6e25008fcbc45e5ab1617394ae47d28d39d5fb75f` |
| 28 | `def` | [leLFDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/lelfdecidable--ed5e253b35c7b27640e4af77.md) | 230 | `declaration-track:ed5e253b35c7b27640e4af77810cc0776d08d7210203d99bd23a072b0870adf4` |
| 29 | `instance` | [leDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/ledecidable--4d28e13d79e971e436e7c6cd.md) | 255 | `declaration-track:4d28e13d79e971e436e7c6cdc014229b3f3cd387a56ccf953f7772c4757118b1` |
| 30 | `instance` | [lfDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/lfdecidable--29668907bb544c483dd80368.md) | 258 | `declaration-track:29668907bb544c483dd803682a3542977fdbaa33f5947fb9c04c2b49e87e5bda` |
| 31 | `instance` | [ltDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/ltdecidable--88f408edb70025ee1371c7be.md) | 261 | `declaration-track:88f408edb70025ee1371c7bec01194d7283a86fb6c30359dbd986990327a8ac5` |
| 32 | `instance` | [equivDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/equivdecidable--19c7cd2771020ae5b914ab6f.md) | 264 | `declaration-track:19c7cd2771020ae5b914ab6f74ae9bab167db5fbfb668b15f34cfb2b56fca176` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/example--2980b2879fee1c778ed15933.md) | 267 | `declaration-track:2980b2879fee1c778ed15933918ab39980fd5f77d4401ed012ed17bba81a0960` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/example--e9b8e668a8c4c80536c94655.md) | 269 | `declaration-track:e9b8e668a8c4c80536c94655ff9997636c7676621e0865e5c2c7053667dd59e9` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/example--c4c392e5451a7903e7ae9fc0.md) | 271 | `declaration-track:c4c392e5451a7903e7ae9fc02644dce92c841ff26d7e4df6f8bbbd589b9b00e1` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/example--047fa992d842ffcf27050b00.md) | 273 | `declaration-track:047fa992d842ffcf27050b00a1dcfa9d1fc02d3de6a8b5ffd4fff88f70894b7c` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/example--0260547992141266e7ace029.md) | 275 | `declaration-track:0260547992141266e7ace0293c4a35eb1a434eaeee13800aa5ca64cd7d0227e7` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/example--efb9d645e949801ec290e780.md) | 277 | `declaration-track:efb9d645e949801ec290e78018899cb84a6a9ef53ca9c8840c3fcf79d226da24` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/example--591f2b9f6e3f8e124e81b7f9.md) | 279 | `declaration-track:591f2b9f6e3f8e124e81b7f9e05b79bd3dabd9643fe402fd92030607569a2b9c` |
| 40 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant10578a3edaea3b55d1ceb19825281122a309b11aeb68c393a1c0887f35c4538a.lean/declarations/example--f19a2f6866753eb9ded74d84.md) | 281 | `declaration-track:f19a2f6866753eb9ded74d845e93682ea596bc8d616f827e9ccb74e5204319f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
