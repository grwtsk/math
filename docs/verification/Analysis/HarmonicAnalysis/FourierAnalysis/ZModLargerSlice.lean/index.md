# Verification target: GRWTSK.Analysis.Fourier.ZModLargerSlice

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ee1212cb57a0641a60c479b37337c31a65d593d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/ZModLargerSlice.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSlice.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSlice.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ee1212cb57a0641a60c479b37337c31a65d593d`.

Source path: `GRWTSK/Analysis/Fourier/ZModLargerSlice.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/ZModLargerSlice.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.Sequences.FixedSizeSubsetExposure`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModLargerSliceBounds`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModBalancedExpectedLayers`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedExpectedLayers.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [subsetSumProbability_exposure](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSlice.lean/declarations/subsetsumprobability-exposure--397f0e3b8ede0764ca608e18.md) | 33 | `result-track:397f0e3b8ede0764ca608e18c5dfaf24b506a6f74873faca20589f5ce0b542ec` |
| 2 | `theorem` | [subsetSumProbability_le_of_exposure](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSlice.lean/declarations/subsetsumprobability-le-of-exposure--e9567e59b86d448ce22fa4fc.md) | 57 | `result-track:e9567e59b86d448ce22fa4fc5023ceebfc678a1de8f22ccb4deab22917699cef` |
| 3 | `theorem` | [subsetSumProbability_le_largerSlice](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSlice.lean/declarations/subsetsumprobability-le-largerslice--e36292b22bcc34091241c74a.md) | 81 | `result-track:e36292b22bcc34091241c74afc98dfa793f02d4cb63b87af2dabf6bc9e4477e8` |
| 4 | `theorem` | [prime_subsetSumProbability_le_largerSlice](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSlice.lean/declarations/prime-subsetsumprobability-le-largerslice--64b998835cfe597f759a65f5.md) | 191 | `result-track:64b998835cfe597f759a65f57bbf36ce5e070c7f071a792d4c2dfba699f6c56b` |
| 5 | `theorem` | [exists_larger_slice_anticoncentration_constant](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSlice.lean/declarations/exists-larger-slice-anticoncentration-constant--21541f86ae1984a316790447.md) | 208 | `result-track:21541f86ae1984a3167904474306be3614927c31f41a885e7f024b5f656b68b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
