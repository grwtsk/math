# Verification target: GRWTSK.Analysis.BranchCandidateBudget.Variant943c5f953b6551498bdd6a88b328d75f73dfd22e486a47d5b8f313b6befb5b13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab9006fd72e905c6250f7367d9745cfcf81c8522",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BranchCandidateBudget/Variant943c5f953b6551498bdd6a88b328d75f73dfd22e486a47d5b8f313b6befb5b13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BranchCandidateBudget/Variant943c5f953b6551498bdd6a88b328d75f73dfd22e486a47d5b8f313b6befb5b13.lean/index.md) · [Full source](../../../../mathematics/Analysis/BranchCandidateBudget/Variant943c5f953b6551498bdd6a88b328d75f73dfd22e486a47d5b8f313b6befb5b13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab9006fd72e905c6250f7367d9745cfcf81c8522`.

Source path: `GRWTSK/Analysis/BranchCandidateBudget/Variant943c5f953b6551498bdd6a88b328d75f73dfd22e486a47d5b8f313b6befb5b13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BranchCandidateBudget/Variant943c5f953b6551498bdd6a88b328d75f73dfd22e486a47d5b8f313b6befb5b13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [candidate_budget_iff](../../../../mathematics/Analysis/BranchCandidateBudget/Variant943c5f953b6551498bdd6a88b328d75f73dfd22e486a47d5b8f313b6befb5b13.lean/declarations/candidate-budget-iff--39f373d66a11b77eb1fd002e.md) | 19 | `result-track:39f373d66a11b77eb1fd002eddc6aa96023606bc52fce320cd1376b33917da22` |
| 2 | `theorem` | [zero_represents_nonnegative_meter](../../../../mathematics/Analysis/BranchCandidateBudget/Variant943c5f953b6551498bdd6a88b328d75f73dfd22e486a47d5b8f313b6befb5b13.lean/declarations/zero-represents-nonnegative-meter--51767da66ecb822dd04d40e3.md) | 27 | `result-track:51767da66ecb822dd04d40e38291ee36c9c10367fb88126fbf36e99aa1050525` |
| 3 | `theorem` | [zero_is_automatically_paid](../../../../mathematics/Analysis/BranchCandidateBudget/Variant943c5f953b6551498bdd6a88b328d75f73dfd22e486a47d5b8f313b6befb5b13.lean/declarations/zero-is-automatically-paid--9149f66eed4335fc60e42e8e.md) | 30 | `result-track:9149f66eed4335fc60e42e8ea0298bc34f64be8e6bf120a9c797e3ab502ea680` |
| 4 | `theorem` | [zero_removed_budget_iff](../../../../mathematics/Analysis/BranchCandidateBudget/Variant943c5f953b6551498bdd6a88b328d75f73dfd22e486a47d5b8f313b6befb5b13.lean/declarations/zero-removed-budget-iff--ea6a80443d83b78b81c5a105.md) | 32 | `result-track:ea6a80443d83b78b81c5a1054b1e4b7de9db0c0d452a5923ec1aaa0f6a505e10` |
| 5 | `theorem` | [positive_part_budget_iff](../../../../mathematics/Analysis/BranchCandidateBudget/Variant943c5f953b6551498bdd6a88b328d75f73dfd22e486a47d5b8f313b6befb5b13.lean/declarations/positive-part-budget-iff--1631bd81dd3916f5dffb7388.md) | 42 | `result-track:1631bd81dd3916f5dffb738820e0c1040e41ce4b78c90dce709f4386de5b7db3` |
| 6 | `theorem` | [represented_meter_needs_no_extra_positive_part](../../../../mathematics/Analysis/BranchCandidateBudget/Variant943c5f953b6551498bdd6a88b328d75f73dfd22e486a47d5b8f313b6befb5b13.lean/declarations/represented-meter-needs-no-extra-positive-part--66545cc7f6962a915dd46ab0.md) | 46 | `result-track:66545cc7f6962a915dd46ab07cdbb27c950323b7382b4187415514f93ef3cc06` |
| 7 | `theorem` | [normalized_candidate_budget_iff](../../../../mathematics/Analysis/BranchCandidateBudget/Variant943c5f953b6551498bdd6a88b328d75f73dfd22e486a47d5b8f313b6befb5b13.lean/declarations/normalized-candidate-budget-iff--55a68efcba21194611fbcdd1.md) | 50 | `result-track:55a68efcba21194611fbcdd1f83fec41fd1058066f9ef32a8e40ebd02c232708` |
| 8 | `theorem` | [combine_return_allowances](../../../../mathematics/Analysis/BranchCandidateBudget/Variant943c5f953b6551498bdd6a88b328d75f73dfd22e486a47d5b8f313b6befb5b13.lean/declarations/combine-return-allowances--eadd9e0f3b325a6f71d74984.md) | 56 | `result-track:eadd9e0f3b325a6f71d74984c7fa427ca4bc356a4fd1f10e3e53447e130fa42b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
