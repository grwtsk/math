# Verification target: GRWTSK.Analysis.MellinTransform.Checks.Positive.LogarithmicGaussian

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "088cea482700474825d7285b25e53e4f5cd15519",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/Checks/Positive/LogarithmicGaussian.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/LogarithmicGaussian.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/LogarithmicGaussian.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `088cea482700474825d7285b25e53e4f5cd15519`.

Source path: `GRWTSK/Analysis/MellinTransform/Checks/Positive/LogarithmicGaussian.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/Checks/Positive/LogarithmicGaussian.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.LogarithmicGaussian`](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/LogarithmicGaussian.lean/declarations/example--d5e43a08bc7031c6a3cc8552.md) | 7 | `declaration-track:d5e43a08bc7031c6a3cc8552ceb55214706ce10073bf47c5b27599fd226bc724` |
| 2 | `example` | [(anonymous)](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/LogarithmicGaussian.lean/declarations/example--cdab36b7de3d186e82fb7462.md) | 11 | `declaration-track:cdab36b7de3d186e82fb74620c0ee1fff90a71eb93325c128500844844c802b9` |
| 3 | `example` | [(anonymous)](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/LogarithmicGaussian.lean/declarations/example--3c2fb78344fd49a0b22807de.md) | 16 | `declaration-track:3c2fb78344fd49a0b22807def560d6fd201a255548a0b314a4ccb37352f5f6c9` |
| 4 | `example` | [(anonymous)](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/LogarithmicGaussian.lean/declarations/example--4e4a27bb8caa84f7f7b0eac5.md) | 20 | `declaration-track:4e4a27bb8caa84f7f7b0eac5d5a8f35fd3401d87414ff78dc4026e3ce98d6257` |
| 5 | `example` | [(anonymous)](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/LogarithmicGaussian.lean/declarations/example--d1ab8ad06769685bb91c2722.md) | 24 | `declaration-track:d1ab8ad06769685bb91c27224f7822aae2ce581999bad3e651c56c9c643e8324` |
| 6 | `lemma` | [zero_width_profile](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/LogarithmicGaussian.lean/declarations/zero-width-profile--4baeaeb0dbb873d5b995c833.md) | 34 | `result-track:4baeaeb0dbb873d5b995c8335549e480817080a949e3fe729c1693cae40127b4` |
| 7 | `lemma` | [zero_width_nonnegative](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/LogarithmicGaussian.lean/declarations/zero-width-nonnegative--f7a097010928a3a6db1c917f.md) | 37 | `result-track:f7a097010928a3a6db1c917f3cfeacc7bbd6e3435c28c3002ab7b12e63cea23a` |
| 8 | `lemma` | [zero_width_not_convergent](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/LogarithmicGaussian.lean/declarations/zero-width-not-convergent--aee8a4afe35a6b9312d88f39.md) | 39 | `result-track:aee8a4afe35a6b9312d88f39fd27de5eaa51fafaffa519eaa8eec941d10c4580` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
