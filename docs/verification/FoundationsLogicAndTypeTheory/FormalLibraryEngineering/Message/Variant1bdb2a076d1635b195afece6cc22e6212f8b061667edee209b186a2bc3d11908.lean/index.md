# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Message.Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbb073c0589c895efc7292dc22b3333cc5081186",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbb073c0589c895efc7292dc22b3333cc5081186`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Direction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean/declarations/direction--5e68b27d910872b08250a26c.md) | 32 | `declaration-track:5e68b27d910872b08250a26ccbba12f90b2bfb2ac884bbba0c97ed58ca62e645` |
| 2 | `abbrev` | [Direction.swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean/declarations/direction-swap--a248b44b670e073f600a52a0.md) | 47 | `declaration-track:a248b44b670e073f600a52a074c8b93ff452007db80422177ef8ce18446e2315` |
| 3 | `def` | [Message.Head](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean/declarations/message-head--9b3c692f65e33df3b4c0805f.md) | 55 | `declaration-track:9b3c692f65e33df3b4c0805f66c1b86f713c958e1a59cb98151b05dfb01ef02f` |
| 4 | `def` | [Message.Head.headers](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean/declarations/message-head-headers--e063e5b93628c971b243c84d.md) | 62 | `declaration-track:e063e5b93628c971b243c84d1067b1098a9e1d9e17c46b5ed84c60a42698f7a3` |
| 5 | `def` | [Message.Head.setHeaders](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean/declarations/message-head-setheaders--b79bb1115c62748a8583610b.md) | 70 | `declaration-track:b79bb1115c62748a8583610bc3467d98efb5bcf481d0e52108724fe6f1d02490` |
| 6 | `def` | [Message.Head.version](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean/declarations/message-head-version--a89e6b5fc37539f8d0e7db82.md) | 78 | `declaration-track:a89e6b5fc37539f8d0e7db82dc5e1e08aecb733238fc3079052f4a45febc0018` |
| 7 | `def` | [Message.Head.getSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean/declarations/message-head-getsize--5e222da93a9a4225eb5196bf.md) | 86 | `declaration-track:5e222da93a9a4225eb5196bf3fda4b48631a6ca2375e7685350a9f0a2e457758` |
| 8 | `def` | [Message.Head.shouldKeepAlive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean/declarations/message-head-shouldkeepalive--34d029fee2e3e5db47039f0c.md) | 113 | `declaration-track:34d029fee2e3e5db47039f0ca87f49e10ea7ad90919bb199b0b6ed27aca41186` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean/declarations/instance--8e32d38aac077d33206e44ef.md) | 132 | `declaration-track:8e32d38aac077d33206e44ef1600db2ed61991ea134eaae958d7ade6e1fd19e9` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean/declarations/instance--5c8474590e319d325ab71106.md) | 137 | `declaration-track:5c8474590e319d325ab71106e8e0b3a715c85ee11a49f329685361c95f04bfef` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean/declarations/instance--973918a66ec365ccc9eae1bc.md) | 142 | `declaration-track:973918a66ec365ccc9eae1bc0dbdfadff2fdbd6ab3eabbca49ae39455980cde2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
