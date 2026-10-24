# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SourcePlancherel.Variantc0db961937cc163f9264308e7a474fd1b384e80b794e0358bab42a4d78944a5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "105d55656d9881c89aed537e46040b63183a2d03",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantc0db961937cc163f9264308e7a474fd1b384e80b794e0358bab42a4d78944a5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantc0db961937cc163f9264308e7a474fd1b384e80b794e0358bab42a4d78944a5b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantc0db961937cc163f9264308e7a474fd1b384e80b794e0358bab42a4d78944a5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `105d55656d9881c89aed537e46040b63183a2d03`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantc0db961937cc163f9264308e7a474fd1b384e80b794e0358bab42a4d78944a5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantc0db961937cc163f9264308e7a474fd1b384e80b794e0358bab42a4d78944a5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Convolution` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Inversion` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [fourier_reflected_real](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantc0db961937cc163f9264308e7a474fd1b384e80b794e0358bab42a4d78944a5b.lean/declarations/fourier-reflected-real--0608cac287637343a4abc6f1.md) | 26 | `result-track:0608cac287637343a4abc6f12b9a963e0fb1f0f0e7883083f5adc95df0d00b1d` |
| 2 | `lemma` | [correlation_complex_eq_convolution](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantc0db961937cc163f9264308e7a474fd1b384e80b794e0358bab42a4d78944a5b.lean/declarations/correlation-complex-eq-convolution--4978346e18eb26ae17d3bcda.md) | 41 | `result-track:4978346e18eb26ae17d3bcdae3ce05ee9336a49045d6b36123116e41c7465d8d` |
| 3 | `lemma` | [fourier_correlation](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantc0db961937cc163f9264308e7a474fd1b384e80b794e0358bab42a4d78944a5b.lean/declarations/fourier-correlation--4538c18045f5fe83c6c7190e.md) | 57 | `result-track:4538c18045f5fe83c6c7190e86fd1e765138c3db25dff7cd176396c7ed0ec460` |
| 4 | `lemma` | [standardFourier_eq_sourceFourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantc0db961937cc163f9264308e7a474fd1b384e80b794e0358bab42a4d78944a5b.lean/declarations/standardfourier-eq-sourcefourier--79f1b9497fb17a419e33d26f.md) | 68 | `result-track:79f1b9497fb17a419e33d26f347ad34aa7ce3a1eb791ae96c66e06d2f8e43e4c` |
| 5 | `lemma` | [standardFourier_square_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantc0db961937cc163f9264308e7a474fd1b384e80b794e0358bab42a4d78944a5b.lean/declarations/standardfourier-square-integrable--b71db823608454d58562e9a9.md) | 74 | `result-track:b71db823608454d58562e9a932787ccc8bce5522265e5be2dc5d6bcda31d6f2a` |
| 6 | `lemma` | [actual_standard_fourier_mass](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantc0db961937cc163f9264308e7a474fd1b384e80b794e0358bab42a4d78944a5b.lean/declarations/actual-standard-fourier-mass--a894f589d1353bfda6b3b6fe.md) | 83 | `result-track:a894f589d1353bfda6b3b6fe1f39bee26594a6e2a52024d7c578020a5a20c974` |
| 7 | `lemma` | [actual_source_fourier_mass](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantc0db961937cc163f9264308e7a474fd1b384e80b794e0358bab42a4d78944a5b.lean/declarations/actual-source-fourier-mass--1178b2f72e5b829eb7523fe3.md) | 112 | `result-track:1178b2f72e5b829eb7523fe332f9ee8a845d3b1798672bb9cec812889e3193b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
