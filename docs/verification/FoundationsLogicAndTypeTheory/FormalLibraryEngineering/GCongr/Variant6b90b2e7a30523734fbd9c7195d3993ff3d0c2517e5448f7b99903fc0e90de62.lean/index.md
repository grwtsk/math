# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GCongr.Variant6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd389f9f33d892af5178c06c1364697a114660bb",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCongr/Variant6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCongr/Variant6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCongr/Variant6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd389f9f33d892af5178c06c1364697a114660bb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCongr/Variant6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCongr/Variant6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Widget.SelectPanelUtils` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [makeGCongrString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCongr/Variant6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62.lean/declarations/makegcongrstring--0c26bc0566c4c0b44109eaf8.md) | 19 | `declaration-track:0c26bc0566c4c0b44109eaf816ebb3e7a862abbc4f46d1bc6d8ca52402ec96c3` |
| 2 | `def` | [GCongrSelectionPanel.rpc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCongr/Variant6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62.lean/declarations/gcongrselectionpanel-rpc--34f4f1db9c090725c315df43.md) | 38 | `declaration-track:34f4f1db9c090725c315df43ca1e2964f142525c02901e05b15e2912280cb7be` |
| 3 | `def` | [GCongrSelectionPanel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCongr/Variant6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62.lean/declarations/gcongrselectionpanel--7ff48cf0cbcd8aa87469cc77.md) | 44 | `declaration-track:7ff48cf0cbcd8aa87469cc77c17323173ff6580bc1922c5b09f09c9287029307` |
| 4 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCongr/Variant6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62.lean/declarations/elab--194f7bb2322c829535ed18d5.md) | 50 | `declaration-track:194f7bb2322c829535ed18d54da0c53e0e5d106cc6bce0d6e41896a6df699868` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
