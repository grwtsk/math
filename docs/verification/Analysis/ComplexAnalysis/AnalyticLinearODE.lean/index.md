# Verification target: GRWTSK.Analysis.ComplexAnalysis.AnalyticLinearODE

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89484c3d20b8a15708f43006312e416535b90d78",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/AnalyticLinearODE.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticLinearODE.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticLinearODE.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89484c3d20b8a15708f43006312e416535b90d78`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/AnalyticLinearODE.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/AnalyticLinearODE.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [no_finite_order_zero](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticLinearODE.lean/declarations/no-finite-order-zero--b9b16ef24c218cbd04919321.md) | 24 | `result-track:b9b16ef24c218cbd0491932131c28b1a7175d02108a9f88cec90ee5e393d229c` |
| 2 | `theorem` | [finite_order_on_connected](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticLinearODE.lean/declarations/finite-order-on-connected--e23f7126e38c45560a2f23da.md) | 57 | `result-track:e23f7126e38c45560a2f23da766f8a3c625ec2d924298ecc43a81548035843cc` |
| 3 | `theorem` | [nonvanishing](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticLinearODE.lean/declarations/nonvanishing--40dc0f98a2ca2c8e0dc93ebf.md) | 68 | `result-track:40dc0f98a2ca2c8e0dc93ebff264986a1b10fd7f0c303f5ef079a803b3c95b12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
