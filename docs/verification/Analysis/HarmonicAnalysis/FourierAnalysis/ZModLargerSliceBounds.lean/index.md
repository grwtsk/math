# Verification target: GRWTSK.Analysis.Fourier.ZModLargerSliceBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a54fcae51d539345f95e852a6623b313c05ada0d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/ZModLargerSliceBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a54fcae51d539345f95e852a6623b313c05ada0d`.

Source path: `GRWTSK/Analysis/Fourier/ZModLargerSliceBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/ZModLargerSliceBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.ZModLargerSliceParameters`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModSubsetSumCompletion`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModPartitionEnergy`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [source_constant_positive](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/declarations/source-constant-positive--c8bcd2ae4d464616067f252e.md) | 20 | `result-track:c8bcd2ae4d464616067f252e67c57673dbdad65704cdbcfe2f5350fc836ee9fb` |
| 2 | `theorem` | [source_constant_ge_one](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/declarations/source-constant-ge-one--f66460ca7f42732b3b5b1c91.md) | 23 | `result-track:f66460ca7f42732b3b5b1c910b7089e834cd66e713c14bac6a91e1af563ce9dd` |
| 3 | `theorem` | [larger_constant_positive](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/declarations/larger-constant-positive--36d22df3fe19db64be82477b.md) | 26 | `result-track:36d22df3fe19db64be82477b9f38055b2e79e1413b7d69542cb174685382d1e4` |
| 4 | `theorem` | [larger_constant_mul_sq](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/declarations/larger-constant-mul-sq--3c3b4fcfc9cdf39888d73842.md) | 33 | `result-track:3c3b4fcfc9cdf39888d73842db37d3c623e9ae2ad2c74d8d733612db6c8f22c6` |
| 5 | `theorem` | [larger_constant_half_mul](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/declarations/larger-constant-half-mul--4f7356b260816ca4aac0ce6f.md) | 38 | `result-track:4f7356b260816ca4aac0ce6ff27352f2f1830f4573daa7ff8ace1cf37712eca7` |
| 6 | `theorem` | [source_constant_le_coefficient](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/declarations/source-constant-le-coefficient--1ee2abb8d4d40c6d38fa9120.md) | 49 | `result-track:1ee2abb8d4d40c6d38fa9120397da8c1def46c2bd695c6882c82846794258d28` |
| 7 | `theorem` | [sqrt_log_ge_half](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/declarations/sqrt-log-ge-half--d5c5d8a13737dd7abf3e12be.md) | 66 | `result-track:d5c5d8a13737dd7abf3e12beb14dae8c76b736ff01e14bc3dc7b1d45e5993c4a` |
| 8 | `theorem` | [completion_margin_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/declarations/completion-margin-bound--5a55f1c85a9007dab7bcc6c3.md) | 76 | `result-track:5a55f1c85a9007dab7bcc6c39ac68a1c04b67fca721be47bf66be6ef6e0e14bf` |
| 9 | `theorem` | [margin_reciprocal_le_error](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/declarations/margin-reciprocal-le-error--01ceb073f2e9e84571c41548.md) | 107 | `result-track:01ceb073f2e9e84571c41548d92dd3bb43f3d86a99c2b6ca8b3facc38f004df7` |
| 10 | `theorem` | [margin_reciprocal_le_error_of_small_card](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/declarations/margin-reciprocal-le-error-of-small-card--b9e297959f3d16b6e83da7c6.md) | 127 | `result-track:b9e297959f3d16b6e83da7c6e6d86c3d8ee52fc562d3a9296dfc14ab87c1f8a4` |
| 11 | `theorem` | [margin_reciprocal_le_error_of_small_sample](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/declarations/margin-reciprocal-le-error-of-small-sample--80f44fd54fc694f1f5c147ae.md) | 161 | `result-track:80f44fd54fc694f1f5c147aecfa91f1f6512ba0d3935a899ee8937c835293ed5` |
| 12 | `theorem` | [scaled_sqrt_sample_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/declarations/scaled-sqrt-sample-le--f278f28029bf98f8f6fb32ce.md) | 196 | `result-track:f278f28029bf98f8f6fb32ce79dd4db86a8c14a847b0f149f72d99c9069f9650` |
| 13 | `theorem` | [slice_error_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/declarations/slice-error-le--59f03621d82b9fd1f491e5ed.md) | 235 | `result-track:59f03621d82b9fd1f491e5ed8d9ab801ee8fb19ff86fd0b45be262c134760a90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
