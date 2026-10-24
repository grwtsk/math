# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant7dbc86d1c17e394f2ed86b5c6be8cc6096c39a41808b9e37a127cb7aa0f3ca7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c92bec63378c2e900489ef5f1373a8af2b427b3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7dbc86d1c17e394f2ed86b5c6be8cc6096c39a41808b9e37a127cb7aa0f3ca7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7dbc86d1c17e394f2ed86b5c6be8cc6096c39a41808b9e37a127cb7aa0f3ca7e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7dbc86d1c17e394f2ed86b5c6be8cc6096c39a41808b9e37a127cb7aa0f3ca7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c92bec63378c2e900489ef5f1373a8af2b427b3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7dbc86d1c17e394f2ed86b5c6be8cc6096c39a41808b9e37a127cb7aa0f3ca7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7dbc86d1c17e394f2ed86b5c6be8cc6096c39a41808b9e37a127cb7aa0f3ca7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Rat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_list_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7dbc86d1c17e394f2ed86b5c6be8cc6096c39a41808b9e37a127cb7aa0f3ca7e.lean/declarations/coe-list-sum--24b4228279f994e4c96b2161.md) | 26 | `result-track:24b4228279f994e4c96b2161f95538d92cf32679268f897c0d76811f3bd07a1d` |
| 2 | `theorem` | [coe_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7dbc86d1c17e394f2ed86b5c6be8cc6096c39a41808b9e37a127cb7aa0f3ca7e.lean/declarations/coe-list-prod--1191846b566616416b43ec5d.md) | 30 | `result-track:1191846b566616416b43ec5dfec526141a48f72fabf8c0971bc4966af4ee145b` |
| 3 | `theorem` | [coe_multiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7dbc86d1c17e394f2ed86b5c6be8cc6096c39a41808b9e37a127cb7aa0f3ca7e.lean/declarations/coe-multiset-sum--f1d9670615faf661898a8e5f.md) | 34 | `result-track:f1d9670615faf661898a8e5f9561ac6858bff3a79f36be699e0980727f855a3e` |
| 4 | `theorem` | [coe_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7dbc86d1c17e394f2ed86b5c6be8cc6096c39a41808b9e37a127cb7aa0f3ca7e.lean/declarations/coe-multiset-prod--893ccc72f8c78dd9bce06d64.md) | 38 | `result-track:893ccc72f8c78dd9bce06d64915ebead0ebbf37d18eb499fb4c86ba072d6198a` |
| 5 | `theorem` | [coe_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7dbc86d1c17e394f2ed86b5c6be8cc6096c39a41808b9e37a127cb7aa0f3ca7e.lean/declarations/coe-sum--df64eba7478014379d536717.md) | 42 | `result-track:df64eba7478014379d53671761b643daf5623b56f0101aa770976a706647a5fc` |
| 6 | `theorem` | [toNNRat_sum_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7dbc86d1c17e394f2ed86b5c6be8cc6096c39a41808b9e37a127cb7aa0f3ca7e.lean/declarations/tonnrat-sum-of-nonneg--be085a73ab2b76d0ea4fc44c.md) | 45 | `result-track:be085a73ab2b76d0ea4fc44c9bc41ec0e90a7c48d5558125eed47a8c718f7c99` |
| 7 | `theorem` | [coe_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7dbc86d1c17e394f2ed86b5c6be8cc6096c39a41808b9e37a127cb7aa0f3ca7e.lean/declarations/coe-prod--79d7950cabd3cc21291dcb69.md) | 51 | `result-track:79d7950cabd3cc21291dcb69cc28cb0f548d6cf3449e685e5d6811cf06228148` |
| 8 | `theorem` | [toNNRat_prod_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7dbc86d1c17e394f2ed86b5c6be8cc6096c39a41808b9e37a127cb7aa0f3ca7e.lean/declarations/tonnrat-prod-of-nonneg--87c391ae5e63e4f43547f951.md) | 54 | `result-track:87c391ae5e63e4f43547f95135b5c8e1349aaf21bc72cfa6d1df7829e489c065` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
