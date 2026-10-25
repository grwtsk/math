# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RBArray.Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6de919e71322ffe57623f310738ec48a03e7ec6a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6de919e71322ffe57623f310738ec48a03e7ec6a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean.json)

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
| 1 | `structure` | [RBArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean/declarations/rbarray--d71dcae80bcd5f20171ab026.md) | 19 | `declaration-track:d71dcae80bcd5f20171ab026a9b483bf3bef83e8dcf76954d35abcba62ef6580` |
| 2 | `def` | [empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean/declarations/empty--6641f71359793bbab29cda7d.md) | 25 | `declaration-track:6641f71359793bbab29cda7d955455ff61882f828ce6829b7f581f101108f6d1` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean/declarations/instance--3fa27b8dc0651dfaa07779ba.md) | 28 | `declaration-track:3fa27b8dc0651dfaa07779ba8b07b5fae98d76c3b8b2240b79172ce78fa0394e` |
| 4 | `def` | [mkEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean/declarations/mkempty--d9a36f98c3c5bf27dde8aae6.md) | 30 | `declaration-track:d9a36f98c3c5bf27dde8aae645a66c88b70adce08d875f108d12a3b73e380521` |
| 5 | `def` | [find?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean/declarations/find--45cb23f98d756837b70b8923.md) | 33 | `declaration-track:45cb23f98d756837b70b89238c2ed1e49be9a416c684e55520ad4c68ee954330` |
| 6 | `def` | [contains](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean/declarations/contains--42af801111faacce6489cf9d.md) | 36 | `declaration-track:42af801111faacce6489cf9d7c2b2f316a57a992438a257305babf54e2eb869f` |
| 7 | `def` | [insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean/declarations/insert--05e14b9ad901fda50e7a4575.md) | 40 | `declaration-track:05e14b9ad901fda50e7a4575ad326b2afa0d6e37b32bc4c7f26bf084e7563c3c` |
| 8 | `def` | [all](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean/declarations/all--e4a16f17433efcf465a151b9.md) | 46 | `declaration-track:e4a16f17433efcf465a151b953f0386183c7cb0f98fc4958661354bfe18c3a6e` |
| 9 | `def` | [any](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean/declarations/any--228eb1d34793d843c17dc14e.md) | 49 | `declaration-track:228eb1d34793d843c17dc14ebd9f5c30d00d253bd4ba920a4b57512725b7c2e9` |
| 10 | `def` | [foldl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean/declarations/foldl--4ddd56223d3640183db87f53.md) | 52 | `declaration-track:4ddd56223d3640183db87f5307ebf435faa364f4228f109fd8d3a768b2f6ce15` |
| 11 | `def` | [foldlM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean/declarations/foldlm--130911c85d82aaaccadb0261.md) | 55 | `declaration-track:130911c85d82aaaccadb0261d0f39d5071184694d721400976ad80e4fe0f50ec` |
| 12 | `def` | [foldr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean/declarations/foldr--c49cf34b0b8ebc8f42e9230a.md) | 58 | `declaration-track:c49cf34b0b8ebc8f42e9230a1b693ca4158e0f92f1436779eb0d6ccca387806f` |
| 13 | `def` | [foldrM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean/declarations/foldrm--1744000aeadf87ae4449e374.md) | 61 | `declaration-track:1744000aeadf87ae4449e3749d6af8f4f080afb1c8aab64ceb548e080fcc6e96` |
| 14 | `def` | [forM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean/declarations/form--3455c55526d22a1eb9cc0a9e.md) | 64 | `declaration-track:3455c55526d22a1eb9cc0a9e49b0020009ef4f5804f6ebc09fa16ba58f7b95b2` |
| 15 | `def` | [forIn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean/declarations/forin--a8a914b5f982cfa825c01e18.md) | 67 | `declaration-track:a8a914b5f982cfa825c01e18b663ebb557038ff14fb71671007d7d47a62669ba` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean/declarations/instance--e92aef82e1b2ca0d9eb4ed93.md) | 71 | `declaration-track:e92aef82e1b2ca0d9eb4ed9385c0686cc10bfc9895196512874c7e677e30e3ef` |
| 17 | `def` | [mkRBArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179.lean/declarations/mkrbarray--aded9911e8e7fc5b68f51e99.md) | 75 | `declaration-track:aded9911e8e7fc5b68f51e99098200a753ff522288fa9a5a9c383b0d7f35b965` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
