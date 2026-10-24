# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AssumptionBudget.Variant643d52398298a300d943aa4618ed29b8753d1d8ae7403a3f9ac5646876d6f063

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cb442d77224ea639dbc7598a2a5e229a8c49e55",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionBudget/Variant643d52398298a300d943aa4618ed29b8753d1d8ae7403a3f9ac5646876d6f063.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionBudget/Variant643d52398298a300d943aa4618ed29b8753d1d8ae7403a3f9ac5646876d6f063.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionBudget/Variant643d52398298a300d943aa4618ed29b8753d1d8ae7403a3f9ac5646876d6f063.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cb442d77224ea639dbc7598a2a5e229a8c49e55`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionBudget/Variant643d52398298a300d943aa4618ed29b8753d1d8ae7403a3f9ac5646876d6f063.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionBudget/Variant643d52398298a300d943aa4618ed29b8753d1d8ae7403a3f9ac5646876d6f063.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.ProofSafety.Layer` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AssumptionBudgetEntry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionBudget/Variant643d52398298a300d943aa4618ed29b8753d1d8ae7403a3f9ac5646876d6f063.lean/declarations/assumptionbudgetentry--d241b84130327476b8e092e8.md) | 18 | `declaration-track:d241b84130327476b8e092e8a50235aed3d8cf738642b7d35a5ce1d954e39bc6` |
| 2 | `structure` | [AssumptionBudget](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionBudget/Variant643d52398298a300d943aa4618ed29b8753d1d8ae7403a3f9ac5646876d6f063.lean/declarations/assumptionbudget--8736b4d8ea230846bff2ecd9.md) | 31 | `declaration-track:8736b4d8ea230846bff2ecd9333cd39b63c284fedbf1a1daeff4b4bbc5571f00` |
| 3 | `theorem` | [assumption_budget_no_contract_entries](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionBudget/Variant643d52398298a300d943aa4618ed29b8753d1d8ae7403a3f9ac5646876d6f063.lean/declarations/assumption-budget-no-contract-entries--baff131f2945633ef2f7e7f6.md) | 44 | `result-track:baff131f2945633ef2f7e7f6af63453c295a7c9409bbb4eebb7f880527d4db42` |
| 4 | `theorem` | [assumption_budget_no_external_witness_entries](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionBudget/Variant643d52398298a300d943aa4618ed29b8753d1d8ae7403a3f9ac5646876d6f063.lean/declarations/assumption-budget-no-external-witness-entries--ee0b2a0acf996650402667db.md) | 49 | `result-track:ee0b2a0acf996650402667db71c7838320d397f274a96c2c6c16c1585b7e795b` |
| 5 | `theorem` | [assumption_budget_no_if_supplied_accessors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionBudget/Variant643d52398298a300d943aa4618ed29b8753d1d8ae7403a3f9ac5646876d6f063.lean/declarations/assumption-budget-no-if-supplied-accessors--f5ec1a53944209aa0e150f21.md) | 54 | `result-track:f5ec1a53944209aa0e150f21367f7ae3cd8c5f23f92362a25f520ca810822cd9` |
| 6 | `theorem` | [assumption_budget_no_certified_projection_proofs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionBudget/Variant643d52398298a300d943aa4618ed29b8753d1d8ae7403a3f9ac5646876d6f063.lean/declarations/assumption-budget-no-certified-projection-proofs--4e15296787c0859c0c7edc17.md) | 59 | `result-track:4e15296787c0859c0c7edc179feeab4eec5c9b4bfec797f00fea719f87ab1f38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
