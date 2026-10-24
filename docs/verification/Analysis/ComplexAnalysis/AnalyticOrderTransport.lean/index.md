# Verification target: GRWTSK.Analysis.Complex.AnalyticOrderTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f3a6021d8dc31586aa518993d18aa80da417e89",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/AnalyticOrderTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticOrderTransport.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticOrderTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f3a6021d8dc31586aa518993d18aa80da417e89`.

Source path: `GRWTSK/Analysis/Complex/AnalyticOrderTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/AnalyticOrderTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Order` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iteratedDeriv_conjugate_pullback](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticOrderTransport.lean/declarations/iteratedderiv-conjugate-pullback--246ed2667c80240430b29a7f.md) | 29 | `result-track:246ed2667c80240430b29a7f5c297990776c439503f6ae8c37305c80b4e409fe` |
| 2 | `theorem` | [order_conjugate_of_equivariant](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticOrderTransport.lean/declarations/order-conjugate-of-equivariant--b2de751d92c34c5feda0986d.md) | 38 | `result-track:b2de751d92c34c5feda0986d3731d06390ba12de7aed7233aedbe245d3fce92d` |
| 3 | `theorem` | [order_one_sub](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticOrderTransport.lean/declarations/order-one-sub--91da374e3d048c93dabfbaac.md) | 63 | `result-track:91da374e3d048c93dabfbaace8f5e58f0e092ba243707051df8f7b44f3c7dd74` |
| 4 | `theorem` | [order_mul_nonzero_right](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticOrderTransport.lean/declarations/order-mul-nonzero-right--7e5915b3219bc4be3d1b70b1.md) | 74 | `result-track:7e5915b3219bc4be3d1b70b1f19a0e0271a210bb692f34dce60adc10d503248e` |
| 5 | `theorem` | [nonzero_multiplier_fixture](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticOrderTransport.lean/declarations/nonzero-multiplier-fixture--d5a846dfd784696e50c851cd.md) | 80 | `result-track:d5a846dfd784696e50c851cdd8f40a288d222178c02359e648637d81f67719ae` |
| 6 | `theorem` | [vanishing_multiplier_fixture](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticOrderTransport.lean/declarations/vanishing-multiplier-fixture--b4ae29aa2ebea33b71d59883.md) | 88 | `result-track:b4ae29aa2ebea33b71d598838cd90056c8de26f56968324a684a8f14a005cb68` |
| 7 | `theorem` | [ramified_coordinate_fixture](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticOrderTransport.lean/declarations/ramified-coordinate-fixture--e31a9ebc53a441c71f9cfbb9.md) | 97 | `result-track:e31a9ebc53a441c71f9cfbb90898f1273603bf46b295f9b65bf17a66bb4a07d0` |
| 8 | `theorem` | [same_zero_set_unequal_orders_fixture](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticOrderTransport.lean/declarations/same-zero-set-unequal-orders-fixture--c6c21a857f72cd3a2135e50c.md) | 104 | `result-track:c6c21a857f72cd3a2135e50ce1d1d9032e411e034888857a0f8cb5fbf994cd2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
