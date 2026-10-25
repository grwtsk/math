# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nat.Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "077d0d36de2dc68929fb568613c5a3623b33f966",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `077d0d36de2dc68929fb568613c5a3623b33f966`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.OfNat` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Simp` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.ToInt` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.NatInstTesters` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkNatVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean/declarations/mknatvar--4654cd1063b432c1f6afaf0d.md) | 17 | `declaration-track:4654cd1063b432c1f6afaf0de92a3dfcdb8ad262b18e04c7629a72254dce7ca3` |
| 2 | `def` | [intIte](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean/declarations/intite--012f590114a101f6cd87d46c.md) | 29 | `declaration-track:012f590114a101f6cd87d46c94bc31c0f39af28b964d2cd3d4869c546f0b2ba6` |
| 3 | `def` | [natToInt'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean/declarations/nattoint--b48de3dd99122de90c8f7a4a.md) | 35 | `declaration-track:b48de3dd99122de90c8f7a4a1e0af40570a9ba4aa8db4d33d378f27d97eb9396` |
| 4 | `def` | [natToInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean/declarations/nattoint--c36fc8f18cba85587d14fd78.md) | 98 | `declaration-track:c36fc8f18cba85587d14fd789aba5da15e58b06d3bf9f3f4e6e3e51db5d06fd1` |
| 5 | `def` | [assertNatCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean/declarations/assertnatcast--fedbfc7eca490e9f91b738ef.md) | 107 | `declaration-track:fedbfc7eca490e9f91b738ef82f610263d800d80699bd2b97ed435a9b6a1e5a8` |
| 6 | `def` | [isNatTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean/declarations/isnatterm--dcb53ea2c4ce9f66250b7c1c.md) | 118 | `declaration-track:dcb53ea2c4ce9f66250b7c1cb7544eb3e8203e4a996661b190dd8e6ee7e50251` |
| 7 | `def` | [isNonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean/declarations/isnonneg--9b746b4998bcf2df5a0a3376.md) | 125 | `declaration-track:9b746b4998bcf2df5a0a3376bf61349d08081defd1853e4770a038a4786fba60` |
| 8 | `def` | [mkNonnegThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean/declarations/mknonnegthm--bebdc0b19c39ebed8f8d6961.md) | 141 | `declaration-track:bebdc0b19c39ebed8f8d6961044ff5009cd795205a04a4fec73f47781ed8985f` |
| 9 | `def` | [assertNonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean/declarations/assertnonneg--babb0ab9daaf9986e46adb7e.md) | 158 | `declaration-track:babb0ab9daaf9986e46adb7e7c0e9ba36fe619124efa359d8e6616ff16d00534` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
