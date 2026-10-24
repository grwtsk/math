# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ReferenceFourierLiteralCheck.Varianta43f5ced00fb58102d48c5e982224303ef65a312fe52d0021a5d6d6d06f5de26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4d5871773cc75ebf50c4c260cab8e2797a00b95",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Varianta43f5ced00fb58102d48c5e982224303ef65a312fe52d0021a5d6d6d06f5de26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Varianta43f5ced00fb58102d48c5e982224303ef65a312fe52d0021a5d6d6d06f5de26.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Varianta43f5ced00fb58102d48c5e982224303ef65a312fe52d0021a5d6d6d06f5de26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4d5871773cc75ebf50c4c260cab8e2797a00b95`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Varianta43f5ced00fb58102d48c5e982224303ef65a312fe52d0021a5d6d6d06f5de26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Varianta43f5ced00fb58102d48c5e982224303ef65a312fe52d0021a5d6d6d06f5de26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reference_zeroExtension_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Varianta43f5ced00fb58102d48c5e982224303ef65a312fe52d0021a5d6d6d06f5de26.lean/declarations/reference-zeroextension-ae--57d28ccd54967ac87f44702c.md) | 22 | `result-track:57d28ccd54967ac87f44702c58f01b923d1f6d89913137290dda7d3b1258bf64` |
| 2 | `theorem` | [reference_zeroExtension_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Varianta43f5ced00fb58102d48c5e982224303ef65a312fe52d0021a5d6d6d06f5de26.lean/declarations/reference-zeroextension-integrable--e3762f672cda60658aebf675.md) | 35 | `result-track:e3762f672cda60658aebf675a3ebb98ca61be4539fd8a12ad98b3a43a7ce8372` |
| 3 | `theorem` | [reference_zeroExtension_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Varianta43f5ced00fb58102d48c5e982224303ef65a312fe52d0021a5d6d6d06f5de26.lean/declarations/reference-zeroextension-fourier--6991f007314586ac396f8964.md) | 43 | `result-track:6991f007314586ac396f89643df4afd6de439e1fe306bcd03ec30454864e68e0` |
| 4 | `theorem` | [reference_zeroExtension_fourier_norm_sq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Varianta43f5ced00fb58102d48c5e982224303ef65a312fe52d0021a5d6d6d06f5de26.lean/declarations/reference-zeroextension-fourier-norm-sq--8f5e33e1cee899722b7eca35.md) | 68 | `result-track:8f5e33e1cee899722b7eca350f5cddf3c400a1f40de6ad67b5ea75db270061f5` |
| 5 | `theorem` | [reference_zeroExtension_fourier_square_integral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Varianta43f5ced00fb58102d48c5e982224303ef65a312fe52d0021a5d6d6d06f5de26.lean/declarations/reference-zeroextension-fourier-square-integral--2f538741787b4116061212c0.md) | 75 | `result-track:2f538741787b4116061212c0a323335871a86212d8f07096793b0b9ac9b468ac` |
| 6 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Varianta43f5ced00fb58102d48c5e982224303ef65a312fe52d0021a5d6d6d06f5de26.lean/declarations/example--209b416c61eef31d801e82d2.md) | 95 | `declaration-track:209b416c61eef31d801e82d275b7dceda3492c3541329ccb2cb5cebb9617d9f2` |
| 7 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Varianta43f5ced00fb58102d48c5e982224303ef65a312fe52d0021a5d6d6d06f5de26.lean/declarations/example--281d6635788b166a397957fa.md) | 99 | `declaration-track:281d6635788b166a397957fa25203c959f6630f9743e55e6ed9dc4b62cf6287b` |
| 8 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Varianta43f5ced00fb58102d48c5e982224303ef65a312fe52d0021a5d6d6d06f5de26.lean/declarations/example--5578695f10a7f1ec896ce52e.md) | 102 | `declaration-track:5578695f10a7f1ec896ce52e4aacd00249e7ddfe4713c169387ceb4353b2f618` |
| 9 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Varianta43f5ced00fb58102d48c5e982224303ef65a312fe52d0021a5d6d6d06f5de26.lean/declarations/example--fcfc25e3f5d0cdca7e9e94d7.md) | 105 | `declaration-track:fcfc25e3f5d0cdca7e9e94d75ae57a1423e50366f22646cd2f4c2b09abba2d7a` |
| 10 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierLiteralCheck/Varianta43f5ced00fb58102d48c5e982224303ef65a312fe52d0021a5d6d6d06f5de26.lean/declarations/example--b2df38d67fb305020739b445.md) | 108 | `declaration-track:b2df38d67fb305020739b445e4e5c831cc2f7f37ac619dc130db49acace43b86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
