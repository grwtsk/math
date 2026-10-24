# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ActualConvolutionFourier.Variant1157eb8d8044df9bbdcfccd92e76bd369b2c9f3d710e51e250cf0f8d77957155

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cf48722d7e3469b94e43d7925216a002de03381",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Variant1157eb8d8044df9bbdcfccd92e76bd369b2c9f3d710e51e250cf0f8d77957155.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Variant1157eb8d8044df9bbdcfccd92e76bd369b2c9f3d710e51e250cf0f8d77957155.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Variant1157eb8d8044df9bbdcfccd92e76bd369b2c9f3d710e51e250cf0f8d77957155.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cf48722d7e3469b94e43d7925216a002de03381`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Variant1157eb8d8044df9bbdcfccd92e76bd369b2c9f3d710e51e250cf0f8d77957155.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Variant1157eb8d8044df9bbdcfccd92e76bd369b2c9f3d710e51e250cf0f8d77957155.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceConvolutionAE` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceBoundary` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Convolution` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [convolutionFunction_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Variant1157eb8d8044df9bbdcfccd92e76bd369b2c9f3d710e51e250cf0f8d77957155.lean/declarations/convolutionfunction-eq--b86e8f1a88ded8a0f5978730.md) | 25 | `result-track:b86e8f1a88ded8a0f5978730370e87debc569ca206bcdc6ba221984517445dda` |
| 2 | `theorem` | [actualFull_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Variant1157eb8d8044df9bbdcfccd92e76bd369b2c9f3d710e51e250cf0f8d77957155.lean/declarations/actualfull-integrable--c7416d33a3ec7804411c9ac1.md) | 33 | `result-track:c7416d33a3ec7804411c9ac1ecd8cd72444c05c037c6142fd67ab384dc4c9ace` |
| 3 | `theorem` | [fixedKernel_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Variant1157eb8d8044df9bbdcfccd92e76bd369b2c9f3d710e51e250cf0f8d77957155.lean/declarations/fixedkernel-fourier--37931e381baf4955937b7153.md) | 44 | `result-track:37931e381baf4955937b7153f661d5d50c0e011413389d1616b2e3246da70aa0` |
| 4 | `theorem` | [actualFull_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Variant1157eb8d8044df9bbdcfccd92e76bd369b2c9f3d710e51e250cf0f8d77957155.lean/declarations/actualfull-fourier--a98e99f90e8a034d360223e7.md) | 61 | `result-track:a98e99f90e8a034d360223e7b81e39070f38ddc3dea4780e77a6f0dfd03b555b` |
| 5 | `theorem` | [zeroExtension_sourceOperator_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Variant1157eb8d8044df9bbdcfccd92e76bd369b2c9f3d710e51e250cf0f8d77957155.lean/declarations/zeroextension-sourceoperator-integrable--8d87c01126da009dc1ad900b.md) | 70 | `result-track:8d87c01126da009dc1ad900b655a3e88ec38f7c3d0b3a9ffbb24ad162722fa0c` |
| 6 | `theorem` | [sourceOperator_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Variant1157eb8d8044df9bbdcfccd92e76bd369b2c9f3d710e51e250cf0f8d77957155.lean/declarations/sourceoperator-fourier--ec6ac2f2ecad5e938bf7b373.md) | 77 | `result-track:ec6ac2f2ecad5e938bf7b373720cd7eb279ffdad9d100efa209fa343545837d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
