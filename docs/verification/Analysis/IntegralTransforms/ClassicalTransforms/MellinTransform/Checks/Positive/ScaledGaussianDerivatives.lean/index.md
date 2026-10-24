# Verification target: GRWTSK.Analysis.MellinTransform.Checks.Positive.ScaledGaussianDerivatives

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69f0397481c0f6014ffe7beb61b74277b1b3e198",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/Checks/Positive/ScaledGaussianDerivatives.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/ScaledGaussianDerivatives.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/ScaledGaussianDerivatives.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69f0397481c0f6014ffe7beb61b74277b1b3e198`.

Source path: `GRWTSK/Analysis/MellinTransform/Checks/Positive/ScaledGaussianDerivatives.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/Checks/Positive/ScaledGaussianDerivatives.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.ScaledGaussianDerivatives`](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ScaledGaussianDerivatives.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [scaledGaussian_generic](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/ScaledGaussianDerivatives.lean/declarations/scaledgaussian-generic--a060b70f94aff5068fd7d2aa.md) | 10 | `result-track:a060b70f94aff5068fd7d2aa67261803a7ac2c7ef52c9169209917e66f065117` |
| 2 | `theorem` | [scaledGaussian_first_derivative](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/ScaledGaussianDerivatives.lean/declarations/scaledgaussian-first-derivative--bad204292a3572f5276f0ff0.md) | 15 | `result-track:bad204292a3572f5276f0ff0e38efae54f1466bce0623e9cf3fb2273b34f36b8` |
| 3 | `theorem` | [gaussianMellinProfile_zero_eq_coefficient](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/ScaledGaussianDerivatives.lean/declarations/gaussianmellinprofile-zero-eq-coefficient--435c3f3c3f971228eb9f0b93.md) | 23 | `result-track:435c3f3c3f971228eb9f0b9303cbf9ea22bfe1ef40857ba301b30f9c768a23d7` |
| 4 | `theorem` | [gaussianMellinProfile_zero_ne_zero](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/ScaledGaussianDerivatives.lean/declarations/gaussianmellinprofile-zero-ne-zero--37781bcb516e157222a8e11e.md) | 27 | `result-track:37781bcb516e157222a8e11e88322f81dbd4acfd97e5a22995e469cfe80c5e5d` |
| 5 | `theorem` | [scaledGaussian_zero_no_uniform_bound](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/ScaledGaussianDerivatives.lean/declarations/scaledgaussian-zero-no-uniform-bound--9a58be7580623fa7e10490c8.md) | 36 | `result-track:9a58be7580623fa7e10490c85a68bc3cb47267cde614a8e99216ffa5fded4e55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
