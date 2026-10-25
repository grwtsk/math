# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NativeLib.Variantc8068ff2aeb6987ec78b0563df9c711bbdc1715cfe7c5d06232c7fc1a08cffce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c7edd9de90bcc390b4190f9563033d9b9c2414a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variantc8068ff2aeb6987ec78b0563df9c711bbdc1715cfe7c5d06232c7fc1a08cffce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variantc8068ff2aeb6987ec78b0563df9c711bbdc1715cfe7c5d06232c7fc1a08cffce.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variantc8068ff2aeb6987ec78b0563df9c711bbdc1715cfe7c5d06232c7fc1a08cffce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c7edd9de90bcc390b4190f9563033d9b9c2414a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variantc8068ff2aeb6987ec78b0563df9c711bbdc1715cfe7c5d06232c7fc1a08cffce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variantc8068ff2aeb6987ec78b0563df9c711bbdc1715cfe7c5d06232c7fc1a08cffce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.ToString.Macro` — import line 15; external provider; requires a separately pinned dependency.
- `Init.System.Platform` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sharedLibExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variantc8068ff2aeb6987ec78b0563df9c711bbdc1715cfe7c5d06232c7fc1a08cffce.lean/declarations/sharedlibext--4a6c2b4fd4f8a42e00f176dd.md) | 25 | `declaration-track:4a6c2b4fd4f8a42e00f176dd6f970ed07d1f5ad566d4dbf1be5faabf96969199` |
| 2 | `def` | [nameToStaticLib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variantc8068ff2aeb6987ec78b0563df9c711bbdc1715cfe7c5d06232c7fc1a08cffce.lean/declarations/nametostaticlib--00ac323cb4dcde7ccd572d6d.md) | 31 | `declaration-track:00ac323cb4dcde7ccd572d6dce77a97dfa4c190e4a818586830ed6ea5d933d0c` |
| 3 | `def` | [nameToSharedLib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variantc8068ff2aeb6987ec78b0563df9c711bbdc1715cfe7c5d06232c7fc1a08cffce.lean/declarations/nametosharedlib--353fd2e372b05da289dd31de.md) | 35 | `declaration-track:353fd2e372b05da289dd31deac5f26f0b90a2be5e1a62fe30403dbbcaa4793d4` |
| 4 | `def` | [sharedLibPathEnvVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variantc8068ff2aeb6987ec78b0563df9c711bbdc1715cfe7c5d06232c7fc1a08cffce.lean/declarations/sharedlibpathenvvar--55497527fec4a50b633c5339.md) | 43 | `declaration-track:55497527fec4a50b633c533980f44379d5578d20ccb1980fe72055177f404ceb` |
| 5 | `def` | [getSearchPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variantc8068ff2aeb6987ec78b0563df9c711bbdc1715cfe7c5d06232c7fc1a08cffce.lean/declarations/getsearchpath--0b7b245bb8423dcde0eb9abb.md) | 52 | `declaration-track:0b7b245bb8423dcde0eb9abb7740cc6b8390fbd38f1076d92e2ec15b0fa1386a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
