# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TCP.Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa61dec6df2a8490a65f9a6975bc818deaa7c934",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa61dec6df2a8490a65f9a6975bc818deaa7c934`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Server](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/server--ede7b5311fd265b60d5d2904.md) | 33 | `declaration-track:ede7b5311fd265b60d5d2904a0b01d277d7b861c6ec37813de221a00f893d8c2` |
| 2 | `structure` | [Client](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/client--10e32716109768602e9482d7.md) | 40 | `declaration-track:10e32716109768602e9482d75fec0cf54b0ee9b5832715affcef27319acddf9c` |
| 3 | `def` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/mk--a7909d13d2989381818fd2e4.md) | 50 | `declaration-track:a7909d13d2989381818fd2e42f06756552cb24791621b69b1d08650e45182f88` |
| 4 | `def` | [bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/bind--f1927c92ea70e584ec0f32ec.md) | 59 | `declaration-track:f1927c92ea70e584ec0f32ec5f0d871221a5664b2233c0d5c42ffc0a9bf14317` |
| 5 | `def` | [listen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/listen--fb8a709291f34eb2a3148c7b.md) | 66 | `declaration-track:fb8a709291f34eb2a3148c7bd5d6c0a4c55fc11e75237bebf6b5117eae93faae` |
| 6 | `def` | [accept](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/accept--3df08ff6f8bc01c3c5914627.md) | 73 | `declaration-track:3df08ff6f8bc01c3c591462761ddb32ccc6b7ce827ff4bd241b97c02dd11301e` |
| 7 | `def` | [tryAccept](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/tryaccept--c671612589d552d2526b0d19.md) | 82 | `declaration-track:c671612589d552d2526b0d19e70988b4c757e20c6a8942e9ae97f728c99d8953` |
| 8 | `def` | [acceptSelector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/acceptselector--5e68b6e768c0dafe65ba245a.md) | 91 | `declaration-track:5e68b6e768c0dafe65ba245abb754843379fb749b39ddf76e7001eeaae2766d2` |
| 9 | `def` | [getSockName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/getsockname--50d352d2b1dcb410645c52e7.md) | 120 | `declaration-track:50d352d2b1dcb410645c52e76164cedd9bf54ad53cebc4150930e1d1b3928fbc` |
| 10 | `def` | [noDelay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/nodelay--fe0f1af9ccbe55e8dbc70f51.md) | 127 | `declaration-track:fe0f1af9ccbe55e8dbc70f51ee6a6b0bc898bb262143929b4f32571531555b98` |
| 11 | `def` | [keepAlive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/keepalive--5df4e45bf60f8bb0d56b7517.md) | 134 | `declaration-track:5df4e45bf60f8bb0d56b7517a83a761d13b1801e2b585b001d20d4af47959ed3` |
| 12 | `def` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/mk--30a9bb5bda0a87e60eab278f.md) | 145 | `declaration-track:30a9bb5bda0a87e60eab278ff4e19778a2ba656471bca0881fb3393c727b781b` |
| 13 | `def` | [bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/bind--165c5ed3a70807c6c671115c.md) | 154 | `declaration-track:165c5ed3a70807c6c671115c8bd7d9915627898f94826d018910ab604af4a549` |
| 14 | `def` | [connect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/connect--77d14142f86a6ef5bcb7f47e.md) | 161 | `declaration-track:77d14142f86a6ef5bcb7f47e80768c2241b61eaea8876bea958d8f20607b5958` |
| 15 | `def` | [sendAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/sendall--4138f1aa6db1581e0de24a14.md) | 168 | `declaration-track:4138f1aa6db1581e0de24a1463c90cb412772d8a39b86b5cfc6215aba5cdcd4d` |
| 16 | `def` | [send](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/send--1c6eb1335f7192524cb0bd9d.md) | 175 | `declaration-track:1c6eb1335f7192524cb0bd9dfa625cd9df89aed6d6c36733323f4974acb1f6a7` |
| 17 | `def` | [recv?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/recv--076dbca7619e7f03666b95aa.md) | 185 | `declaration-track:076dbca7619e7f03666b95aa7135e752b517a142c9ad2ed20e51e6c6acdff0d9` |
| 18 | `def` | [recvSelector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/recvselector--b878c4ca211d5d7862254932.md) | 193 | `declaration-track:b878c4ca211d5d786225493260586b6951885f845e34dc317497a8c50c2a257d` |
| 19 | `def` | [shutdown](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/shutdown--099ffe327fb38bf8cc6ed22d.md) | 232 | `declaration-track:099ffe327fb38bf8cc6ed22db4640ac9fd92e287b0e8cd1093a777b5a45f41d7` |
| 20 | `def` | [getPeerName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/getpeername--7ad46d152104aa384b453c24.md) | 239 | `declaration-track:7ad46d152104aa384b453c243879207ab8d7eb0db5872d0a8ea131f8e543718c` |
| 21 | `def` | [getSockName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/getsockname--9409fc649114df9f79a63c94.md) | 246 | `declaration-track:9409fc649114df9f79a63c948ddd785e83c8b9ccc62eaacc10d8d261ae5e9da2` |
| 22 | `def` | [noDelay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/nodelay--5bb9ab69ed9c2819b469633c.md) | 253 | `declaration-track:5bb9ab69ed9c2819b469633ca5f17926fe5feda4adbab014f8ce582c059f4fcb` |
| 23 | `def` | [keepAlive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c.lean/declarations/keepalive--28c53b3031b8d00ebad90b6a.md) | 260 | `declaration-track:28c53b3031b8d00ebad90b6aa6d9d81341cce5de38a2a73c227a9a9c6115575f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
