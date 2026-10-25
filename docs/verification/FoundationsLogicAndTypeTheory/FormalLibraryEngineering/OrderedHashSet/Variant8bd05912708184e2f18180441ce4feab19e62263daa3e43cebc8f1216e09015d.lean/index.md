# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderedHashSet.Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c587ab3e68df526131b8d0c6475b932574bd380a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c587ab3e68df526131b8d0c6475b932574bd380a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d.lean.json)

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
| 1 | `structure` | [OrderedHashSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d.lean/declarations/orderedhashset--ef2ffc2de11679b78c5dd327.md) | 12 | `declaration-track:ef2ffc2de11679b78c5dd32757c10d5253d79c6ebfcabff0ac098c33fd98fd14` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d.lean/declarations/instance--abd03bb367a264eee4e9cba5.md) | 21 | `declaration-track:abd03bb367a264eee4e9cba55ee0c029222134fd5a04253969c0f5a313cdc4d2` |
| 3 | `def` | [emptyWithCapacity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d.lean/declarations/emptywithcapacity--1bcca2442e811d4a63530d40.md) | 24 | `declaration-track:1bcca2442e811d4a63530d4064e0af43159bfaa71c2470c3c81bea91dc0cc699` |
| 4 | `def` | [insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d.lean/declarations/insert--6600b94ca3939138d6160293.md) | 28 | `declaration-track:6600b94ca3939138d61602938972b70235d43332f32fe73e66badedc4ca44e16` |
| 5 | `def` | [insertMany](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d.lean/declarations/insertmany--5fb4b5e81790442aba03422a.md) | 36 | `declaration-track:5fb4b5e81790442aba03422a5069aea52b4b2cbd82819a4dd99fe03e71d53b05` |
| 6 | `def` | [ofArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d.lean/declarations/ofarray--d7b2e1978c936038e5f783a3.md) | 43 | `declaration-track:d7b2e1978c936038e5f783a333fc8247b6e79266ceac0c3ae6bfda8c2da3737b` |
| 7 | `def` | [contains](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d.lean/declarations/contains--ab3d25f3945854ed41c17d47.md) | 46 | `declaration-track:ab3d25f3945854ed41c17d47754c00074aa94684e2c5aa2b6fcca05d70989d3a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d.lean/declarations/instance--29d17038b242292701b9f96a.md) | 49 | `declaration-track:29d17038b242292701b9f96a475ef1b7862f3b882a89d352dcad3283a822541b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d.lean/declarations/instance--d476fda0ce09e946a0c7b9c1.md) | 52 | `declaration-track:d476fda0ce09e946a0c7b9c189892e1e143b94230124a571ecdf0590160da759` |
| 10 | `def` | [foldlM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d.lean/declarations/foldlm--7c97a9a8c8c031d22c5e0290.md) | 56 | `declaration-track:7c97a9a8c8c031d22c5e029019176fa64fb915b04c5ef6891683657c757d0e3f` |
| 11 | `def` | [foldl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d.lean/declarations/foldl--8de5c7abb00d902d58a3b30c.md) | 60 | `declaration-track:8de5c7abb00d902d58a3b30c32a1f9cfd48fc3179ae54e95bcc356f75de3c9a2` |
| 12 | `def` | [foldrM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d.lean/declarations/foldrm--6ef318af6b59290ed4b39819.md) | 64 | `declaration-track:6ef318af6b59290ed4b39819d003aa2b42872caf0730ba05ce36b5385c30f2a3` |
| 13 | `def` | [foldr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d.lean/declarations/foldr--4e763290607d8d07eb62916e.md) | 68 | `declaration-track:4e763290607d8d07eb62916ed0bd5f612b12b27b133cf639f109a3069ba8fb16` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedHashSet/Variant8bd05912708184e2f18180441ce4feab19e62263daa3e43cebc8f1216e09015d.lean/declarations/instance--5b4cc15c5381e47acef48621.md) | 71 | `declaration-track:5b4cc15c5381e47acef48621c21687668794b44f91a11d9e32bab83a3c7512b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
