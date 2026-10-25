# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Calc.Variant7bd3bf4d7c4b8bfe0183fae8195416817f9c76d81bc2148751f72aab2851f3a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55609a040b9c46935d39bd32925a0fcdf837f78f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant7bd3bf4d7c4b8bfe0183fae8195416817f9c76d81bc2148751f72aab2851f3a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant7bd3bf4d7c4b8bfe0183fae8195416817f9c76d81bc2148751f72aab2851f3a8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant7bd3bf4d7c4b8bfe0183fae8195416817f9c76d81bc2148751f72aab2851f3a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55609a040b9c46935d39bd32925a0fcdf837f78f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant7bd3bf4d7c4b8bfe0183fae8195416817f9c76d81bc2148751f72aab2851f3a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant7bd3bf4d7c4b8bfe0183fae8195416817f9c76d81bc2148751f72aab2851f3a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Calc` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.TryThis` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.String.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Widget.SelectPanelUtils` — import line 10; external provider; requires a separately pinned dependency.
- `Batteries.CodeAction.Attr` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Position` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [createCalc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant7bd3bf4d7c4b8bfe0183fae8195416817f9c76d81bc2148751f72aab2851f3a8.lean/declarations/createcalc--5b91a5a41b481f6999ba6211.md) | 26 | `declaration-track:5b91a5a41b481f6999ba62114e42dae17a4c8e82da501fedbfeccfaa66dd5df0` |
| 2 | `structure` | [CalcParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant7bd3bf4d7c4b8bfe0183fae8195416817f9c76d81bc2148751f72aab2851f3a8.lean/declarations/calcparams--49cc659a86cebeba693ae7d9.md) | 54 | `declaration-track:49cc659a86cebeba693ae7d9795b5469df9aeaf34bbfb62b612944f8e314092d` |
| 3 | `def` | [suggestSteps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant7bd3bf4d7c4b8bfe0183fae8195416817f9c76d81bc2148751f72aab2851f3a8.lean/declarations/suggeststeps--faebb9e0721b3775e866492d.md) | 64 | `declaration-track:faebb9e0721b3775e866492db86bd763bb6df5391a1f24d3e5a6fafb98ac1684` |
| 4 | `def` | [CalcPanel.rpc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant7bd3bf4d7c4b8bfe0183fae8195416817f9c76d81bc2148751f72aab2851f3a8.lean/declarations/calcpanel-rpc--6216f47880446e2f864cf1a2.md) | 119 | `declaration-track:6216f47880446e2f864cf1a2493d2c1a47acfea82a76b6704ff8ab71b62f3548` |
| 5 | `def` | [CalcPanel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant7bd3bf4d7c4b8bfe0183fae8195416817f9c76d81bc2148751f72aab2851f3a8.lean/declarations/calcpanel--2bd0a5ea978c963dc8c275d8.md) | 125 | `declaration-track:2bd0a5ea978c963dc8c275d86484592ee07db2a6b9bc28ba06edaf00fc129ba4` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant7bd3bf4d7c4b8bfe0183fae8195416817f9c76d81bc2148751f72aab2851f3a8.lean/declarations/elab--bb7e1f5e6fd5781da3d0fb9f.md) | 132 | `declaration-track:bb7e1f5e6fd5781da3d0fb9fea45e9cfad528c423da3dd6de49e15349360fcfe` |
| 7 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant7bd3bf4d7c4b8bfe0183fae8195416817f9c76d81bc2148751f72aab2851f3a8.lean/declarations/elab-rules--891cf2c5f500e53df385302c.md) | 141 | `declaration-track:891cf2c5f500e53df385302c5a60e0c628e82666e7829266f2737c36a59e831f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
