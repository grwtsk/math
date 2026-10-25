# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrdHashSet.Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25b8e9a221c65b2deed93a4ff000404660926f99",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25b8e9a221c65b2deed93a4ff000404660926f99`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean.json)

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
| 1 | `structure` | [OrdHashSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/ordhashset--c15028405b4a37df34a57049.md) | 16 | `declaration-track:c15028405b4a37df34a57049b4dad62839ba6971e435184f82f6e79497767d59` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/instance--0034ce6705f76684aea55a95.md) | 23 | `declaration-track:0034ce6705f76684aea55a95a8bee503ab0ed8901dd3e88dbba3d7baeb916798` |
| 3 | `def` | [empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/empty--18eeccbe5d50fb9e610646e9.md) | 25 | `declaration-track:18eeccbe5d50fb9e610646e9272ec3494bc1fd302b3967d0f54a4a392542fb0b` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/instance--b582a4041f37f86bd6cbf0e6.md) | 28 | `declaration-track:b582a4041f37f86bd6cbf0e61a323e1fa42615ae511de465fc557cced8fe6937` |
| 5 | `def` | [mkEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/mkempty--b81189e35cbce91e45479f61.md) | 30 | `declaration-track:b81189e35cbce91e45479f61424af095db3905e135b5984e22247c9a47e30209` |
| 6 | `def` | [insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/insert--681d3c1a910306283106a084.md) | 33 | `declaration-track:681d3c1a910306283106a084af8e9712c1f86cbe953de260c7d64b41061093ed` |
| 7 | `def` | [appendArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/appendarray--4f3c8354d2f05e078f0fdfe5.md) | 39 | `declaration-track:4f3c8354d2f05e078f0fdfe53ee732ef4617166ff35dc1056865bad2b6bd4dea` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/instance--ff7f990d4ac7e166a2aad38d.md) | 42 | `declaration-track:ff7f990d4ac7e166a2aad38dbe1f4a526828f4f4d330cbefd75a5a7021fc0e0f` |
| 9 | `def` | [append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/append--2ed609f63f918706a99aceb1.md) | 44 | `declaration-track:2ed609f63f918706a99aceb174195933a99f823202237f3c44f6611635181460` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/instance--9efe1ed00af435c9e8414705.md) | 47 | `declaration-track:9efe1ed00af435c9e8414705e23a5805bbb81d70a5a252794ff9dabc7063d4db` |
| 11 | `def` | [ofArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/ofarray--8b9aae06f5c011614cf0a64c.md) | 49 | `declaration-track:8b9aae06f5c011614cf0a64c19d27f641abc3e11933ed990012e76ba87ae1f4f` |
| 12 | `def` | [all](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/all--4d1e09e705e5a8a0db150c23.md) | 52 | `declaration-track:4d1e09e705e5a8a0db150c23917118add63c6bd8a746d55ce97f15d62654406c` |
| 13 | `def` | [any](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/any--56f2655a2c0816dd32051bce.md) | 55 | `declaration-track:56f2655a2c0816dd32051bce7597d1ea75fa88381c0db9fc5dded3d17db82b83` |
| 14 | `def` | [foldl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/foldl--4225a99d6859da284782f0b0.md) | 58 | `declaration-track:4225a99d6859da284782f0b0514b8b6b6fe990db746a3f3eab549df27a4bd516` |
| 15 | `def` | [foldlM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/foldlm--a7ae54457565c203f8f22ab3.md) | 61 | `declaration-track:a7ae54457565c203f8f22ab39563a1e985a278370d17934f885a752e0c1a3fdd` |
| 16 | `def` | [foldr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/foldr--3f4a33b06870c22d20df3ed2.md) | 64 | `declaration-track:3f4a33b06870c22d20df3ed25a7d715638e7ce42da77298a80dc21eeb56f8467` |
| 17 | `def` | [foldrM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/foldrm--8585226feb7acfe7a4c31359.md) | 67 | `declaration-track:8585226feb7acfe7a4c31359e964a859039d5f4722e252b199ae67803b550d6a` |
| 18 | `def` | [forM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/form--34653006aff4d0913d5eedd5.md) | 70 | `declaration-track:34653006aff4d0913d5eedd5187918154db849cbfb8efb625698e2567d12aee9` |
| 19 | `def` | [forIn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/forin--0c4e1be935009529ab3a2284.md) | 73 | `declaration-track:0c4e1be935009529ab3a22840af8e892ada7fca406b97019c416a1a488f177ad` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrdHashSet/Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4.lean/declarations/instance--851045693874f5941dd5e10a.md) | 76 | `declaration-track:851045693874f5941dd5e10a061b94a9bb07747904b5e420b04b9afc2e7c4b07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
