# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CongrM.Variant4534f2c97007c22eabb7df877a69522454c946e47907b991fd7a4c9a61f90ae2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6956ab79c96d07a9f22d03101048bd758fc6150d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrM/Variant4534f2c97007c22eabb7df877a69522454c946e47907b991fd7a4c9a61f90ae2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrM/Variant4534f2c97007c22eabb7df877a69522454c946e47907b991fd7a4c9a61f90ae2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrM/Variant4534f2c97007c22eabb7df877a69522454c946e47907b991fd7a4c9a61f90ae2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6956ab79c96d07a9f22d03101048bd758fc6150d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrM/Variant4534f2c97007c22eabb7df877a69522454c946e47907b991fd7a4c9a61f90ae2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrM/Variant4534f2c97007c22eabb7df877a69522454c946e47907b991fd7a4c9a61f90ae2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Widget.SelectPanelUtils` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CongrM` — import line 13; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Position` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [makeCongrMString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrM/Variant4534f2c97007c22eabb7df877a69522454c946e47907b991fd7a4c9a61f90ae2.lean/declarations/makecongrmstring--0bf738e6ad24fd00568b0bdd.md) | 32 | `declaration-track:0bf738e6ad24fd00568b0bddf4440a8c58dc7a27891895ed78f02258fe7afb6f` |
| 2 | `def` | [CongrMSelectionPanel.rpc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrM/Variant4534f2c97007c22eabb7df877a69522454c946e47907b991fd7a4c9a61f90ae2.lean/declarations/congrmselectionpanel-rpc--c980581c6f6e076b35e8ab0b.md) | 48 | `declaration-track:c980581c6f6e076b35e8ab0b3995df75f0ae1629094bf56920f9ee590fa2ae8d` |
| 3 | `def` | [CongrMSelectionPanel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrM/Variant4534f2c97007c22eabb7df877a69522454c946e47907b991fd7a4c9a61f90ae2.lean/declarations/congrmselectionpanel--e14a5b308eaa14a6abe61b7c.md) | 54 | `declaration-track:e14a5b308eaa14a6abe61b7c1a378e432ad4184e4ecc69be749e2cf973dffea1` |
| 4 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrM/Variant4534f2c97007c22eabb7df877a69522454c946e47907b991fd7a4c9a61f90ae2.lean/declarations/elab--0b8d581bdfb2f22fd10a7337.md) | 60 | `declaration-track:0b8d581bdfb2f22fd10a73377205d04080ba22e983bbee02e4fe77224193b056` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
