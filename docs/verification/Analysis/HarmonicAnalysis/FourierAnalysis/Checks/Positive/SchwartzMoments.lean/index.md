# Verification target: GRWTSK.Analysis.Fourier.Checks.Positive.SchwartzMoments

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecdc8d137780e0461adf72dbc28da23d6a5c74d7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/Checks/Positive/SchwartzMoments.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/SchwartzMoments.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/SchwartzMoments.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecdc8d137780e0461adf72dbc28da23d6a5c74d7`.

Source path: `GRWTSK/Analysis/Fourier/Checks/Positive/SchwartzMoments.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/Checks/Positive/SchwartzMoments.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.SchwartzMoments`](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SchwartzMoments.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.CompactGaussianWindow`](../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_zero_integrable](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/SchwartzMoments.lean/declarations/actual-zero-integrable--924529acd93c18a3933d07b0.md) | 13 | `result-track:924529acd93c18a3933d07b0c8b3820b998cdd4037e2fd87f6bb3fdb1aa0bf6c` |
| 2 | `theorem` | [actual_zero_source_bound](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/SchwartzMoments.lean/declarations/actual-zero-source-bound--fa4a43eaf9ea6c19c3a5ad2a.md) | 17 | `result-track:fa4a43eaf9ea6c19c3a5ad2a994b601e761617ca8f8969808cbb0b1e14d54e17` |
| 3 | `theorem` | [actual_zero_moment_bound](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/SchwartzMoments.lean/declarations/actual-zero-moment-bound--a95b8f30f474f91dc5adf770.md) | 24 | `result-track:a95b8f30f474f91dc5adf7708ce1d499aaa8c00d8851a1e7711f4deff832ee68` |
| 4 | `theorem` | [source_bound_zero_false_of_nonzero](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/SchwartzMoments.lean/declarations/source-bound-zero-false-of-nonzero--11c2d0d6b04c7a54caf6d06c.md) | 30 | `result-track:11c2d0d6b04c7a54caf6d06c3aea3290b0d86a109441d13db1766215f79a9174` |
| 5 | `theorem` | [actual_gaussian_nonzero](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/SchwartzMoments.lean/declarations/actual-gaussian-nonzero--840954ccdc7bbd27f80c556f.md) | 42 | `result-track:840954ccdc7bbd27f80c556f4cfca10a988c9536cc78300b17e5cd3bfcfebebd` |
| 6 | `theorem` | [actual_gaussian_source_bound_zero_false](../../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/SchwartzMoments.lean/declarations/actual-gaussian-source-bound-zero-false--2de1d1ada7ca91385ee27ba3.md) | 66 | `result-track:2de1d1ada7ca91385ee27ba38a095959cc208f0e4d82129aece2febfd232de5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
