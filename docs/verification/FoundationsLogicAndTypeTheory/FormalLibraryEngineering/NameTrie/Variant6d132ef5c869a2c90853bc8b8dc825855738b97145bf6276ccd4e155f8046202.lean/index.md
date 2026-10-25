# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameTrie.Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11823d0c40f86bc57c5f1393444559e53e5b85d8",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11823d0c40f86bc57c5f1393444559e53e5b85d8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Ord.String` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NamePart](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/declarations/namepart--ee822fb7285ce74665e94957.md) | 16 | `declaration-track:ee822fb7285ce74665e94957aed7830a4018a3afb1918004211486504a14734d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/declarations/instance--b40cd06d7a1cf95665bd7d83.md) | 21 | `declaration-track:b40cd06d7a1cf95665bd7d833a0d3374fed791c76836be57213197a280ec40fe` |
| 3 | `def` | [NamePart.cmp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/declarations/namepart-cmp--fdc77ee56085a830c4cb8fd2.md) | 26 | `declaration-track:fdc77ee56085a830c4cb8fd2fd4d25ba1ae49e28aab0172ebc38cad4fabd0ec8` |
| 4 | `def` | [NamePart.lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/declarations/namepart-lt--5eb78da649ab94a64c8377c5.md) | 32 | `declaration-track:5eb78da649ab94a64c8377c548251564fe9ffbe1243d8c8026449d62e92d1979` |
| 5 | `def` | [NameTrie](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/declarations/nametrie--9744815c859bdcc802d084e3.md) | 38 | `declaration-track:9744815c859bdcc802d084e331117be0937f2c096fd44fcba575ca75283bf356` |
| 6 | `def` | [toKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/declarations/tokey--39d15e6b0d5b14af1db4684b.md) | 40 | `declaration-track:39d15e6b0d5b14af1db4684be8c28ebf8be08244154a89b6a4c4ef7ab970fa1f` |
| 7 | `def` | [NameTrie.insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/declarations/nametrie-insert--078febac89618159d0d07987.md) | 48 | `declaration-track:078febac89618159d0d0798722a10c323292ff31fbd52acfc3d332ce6c76aa2e` |
| 8 | `def` | [NameTrie.empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/declarations/nametrie-empty--e718e7f35608b102e5e48caa.md) | 51 | `declaration-track:e718e7f35608b102e5e48caac6ac103e02b5b69eb8480ea8178e32900333ce9e` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/declarations/instance--0007e55ebe6c1b496c2d4374.md) | 54 | `declaration-track:0007e55ebe6c1b496c2d43743cf9f485aad9d80911e3503f7129fb76d9a3646e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/declarations/instance--0a063a5ec3ddef13cb67a3c4.md) | 57 | `declaration-track:0a063a5ec3ddef13cb67a3c4937b3e7602fd5f1a28cca31d32533e7e668ade24` |
| 11 | `def` | [NameTrie.find?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/declarations/nametrie-find--d37a689ee76c5af3e4ba67ef.md) | 60 | `declaration-track:d37a689ee76c5af3e4ba67ef2e56c46b1f8d7cb0a80c7932ee8031b86da57a44` |
| 12 | `def` | [NameTrie.findLongestPrefix?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/declarations/nametrie-findlongestprefix--f7ef1a1a9b1d936ad167492d.md) | 64 | `declaration-track:f7ef1a1a9b1d936ad167492d37b04211a282661485f562684760db19cdc0de51` |
| 13 | `def` | [NameTrie.foldMatchingM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/declarations/nametrie-foldmatchingm--13c8bd2ff2af69095c4e2c7d.md) | 68 | `declaration-track:13c8bd2ff2af69095c4e2c7d782b75f9642abdc5913956250edf277a0dbeecd1` |
| 14 | `def` | [NameTrie.foldM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/declarations/nametrie-foldm--cdc1f3e41a8a7a088c1cf34d.md) | 72 | `declaration-track:cdc1f3e41a8a7a088c1cf34d8bcc6e912558ff390763da8031d89979e25140b0` |
| 15 | `def` | [NameTrie.forMatchingM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/declarations/nametrie-formatchingm--7c6da912aa54c3564aa4555d.md) | 76 | `declaration-track:7c6da912aa54c3564aa4555de7146b90ba8ba7b37b65f804be298e143bc96ad0` |
| 16 | `def` | [NameTrie.forM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/declarations/nametrie-form--4cc5b0863a5ca3271077783a.md) | 80 | `declaration-track:4cc5b0863a5ca3271077783a0d59b070414a19c6d18aa964dbce520b7c65ffcf` |
| 17 | `def` | [NameTrie.matchingToArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/declarations/nametrie-matchingtoarray--28e0e551c5b191cc46d41c8a.md) | 83 | `declaration-track:28e0e551c5b191cc46d41c8ab2eda361ff83db6980496e0da9c11e305ef0a354` |
| 18 | `def` | [NameTrie.toArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202.lean/declarations/nametrie-toarray--f8159cffe17742e60eb65c0e.md) | 86 | `declaration-track:f8159cffe17742e60eb65c0ec7cff4e31285ff6c39fc62d6b47c2592fc2c1949` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
