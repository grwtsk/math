# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadCache.Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07f97d5c8fbd8215b0da830b0743199137615492",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07f97d5c8fbd8215b0da830b0743199137615492`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean.json)

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
| 1 | `class` | [MonadCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/monadcache--e2021e38d0df935190ca00eb.md) | 15 | `declaration-track:e2021e38d0df935190ca00eb51546c12e0921acd346a551210da8528b3d1769b` |
| 2 | `def` | [checkCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/checkcache--7588eb1a9abcfd9ba593031a.md) | 22 | `declaration-track:7588eb1a9abcfd9ba593031ad45e60b185a8b31b0f7532f18b3e95a44865ad93` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/instance--c9917d8c5c7dc3cfd0e0447e.md) | 30 | `declaration-track:c9917d8c5c7dc3cfd0e0447e811da9690ae02dd8c70b4b71b55e492beb1377a7` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/instance--55aa44325514dfb799a82126.md) | 35 | `declaration-track:55aa44325514dfb799a821266508aea68611a59d952dd1341cbf98b468e60860` |
| 5 | `class` | [MonadHashMapCacheAdapter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/monadhashmapcacheadapter--8fa8077947a72ae6fa240755.md) | 41 | `declaration-track:8fa8077947a72ae6fa240755ca82cd2bddb1f15399537171c23dea4df0991cc4` |
| 6 | `def` | [findCached?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/findcached--32e0df72353f6157a85bba09.md) | 48 | `declaration-track:32e0df72353f6157a85bba09e56214f2b1f325e279e4e460222de6169dd9fc12` |
| 7 | `def` | [cache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/cache--3ae5160574c072b07268867c.md) | 53 | `declaration-track:3ae5160574c072b07268867c1a38dbf3c04a22a2106f632e812a835e607d0deb` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/instance--6b0e6faa40bb6380a2850464.md) | 56 | `declaration-track:6b0e6faa40bb6380a28504644eaed6a3dd82f52911f225ee72bd6a4d45d6f048` |
| 9 | `def` | [MonadCacheT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/monadcachet--3aac6011486fb96a794c501a.md) | 62 | `declaration-track:3aac6011486fb96a794c501ad0523262a8b2910395a71a7bdf85b58386a4a865` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/instance--92d49fe9cefb13b3b04ca788.md) | 68 | `declaration-track:92d49fe9cefb13b3b04ca78888103fb53f88523e7ad56277785aacb1afc1533c` |
| 11 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/run--4d515e29f9a0802bfe71dad9.md) | 72 | `declaration-track:4d515e29f9a0802bfe71dad94e089ce6a073d3fcedc9809dba90abed0937fa73` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/instance--16f6894e7e6aea449a783ef0.md) | 75 | `declaration-track:16f6894e7e6aea449a783ef09de2a03f7c10329ba1f4849ef6e391677ab1d2a0` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/instance--3030e9aba48b8017d2260c69.md) | 76 | `declaration-track:3030e9aba48b8017d2260c697f1fda51c1d7bbaba15f832783661a739961be9f` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/instance--d3d69b3d514202298cf93c28.md) | 77 | `declaration-track:d3d69b3d514202298cf93c28cfeb8d9635af6a57b70612c338b9d8596ecb4343` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/instance--1734ababe3189bbe5cd36b75.md) | 78 | `declaration-track:1734ababe3189bbe5cd36b7543921b0f3c08ddda30a336f1cf51d3e03f7b4194` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/instance--107dfede6a2039e800009b6e.md) | 79 | `declaration-track:107dfede6a2039e800009b6e1c4d7d179b9c565b97930ec825c64253b30155c2` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/instance--5909641eb4ae67dc93a14b03.md) | 80 | `declaration-track:5909641eb4ae67dc93a14b03998374d7b7621f8008849acc2c6393c738c19cb8` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/instance--a01812e12f9f99ece2afccaa.md) | 81 | `declaration-track:a01812e12f9f99ece2afccaa5e181991e651555b4a2b12d27b41d17a315df769` |
| 19 | `def` | [MonadStateCacheT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/monadstatecachet--82c8b4732fa826fcccba0b9f.md) | 86 | `declaration-track:82c8b4732fa826fcccba0b9f914da911e6d8021b8236662e18c8de62af4ed2b4` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/instance--324b9b1d3f250cfd3c57a097.md) | 92 | `declaration-track:324b9b1d3f250cfd3c57a097090af188c547da08b879aa03a9c5b7f583912354` |
| 21 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/run--85777d4cef93fb9d38bc232b.md) | 96 | `declaration-track:85777d4cef93fb9d38bc232b4c929c67c83784ab53bd0481fe4ca6f8f61deff0` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/instance--da28e23830cd86e4d23dec34.md) | 99 | `declaration-track:da28e23830cd86e4d23dec34457145649a63b434a51dd1b17a51d6ebb372c7cb` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/instance--dfc747c27a10cc907dd33a96.md) | 100 | `declaration-track:dfc747c27a10cc907dd33a96cfee025fd33ac051932458acefe44d1774f8eac5` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/instance--f3ca4bc03e0163ecd23b4bba.md) | 101 | `declaration-track:f3ca4bc03e0163ecd23b4bbaf8d84979f62af98e0d7a6d133f098964f807baa3` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/instance--86a222177dae43339ceab195.md) | 102 | `declaration-track:86a222177dae43339ceab19536aa0d725279cd9ab4c5b8102d3785e82cd197f6` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/instance--d68b87cccf529758f2ab694a.md) | 103 | `declaration-track:d68b87cccf529758f2ab694a0063bd2b895d2b2f4984674393322690b71201b9` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean/declarations/instance--277650428b0f0a0dfee09e03.md) | 104 | `declaration-track:277650428b0f0a0dfee09e031c8def9deaf6e5f79edfa622a0716b1f657f37df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
