# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Propose.Variantec4198d21dc814e52df2541a461e8e157acfd713ed79aed846a92844cb826d0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa3af21c1448a7cccfa3c8bac1be020a63862c42",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variantec4198d21dc814e52df2541a461e8e157acfd713ed79aed846a92844cb826d0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variantec4198d21dc814e52df2541a461e8e157acfd713ed79aed846a92844cb826d0f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variantec4198d21dc814e52df2541a461e8e157acfd713ed79aed846a92844cb826d0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa3af21c1448a7cccfa3c8bac1be020a63862c42`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variantec4198d21dc814e52df2541a461e8e157acfd713ed79aed846a92844cb826d0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variantec4198d21dc814e52df2541a461e8e157acfd713ed79aed846a92844cb826d0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Lean.Expr.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.DiscrTree` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Cache` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Core` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SolveByElim` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TryThis` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variantec4198d21dc814e52df2541a461e8e157acfd713ed79aed846a92844cb826d0f.lean/declarations/initialize--01994e0a77423e7fc60bed4f.md) | 51 | `declaration-track:01994e0a77423e7fc60bed4fec8e37192052f669546558825f07f73ea38605ff` |
| 2 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variantec4198d21dc814e52df2541a461e8e157acfd713ed79aed846a92844cb826d0f.lean/declarations/initialize--2561b127cedfa1ab82733dfe.md) | 53 | `declaration-track:2561b127cedfa1ab82733dfe3b51f8f1e59daf50fb176544c799e172d82158df` |
| 3 | `def` | [solveByElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variantec4198d21dc814e52df2541a461e8e157acfd713ed79aed846a92844cb826d0f.lean/declarations/solvebyelim--1f2407dda2a430b4acf49d3e.md) | 65 | `declaration-track:1f2407dda2a430b4acf49d3ecfb83c4a27b609ed7d03cfcbc0a044256b5e7690` |
| 4 | `def` | [propose](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variantec4198d21dc814e52df2541a461e8e157acfd713ed79aed846a92844cb826d0f.lean/declarations/propose--2543276ef4e3911ee138025e.md) | 84 | `declaration-track:2543276ef4e3911ee138025eb11274640b56febbfdaf4221c617ef880de40a88` |
| 5 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variantec4198d21dc814e52df2541a461e8e157acfd713ed79aed846a92844cb826d0f.lean/declarations/syntax--1d81b9e3c211b87115a8071a.md) | 120 | `declaration-track:1d81b9e3c211b87115a8071a292f6fb9391407137fe78805d98fd9077e772b4c` |
| 6 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variantec4198d21dc814e52df2541a461e8e157acfd713ed79aed846a92844cb826d0f.lean/declarations/elab-rules--4dca461888c754e879d0e78a.md) | 123 | `declaration-track:4dca461888c754e879d0e78a0b4dae05f52362c4c924be413f2f8a5d7a240768` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variantec4198d21dc814e52df2541a461e8e157acfd713ed79aed846a92844cb826d0f.lean/declarations/syntax--11b31d25476141eca645a490.md) | 144 | `declaration-track:11b31d25476141eca645a49027e50de37b85bd73691a57276e7f51eb9b2d46da` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variantec4198d21dc814e52df2541a461e8e157acfd713ed79aed846a92844cb826d0f.lean/declarations/syntax--98c9dbacba632e14bcd84511.md) | 145 | `declaration-track:98c9dbacba632e14bcd845113435af845d134ec982f90e6017f230c07f045319` |
| 9 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variantec4198d21dc814e52df2541a461e8e157acfd713ed79aed846a92844cb826d0f.lean/declarations/macro-rules--f8382339596b6f5891c99f78.md) | 146 | `declaration-track:f8382339596b6f5891c99f78fb84868dfbb8f4961a24411b9d7925bbf4b5947d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
