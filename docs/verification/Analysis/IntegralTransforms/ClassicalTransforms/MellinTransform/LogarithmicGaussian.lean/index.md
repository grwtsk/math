# Verification target: GRWTSK.Analysis.MellinTransform.LogarithmicGaussian

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af598275775be1b7333a74f971a5a595473304b6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/LogarithmicGaussian.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af598275775be1b7333a74f971a5a595473304b6`.

Source path: `GRWTSK/Analysis/MellinTransform/LogarithmicGaussian.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/LogarithmicGaussian.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.ReverseInversion`](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/index.md) — import line 24; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logarithmicGaussianWith](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean/declarations/logarithmicgaussianwith--f083ac6263f6a89c90e103b5.md) | 31 | `declaration-track:f083ac6263f6a89c90e103b586c3ad0908dccc832cb37468bc740b52c1995aa4` |
| 2 | `def` | [gaussianMellinWith](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean/declarations/gaussianmellinwith--f01190d6c803736580743c3c.md) | 34 | `declaration-track:f01190d6c803736580743c3c2df7b47b84930030d83c26ce278de7dc6a5cfad5` |
| 3 | `lemma` | [exponential_mellin_kernel](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean/declarations/exponential-mellin-kernel--e621206c000f618dd0a2d9a5.md) | 37 | `result-track:e621206c000f618dd0a2d9a579d620bc669d18363b14ea8b74edf09321ca6f15` |
| 4 | `lemma` | [logarithmicGaussian_kernel](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean/declarations/logarithmicgaussian-kernel--562a48b73c9c922d6bef9b83.md) | 52 | `result-track:562a48b73c9c922d6bef9b831fd301ed983458c1a69011cc37ed264996837984` |
| 5 | `lemma` | [exponential_neg_image](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean/declarations/exponential-neg-image--3f41e0d8e9869cd16d49e776.md) | 62 | `result-track:3f41e0d8e9869cd16d49e7768594ca3641d1a9efbabbd36f769751f743bf1877` |
| 6 | `lemma` | [exponential_neg_deriv](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean/declarations/exponential-neg-deriv--8567915a4c3e6b2d1cd99f5a.md) | 66 | `result-track:8567915a4c3e6b2d1cd99f5ac192c5b90a48ed81c576c82da48bb9f506d911fe` |
| 7 | `lemma` | [exponential_neg_inj](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean/declarations/exponential-neg-inj--3ead320c5c1512137d2c4314.md) | 71 | `result-track:3ead320c5c1512137d2c43143a7e1be042ba99bdaa83b04754670513d3f3554f` |
| 8 | `theorem` | [logarithmicGaussianWith_convergent](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean/declarations/logarithmicgaussianwith-convergent--97a5c12f6be71d714b7d319f.md) | 75 | `result-track:97a5c12f6be71d714b7d319fc6e008e8a703486df5de5573f94d6fbc362e5c2e` |
| 9 | `theorem` | [logarithmicGaussianWith_mellin](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean/declarations/logarithmicgaussianwith-mellin--6cf59c472d130193a01a7da6.md) | 84 | `result-track:6cf59c472d130193a01a7da6d6939939f029a22e6ae36f61d6b34ca044b85569` |
| 10 | `theorem` | [logarithmicGaussian_mellin_all](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean/declarations/logarithmicgaussian-mellin-all--7ec9ac440a6b3411acae354a.md) | 94 | `result-track:7ec9ac440a6b3411acae354a11d3a957e86468b79953bf9bebf6611597d42d96` |
| 11 | `theorem` | [logarithmicGaussian_convergent_all](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean/declarations/logarithmicgaussian-convergent-all--99783f7ed620c2fd39b1e685.md) | 100 | `result-track:99783f7ed620c2fd39b1e685a938fe596cb5fdfe23cf956f017c2cd3230ea612` |
| 12 | `theorem` | [logarithmicGaussian_mellin_ne_zero](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean/declarations/logarithmicgaussian-mellin-ne-zero--d9d98a094d8f236b9fc3ae0e.md) | 105 | `result-track:d9d98a094d8f236b9fc3ae0eb6fa3812ab5460e8a5d24a6acd09826c5fed0cb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
