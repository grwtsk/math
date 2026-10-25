# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.FiniteBooleanCNF.Variant9cbcf4e6d3c10e19.TruthTableAndUniqueInputs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66edecbc6c9e2b786a280e22bbe2cb628c2a77fb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/TruthTableAndUniqueInputs.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/TruthTableAndUniqueInputs.lean/index.md) · [Full source](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/TruthTableAndUniqueInputs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66edecbc6c9e2b786a280e22bbe2cb628c2a77fb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/TruthTableAndUniqueInputs.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/TruthTableAndUniqueInputs.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Pi` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 21; external provider; requires a separately pinned dependency.
- [`GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ComplexityTheory.Reductions.FiniteCircuitCNFReduction.Variant9cbcf4e6d3c10e19.SuppliedImplementationReduction`](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/SuppliedImplementationReduction.lean/index.md) — import line 23; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blockingClause](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/TruthTableAndUniqueInputs.lean/declarations/blockingclause--4cd4fa9d2101375d3080c8d6.md) | 58 | `declaration-track:4cd4fa9d2101375d3080c8d619f729ffa3f033163f38258f42c9a947dc81ebdc` |
| 2 | `theorem` | [blockingClause_correct](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/TruthTableAndUniqueInputs.lean/declarations/blockingclause-correct--e5e732efc3aa01fb467d7dc4.md) | 62 | `result-track:e5e732efc3aa01fb467d7dc42068efe19f17b93bdfe933a84c7d4cc58847d98e` |
| 3 | `def` | [truthTableCNF](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/TruthTableAndUniqueInputs.lean/declarations/truthtablecnf--702042e94504baa596171c49.md) | 93 | `declaration-track:702042e94504baa596171c49aa78bd1ca260a75e16d7fbec0b8f379d3c911204` |
| 4 | `theorem` | [truthTableCNF_correct](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/TruthTableAndUniqueInputs.lean/declarations/truthtablecnf-correct--7d77fdd8fdd41a963376b07c.md) | 103 | `result-track:7d77fdd8fdd41a963376b07c5e2a9d263288de6ae533e007e2d0f82496bd5ab6` |
| 5 | `theorem` | [every_fixed_width_function_reduces_to_sat](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/TruthTableAndUniqueInputs.lean/declarations/every-fixed-width-function-reduces-to-sat--dbcc972b9b7b9848e9352067.md) | 152 | `result-track:dbcc972b9b7b9848e9352067129c5276df0801a4707939f827ede5828a6895f4` |
| 6 | `theorem` | [bijective_has_unique_preimage](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/TruthTableAndUniqueInputs.lean/declarations/bijective-has-unique-preimage--69cb59e5438514850d890a0e.md) | 171 | `result-track:69cb59e5438514850d890a0ed3bb303ebc4166afc5136ddd8a8626e7d0aea7e8` |
| 7 | `theorem` | [bijective_circuit_has_unique_sat_input](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/TruthTableAndUniqueInputs.lean/declarations/bijective-circuit-has-unique-sat-input--d7a6a53f31bd476579b20630.md) | 186 | `result-track:d7a6a53f31bd476579b206308deb4ebc78e74a56965af39847a63736bc3dc846` |
| 8 | `theorem` | [bijective_truthTable_has_unique_sat_input](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/TruthTableAndUniqueInputs.lean/declarations/bijective-truthtable-has-unique-sat-input--c7a58609097a6509e346118d.md) | 205 | `result-track:c7a58609097a6509e346118da75b058459ad88a66e2b88dc4b6127c0b52ee0ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
