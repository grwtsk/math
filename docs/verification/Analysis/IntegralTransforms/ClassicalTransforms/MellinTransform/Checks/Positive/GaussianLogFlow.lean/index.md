# Verification target: GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianLogFlow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2431677af409be7ef7098a5d00d3da3dd87289ca",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianLogFlow.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogFlow.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogFlow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2431677af409be7ef7098a5d00d3da3dd87289ca`.

Source path: `GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianLogFlow.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/Checks/Positive/GaussianLogFlow.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.GaussianLogFlow`](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogFlow.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_zero_entire](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogFlow.lean/declarations/actual-zero-entire--cf58636b7eeac00372107ad0.md) | 9 | `result-track:cf58636b7eeac00372107ad07520c2d29d2346176691c9db73b373dce6768277` |
| 2 | `theorem` | [positive_profile_identity](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogFlow.lean/declarations/positive-profile-identity--6a5adde00fd0869af868c19b.md) | 12 | `result-track:6a5adde00fd0869af868c19ba0741151bf6746630fb81ffc2eec2d9719344efb` |
| 3 | `theorem` | [actual_one_identity](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogFlow.lean/declarations/actual-one-identity--abc53309b91cef5839d11c1e.md) | 16 | `result-track:abc53309b91cef5839d11c1eab8a7fb19e3a4915b9b813ad49fcb0efebb396f3` |
| 4 | `theorem` | [actual_derivative_bound](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogFlow.lean/declarations/actual-derivative-bound--9eb8b25d1f7df3af5066c77b.md) | 19 | `result-track:9eb8b25d1f7df3af5066c77b89d771db20dd3405c167308d619b759cb45d3ea3` |
| 5 | `lemma` | [coefficient_nonzero](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogFlow.lean/declarations/coefficient-nonzero--43eea1f3851fc4b0384f095b.md) | 24 | `result-track:43eea1f3851fc4b0384f095b7cfdd0c04744720259e80dd298104f88363ef411` |
| 6 | `lemma` | [actual_zero_flow_value](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogFlow.lean/declarations/actual-zero-flow-value--2ee17dc80c5aa5f2203f9f2d.md) | 30 | `result-track:2ee17dc80c5aa5f2203f9f2d3138ad96ed30edabce41eaacd36bc81bd22c34e9` |
| 7 | `lemma` | [actual_zero_profile_value](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogFlow.lean/declarations/actual-zero-profile-value--6b648b899deaa23c85012127.md) | 37 | `result-track:6b648b899deaa23c85012127079d6df9a94666c7690724c314ae95d62969680c` |
| 8 | `theorem` | [actual_zero_identity_false](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogFlow.lean/declarations/actual-zero-identity-false--083528939be6fb331ad48910.md) | 42 | `result-track:083528939be6fb331ad48910c773e53eb92081ee8f743241b8551b317fa956d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
