# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SolveByElim.Variantd54a111b888c84eb94f89bc98a75691cd2fe3b0fb6012718db4faf91d1d2b07d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b651f38d4bfbe1f20856ae9de5373536363900bc",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantd54a111b888c84eb94f89bc98a75691cd2fe3b0fb6012718db4faf91d1d2b07d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantd54a111b888c84eb94f89bc98a75691cd2fe3b0fb6012718db4faf91d1d2b07d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantd54a111b888c84eb94f89bc98a75691cd2fe3b0fb6012718db4faf91d1d2b07d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b651f38d4bfbe1f20856ae9de5373536363900bc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantd54a111b888c84eb94f89bc98a75691cd2fe3b0fb6012718db4faf91d1d2b07d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantd54a111b888c84eb94f89bc98a75691cd2fe3b0fb6012718db4faf91d1d2b07d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.PermuteGoals` — import line 11; external provider; requires a separately pinned dependency.
- `BatteriesTest.Internal.DummyLabelAttr` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Constructor` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Elab.SyntheticMVars` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.SolveByElim` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantd54a111b888c84eb94f89bc98a75691cd2fe3b0fb6012718db4faf91d1d2b07d.lean/declarations/elab--40bc47ce02a64919e6839112.md) | 28 | `declaration-track:40bc47ce02a64919e68391121009d51b3286387f930fd4adb84dd69080d000f5` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantd54a111b888c84eb94f89bc98a75691cd2fe3b0fb6012718db4faf91d1d2b07d.lean/declarations/example--d800b9894916bf21c0ff6ed8.md) | 35 | `declaration-track:d800b9894916bf21c0ff6ed8f6faf4cf0ac35b26bbac1852de75d5a483143b22` |
| 3 | `axiom` | [foo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantd54a111b888c84eb94f89bc98a75691cd2fe3b0fb6012718db4faf91d1d2b07d.lean/declarations/foo--cb25b98d1576af3893749132.md) | 44 | `declaration-track:cb25b98d1576af38937491322ebd882363cd7fd09e7512738429d12bac60f2a7` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantd54a111b888c84eb94f89bc98a75691cd2fe3b0fb6012718db4faf91d1d2b07d.lean/declarations/example--5374526ae4ba81d3d12f59fe.md) | 46 | `declaration-track:5374526ae4ba81d3d12f59fee544bf02247ccabfd8d6b0192479bd6763b4f956` |
| 5 | `axiom` | [mySorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantd54a111b888c84eb94f89bc98a75691cd2fe3b0fb6012718db4faf91d1d2b07d.lean/declarations/mysorry--f59c6d8b650c2089f660c6b9.md) | 55 | `declaration-track:f59c6d8b650c2089f660c6b90372bac7ccbd74f722cb63ed88ce4398e9269da2` |
| 6 | `theorem` | [le_rfl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantd54a111b888c84eb94f89bc98a75691cd2fe3b0fb6012718db4faf91d1d2b07d.lean/declarations/le-rfl--0c84b50dc0514c7a9ad379d8.md) | 57 | `result-track:0c84b50dc0514c7a9ad379d8098083f638306bf536d19cff205d5b46dc891c48` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantd54a111b888c84eb94f89bc98a75691cd2fe3b0fb6012718db4faf91d1d2b07d.lean/declarations/example--ca9009ebd7377b5a10c3f082.md) | 59 | `declaration-track:ca9009ebd7377b5a10c3f082ff17b5dc2bef5ceb71ba33a55a6ce054540a0cb2` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantd54a111b888c84eb94f89bc98a75691cd2fe3b0fb6012718db4faf91d1d2b07d.lean/declarations/example--b20d8d103741581eeabf12eb.md) | 64 | `declaration-track:b20d8d103741581eeabf12eb16fe5fe30dc9c07fe5f75fe5f3195d62ca5217e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
