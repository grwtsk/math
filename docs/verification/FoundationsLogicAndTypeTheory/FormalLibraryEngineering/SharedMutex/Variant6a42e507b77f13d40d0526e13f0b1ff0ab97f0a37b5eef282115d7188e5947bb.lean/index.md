# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SharedMutex.Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e441a585a99424bbe2be6528c0d87ddf4aa983f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e441a585a99424bbe2be6528c0d87ddf4aa983f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean.json)

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
| 1 | `opaque` | [SharedMutexImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/declarations/sharedmuteximpl--5f7cea1f0ffe8503bb0f0088.md) | 23 | `declaration-track:5f7cea1f0ffe8503bb0f008868567ebcd2a81056eba00357b8863d68c72404f1` |
| 2 | `def` | [BaseSharedMutex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/declarations/basesharedmutex--446677e47d13c125f78e3782.md) | 30 | `declaration-track:446677e47d13c125f78e37828b3ae3df605127eae1b6be0e6cacc6b0c45718b6` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/declarations/instance--f5e8294a9ac29193a8f98df9.md) | 32 | `declaration-track:f5e8294a9ac29193a8f98df96267ea521ebb253d94032509edafd9ed52d93f33` |
| 4 | `opaque` | [BaseSharedMutex.new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/declarations/basesharedmutex-new--1fffaaeb0345fe85bd905c5f.md) | 36 | `declaration-track:1fffaaeb0345fe85bd905c5f3bb184a76a297ae1ff5c43893a36fd05fffed330` |
| 5 | `opaque` | [BaseSharedMutex.write](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/declarations/basesharedmutex-write--89e22d31a827c1fac15e37f5.md) | 46 | `declaration-track:89e22d31a827c1fac15e37f59f890e466bca4dc7846a53d6f32910cc4b2a7de8` |
| 6 | `opaque` | [BaseSharedMutex.tryWrite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/declarations/basesharedmutex-trywrite--119384c23d09fe6812821593.md) | 56 | `declaration-track:119384c23d09fe6812821593d831654a29fbff08dae8d565c2157e42c2a800a8` |
| 7 | `opaque` | [BaseSharedMutex.unlockWrite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/declarations/basesharedmutex-unlockwrite--cfebc3e85dd1a0c2b459c8fa.md) | 65 | `declaration-track:cfebc3e85dd1a0c2b459c8faeed094b1700f86a3376b166badb3bbb3c26b8d87` |
| 8 | `opaque` | [BaseSharedMutex.read](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/declarations/basesharedmutex-read--eab209a30eadf7318f05932f.md) | 76 | `declaration-track:eab209a30eadf7318f05932fd884322a03a41aa99a592d8bb696a3942984a50c` |
| 9 | `opaque` | [BaseSharedMutex.tryRead](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/declarations/basesharedmutex-tryread--d5cc6f84474ab68bc62c56c9.md) | 86 | `declaration-track:d5cc6f84474ab68bc62c56c900c2554e3a2c2e0d4f6c5369e7573265d7ca6acc` |
| 10 | `opaque` | [BaseSharedMutex.unlockRead](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/declarations/basesharedmutex-unlockread--f1b02a1b506a35ff7eae50a4.md) | 95 | `declaration-track:f1b02a1b506a35ff7eae50a409124816da6ebcd1cd3a5817ac122c8ffabebcce` |
| 11 | `structure` | [SharedMutex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/declarations/sharedmutex--2c4250cbe67796344051e0fd.md) | 101 | `declaration-track:2c4250cbe67796344051e0fd51e3a03490df297244c7dd211aa1709816d78649` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/declarations/instance--3c7fb1bebe9ba12932dc0bad.md) | 106 | `declaration-track:3c7fb1bebe9ba12932dc0bade0c26cac90c719ce645bdff407fa68a0b35b1a0c` |
| 13 | `def` | [SharedMutex.new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/declarations/sharedmutex-new--ea30ecaa44a08f01f8cf1080.md) | 109 | `declaration-track:ea30ecaa44a08f01f8cf1080f33e3f3986569340f8103cf08721d2d3f0c2cdec` |
| 14 | `def` | [SharedMutex.atomically](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/declarations/sharedmutex-atomically--973d559e4216d8536451881c.md) | 119 | `declaration-track:973d559e4216d8536451881c4f9b047b5c0275a401655577f67cd644b710a91e` |
| 15 | `def` | [SharedMutex.tryAtomically](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/declarations/sharedmutex-tryatomically--d60e973c00b253500d23c2ee.md) | 135 | `declaration-track:d60e973c00b253500d23c2ee78ca6b63bcfd1115f2f198f8c440ac8524b2e67f` |
| 16 | `def` | [SharedMutex.atomicallyRead](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/declarations/sharedmutex-atomicallyread--569b8957794903a281a7e13f.md) | 152 | `declaration-track:569b8957794903a281a7e13fc1c18ae88258d87a9f501b2e10b163a98515b0c3` |
| 17 | `def` | [SharedMutex.tryAtomicallyRead](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/declarations/sharedmutex-tryatomicallyread--16a3ef78b2cb4bc5d81d7c96.md) | 169 | `declaration-track:16a3ef78b2cb4bc5d81d7c96b3d92eb52239d52c220c3ee6c02a67c77d8362ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
