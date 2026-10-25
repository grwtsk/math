# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dynamic.Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf9431f817ed5dc06a01b2524a4ca952deb8dfa9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf9431f817ed5dc06a01b2524a4ca952deb8dfa9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Core` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `opaque` | [TypeNameData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean/declarations/typenamedata--fbee1f146dbf9037d0a5bd29.md) | 27 | `declaration-track:fbee1f146dbf9037d0a5bd2913683650d18520488845442aba5ab01dde31cb95` |
| 2 | `class` | [TypeName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean/declarations/typename--9849044b513807971c4d9854.md) | 47 | `declaration-track:9849044b513807971c4d985460fbb490a601b45ea84241a935b5ef96b0de6e32` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean/declarations/instance--df2326b68b97bb36b47a7c1c.md) | 50 | `declaration-track:df2326b68b97bb36b47a7c1c3c7d075419ab7df1f70bd8e75722c56c7b403af4` |
| 4 | `def` | [TypeName.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean/declarations/typename-mk--bef198a27cfbc194d7ec3152.md) | 59 | `declaration-track:bef198a27cfbc194d7ec315224ee28b594f26b18ae52d998324e8acc28fdb26a` |
| 5 | `def` | [TypeName.typeNameImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean/declarations/typename-typenameimpl--72a9c3773c1bbfc502613e12.md) | 62 | `declaration-track:72a9c3773c1bbfc502613e128f82bec2bd3c6bcfb8febe8cf8f1986d4590945c` |
| 6 | `opaque` | [TypeName.typeName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean/declarations/typename-typename--ed5380a536b0c53b68b9fae7.md) | 69 | `declaration-track:ed5380a536b0c53b68b9fae7fceb556dfcd77c3cfa27c7feb6c3e50119ce1b17` |
| 7 | `opaque` | [DynamicPointed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean/declarations/dynamicpointed--1878fed6da9986d67fca2442.md) | 71 | `declaration-track:1878fed6da9986d67fca2442e2cfbfffa8b547554487c741370103ab1d767e59` |
| 8 | `def` | [Dynamic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean/declarations/dynamic--05d5d10fa5c1c642568ad9d6.md) | 81 | `declaration-track:05d5d10fa5c1c642568ad9d63cf192799de1933de1ef10d3b65fd5daa89e17d5` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean/declarations/instance--60a0149cba0bc7f5aaa06afd.md) | 83 | `declaration-track:60a0149cba0bc7f5aaa06afdc8f226612dc728f0aae201f1ace8652a0e6c98ac` |
| 10 | `def` | [Dynamic.typeNameImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean/declarations/dynamic-typenameimpl--30767fd49f9a306429a2a333.md) | 85 | `declaration-track:30767fd49f9a306429a2a333ee3a50dc55127dd70cd9a383bd404bb25136f608` |
| 11 | `opaque` | [Dynamic.typeName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean/declarations/dynamic-typename--f9d1fdf2fb3900835e347b30.md) | 92 | `declaration-track:f9d1fdf2fb3900835e347b305a18b202ec59dd78fe76e62b27cb5016f9510223` |
| 12 | `def` | [Dynamic.get?Impl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean/declarations/dynamic-get-impl--c5d50892d684e0227712e700.md) | 94 | `declaration-track:c5d50892d684e0227712e700155e321d1e785f096ffb297f77f5b0b603fab4e4` |
| 13 | `opaque` | [Dynamic.get?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean/declarations/dynamic-get--9c988dccbcd6d5d6558ecb95.md) | 106 | `declaration-track:9c988dccbcd6d5d6558ecb959a41cec9fc49b046ed00ed943916cadaf181b134` |
| 14 | `def` | [Dynamic.mkImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean/declarations/dynamic-mkimpl--7ecaef818825001e8f7d2bd5.md) | 108 | `declaration-track:7ecaef818825001e8f7d2bd5a7addd0bb376eb0f9161fb825888c0ee9a2b6ad4` |
| 15 | `opaque` | [Dynamic.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynamic/Variant5dd563cb6666dc84eec7fb48b0872bdd226979bff2dd816fd91b26227baac5d6.lean/declarations/dynamic-mk--c1f5de89410d611b6ce297ad.md) | 117 | `declaration-track:c1f5de89410d611b6ce297adf647b1b9105d89c8bb9f3e275f171c8664824622` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
