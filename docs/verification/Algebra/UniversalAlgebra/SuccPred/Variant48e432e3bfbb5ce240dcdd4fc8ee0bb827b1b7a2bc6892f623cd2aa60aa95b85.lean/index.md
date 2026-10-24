# Verification target: GRWTSK.Algebra.UniversalAlgebra.SuccPred.Variant48e432e3bfbb5ce240dcdd4fc8ee0bb827b1b7a2bc6892f623cd2aa60aa95b85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42c222b3a2849bb78f3eaa53bf22dbcebfd83042",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/SuccPred/Variant48e432e3bfbb5ce240dcdd4fc8ee0bb827b1b7a2bc6892f623cd2aa60aa95b85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant48e432e3bfbb5ce240dcdd4fc8ee0bb827b1b7a2bc6892f623cd2aa60aa95b85.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant48e432e3bfbb5ce240dcdd4fc8ee0bb827b1b7a2bc6892f623cd2aa60aa95b85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42c222b3a2849bb78f3eaa53bf22dbcebfd83042`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/SuccPred/Variant48e432e3bfbb5ce240dcdd4fc8ee0bb827b1b7a2bc6892f623cd2aa60aa95b85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/SuccPred/Variant48e432e3bfbb5ce240dcdd4fc8ee0bb827b1b7a2bc6892f623cd2aa60aa95b85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Int` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [instSuccOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant48e432e3bfbb5ce240dcdd4fc8ee0bb827b1b7a2bc6892f623cd2aa60aa95b85.lean/declarations/instsuccorder--f72f6595338960a9c1e89107.md) | 29 | `declaration-track:f72f6595338960a9c1e89107d18721d3181f830582803c6e7b03c6ecb29291b6` |
| 2 | `instance` | [instSuccAddOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant48e432e3bfbb5ce240dcdd4fc8ee0bb827b1b7a2bc6892f623cd2aa60aa95b85.lean/declarations/instsuccaddorder--410d392397deaeb2146d9d44.md) | 32 | `declaration-track:410d392397deaeb2146d9d44d8587b88c2f6de813f4e05063435ef2010f2f193` |
| 3 | `abbrev` | [instPredOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant48e432e3bfbb5ce240dcdd4fc8ee0bb827b1b7a2bc6892f623cd2aa60aa95b85.lean/declarations/instpredorder--0046e8ae1fb30de6d814536a.md) | 35 | `declaration-track:0046e8ae1fb30de6d814536a1eccec5c590146cd2afde6fc77898665f6fbfa2e` |
| 4 | `instance` | [instPredSubOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant48e432e3bfbb5ce240dcdd4fc8ee0bb827b1b7a2bc6892f623cd2aa60aa95b85.lean/declarations/instpredsuborder--18322f2223eeb749d2d7788f.md) | 41 | `declaration-track:18322f2223eeb749d2d7788f2387147f31049043ac19b95614fd93f0732d984d` |
| 5 | `theorem` | [succ_eq_succ](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant48e432e3bfbb5ce240dcdd4fc8ee0bb827b1b7a2bc6892f623cd2aa60aa95b85.lean/declarations/succ-eq-succ--e07253d3c76a07fb6fb6d25a.md) | 44 | `result-track:e07253d3c76a07fb6fb6d25a0bbc911bae448cdea39cccdc7c6e30b0a1841a12` |
| 6 | `theorem` | [pred_eq_pred](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant48e432e3bfbb5ce240dcdd4fc8ee0bb827b1b7a2bc6892f623cd2aa60aa95b85.lean/declarations/pred-eq-pred--21e79688806b05a2e3aa1545.md) | 48 | `result-track:21e79688806b05a2e3aa15455e625a35eca157793d3479096e9bbffb1ae47029` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant48e432e3bfbb5ce240dcdd4fc8ee0bb827b1b7a2bc6892f623cd2aa60aa95b85.lean/declarations/instance--3dc74a2a3ea76ca8c9a3a41c.md) | 51 | `declaration-track:3dc74a2a3ea76ca8c9a3a41c0ad6ede58ed59e39aeae4c9fcbf59e4b142ea537` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant48e432e3bfbb5ce240dcdd4fc8ee0bb827b1b7a2bc6892f623cd2aa60aa95b85.lean/declarations/instance--adce16436e556e58daecbf61.md) | 55 | `declaration-track:adce16436e556e58daecbf615d40e29e06e6ee83446207ce0faea0caf277cac0` |
| 9 | `theorem` | [natCast_covBy](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant48e432e3bfbb5ce240dcdd4fc8ee0bb827b1b7a2bc6892f623cd2aa60aa95b85.lean/declarations/natcast-covby--88dc4fef770f1235a204e9d3.md) | 63 | `result-track:88dc4fef770f1235a204e9d36544acc3d237e30786f0d8a328eff347e8cf0a00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
