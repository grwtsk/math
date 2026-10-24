# Verification target: GRWTSK.Analysis.ErrorBounds.FiniteSquareBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4d07c567a78a75231a4d1e7595ab41255ca76d7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/FiniteSquareBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/FiniteSquareBudget.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/FiniteSquareBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4d07c567a78a75231a4d1e7595ab41255ca76d7`.

Source path: `GRWTSK/Analysis/ErrorBounds/FiniteSquareBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/FiniteSquareBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_sub_sq_le](../../../../mathematics/Analysis/ErrorBounds/FiniteSquareBudget.lean/declarations/sum-sub-sq-le--166b382912228fb41292132c.md) | 27 | `result-track:166b382912228fb41292132c7022177226149dfe57234c289e7e13af254c21c1` |
| 2 | `theorem` | [sum_sq_le_twice_sub_sq](../../../../mathematics/Analysis/ErrorBounds/FiniteSquareBudget.lean/declarations/sum-sq-le-twice-sub-sq--17ecc52729cea8b56aa6e4cd.md) | 38 | `result-track:17ecc52729cea8b56aa6e4cd765560e428722d3afe7def7238203a3b7312b01d` |
| 3 | `theorem` | [card_mul_sq_le](../../../../mathematics/Analysis/ErrorBounds/FiniteSquareBudget.lean/declarations/card-mul-sq-le--a48944b7d9f591406639318b.md) | 49 | `result-track:a48944b7d9f591406639318bcc6723eccd4a0d58001b914786053c047fffb2da` |
| 4 | `theorem` | [card_mul_sq_le_of_zero](../../../../mathematics/Analysis/ErrorBounds/FiniteSquareBudget.lean/declarations/card-mul-sq-le-of-zero--419ce8dd6bf1940f4a90386a.md) | 67 | `result-track:419ce8dd6bf1940f4a90386ac90ae32b9d44c5c65b8c3d64b247ec08893fe6e6` |
| 5 | `theorem` | [positive_of_complete_budget](../../../../mathematics/Analysis/ErrorBounds/FiniteSquareBudget.lean/declarations/positive-of-complete-budget--504aedd51c84e7ad07396ba0.md) | 84 | `result-track:504aedd51c84e7ad07396ba09e73e8d0c3e09c5e9d570d54a87522d59415b276` |
| 6 | `theorem` | [correction_omission_control](../../../../mathematics/Analysis/ErrorBounds/FiniteSquareBudget.lean/declarations/correction-omission-control--125408dcf3734d4dbd7d2ed4.md) | 93 | `result-track:125408dcf3734d4dbd7d2ed403b23091102a1034f82c0dbacddcf25853b0a7d5` |
| 7 | `theorem` | [zero_margin_control](../../../../mathematics/Analysis/ErrorBounds/FiniteSquareBudget.lean/declarations/zero-margin-control--8c5cc15edaf5ca668bb2e58a.md) | 97 | `result-track:8c5cc15edaf5ca668bb2e58a2767470da7f12f11a81af943fa68f5b698dfacb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
