# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Conjunctive.Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b2370449e6bef32fc3657a648bc5ae7cd5d5632",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b2370449e6bef32fc3657a648bc5ae7cd5d5632`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean.json)

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
| 1 | `class` | [WPConjunctive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean/declarations/wpconjunctive--3a2831729bf0ddc4641ddc2b.md) | 31 | `declaration-track:3a2831729bf0ddc4641ddc2b534d71ac2f2454b7cd1886ca08bffc4075954480` |
| 2 | `instance` | [Id.instWPConjunctive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean/declarations/id-instwpconjunctive--82abe673909347bd7e9f1957.md) | 38 | `declaration-track:82abe673909347bd7e9f19575f01447aa5f6bc937074b16af613693c9bff7642` |
| 3 | `instance` | [Option.instWPConjunctive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean/declarations/option-instwpconjunctive--d43510e33f0fab2f13e82243.md) | 42 | `declaration-track:d43510e33f0fab2f13e82243325de396e54c2ec42258e1d2b0b7473106e06dd9` |
| 4 | `instance` | [Except.instWPConjunctive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean/declarations/except-instwpconjunctive--423a2d39b39ce4e8c142c4cb.md) | 49 | `declaration-track:423a2d39b39ce4e8c142c4cbc0bbfbaac455b015b0140bd8514996505581d154` |
| 5 | `instance` | [EStateM.instWPConjunctive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean/declarations/estatem-instwpconjunctive--9b28b009ee09f5c38a145aa0.md) | 57 | `declaration-track:9b28b009ee09f5c38a145aa0b2d9bc3b8546692bd0fbf6b2c13a9b764c5e76a3` |
| 6 | `instance` | [StateT.instWPConjunctive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean/declarations/statet-instwpconjunctive--d8ac99f44743a21cea298d3e.md) | 65 | `declaration-track:d8ac99f44743a21cea298d3e9c776516e991a8548856064af94023b422902f56` |
| 7 | `instance` | [ReaderT.instWPConjunctive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean/declarations/readert-instwpconjunctive--366f420e1c7708781c8321cf.md) | 80 | `declaration-track:366f420e1c7708781c8321cfbf844ed48e5d22bb19a03e5cd26da97dd78afe6c` |
| 8 | `instance` | [OptionT.instWPConjunctive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean/declarations/optiont-instwpconjunctive--a109d508932784e21a1e01a9.md) | 95 | `declaration-track:a109d508932784e21a1e01a920d300ecd69bd24c207188a74150275dfd238ab8` |
| 9 | `instance` | [ExceptT.instWPConjunctive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjunctive/Varianta3742cbe6ae6b0636db12bb93d88e7eef45bc90681e3bd911070696162d4e1be.lean/declarations/exceptt-instwpconjunctive--49138424d1f3aa520708e602.md) | 110 | `declaration-track:49138424d1f3aa520708e602df105918c14a2b5f8e6d6315c487fa5a97b4694e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
