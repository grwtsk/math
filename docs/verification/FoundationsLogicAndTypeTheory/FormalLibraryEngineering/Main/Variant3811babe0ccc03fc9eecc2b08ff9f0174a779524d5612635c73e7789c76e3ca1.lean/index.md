# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12166cf0bf92c68b88685688094a2a0253b379a6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12166cf0bf92c68b88685688094a2a0253b379a6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop.Frontend.Extension` — import line 19; external provider; requires a separately pinned dependency.
- `Aesop.Search.Queue` — import line 20; external provider; requires a separately pinned dependency.
- `Aesop.Tree.Free` — import line 21; external provider; requires a separately pinned dependency.
- `Aesop.Tree.Stats` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nextActiveGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean/declarations/nextactivegoal--f1515042bf93f5f4ba12aae6.md) | 38 | `declaration-track:f1515042bf93f5f4ba12aae666716d27b3f712d791e9ab2544507f7345f84c02` |
| 2 | `def` | [expandNextGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean/declarations/expandnextgoal--fc23357472374e17fb298b11.md) | 46 | `declaration-track:fc23357472374e17fb298b113b68dd4f031ca436d14a9d2a552c49214b52ad21` |
| 3 | `def` | [checkGoalLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean/declarations/checkgoallimit--ba138ff7439655a169f3aaea.md) | 96 | `declaration-track:ba138ff7439655a169f3aaea1ed3f7dbff26b937a9b1225e84ca5ba768c7efe2` |
| 4 | `def` | [checkRappLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean/declarations/checkrapplimit--31c0cfe991940615c07baf4a.md) | 103 | `declaration-track:31c0cfe991940615c07baf4ad6181bdf237dbb46d182bcad1dd0500478fe8ccc` |
| 5 | `def` | [checkRootUnprovable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean/declarations/checkrootunprovable--bf310b1501251b84e8c14be8.md) | 110 | `declaration-track:bf310b1501251b84e8c14be820e1bbc301b34dec9d4b69f677ba7a0ee80326de` |
| 6 | `def` | [getProof?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean/declarations/getproof--c69e705f83bb0971d82b1258.md) | 121 | `declaration-track:c69e705f83bb0971d82b12583108ca420fe38b0782c5633043a0d27ec058f9ab` |
| 7 | `def` | [finalizeProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean/declarations/finalizeproof--03f27112ef4c2d9b7f1efeb4.md) | 124 | `declaration-track:03f27112ef4c2d9b7f1efeb4d5ec52a9433d32f58bc8a286fb07c8998934ffd3` |
| 8 | `def` | [traceScript](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean/declarations/tracescript--bc106e36e8ba2e60c18275a1.md) | 136 | `declaration-track:bc106e36e8ba2e60c18275a1cd1890b71f439b6654f00c8b62e3944f7aff5ee8` |
| 9 | `def` | [traceTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean/declarations/tracetree--a13720bc204a0f69d1a9e2ba.md) | 151 | `declaration-track:a13720bc204a0f69d1a9e2ba0f00c5c69180f695bf9a949617855b06f58217da` |
| 10 | `def` | [finishIfProven](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean/declarations/finishifproven--20943121e07a438f2d634b40.md) | 154 | `declaration-track:20943121e07a438f2d634b4060ad9c934125a9c7581aba7bc3d52e58eecc393f` |
| 11 | `def` | [treeHasProgress](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean/declarations/treehasprogress--192c0b0174921be8540d5641.md) | 175 | `declaration-track:192c0b0174921be8540d5641c390d1f3f9bf041e5db6a8e4e37a70db500f92f3` |
| 12 | `def` | [throwAesopEx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean/declarations/throwaesopex--888f9ae5ffd205b7ff10048f.md) | 198 | `declaration-track:888f9ae5ffd205b7ff10048f2ee329e6057478cbfa45dac65b5097ae27904c43` |
| 13 | `def` | [handleNonfatalError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean/declarations/handlenonfatalerror--514a8d8b7a79a157ee3d2d15.md) | 236 | `declaration-track:514a8d8b7a79a157ee3d2d15ae053fa26e064f6d38186ecf2aa458a5ca3182c3` |
| 14 | `def` | [searchLoop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean/declarations/searchloop--844e6fe36193bb9d5f68f405.md) | 258 | `declaration-track:844e6fe36193bb9d5f68f405f74038c0bbadb082496240eb0b9540a72e823e9e` |
| 15 | `def` | [search](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean/declarations/search--054cfc6c3e29087af04ef27a.md) | 275 | `declaration-track:054cfc6c3e29087af04ef27a7c51b50a6e4edaf6f496ff02ff023351a1abd8d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
