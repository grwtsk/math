# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrintPrefix.Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "524f18c23e36ac2f57e699d163ed5754d41f61cf",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `524f18c23e36ac2f57e699d163ed5754d41f61cf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Lean.Name` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Lean.Util.EnvSearch` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Config` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrintPrefixConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean/declarations/printprefixconfig--b14aa594763481b6fb70e447.md) | 23 | `declaration-track:b14aa594763481b6fb70e447bf4fc3e9dc23eb88e00a901eea81576d0d44d05e` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean/declarations/syntax--f2b8d40a1b9c16ff626ceb23.md) | 67 | `declaration-track:f2b8d40a1b9c16ff626ceb23c975294973b888fa601a4ecbc8dbc19887d2e0f2` |
| 3 | `def` | [reverseName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean/declarations/reversename--2046c08f723b8ec9885f9f75.md) | 72 | `declaration-track:2046c08f723b8ec9885f9f752f0d2ab0d5a21b85e542911c6b13d6f1152071ae` |
| 4 | `def` | [takeNameSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean/declarations/takenamesuffix--8d6e03d4befb0654a283a44f.md) | 81 | `declaration-track:8d6e03d4befb0654a283a44fdba27dbb3823802e0645507a1f883389d35d873c` |
| 5 | `def` | [matchName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean/declarations/matchname--af4dd626f0f8d03f93883968.md) | 90 | `declaration-track:af4dd626f0f8d03f93883968119d21db0e49af5553727472bf837200da992834` |
| 6 | `def` | [lexNameLt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean/declarations/lexnamelt--b01d8bc012b51608ccfab793.md) | 106 | `declaration-track:b01d8bc012b51608ccfab793604f9299d1d5e525d27c6c8f3ca9413ebb5060e1` |
| 7 | `def` | [appendMatchingConstants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean/declarations/appendmatchingconstants--c0df5f92721e0ac79a9d85a5.md) | 114 | `declaration-track:c0df5f92721e0ac79a9d85a59a5bd4446585144ffc51278a8ce9bb8d611b318b` |
| 8 | `def` | [elabPrintPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean/declarations/elabprintprefix--7e12ebbe6c8e11f594628238.md) | 131 | `declaration-track:7e12ebbe6c8e11f594628238b9a5e7652f33d5539b8e261fe3a4bd581b01aa82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
