# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Conv.Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c187d8377134630adefa8fdcd3fab54e8b9b7c9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c187d8377134630adefa8fdcd3fab54e8b9b7c9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Conv.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.Command` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean/declarations/syntax--3c3f0b67699d87073246044c.md) | 25 | `declaration-track:3c3f0b67699d87073246044c5c356df9a4b297419c9bfe76e8f982e2f71d3a56` |
| 2 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean/declarations/macro-rules--a7c0a5ad20c6e7f91b171770.md) | 26 | `declaration-track:a7c0a5ad20c6e7f91b171770b5949257ea6537fb428e3d5c88055f049f6ba82a` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean/declarations/syntax--fdc6c7fe1113699da755ab49.md) | 30 | `declaration-track:fdc6c7fe1113699da755ab496235f302b56d66dfd1cdaa9cc1c9929fa43bf8a1` |
| 4 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean/declarations/macro-rules--e442c3a11df3b4b5ac699815.md) | 31 | `declaration-track:e442c3a11df3b4b5ac6998151b4931cb6aba2ae05929d4405d93c68cffaa5932` |
| 5 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean/declarations/macro--22ea26d7ea582926426c100a.md) | 35 | `declaration-track:22ea26d7ea582926426c100ad74be60ce49cb7964696e59359c5312db2a752a1` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean/declarations/macro--031758db99d9876d9dea92d8.md) | 50 | `declaration-track:031758db99d9876d9dea92d832584c4a4201d8157aff5a7ee941dac314ef06de` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean/declarations/syntax--911663c3a10c46b9178f5aac.md) | 58 | `declaration-track:911663c3a10c46b9178f5aac04647be53f88f76be45e5ed7e122aa079983456b` |
| 8 | `def` | [elabDischargeConv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean/declarations/elabdischargeconv--6988fa7c0ff4f480a4f0c84d.md) | 61 | `declaration-track:6988fa7c0ff4f480a4f0c84dde04bbd3af18d11e5c6d6b953668b8793c698a12` |
| 9 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean/declarations/macro--749fddbbfa4030ea1a214bb8.md) | 78 | `declaration-track:749fddbbfa4030ea1a214bb85e787465899e7bb185fbb2b49fd868fd704d01ff` |
| 10 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean/declarations/elab--399537a30a8fe3fae087faa7.md) | 92 | `declaration-track:399537a30a8fe3fae087faa7e9ed43521d24dd89e250bb4d2a5405f6efb00b14` |
| 11 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean/declarations/macro--7ea302b45c827e5245954ac0.md) | 105 | `declaration-track:7ea302b45c827e5245954ac0eeb097a6cd033b65f5f80af4c967b2682458f55d` |
| 12 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean/declarations/macro--e2cf1c5a8a4525f8835a7d97.md) | 126 | `declaration-track:e2cf1c5a8a4525f8835a7d97e4fa923ffb35fdd1a8102d20b6c92341bbf4fc59` |
| 13 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean/declarations/macro--eb61a072d3e35b2e6df1d3d1.md) | 132 | `declaration-track:eb61a072d3e35b2e6df1d3d1dc87ce0f0c39ed69fff16be42d54368a106d76af` |
| 14 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean/declarations/syntax--6cb164f65ab4d0a027c525ba.md) | 141 | `declaration-track:6cb164f65ab4d0a027c525ba4a52785b113059b9295fde7dfc3aec713e335328` |
| 15 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb.lean/declarations/macro-rules--ccf2419f5eca51fe5b283dff.md) | 142 | `declaration-track:ccf2419f5eca51fe5b283dffabfd1c8be4e1ccf61128a4d5016f9083d40d15b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
