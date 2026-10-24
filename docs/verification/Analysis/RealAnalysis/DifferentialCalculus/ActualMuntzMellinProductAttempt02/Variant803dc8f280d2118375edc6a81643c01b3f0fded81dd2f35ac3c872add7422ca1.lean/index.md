# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualMuntzMellinProductAttempt02.Variant803dc8f280d2118375edc6a81643c01b3f0fded81dd2f35ac3c872add7422ca1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "536c0f7bda7526ad9d7c710cc12427a131165fc6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant803dc8f280d2118375edc6a81643c01b3f0fded81dd2f35ac3c872add7422ca1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant803dc8f280d2118375edc6a81643c01b3f0fded81dd2f35ac3c872add7422ca1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant803dc8f280d2118375edc6a81643c01b3f0fded81dd2f35ac3c872add7422ca1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `536c0f7bda7526ad9d7c710cc12427a131165fc6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant803dc8f280d2118375edc6a81643c01b3f0fded81dd2f35ac3c872add7422ca1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant803dc8f280d2118375edc6a81643c01b3f0fded81dd2f35ac3c872add7422ca1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzDirichlet` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.PathConnected` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [positiveHalfplane_isPreconnected](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant803dc8f280d2118375edc6a81643c01b3f0fded81dd2f35ac3c872add7422ca1.lean/declarations/positivehalfplane-ispreconnected--f1fa55fa441c70be265cdca9.md) | 23 | `result-track:f1fa55fa441c70be265cdca9ba11180b43a4ae180c2dea116b46b8bc4a989e54` |
| 2 | `theorem` | [regularized_left_analytic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant803dc8f280d2118375edc6a81643c01b3f0fded81dd2f35ac3c872add7422ca1.lean/declarations/regularized-left-analytic--f6600c7cf790ebf53538390b.md) | 26 | `result-track:f6600c7cf790ebf53538390bb3f1d9e2af0f0646f0c9f4442e0c5e109082c665` |
| 3 | `theorem` | [regularized_right_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant803dc8f280d2118375edc6a81643c01b3f0fded81dd2f35ac3c872add7422ca1.lean/declarations/regularized-right-differentiable--577a500f83460db509503de1.md) | 33 | `result-track:577a500f83460db509503de1deb2e85945a8a317241dac9621432b0bf541af73` |
| 4 | `theorem` | [regularized_product_in_dirichlet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant803dc8f280d2118375edc6a81643c01b3f0fded81dd2f35ac3c872add7422ca1.lean/declarations/regularized-product-in-dirichlet--aa654a272c39a4d558d2df62.md) | 37 | `result-track:aa654a272c39a4d558d2df623e9390920d81a1eec4c488e0a118902c5d8204f5` |
| 5 | `theorem` | [actual_muntz_mellin_regularized](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant803dc8f280d2118375edc6a81643c01b3f0fded81dd2f35ac3c872add7422ca1.lean/declarations/actual-muntz-mellin-regularized--4f3ef1904d8bc5f2525bddc5.md) | 43 | `result-track:4f3ef1904d8bc5f2525bddc5e31da27daf84784e056ce1b4786cc7fcfe1867ec` |
| 6 | `theorem` | [actual_muntz_mellin_product](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant803dc8f280d2118375edc6a81643c01b3f0fded81dd2f35ac3c872add7422ca1.lean/declarations/actual-muntz-mellin-product--9b52c13b1adc259f65001375.md) | 57 | `result-track:9b52c13b1adc259f65001375ef0a6cbf9dd1c0190d9d817e8664cc58f131ad82` |
| 7 | `theorem` | [actual_muntz_mellin_strip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant803dc8f280d2118375edc6a81643c01b3f0fded81dd2f35ac3c872add7422ca1.lean/declarations/actual-muntz-mellin-strip--dfa77fbe589235ceb998b6b3.md) | 64 | `result-track:dfa77fbe589235ceb998b6b3c85221cc6ddd995e7160bd54cb1b1b4d47fed0cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
