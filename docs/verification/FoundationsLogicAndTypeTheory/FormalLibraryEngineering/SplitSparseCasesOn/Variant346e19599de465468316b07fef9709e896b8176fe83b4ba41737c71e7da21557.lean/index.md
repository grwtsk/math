# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SplitSparseCasesOn.Variant346e19599de465468316b07fef9709e896b8176fe83b4ba41737c71e7da21557

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0eb18a5c625e4fbad81c7672779590660331e94d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSparseCasesOn/Variant346e19599de465468316b07fef9709e896b8176fe83b4ba41737c71e7da21557.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSparseCasesOn/Variant346e19599de465468316b07fef9709e896b8176fe83b4ba41737c71e7da21557.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSparseCasesOn/Variant346e19599de465468316b07fef9709e896b8176fe83b4ba41737c71e7da21557.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0eb18a5c625e4fbad81c7672779590660331e94d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSparseCasesOn/Variant346e19599de465468316b07fef9709e896b8176fe83b4ba41737c71e7da21557.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSparseCasesOn/Variant346e19599de465468316b07fef9709e896b8176fe83b4ba41737c71e7da21557.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Rewrite` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.SparseCasesOn` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.SparseCasesOnEq` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.HasNotBit` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cases` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Replace` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rewriteGoalUsingEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSparseCasesOn/Variant346e19599de465468316b07fef9709e896b8176fe83b4ba41737c71e7da21557.lean/declarations/rewritegoalusingeq--95d9b5a8f2ea5134a4d4aefd.md) | 19 | `declaration-track:95d9b5a8f2ea5134a4d4aefd928949e47c12f454f2247c6f32aa3adb8a1cd1f8` |
| 2 | `def` | [reduceSparseCasesOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSparseCasesOn/Variant346e19599de465468316b07fef9709e896b8176fe83b4ba41737c71e7da21557.lean/declarations/reducesparsecaseson--2cf781b903e96e527c8d334a.md) | 26 | `declaration-track:2cf781b903e96e527c8d334a178641b78479b912b25455e5b54b58219ceb775f` |
| 3 | `def` | [splitSparseCasesOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSparseCasesOn/Variant346e19599de465468316b07fef9709e896b8176fe83b4ba41737c71e7da21557.lean/declarations/splitsparsecaseson--9eb226eeda16c546b89fe09d.md) | 50 | `declaration-track:9eb226eeda16c546b89fe09d3f942c9f130ea056bc5c2ac9c3e8fdaa70c763fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
