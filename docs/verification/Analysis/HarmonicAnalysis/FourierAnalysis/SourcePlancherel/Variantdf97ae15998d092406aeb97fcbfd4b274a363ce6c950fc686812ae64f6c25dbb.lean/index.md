# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SourcePlancherel.Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e0195f9616df5711e76892b9ccae6ce22dd4589",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e0195f9616df5711e76892b9ccae6ce22dd4589`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Convolution` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Inversion` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [fourier_reflected_real](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean/declarations/fourier-reflected-real--22c3fc88e08350aa46b2172b.md) | 20 | `result-track:22c3fc88e08350aa46b2172bc0dd13cc26fdb21ef94b38f10842a44109873499` |
| 2 | `lemma` | [correlation_complex_eq_convolution](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean/declarations/correlation-complex-eq-convolution--2f501f6a9c1612371509c92a.md) | 34 | `result-track:2f501f6a9c1612371509c92a6c122a5bd51aa897c75979a67a012a966517ef03` |
| 3 | `lemma` | [fourier_correlation](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean/declarations/fourier-correlation--cc9ba7eebcb5ba76a8b4d864.md) | 49 | `result-track:cc9ba7eebcb5ba76a8b4d864e210a6a06500adb659d94ee564711b82d6169394` |
| 4 | `lemma` | [standardFourier_eq_sourceFourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean/declarations/standardfourier-eq-sourcefourier--c0b2dc983515a83c81419b7a.md) | 59 | `result-track:c0b2dc983515a83c81419b7a40ef353df33f9d78be05ae4cb6fdd8d7b46907d3` |
| 5 | `lemma` | [standardFourier_square_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean/declarations/standardfourier-square-integrable--353c23be0529323a1b2deb1d.md) | 64 | `result-track:353c23be0529323a1b2deb1d15312445cbeb5c58ba9a64bf71ef058975458ae2` |
| 6 | `lemma` | [actual_standard_fourier_mass](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean/declarations/actual-standard-fourier-mass--9e0ee918fe0cd8c21fb31e77.md) | 72 | `result-track:9e0ee918fe0cd8c21fb31e77d4db5f908f90fa28e3a0eb8da8db57ad5c0a924a` |
| 7 | `lemma` | [actual_source_fourier_mass](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean/declarations/actual-source-fourier-mass--a5399af610a4045ced576c9c.md) | 100 | `result-track:a5399af610a4045ced576c9c4b54be459e3533e558463a92e31af083416852e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
