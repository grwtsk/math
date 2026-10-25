# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImportCompletion.Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25cd7b1bd6056247fcb80221d8b0d3626131d186",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25cd7b1bd6056247fcb80221d8b0d3626131d186`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean.json)

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
| 1 | `abbrev` | [ImportTrie](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean/declarations/importtrie--39ef143202643dc2ff38a6b4.md) | 20 | `declaration-track:39ef143202643dc2ff38a6b4de5b153757fbdbc3268b017f3a7c4719784f7407` |
| 2 | `abbrev` | [AvailableImports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean/declarations/availableimports--c64013a469fc9e803a0b702f.md) | 22 | `declaration-track:c64013a469fc9e803a0b702f1aff7b86d1a1ace7530c92c645745025eaa945c3` |
| 3 | `def` | [AvailableImports.toImportTrie](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean/declarations/availableimports-toimporttrie--8481db7b225427513cbe59b3.md) | 24 | `declaration-track:8481db7b225427513cbe59b314e2c830ff86397fd5a387d0a83028355ebb7321` |
| 4 | `def` | [isImportNameCompletionRequest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean/declarations/isimportnamecompletionrequest--f8f09a1d70f961d0df023d93.md) | 30 | `declaration-track:f8f09a1d70f961d0df023d938080716765c5baaf384e24d9708e55a5d7dcb428` |
| 5 | `def` | [isImportCmdCompletionRequest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean/declarations/isimportcmdcompletionrequest--a5de99c3f00abb18b5eac307.md) | 44 | `declaration-track:a5de99c3f00abb18b5eac307102b118f949aab95e3a5ab620619bc8db5a4f007` |
| 6 | `def` | [computePartialImportCompletions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean/declarations/computepartialimportcompletions--7652f56284cb1f57a7ebc956.md) | 51 | `declaration-track:7652f56284cb1f57a7ebc956113892586f9706f807302c44ad8249091dea4c5d` |
| 7 | `def` | [isImportCompletionRequest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean/declarations/isimportcompletionrequest--f63a082795e883e8c125bbd8.md) | 83 | `declaration-track:f63a082795e883e8c125bbd898566cf5ba04d1dcab2cf833e7289d93b6e9bf0d` |
| 8 | `def` | [collectAvailableImportsFromLake](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean/declarations/collectavailableimportsfromlake--32025383c2f87e5d8b794fdf.md) | 89 | `declaration-track:32025383c2f87e5d8b794fdf0344076cbed696548bfd70495b6d8f03ea0f336e` |
| 9 | `def` | [collectAvailableImportsFromSrcSearchPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean/declarations/collectavailableimportsfromsrcsearchpath--32215bdc533aed19720a2ecc.md) | 109 | `declaration-track:32215bdc533aed19720a2eccd7c13ea45d598d8d23ca53be41fd3b701359c2ca` |
| 10 | `def` | [collectAvailableImports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean/declarations/collectavailableimports--0d49a09d30067559821902ae.md) | 118 | `declaration-track:0d49a09d30067559821902aedb562729c7c11d4a9ea00ac093868724b2101ee4` |
| 11 | `def` | [addCompletionItemData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean/declarations/addcompletionitemdata--9158a82044ff3f5fa97d5b3a.md) | 130 | `declaration-track:9158a82044ff3f5fa97d5b3a42119797b33bbbe3bb1cc83074d164bc77f89b9e` |
| 12 | `def` | [find](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean/declarations/find--9c07dfb1a0d7437bc25bf144.md) | 136 | `declaration-track:9c07dfb1a0d7437bc25bf1443ef3e54f27ee5736cb59d633a0e971e9abfbdc25` |
| 13 | `def` | [computeCompletions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean/declarations/computecompletions--d7ff63dc9079942d72e23c0d.md) | 150 | `declaration-track:d7ff63dc9079942d72e23c0d2118ff1298dccf75debd810c23c18e6c9f9b098f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
