# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SolveByElim.Variant2e5b846ba5b7c19c3929a4c3de19d5d46eb0420c6bea85dea14d5d9d03d38808

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6cf61b4d33bc32a8896dce2961adfab5aabe8a3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant2e5b846ba5b7c19c3929a4c3de19d5d46eb0420c6bea85dea14d5d9d03d38808.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant2e5b846ba5b7c19c3929a4c3de19d5d46eb0420c6bea85dea14d5d9d03d38808.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant2e5b846ba5b7c19c3929a4c3de19d5d46eb0420c6bea85dea14d5d9d03d38808.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6cf61b4d33bc32a8896dce2961adfab5aabe8a3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant2e5b846ba5b7c19c3929a4c3de19d5d46eb0420c6bea85dea14d5d9d03d38808.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant2e5b846ba5b7c19c3929a4c3de19d5d46eb0420c6bea85dea14d5d9d03d38808.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.ConfigEval` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parseArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant2e5b846ba5b7c19c3929a4c3de19d5d46eb0420c6bea85dea14d5d9d03d38808.lean/declarations/parseargs--4357951d5378e98eae98a7ce.md) | 55 | `declaration-track:4357951d5378e98eae98a7ce1c9ec9342860f3ee50a73a1b807825f82d167871` |
| 2 | `def` | [parseUsing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant2e5b846ba5b7c19c3929a4c3de19d5d46eb0420c6bea85dea14d5d9d03d38808.lean/declarations/parseusing--d3c2e5589480ef8b73d1db4f.md) | 73 | `declaration-track:d3c2e5589480ef8b73d1db4f442c61d745aaf0f343790178b9955ae6967e597c` |
| 3 | `def` | [processSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant2e5b846ba5b7c19c3929a4c3de19d5d46eb0420c6bea85dea14d5d9d03d38808.lean/declarations/processsyntax--51bf0fcaaaef8e833a9f8dfa.md) | 82 | `declaration-track:51bf0fcaaaef8e833a9f8dfa71f157a90cbe6acd081716a375cf60e08da42c28` |
| 4 | `def` | [evalApplyAssumption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant2e5b846ba5b7c19c3929a4c3de19d5d46eb0420c6bea85dea14d5d9d03d38808.lean/declarations/evalapplyassumption--f11340e7fb048165f7a51dca.md) | 90 | `declaration-track:f11340e7fb048165f7a51dca913aad07859f969e8cb44a3f73c28f97d652f2d6` |
| 5 | `def` | [evalApplyRules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant2e5b846ba5b7c19c3929a4c3de19d5d46eb0420c6bea85dea14d5d9d03d38808.lean/declarations/evalapplyrules--f3a088f60c66249c5ed22a3c.md) | 108 | `declaration-track:f3a088f60c66249c5ed22a3c5ea6d3158e2a2102944a96dfc5b526e70df178a1` |
| 6 | `def` | [evalSolveByElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant2e5b846ba5b7c19c3929a4c3de19d5d46eb0420c6bea85dea14d5d9d03d38808.lean/declarations/evalsolvebyelim--f578eccded0d3af52a9e284f.md) | 119 | `declaration-track:f578eccded0d3af52a9e284fdf58b53d227c4c6109950768322063e909dec331` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
