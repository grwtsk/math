# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SignedPrefixTransfer.Variantd100095fa2aa41ce809e65c9158ca5886cf3601ff1ebd448fdb4b6d329702bed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab5072569772938ecc6be621fa97ded61c260124",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variantd100095fa2aa41ce809e65c9158ca5886cf3601ff1ebd448fdb4b6d329702bed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variantd100095fa2aa41ce809e65c9158ca5886cf3601ff1ebd448fdb4b6d329702bed.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variantd100095fa2aa41ce809e65c9158ca5886cf3601ff1ebd448fdb4b6d329702bed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab5072569772938ecc6be621fa97ded61c260124`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variantd100095fa2aa41ce809e65c9158ca5886cf3601ff1ebd448fdb4b6d329702bed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variantd100095fa2aa41ce809e65c9158ca5886cf3601ff1ebd448fdb4b6d329702bed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulativeSum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variantd100095fa2aa41ce809e65c9158ca5886cf3601ff1ebd448fdb4b6d329702bed.lean/declarations/cumulativesum--971564a98f34e5bea07e97bb.md) | 28 | `declaration-track:971564a98f34e5bea07e97bbdd8a89fac694fe6a2cdaba8cf04411192dc087f0` |
| 2 | `theorem` | [signed_sum_by_parts](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variantd100095fa2aa41ce809e65c9158ca5886cf3601ff1ebd448fdb4b6d329702bed.lean/declarations/signed-sum-by-parts--9c1fd4cb22501682e9b36934.md) | 33 | `result-track:9c1fd4cb22501682e9b369348515e564b7fc329aff69bf921f0dcf0940a07716` |
| 3 | `theorem` | [abs_weighted_sum_le_prefix_variation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variantd100095fa2aa41ce809e65c9158ca5886cf3601ff1ebd448fdb4b6d329702bed.lean/declarations/abs-weighted-sum-le-prefix-variation--f6bd4cb2c93d5de7608d136d.md) | 46 | `result-track:f6bd4cb2c93d5de7608d136dab6e431ffd3491748a3c34f9860b68b98aa7143b` |
| 4 | `theorem` | [weighted_actual_le_model_add_budget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variantd100095fa2aa41ce809e65c9158ca5886cf3601ff1ebd448fdb4b6d329702bed.lean/declarations/weighted-actual-le-model-add-budget--838e5c031121093017991d37.md) | 64 | `result-track:838e5c031121093017991d37a5a77170354f011317c861b76ad211f47bc3068c` |
| 5 | `theorem` | [closed_sum_eq_neg_cumulative_integral](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedPrefixTransfer/Variantd100095fa2aa41ce809e65c9158ca5886cf3601ff1ebd448fdb4b6d329702bed.lean/declarations/closed-sum-eq-neg-cumulative-integral--b6585e969761d6d2dd7ad529.md) | 81 | `result-track:b6585e969761d6d2dd7ad5293d55ab8c7334d2e8a3d6e5601ac8b57b205aefa5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
