# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualMuntzMellinProductAttempt01.Varianteec08312043e4b7286b0581976b20de10c4879b79cf73f28646cb4857f2b07ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe81ced911b3ef8bba7a83b21ccf1b68df852db7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt01/Varianteec08312043e4b7286b0581976b20de10c4879b79cf73f28646cb4857f2b07ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt01/Varianteec08312043e4b7286b0581976b20de10c4879b79cf73f28646cb4857f2b07ae.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt01/Varianteec08312043e4b7286b0581976b20de10c4879b79cf73f28646cb4857f2b07ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe81ced911b3ef8bba7a83b21ccf1b68df852db7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt01/Varianteec08312043e4b7286b0581976b20de10c4879b79cf73f28646cb4857f2b07ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt01/Varianteec08312043e4b7286b0581976b20de10c4879b79cf73f28646cb4857f2b07ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzDirichlet` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.PathConnected` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [positiveHalfplane_isPreconnected](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt01/Varianteec08312043e4b7286b0581976b20de10c4879b79cf73f28646cb4857f2b07ae.lean/declarations/positivehalfplane-ispreconnected--d602189d1968c574d8bca9fc.md) | 15 | `result-track:d602189d1968c574d8bca9fc8601544f795f07fca59e8606d21dd8864c21fb66` |
| 2 | `theorem` | [regularized_left_analytic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt01/Varianteec08312043e4b7286b0581976b20de10c4879b79cf73f28646cb4857f2b07ae.lean/declarations/regularized-left-analytic--50312dbe2900fd1ee059b8a2.md) | 18 | `result-track:50312dbe2900fd1ee059b8a225bae5a6eba4c0528bfd9140d232b632ab22d2ec` |
| 3 | `theorem` | [regularized_right_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt01/Varianteec08312043e4b7286b0581976b20de10c4879b79cf73f28646cb4857f2b07ae.lean/declarations/regularized-right-differentiable--f10a2e1a5799fcd459d6fd14.md) | 25 | `result-track:f10a2e1a5799fcd459d6fd143d804d9664f359f6a048e7a238d7d6dc20ddc4ee` |
| 4 | `theorem` | [regularized_product_in_dirichlet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt01/Varianteec08312043e4b7286b0581976b20de10c4879b79cf73f28646cb4857f2b07ae.lean/declarations/regularized-product-in-dirichlet--f85239376ecf8b3304cdf111.md) | 29 | `result-track:f85239376ecf8b3304cdf11119147b9c071e86d603b260240b795a4e0938460e` |
| 5 | `theorem` | [actual_muntz_mellin_regularized](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt01/Varianteec08312043e4b7286b0581976b20de10c4879b79cf73f28646cb4857f2b07ae.lean/declarations/actual-muntz-mellin-regularized--f59cafc86fcbd5081ecac405.md) | 35 | `result-track:f59cafc86fcbd5081ecac405eb95c7401a8c7ed51dc67a3e354f0945ee45e62a` |
| 6 | `theorem` | [actual_muntz_mellin_product](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt01/Varianteec08312043e4b7286b0581976b20de10c4879b79cf73f28646cb4857f2b07ae.lean/declarations/actual-muntz-mellin-product--df6c31f93315a6d06740aeca.md) | 49 | `result-track:df6c31f93315a6d06740aeca7197261b87e8ca097cc6fca6ac14808dd4925751` |
| 7 | `theorem` | [actual_muntz_mellin_strip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt01/Varianteec08312043e4b7286b0581976b20de10c4879b79cf73f28646cb4857f2b07ae.lean/declarations/actual-muntz-mellin-strip--64a4b304259744f302b77fd6.md) | 56 | `result-track:64a4b304259744f302b77fd6df787efd0d73ad07afc52101183fe8201d6a4ab6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
