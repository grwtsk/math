# Verification target: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variantd1f8cfd09bfa25f1a3aed5718b26eebec098d4b249b6508fd900f4cf018ec786

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f7b6008d0d41bdc738ef1a1309216274168d534",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantd1f8cfd09bfa25f1a3aed5718b26eebec098d4b249b6508fd900f4cf018ec786.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantd1f8cfd09bfa25f1a3aed5718b26eebec098d4b249b6508fd900f4cf018ec786.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantd1f8cfd09bfa25f1a3aed5718b26eebec098d4b249b6508fd900f4cf018ec786.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f7b6008d0d41bdc738ef1a1309216274168d534`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantd1f8cfd09bfa25f1a3aed5718b26eebec098d4b249b6508fd900f4cf018ec786.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithTop/Variantd1f8cfd09bfa25f1a3aed5718b26eebec098d4b249b6508fd900f4cf018ec786.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.WithTop` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [coe_sum](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantd1f8cfd09bfa25f1a3aed5718b26eebec098d4b249b6508fd900f4cf018ec786.lean/declarations/coe-sum--d37bd063344b876767cd9bd0.md) | 31 | `result-track:d37bd063344b876767cd9bd089602e4dd3717d75822578eecbe7ef71792e9475` |
| 2 | `lemma` | [sum_eq_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantd1f8cfd09bfa25f1a3aed5718b26eebec098d4b249b6508fd900f4cf018ec786.lean/declarations/sum-eq-top--5d3c204fafc838d581dabe2c.md) | 35 | `result-track:5d3c204fafc838d581dabe2c6198b7ea20b1afb7f0f53d28fb9eaad3c9953a6c` |
| 3 | `lemma` | [sum_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantd1f8cfd09bfa25f1a3aed5718b26eebec098d4b249b6508fd900f4cf018ec786.lean/declarations/sum-ne-top--648f0ce7a41a6a39c6575524.md) | 39 | `result-track:648f0ce7a41a6a39c6575524599631db350b8a06b6f3241c4597f31ee0dbf96b` |
| 4 | `lemma` | [sum_lt_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantd1f8cfd09bfa25f1a3aed5718b26eebec098d4b249b6508fd900f4cf018ec786.lean/declarations/sum-lt-top--442615a18ee577ce6d96fa90.md) | 44 | `result-track:442615a18ee577ce6d96fa905fe0e44ba63afd42f6884d5b38c0a803a3766058` |
| 5 | `lemma` | [prod_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantd1f8cfd09bfa25f1a3aed5718b26eebec098d4b249b6508fd900f4cf018ec786.lean/declarations/prod-ne-top--104c83e2c3aad9e128f893ca.md) | 54 | `result-track:104c83e2c3aad9e128f893cacdfdf23a48e66f9e2093b677815aee3b4d648d19` |
| 6 | `lemma` | [prod_lt_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantd1f8cfd09bfa25f1a3aed5718b26eebec098d4b249b6508fd900f4cf018ec786.lean/declarations/prod-lt-top--f0b86ec16a3107363ee17fb3.md) | 58 | `result-track:f0b86ec16a3107363ee17fb3bbf6a9796e177dcc78eb2ae7c3d61d2597a1aae5` |
| 7 | `lemma` | [coe_sum](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantd1f8cfd09bfa25f1a3aed5718b26eebec098d4b249b6508fd900f4cf018ec786.lean/declarations/coe-sum--8ef63cf4b8416b048501a92f.md) | 68 | `result-track:8ef63cf4b8416b048501a92fd0e0a833d89af6eb1c0829261cfa0a344d1d56b8` |
| 8 | `lemma` | [sum_eq_bot_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantd1f8cfd09bfa25f1a3aed5718b26eebec098d4b249b6508fd900f4cf018ec786.lean/declarations/sum-eq-bot-iff--5eac85117d3e56316de5042f.md) | 72 | `result-track:5eac85117d3e56316de5042f641afe5db47f37593a7bc759f105bddbd336d279` |
| 9 | `lemma` | [bot_lt_sum_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantd1f8cfd09bfa25f1a3aed5718b26eebec098d4b249b6508fd900f4cf018ec786.lean/declarations/bot-lt-sum-iff--0459a43ddb9bb702e5cc9695.md) | 78 | `result-track:0459a43ddb9bb702e5cc9695a1a2072d39465b9418bff8e0f75e9757f242b4d2` |
| 10 | `lemma` | [sum_lt_bot](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantd1f8cfd09bfa25f1a3aed5718b26eebec098d4b249b6508fd900f4cf018ec786.lean/declarations/sum-lt-bot--b850c3ad03a727b47f6e1574.md) | 82 | `result-track:b850c3ad03a727b47f6e1574fd93fecda996d8b49991913896503768ac960588` |
| 11 | `lemma` | [prod_ne_bot](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantd1f8cfd09bfa25f1a3aed5718b26eebec098d4b249b6508fd900f4cf018ec786.lean/declarations/prod-ne-bot--3ecefedc36a3bacb1134e162.md) | 92 | `result-track:3ecefedc36a3bacb1134e1623aae7a601014377c80e31a5b454f62a30c03f577` |
| 12 | `lemma` | [bot_lt_prod](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantd1f8cfd09bfa25f1a3aed5718b26eebec098d4b249b6508fd900f4cf018ec786.lean/declarations/bot-lt-prod--5098614772b350064fe88b31.md) | 96 | `result-track:5098614772b350064fe88b31e2e7ab8b2f15d3518cb7afd1fefd997253d9ad05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
