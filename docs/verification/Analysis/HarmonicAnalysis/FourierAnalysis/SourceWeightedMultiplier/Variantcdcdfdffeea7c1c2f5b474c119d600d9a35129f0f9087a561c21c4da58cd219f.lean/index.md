# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SourceWeightedMultiplier.Variantcdcdfdffeea7c1c2f5b474c119d600d9a35129f0f9087a561c21c4da58cd219f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35001f502b2a1035a526444052041477a9c6ead2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantcdcdfdffeea7c1c2f5b474c119d600d9a35129f0f9087a561c21c4da58cd219f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantcdcdfdffeea7c1c2f5b474c119d600d9a35129f0f9087a561c21c4da58cd219f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantcdcdfdffeea7c1c2f5b474c119d600d9a35129f0f9087a561c21c4da58cd219f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35001f502b2a1035a526444052041477a9c6ead2`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantcdcdfdffeea7c1c2f5b474c119d600d9a35129f0f9087a561c21c4da58cd219f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantcdcdfdffeea7c1c2f5b474c119d600d9a35129f0f9087a561c21c4da58cd219f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterDeltaConvergence` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.LpSpace` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryMultiplier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantcdcdfdffeea7c1c2f5b474c119d600d9a35129f0f9087a561c21c4da58cd219f.lean/declarations/boundarymultiplier--8bb0f0ece42916a29c44c7a9.md) | 14 | `declaration-track:8bb0f0ece42916a29c44c7a9508908178ac35b4dfc75f6d8dd2a0d29995b2e28` |
| 2 | `theorem` | [boundaryMultiplier_norm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantcdcdfdffeea7c1c2f5b474c119d600d9a35129f0f9087a561c21c4da58cd219f.lean/declarations/boundarymultiplier-norm-le--5ae71f90b28551add2b50f97.md) | 18 | `result-track:5ae71f90b28551add2b50f979d3bb1b41842385e1d993b64624564b856ce0535` |
| 3 | `theorem` | [boundaryMultiplier_measurable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantcdcdfdffeea7c1c2f5b474c119d600d9a35129f0f9087a561c21c4da58cd219f.lean/declarations/boundarymultiplier-measurable--c8909bb549033c9bab6228c9.md) | 65 | `result-track:c8909bb549033c9bab6228c90fa716ab2ba22b2a318f9e49ffd779f21d6ee7b7` |
| 4 | `theorem` | [frequencyProduct_memLp](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantcdcdfdffeea7c1c2f5b474c119d600d9a35129f0f9087a561c21c4da58cd219f.lean/declarations/frequencyproduct-memlp--493f96064961f4c3b5bc681d.md) | 72 | `result-track:493f96064961f4c3b5bc681d375fe82009216acd48250eba92381e73a76bcfd5` |
| 5 | `def` | [frequencyVector](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantcdcdfdffeea7c1c2f5b474c119d600d9a35129f0f9087a561c21c4da58cd219f.lean/declarations/frequencyvector--0a2f77f475a7704bb14e4497.md) | 85 | `declaration-track:0a2f77f475a7704bb14e4497d88792c7f4c30df5ab58ce3334334c50dd91e4a7` |
| 6 | `theorem` | [frequencyVector_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantcdcdfdffeea7c1c2f5b474c119d600d9a35129f0f9087a561c21c4da58cd219f.lean/declarations/frequencyvector-ae--0b435969027d5485a375567e.md) | 90 | `result-track:0b435969027d5485a375567eb939e6b1f97d50f3810a0af7dddb348105fcd183` |
| 7 | `theorem` | [frequencyVector_norm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantcdcdfdffeea7c1c2f5b474c119d600d9a35129f0f9087a561c21c4da58cd219f.lean/declarations/frequencyvector-norm-le--56d9848986ee5d649cd8d11d.md) | 96 | `result-track:56d9848986ee5d649cd8d11dcaad46a8dd9484fafd7154c29e82eeec69ce8a9f` |
| 8 | `def` | [frequencyMultiplier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantcdcdfdffeea7c1c2f5b474c119d600d9a35129f0f9087a561c21c4da58cd219f.lean/declarations/frequencymultiplier--e39ce6d82f5812e3a6d48bba.md) | 106 | `declaration-track:e39ce6d82f5812e3a6d48bba46f77f96b6b364912fec735971f5a464676a31c9` |
| 9 | `theorem` | [frequencyMultiplier_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantcdcdfdffeea7c1c2f5b474c119d600d9a35129f0f9087a561c21c4da58cd219f.lean/declarations/frequencymultiplier-ae--490dc10cf7ddd6a0ce3916a5.md) | 135 | `result-track:490dc10cf7ddd6a0ce3916a52ddd94c501f1de022395acb99f85b2e4b209c15d` |
| 10 | `def` | [sourceMultiplier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantcdcdfdffeea7c1c2f5b474c119d600d9a35129f0f9087a561c21c4da58cd219f.lean/declarations/sourcemultiplier--375eee6cd0285df87eaacc7d.md) | 142 | `declaration-track:375eee6cd0285df87eaacc7d0f43e3ed9caf9f352032d04c3ab95dc2d8d8db9e` |
| 11 | `theorem` | [sourceMultiplier_fourier_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantcdcdfdffeea7c1c2f5b474c119d600d9a35129f0f9087a561c21c4da58cd219f.lean/declarations/sourcemultiplier-fourier-ae--a9602a038aed9df641877c44.md) | 147 | `result-track:a9602a038aed9df641877c4415da860b85ffc831e08b4d4e35bacdd20d7ffe07` |
| 12 | `theorem` | [sourceMultiplier_norm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantcdcdfdffeea7c1c2f5b474c119d600d9a35129f0f9087a561c21c4da58cd219f.lean/declarations/sourcemultiplier-norm-le--207c2b2b400c8e42d594051e.md) | 156 | `result-track:207c2b2b400c8e42d594051ee728787c59cdb4ac47e4349e0f9bdb17146cf191` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
