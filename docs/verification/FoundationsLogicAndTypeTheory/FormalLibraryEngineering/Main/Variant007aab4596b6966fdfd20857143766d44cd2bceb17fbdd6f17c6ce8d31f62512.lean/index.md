# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant007aab4596b6966fdfd20857143766d44cd2bceb17fbdd6f17c6ce8d31f62512

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65ee88975263c027600c5557ec3a30d2273ddb29",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant007aab4596b6966fdfd20857143766d44cd2bceb17fbdd6f17c6ce8d31f62512.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant007aab4596b6966fdfd20857143766d44cd2bceb17fbdd6f17c6ce8d31f62512.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant007aab4596b6966fdfd20857143766d44cd2bceb17fbdd6f17c6ce8d31f62512.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65ee88975263c027600c5557ec3a30d2273ddb29`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant007aab4596b6966fdfd20857143766d44cd2bceb17fbdd6f17c6ce8d31f62512.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant007aab4596b6966fdfd20857143766d44cd2bceb17fbdd6f17c6ce8d31f62512.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Util.Imports` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.CoreM` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Data.NameMap` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.IO.Process` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Name` — import line 10; external provider; requires a separately pinned dependency.
- `Std.Lean.Util.Path` — import line 11; external provider; requires a separately pinned dependency.
- `Cli` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [asDotGraph](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant007aab4596b6966fdfd20857143766d44cd2bceb17fbdd6f17c6ce8d31f62512.lean/declarations/asdotgraph--28ec94b5468b78f88f09d926.md) | 25 | `declaration-track:28ec94b5468b78f88f09d926b742a80b8e56e71ec5175fb54c270bca47bb2013` |
| 2 | `def` | [importGraphCLI](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant007aab4596b6966fdfd20857143766d44cd2bceb17fbdd6f17c6ce8d31f62512.lean/declarations/importgraphcli--b4d99a4860238ffe4606ff88.md) | 37 | `declaration-track:b4d99a4860238ffe4606ff883c75ff118d7ce550ab7f6d54eece9488311ea925` |
| 3 | `def` | [graph](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant007aab4596b6966fdfd20857143766d44cd2bceb17fbdd6f17c6ce8d31f62512.lean/declarations/graph--15a43620608fc2fad3e540ca.md) | 84 | `declaration-track:15a43620608fc2fad3e540ca7762f0575e484c731837288bf0fdef3b4145f88d` |
| 4 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant007aab4596b6966fdfd20857143766d44cd2bceb17fbdd6f17c6ce8d31f62512.lean/declarations/main--ed7908c0973d07ff420de8de.md) | 104 | `declaration-track:ed7908c0973d07ff420de8de51e3a4d3df44983ed22438bee5dac0a08a84b01a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
