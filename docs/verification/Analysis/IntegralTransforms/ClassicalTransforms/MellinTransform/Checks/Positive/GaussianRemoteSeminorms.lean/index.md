# Verification target: GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianRemoteSeminorms

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f3cf24d22933adf32159dd110e57853d32bbe75",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianRemoteSeminorms.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianRemoteSeminorms.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianRemoteSeminorms.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f3cf24d22933adf32159dd110e57853d32bbe75`.

Source path: `GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianRemoteSeminorms.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/Checks/Positive/GaussianRemoteSeminorms.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.GaussianRemoteSeminorms`](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianRemoteSeminorms.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [weighted_generic](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianRemoteSeminorms.lean/declarations/weighted-generic--74f4e3b832ac1885376db87b.md) | 12 | `result-track:74f4e3b832ac1885376db87bca6152eb4bdc8f32dc455ff42a35685d6eac0cbd` |
| 2 | `theorem` | [remote_generic](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianRemoteSeminorms.lean/declarations/remote-generic--4b99355b482503d3c5ecdad6.md) | 18 | `result-track:4b99355b482503d3c5ecdad65aa7be05d4679b014d02c75c20862c0d12eecec9` |
| 3 | `theorem` | [remote_values_generic](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianRemoteSeminorms.lean/declarations/remote-values-generic--02f99233fda1fab824ef7130.md) | 24 | `result-track:02f99233fda1fab824ef713055a0bf432aae7cdd63c54cf8a5daa1879db3b9ec` |
| 4 | `theorem` | [remote_values_one](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianRemoteSeminorms.lean/declarations/remote-values-one--b8b066befdc2563fb1cbf61c.md) | 30 | `result-track:b8b066befdc2563fb1cbf61c63302bac0d0b8f8607dc4b8ff3a5991bcfad4206` |
| 5 | `theorem` | [gaussian_positive_scale_nonzero](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianRemoteSeminorms.lean/declarations/gaussian-positive-scale-nonzero--c4abe22bb77faf2a88417f3e.md) | 34 | `result-track:c4abe22bb77faf2a88417f3e6e8d8ff77f78819891fa8f8822df5e8c1b3d167c` |
| 6 | `theorem` | [remote_zero_cutoff_eq](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianRemoteSeminorms.lean/declarations/remote-zero-cutoff-eq--98321e60cc6f45eeef8aa813.md) | 57 | `result-track:98321e60cc6f45eeef8aa8133f389db8402cc2fc789182f9fe3bbebfec710ef3` |
| 7 | `theorem` | [remote_zero_cutoff_summable](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianRemoteSeminorms.lean/declarations/remote-zero-cutoff-summable--80becb92a74a1f3d44efdad1.md) | 63 | `result-track:80becb92a74a1f3d44efdad1f529d8ac6c38e14f5fe518b37c3584ebb72a3628` |
| 8 | `theorem` | [remote_zero_cutoff_term_pos](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianRemoteSeminorms.lean/declarations/remote-zero-cutoff-term-pos--f4ceab210928fe7f7c747858.md) | 68 | `result-track:f4ceab210928fe7f7c7478588b457a43e3ea6e38cd0a5bbaaa77856eca37db18` |
| 9 | `theorem` | [remote_zero_cutoff_sum_pos](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianRemoteSeminorms.lean/declarations/remote-zero-cutoff-sum-pos--9ac74ccb433b5303fa16c5c7.md) | 72 | `result-track:9ac74ccb433b5303fa16c5c70d34a553cab2e9003f1cdc1c679e55ac2b34800f` |
| 10 | `theorem` | [remote_zero_cutoff_bound_false](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianRemoteSeminorms.lean/declarations/remote-zero-cutoff-bound-false--86983c4c2cf0f759ade79e22.md) | 76 | `result-track:86983c4c2cf0f759ade79e22c33f1b3a303263f4a64b4bed679953252f0d9f99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
