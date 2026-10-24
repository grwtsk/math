# Verification target: GRWTSK.Analysis.MellinTransform.Checks.Positive.CompactGaussianWindow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "988640cb45a8ef5e5624d61ce077fb9327e507cd",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/Checks/Positive/CompactGaussianWindow.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/CompactGaussianWindow.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/CompactGaussianWindow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `988640cb45a8ef5e5624d61ce077fb9327e507cd`.

Source path: `GRWTSK/Analysis/MellinTransform/Checks/Positive/CompactGaussianWindow.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/Checks/Positive/CompactGaussianWindow.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.CompactGaussianWindow`](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [compactWindow_smooth](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/CompactGaussianWindow.lean/declarations/compactwindow-smooth--f0057205ca591cdbbbda7e54.md) | 11 | `result-track:f0057205ca591cdbbbda7e54b055aafb31c84c987d761222f5f6e574f7757ebf` |
| 2 | `theorem` | [compactWindow_schwartz_one](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/CompactGaussianWindow.lean/declarations/compactwindow-schwartz-one--12cf8554008a5a9f27b958f4.md) | 15 | `result-track:12cf8554008a5a9f27b958f4b9b8ff1c1212f3b420df90483be9876f9a909497` |
| 3 | `theorem` | [compactWindow_zero](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/CompactGaussianWindow.lean/declarations/compactwindow-zero--dd543a00521239181eb93c33.md) | 20 | `result-track:dd543a00521239181eb93c33dbe8bb5622b882fc32e5a5ba935ddc04f99bed94` |
| 4 | `def` | [unnormalizedWindow](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/CompactGaussianWindow.lean/declarations/unnormalizedwindow--04337ee1ef12c1cd180b8c27.md) | 23 | `declaration-track:04337ee1ef12c1cd180b8c27869f35538e3509914af87a42596ef38ca8b5b918` |
| 5 | `theorem` | [annulus_three_quarters_ne_zero](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/CompactGaussianWindow.lean/declarations/annulus-three-quarters-ne-zero--8a47b5498d2108eb17647782.md) | 25 | `result-track:8a47b5498d2108eb17647782cf6da0fb109d395c89ce13dac37ec8bae552ede0` |
| 6 | `theorem` | [profile_three_quarters_ne_zero](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/CompactGaussianWindow.lean/declarations/profile-three-quarters-ne-zero--9e6af103665799a2c8e9eea2.md) | 35 | `result-track:9e6af103665799a2c8e9eea21bc58406c0b29b863a119d9ed06e829fbe51ef27` |
| 7 | `theorem` | [unnormalizedWindow_three_quarters_ne_zero](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/CompactGaussianWindow.lean/declarations/unnormalizedwindow-three-quarters-ne-zero--4e41ba441aa0d86062dfa369.md) | 44 | `result-track:4e41ba441aa0d86062dfa369782a9286fcbae2a750f2719b4d71663a7045b6a3` |
| 8 | `theorem` | [correctWindow_normalizes](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/CompactGaussianWindow.lean/declarations/correctwindow-normalizes--9830a65052f1be106e1e28a8.md) | 47 | `result-track:9830a65052f1be106e1e28a84eea1c1b080daefa159dd617318430aa7d219f61` |
| 9 | `theorem` | [omittedRootFactor_counterexample](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/CompactGaussianWindow.lean/declarations/omittedrootfactor-counterexample--735607b24e9ae45e3ad1ecae.md) | 53 | `result-track:735607b24e9ae45e3ad1ecae4387f412f6fc562bfc459186108e8d8083ebd934` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
