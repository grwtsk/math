# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SolveByElim.Variant5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bab28c930e9ccf8dd381bfedf0bc684e84a7f640",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bab28c930e9ccf8dd381bfedf0bc684e84a7f640`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.PermuteGoals` — import line 6; external provider; requires a separately pinned dependency.
- `BatteriesTest.Internal.DummyLabelAttr` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Constructor` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Elab.SyntheticMVars` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.SolveByElim` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13.lean/declarations/elab--6955cb2127f494e724499299.md) | 20 | `declaration-track:6955cb2127f494e72449929906c81f66576b7ddb8e3d3fdbd28e312c091fea10` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13.lean/declarations/example--cec108d13c3c8daee22bc172.md) | 27 | `declaration-track:cec108d13c3c8daee22bc172a4ce9bef688420871f5397dcde2d2b64f802dc06` |
| 3 | `axiom` | [foo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13.lean/declarations/foo--922f993b4551948b7cb09adc.md) | 36 | `declaration-track:922f993b4551948b7cb09adc1ebdb1e171a48f38cbe0e953a73ad9f87fcbc9cc` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13.lean/declarations/example--75d0be5b7c25bcfb01045996.md) | 38 | `declaration-track:75d0be5b7c25bcfb01045996d26eeb7565005e8fcfcbe8977ac5fc86ec5e5125` |
| 5 | `axiom` | [mySorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13.lean/declarations/mysorry--42cc966d7b40392f4b57b6df.md) | 47 | `declaration-track:42cc966d7b40392f4b57b6df6d6ded735c25265cbbb10bfb78d94af1acb3cb73` |
| 6 | `theorem` | [le_rfl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13.lean/declarations/le-rfl--160efd65d522b15ff983f266.md) | 49 | `result-track:160efd65d522b15ff983f266878e4cbdb705f3cda525c82521f670ddc558ffa0` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13.lean/declarations/example--82f29ad5e9341bf4e5fd5ae5.md) | 51 | `declaration-track:82f29ad5e9341bf4e5fd5ae5fa01d92b186bc550b7c5ac4e98a77f9e7a0cf739` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13.lean/declarations/example--b3f917f69cf3fe0cb351b2b2.md) | 56 | `declaration-track:b3f917f69cf3fe0cb351b2b21d920285d15226c58dab48de45d6e3569998fecd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
