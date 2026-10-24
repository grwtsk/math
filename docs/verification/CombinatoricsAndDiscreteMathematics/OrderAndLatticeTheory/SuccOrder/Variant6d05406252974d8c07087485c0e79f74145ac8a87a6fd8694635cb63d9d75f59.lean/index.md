# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SuccOrder.Variant6d05406252974d8c07087485c0e79f74145ac8a87a6fd8694635cb63d9d75f59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27b94a43ab07e86fdaeea8fa13cfe677a674db92",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccOrder/Variant6d05406252974d8c07087485c0e79f74145ac8a87a6fd8694635cb63d9d75f59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccOrder/Variant6d05406252974d8c07087485c0e79f74145ac8a87a6fd8694635cb63d9d75f59.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccOrder/Variant6d05406252974d8c07087485c0e79f74145ac8a87a6fd8694635cb63d9d75f59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27b94a43ab07e86fdaeea8fa13cfe677a674db92`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccOrder/Variant6d05406252974d8c07087485c0e79f74145ac8a87a6fd8694635cb63d9d75f59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccOrder/Variant6d05406252974d8c07087485c0e79f74145ac8a87a6fd8694635cb63d9d75f59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.LatticeIntervals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Iic.coe_succ_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccOrder/Variant6d05406252974d8c07087485c0e79f74145ac8a87a6fd8694635cb63d9d75f59.lean/declarations/iic-coe-succ-of-not-ismax--fe18e4a06e8bda33b3fb89ef.md) | 30 | `result-track:fe18e4a06e8bda33b3fb89efd62773b4205c6e47e0287d5a5584088aca8df375` |
| 2 | `lemma` | [Iic.succ_eq_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccOrder/Variant6d05406252974d8c07087485c0e79f74145ac8a87a6fd8694635cb63d9d75f59.lean/declarations/iic-succ-eq-of-not-ismax--3da7a2ff1b8f8171f48f608e.md) | 37 | `result-track:3da7a2ff1b8f8171f48f608e1972c60c43f8c3865520b60eda1bb7c8d7c6da13` |
| 3 | `lemma` | [Ici.coe_pred_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccOrder/Variant6d05406252974d8c07087485c0e79f74145ac8a87a6fd8694635cb63d9d75f59.lean/declarations/ici-coe-pred-of-not-ismin--a3dc089ebe8d2fd5f3ebcb22.md) | 45 | `result-track:a3dc089ebe8d2fd5f3ebcb22b025dc7e4502d07e88e64e4485cad1d3ac68f5aa` |
| 4 | `lemma` | [Ici.pred_eq_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccOrder/Variant6d05406252974d8c07087485c0e79f74145ac8a87a6fd8694635cb63d9d75f59.lean/declarations/ici-pred-eq-of-not-ismin--950315cf1083a04c7f501182.md) | 52 | `result-track:950315cf1083a04c7f501182cd230b3609a0b0f21c953c8c9f5e07bab8fb6ba2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
