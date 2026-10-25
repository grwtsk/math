# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variantfa3b035138c88a7601ac39ff78fa7cc9830118991a07ab5f1c8f1b99d7f931b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4eabad88f2e87837cc72654323320bf9bc3e1081",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variantfa3b035138c88a7601ac39ff78fa7cc9830118991a07ab5f1c8f1b99d7f931b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variantfa3b035138c88a7601ac39ff78fa7cc9830118991a07ab5f1c8f1b99d7f931b3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variantfa3b035138c88a7601ac39ff78fa7cc9830118991a07ab5f1c8f1b99d7f931b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4eabad88f2e87837cc72654323320bf9bc3e1081`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variantfa3b035138c88a7601ac39ff78fa7cc9830118991a07ab5f1c8f1b99d7f931b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variantfa3b035138c88a7601ac39ff78fa7cc9830118991a07ab5f1c8f1b99d7f931b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.ElabTerm` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Rfl` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Rfl` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variantfa3b035138c88a7601ac39ff78fa7cc9830118991a07ab5f1c8f1b99d7f931b3.lean/declarations/test-sorry--9bf4ea0ba17bed756e60e6ec.md) | 21 | `declaration-track:9bf4ea0ba17bed756e60e6ecb1428b56eecbea78c6c582b8461cc9c140293ad0` |
| 2 | `def` | [eTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variantfa3b035138c88a7601ac39ff78fa7cc9830118991a07ab5f1c8f1b99d7f931b3.lean/declarations/etrue--22051094c45a128cf0017985.md) | 25 | `declaration-track:22051094c45a128cf001798500fbe218a4956f5628c752f6a3211b2310aa192c` |
| 3 | `def` | [eFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variantfa3b035138c88a7601ac39ff78fa7cc9830118991a07ab5f1c8f1b99d7f931b3.lean/declarations/efalse--3ddfd3e38ed18999471f746f.md) | 26 | `declaration-track:3ddfd3e38ed18999471f746fb826d365f5a20ae732a7fe657675a6d463a2eb45` |
| 4 | `def` | [eNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variantfa3b035138c88a7601ac39ff78fa7cc9830118991a07ab5f1c8f1b99d7f931b3.lean/declarations/enat--b53f057785252b8218065cd6.md) | 27 | `declaration-track:b53f057785252b8218065cd647251d8f4dace4586da712467d448089009ae34a` |
| 5 | `def` | [eNatZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variantfa3b035138c88a7601ac39ff78fa7cc9830118991a07ab5f1c8f1b99d7f931b3.lean/declarations/enatzero--5c4ec7eba657f65e64b1e1b0.md) | 28 | `declaration-track:5c4ec7eba657f65e64b1e1b0827b84d49dae16d271ed5c0899b667585efc63aa` |
| 6 | `def` | [eNatOne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variantfa3b035138c88a7601ac39ff78fa7cc9830118991a07ab5f1c8f1b99d7f931b3.lean/declarations/enatone--35de39819c19f39c1118395e.md) | 29 | `declaration-track:35de39819c19f39c1118395ef6ca80bbcf4a03d6001a5646b033f3366f253a6c` |
| 7 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variantfa3b035138c88a7601ac39ff78fa7cc9830118991a07ab5f1c8f1b99d7f931b3.lean/declarations/elab--98a95ed5e07388d2130e47a5.md) | 63 | `declaration-track:98a95ed5e07388d2130e47a5181f535c452b1b83aa3465e3e57f834797397424` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variantfa3b035138c88a7601ac39ff78fa7cc9830118991a07ab5f1c8f1b99d7f931b3.lean/declarations/example--38b09ace29a2f01432982635.md) | 76 | `declaration-track:38b09ace29a2f014329826351a4379a472ae2d5f9a0e8f6172f54abfb9d8a3cd` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variantfa3b035138c88a7601ac39ff78fa7cc9830118991a07ab5f1c8f1b99d7f931b3.lean/declarations/example--c439e978a25a9404e15d6e07.md) | 82 | `declaration-track:c439e978a25a9404e15d6e072e44ac0cf6ab5ca41bc114faf6f8b6374f40b12a` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variantfa3b035138c88a7601ac39ff78fa7cc9830118991a07ab5f1c8f1b99d7f931b3.lean/declarations/example--b8b7451027f22aaecadf9609.md) | 88 | `declaration-track:b8b7451027f22aaecadf9609deb4662cfc648512229bcde3c4b40b294e073266` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
