# Verification target: GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianLogWindow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "538779e316563b34c0f6070af3d5afe293d26067",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianLogWindow.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogWindow.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogWindow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `538779e316563b34c0f6070af3d5afe293d26067`.

Source path: `GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianLogWindow.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/Checks/Positive/GaussianLogWindow.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.GaussianLogWindow`](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.CompactGaussianWindow`](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exampleWindow](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogWindow.lean/declarations/examplewindow--724e9b24df093d705a0856b7.md) | 13 | `declaration-track:724e9b24df093d705a0856b771276db926b30e96cf9a63f6f64293f2f4a9b649` |
| 2 | `lemma` | [exampleWindow_compact](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogWindow.lean/declarations/examplewindow-compact--a4cd9dabb0fa7a351110ef7e.md) | 14 | `result-track:a4cd9dabb0fa7a351110ef7e8ba9322edd4f9fb68cf55db3bc9da80db26ffc81` |
| 3 | `theorem` | [actual_gaussian_nonzero](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogWindow.lean/declarations/actual-gaussian-nonzero--60d3dd2b99608edde19f639e.md) | 17 | `result-track:60d3dd2b99608edde19f639e332846c02ab4f2e8696c8fdbb6d571cd54512974` |
| 4 | `lemma` | [exampleWindow_nonzero](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogWindow.lean/declarations/examplewindow-nonzero--789d033f7b15c761a2ee842d.md) | 41 | `result-track:789d033f7b15c761a2ee842de1bfe132dad155b3cd5254fbc6c192f1e90b6355` |
| 5 | `theorem` | [actual_zero_box_false](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogWindow.lean/declarations/actual-zero-box-false--14312e5aff4dd1cdf760b08c.md) | 43 | `result-track:14312e5aff4dd1cdf760b08cd19561f8cf5e9a62063ff1e64287c21727b037ad` |
| 6 | `theorem` | [actual_box_produced](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogWindow.lean/declarations/actual-box-produced--ce3ef5f750efc4592f66fbdb.md) | 48 | `result-track:ce3ef5f750efc4592f66fbdb5352e545c0d98309b037fba01556576da18c7ee6` |
| 7 | `theorem` | [actual_zero_scale_window_compact](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogWindow.lean/declarations/actual-zero-scale-window-compact--0753c508820d65d5d7f80c2c.md) | 51 | `result-track:0753c508820d65d5d7f80c2ca8ffa01608b26d115cd136e768c60f6dd853dc17` |
| 8 | `theorem` | [actual_zero_scale_density_integrable](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogWindow.lean/declarations/actual-zero-scale-density-integrable--ec639eb1ca77caf9575704db.md) | 55 | `result-track:ec639eb1ca77caf9575704dbed94a3643e4962cdbe055b5a697ffc09f326b414` |
| 9 | `theorem` | [actual_positive_profile_integrable](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogWindow.lean/declarations/actual-positive-profile-integrable--e45407142f757c3d725d401d.md) | 59 | `result-track:e45407142f757c3d725d401d1917348ce9de674a80f8571151c922ed113bf348` |
| 10 | `theorem` | [actual_density_integral](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogWindow.lean/declarations/actual-density-integral--c775ebecb6c7dec8f3d88799.md) | 63 | `result-track:c775ebecb6c7dec8f3d887993ea22bab4fb6c5964763220686e232cf1df1819a` |
| 11 | `theorem` | [actual_moment_bound](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogWindow.lean/declarations/actual-moment-bound--3efb75d0a8229afa6fedeb6a.md) | 68 | `result-track:3efb75d0a8229afa6fedeb6a690bc2c85cde28337266e4860dbe441fd716f81d` |
| 12 | `theorem` | [all_real_power_moment](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogWindow.lean/declarations/all-real-power-moment--0fcfc0e8888ab0b3fdef38d8.md) | 75 | `result-track:0fcfc0e8888ab0b3fdef38d8978b777d76ccacef299298fab04351eeb6885e5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
