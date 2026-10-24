# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ActualConvolutionFourier.Varianta625546f0178b7585319bb42cce697558e2ec305a0d96edc6c1c2cf8c775be86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0563b254a110be7908b763d65f27881b4eb78474",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Varianta625546f0178b7585319bb42cce697558e2ec305a0d96edc6c1c2cf8c775be86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Varianta625546f0178b7585319bb42cce697558e2ec305a0d96edc6c1c2cf8c775be86.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Varianta625546f0178b7585319bb42cce697558e2ec305a0d96edc6c1c2cf8c775be86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0563b254a110be7908b763d65f27881b4eb78474`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Varianta625546f0178b7585319bb42cce697558e2ec305a0d96edc6c1c2cf8c775be86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Varianta625546f0178b7585319bb42cce697558e2ec305a0d96edc6c1c2cf8c775be86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceConvolutionAE` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceBoundary` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Convolution` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [convolutionFunction_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Varianta625546f0178b7585319bb42cce697558e2ec305a0d96edc6c1c2cf8c775be86.lean/declarations/convolutionfunction-eq--0529c51b76bbb3d64cb9234d.md) | 17 | `result-track:0529c51b76bbb3d64cb9234d9627d1abd35cadf54541608a45aceb931480c187` |
| 2 | `theorem` | [actualFull_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Varianta625546f0178b7585319bb42cce697558e2ec305a0d96edc6c1c2cf8c775be86.lean/declarations/actualfull-integrable--48bcc4647827d24c92bf578b.md) | 25 | `result-track:48bcc4647827d24c92bf578b12006aaccbc33ee155a6118f9a8dec5ae826e21c` |
| 3 | `theorem` | [fixedKernel_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Varianta625546f0178b7585319bb42cce697558e2ec305a0d96edc6c1c2cf8c775be86.lean/declarations/fixedkernel-fourier--6e450695724c04f06a8a2f6d.md) | 36 | `result-track:6e450695724c04f06a8a2f6d939a13c7e8cd889e0e7e02aa56460f2fd057f15f` |
| 4 | `theorem` | [actualFull_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Varianta625546f0178b7585319bb42cce697558e2ec305a0d96edc6c1c2cf8c775be86.lean/declarations/actualfull-fourier--3884069e2db5d64a0b31fdc2.md) | 53 | `result-track:3884069e2db5d64a0b31fdc217e71ecc99e7d2e990425e6eec670ed656d9abef` |
| 5 | `theorem` | [zeroExtension_sourceOperator_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Varianta625546f0178b7585319bb42cce697558e2ec305a0d96edc6c1c2cf8c775be86.lean/declarations/zeroextension-sourceoperator-integrable--e9c3d5098ecfeebfefc0fc9d.md) | 62 | `result-track:e9c3d5098ecfeebfefc0fc9d917800eda358f05d77d7fca5176758490b287d14` |
| 6 | `theorem` | [sourceOperator_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Varianta625546f0178b7585319bb42cce697558e2ec305a0d96edc6c1c2cf8c775be86.lean/declarations/sourceoperator-fourier--ff7e3d354a481fd8b277a72f.md) | 69 | `result-track:ff7e3d354a481fd8b277a72f5272a2bf6235a7eb1ac79a1ef786b24f1dee7ad1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
