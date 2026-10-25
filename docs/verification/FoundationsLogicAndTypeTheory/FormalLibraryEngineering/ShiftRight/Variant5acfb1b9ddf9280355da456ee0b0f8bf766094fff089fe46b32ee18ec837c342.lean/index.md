# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShiftRight.Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d98444aa9dcbee552359921f0433108891af10b0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d98444aa9dcbee552359921f0433108891af10b0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.BitVec.Bootstrap` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [go_get_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/declarations/go-get-aux--641427566676a45e82b93042.md) | 34 | `result-track:641427566676a45e82b93042d35099a3520823ef247d8ed14c42bc5b071b2435` |
| 2 | `theorem` | [go_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/declarations/go-get--f01c367b6dff01b3bf28c2fc.md) | 61 | `result-track:f01c367b6dff01b3bf28c2fcae577130aaf7c3d5818b9be4b270df7087f440a8` |
| 3 | `theorem` | [go_denote_mem_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/declarations/go-denote-mem-prefix--6418f33f0310cb46930bdc1f.md) | 70 | `result-track:6418f33f0310cb46930bdc1fbf2358ff63e3226a89ccd419af8817e5ea8d5bbc` |
| 4 | `theorem` | [go_denote_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/declarations/go-denote-eq--fdedf15ffd40526d03c9e4a5.md) | 86 | `result-track:fdedf15ffd40526d03c9e4a5e841616788fa64a19bb85c4a78cb8facdfb16376` |
| 5 | `theorem` | [denote_blastShiftRightConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/declarations/denote-blastshiftrightconst--bc57c06579b73282e6804a19.md) | 151 | `result-track:bc57c06579b73282e6804a191dde4030737ad25a685b7cd79ab3c2a73f537637` |
| 6 | `theorem` | [go_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/declarations/go-get--b589e5aa9277b09916649037.md) | 172 | `result-track:b589e5aa9277b09916649037396967c98b89837afad85c29e20c868e1b946643` |
| 7 | `theorem` | [go_denote_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/declarations/go-denote-eq--59ee0b6f9af611ecceb8b677.md) | 190 | `result-track:59ee0b6f9af611ecceb8b677c09d27d4b691441058608c7aca5b38abbceccc5c` |
| 8 | `theorem` | [denote_blastArithShiftRightConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/declarations/denote-blastarithshiftrightconst--cc66683ec8744050003320b9.md) | 245 | `result-track:cc66683ec8744050003320b996283772a892ef11d5f9b13e7e979560601375f1` |
| 9 | `theorem` | [twoPowShift_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/declarations/twopowshift-eq--436ff3f7b06590e1150ccede.md) | 266 | `result-track:436ff3f7b06590e1150ccede82358cf50a3f33d4e223a01d8988d68ca1b1459d` |
| 10 | `theorem` | [go_denote_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/declarations/go-denote-eq--64493d6192c739349f05435c.md) | 323 | `result-track:64493d6192c739349f05435caebfdb5117dd29d85a285b44a37205de05ee8f82` |
| 11 | `theorem` | [denote_blastShiftRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/declarations/denote-blastshiftright--a10a2116463bb9eb132cc45d.md) | 360 | `result-track:a10a2116463bb9eb132cc45d651d5ab56fe4b90ca12a13a78d2d71feb556beb8` |
| 12 | `theorem` | [twoPowShift_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/declarations/twopowshift-eq--31e55406e8028eb37becbc1c.md) | 399 | `result-track:31e55406e8028eb37becbc1cc061b0f43b6188ad5fd13ad2e1193f7b062b3de6` |
| 13 | `theorem` | [go_denote_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/declarations/go-denote-eq--4faca01d7cfc09002dba3531.md) | 456 | `result-track:4faca01d7cfc09002dba35314666226a8dd08c51250d5ae14a93f9c3101deee6` |
| 14 | `theorem` | [denote_blastArithShiftRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/declarations/denote-blastarithshiftright--a6a005fa087386ff06ebad81.md) | 493 | `result-track:a6a005fa087386ff06ebad81d53ed2fec2b6934dcd38c74d565df4a684d990b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
