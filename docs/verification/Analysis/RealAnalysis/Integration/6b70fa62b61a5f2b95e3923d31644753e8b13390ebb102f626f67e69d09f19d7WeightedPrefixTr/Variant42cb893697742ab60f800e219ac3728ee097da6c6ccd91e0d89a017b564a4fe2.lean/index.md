# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr.Variant42cb893697742ab60f800e219ac3728ee097da6c6ccd91e0d89a017b564a4fe2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43143f1c991f810fa9245bccd9412246001703cf",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variant42cb893697742ab60f800e219ac3728ee097da6c6ccd91e0d89a017b564a4fe2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variant42cb893697742ab60f800e219ac3728ee097da6c6ccd91e0d89a017b564a4fe2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variant42cb893697742ab60f800e219ac3728ee097da6c6ccd91e0d89a017b564a4fe2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43143f1c991f810fa9245bccd9412246001703cf`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variant42cb893697742ab60f800e219ac3728ee097da6c6ccd91e0d89a017b564a4fe2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variant42cb893697742ab60f800e219ac3728ee097da6c6ccd91e0d89a017b564a4fe2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulativeSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variant42cb893697742ab60f800e219ac3728ee097da6c6ccd91e0d89a017b564a4fe2.lean/declarations/cumulativesum--22d532d677454aa2be5a6b5f.md) | 25 | `declaration-track:22d532d677454aa2be5a6b5ff400517dedeb0cc0ce2b51b7aa057ee52e6a7769` |
| 2 | `theorem` | [signed_sum_by_parts](../../../../../../mathematics/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variant42cb893697742ab60f800e219ac3728ee097da6c6ccd91e0d89a017b564a4fe2.lean/declarations/signed-sum-by-parts--6a23a70d5b5e36ea45f5a43e.md) | 30 | `result-track:6a23a70d5b5e36ea45f5a43e178fed8217eb5685da355310e8929c42a8604d8c` |
| 3 | `theorem` | [abs_weighted_sum_le_prefix_variation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variant42cb893697742ab60f800e219ac3728ee097da6c6ccd91e0d89a017b564a4fe2.lean/declarations/abs-weighted-sum-le-prefix-variation--5f5a9a882d5340d16966718e.md) | 43 | `result-track:5f5a9a882d5340d16966718e0ced2003a5524d9bc22b5254a97f36e0db8a68ba` |
| 4 | `theorem` | [weighted_actual_le_model_add_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variant42cb893697742ab60f800e219ac3728ee097da6c6ccd91e0d89a017b564a4fe2.lean/declarations/weighted-actual-le-model-add-budget--cf9ee06c05d74e1a6c95f9c4.md) | 61 | `result-track:cf9ee06c05d74e1a6c95f9c4c193dbc20f7e70276b427dea468e12cecd40dc78` |
| 5 | `theorem` | [closed_sum_eq_neg_cumulative_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variant42cb893697742ab60f800e219ac3728ee097da6c6ccd91e0d89a017b564a4fe2.lean/declarations/closed-sum-eq-neg-cumulative-integral--b9fd7b355e178561d9334c3a.md) | 78 | `result-track:b9fd7b355e178561d9334c3a0779d0a59f1691ebab19eca9d83c014f902d59de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
