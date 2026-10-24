# Verification target: GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianWindowSeminorms

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1081c84604e8ee889ec841cd674c012e8a7bb0fe",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianWindowSeminorms.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianWindowSeminorms.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianWindowSeminorms.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1081c84604e8ee889ec841cd674c012e8a7bb0fe`.

Source path: `GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianWindowSeminorms.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/Checks/Positive/GaussianWindowSeminorms.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.GaussianWindowSeminorms`](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianWindowSeminorms.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gaussianWindow_derivative_generic](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianWindowSeminorms.lean/declarations/gaussianwindow-derivative-generic--2ff76bc0f57b42b6918270d4.md) | 13 | `result-track:2ff76bc0f57b42b6918270d4463357bba2040c62994948493a1a0d875a5ab5eb` |
| 2 | `theorem` | [gaussianWindow_two_sided_generic](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianWindowSeminorms.lean/declarations/gaussianwindow-two-sided-generic--bd06fb16375afe8c964a9035.md) | 18 | `result-track:bd06fb16375afe8c964a9035e73b08c2272a01c1867918aea0253ccdc4555aa1` |
| 3 | `theorem` | [gaussianWindow_two_indices](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianWindowSeminorms.lean/declarations/gaussianwindow-two-indices--798dc15d43f7e750c496be97.md) | 24 | `result-track:798dc15d43f7e750c496be973c8df9682c32b27050537fcd064e3d97c39e5bd6` |
| 4 | `theorem` | [annulus_three_quarters_ne_zero](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianWindowSeminorms.lean/declarations/annulus-three-quarters-ne-zero--37bf53679b22754dd57b8b2f.md) | 34 | `result-track:37bf53679b22754dd57b8b2f5b019d371ed962822b44c2657b3d0c9c55e4b7b8` |
| 5 | `theorem` | [gaussianMellinProfile_zero_ne_zero](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianWindowSeminorms.lean/declarations/gaussianmellinprofile-zero-ne-zero--7e78e761f8c33bbb8f3cc97b.md) | 44 | `result-track:7e78e761f8c33bbb8f3cc97b55dc0a610b3aee50f3e2b5eac07abec45a765edc` |
| 6 | `theorem` | [gaussianWindow_zero_scale_value_ne_zero](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianWindowSeminorms.lean/declarations/gaussianwindow-zero-scale-value-ne-zero--b6e3de4907faf3f0f3191739.md) | 53 | `result-track:b6e3de4907faf3f0f3191739ed6eea7868474970d03b93fcd13bd716bf17b732` |
| 7 | `theorem` | [gaussianWindow_zero_scale_counterexample](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianWindowSeminorms.lean/declarations/gaussianwindow-zero-scale-counterexample--17e5488c38c42a5346d67618.md) | 62 | `result-track:17e5488c38c42a5346d6761804da63eef9763a6e3fe10de2f610e7bf9d9ba39f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
