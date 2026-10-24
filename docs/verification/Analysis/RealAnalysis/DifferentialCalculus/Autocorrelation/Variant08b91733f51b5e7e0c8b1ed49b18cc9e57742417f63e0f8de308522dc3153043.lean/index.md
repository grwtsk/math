# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Autocorrelation.Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd557abf6f72294f92507e5dfdf855c9dbd1e38d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd557abf6f72294f92507e5dfdf855c9dbd1e38d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.Cutoff` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTestRegularity` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Convolution` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [self_convolution_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean/declarations/self-convolution-hasderivat--eb495e260b166aa0860a41fb.md) | 26 | `result-track:eb495e260b166aa0860a41fb0d8003082447d34d9999a409d431ac5da126942b` |
| 2 | `theorem` | [self_convolution_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean/declarations/self-convolution-contdiff-two--3a1770a2731673e6a2bc0860.md) | 33 | `result-track:3a1770a2731673e6a2bc0860e039ee1276c0c519b51162e6148483e02388dea9` |
| 3 | `def` | [correlation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean/declarations/correlation--ea84944254706aa4b0c93eaf.md) | 44 | `declaration-track:ea84944254706aa4b0c93eafc87a88f09523ffa9a38157f5a8fd1524090bc667` |
| 4 | `theorem` | [correlation_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean/declarations/correlation-product-integrable--a0f63edafe2e5120e1872f93.md) | 47 | `result-track:a0f63edafe2e5120e1872f936385df903a2c7ff3205534f96a0e355f39ff5bd4` |
| 5 | `theorem` | [correlation_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean/declarations/correlation-eq-convolution--d15522f3a6ff28bb22bae13c.md) | 52 | `result-track:d15522f3a6ff28bb22bae13c8505d2bebd466da12b43bb65630093cb9a79cbe7` |
| 6 | `theorem` | [correlation_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean/declarations/correlation-contdiff-two--73a9a5c082cc29b78998f8c5.md) | 63 | `result-track:73a9a5c082cc29b78998f8c5e01f3603789ddb3a3e263df882d56d6d59808419` |
| 7 | `theorem` | [correlation_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean/declarations/correlation-zero--97b12fd27d8639f6c1dcf3e0.md) | 70 | `result-track:97b12fd27d8639f6c1dcf3e06e74d2d7db6f9d3f46b0fa7c935a8aadb00ef7fb` |
| 8 | `theorem` | [correlation_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean/declarations/correlation-hascompactsupport--2db6b009152606858297bd5c.md) | 75 | `result-track:2db6b009152606858297bd5cfce66f3c3d19494861247de2ae3801935f8a5bd8` |
| 9 | `theorem` | [correlation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean/declarations/correlation-integrable--da7c210f9b7beab56d89bf91.md) | 84 | `result-track:da7c210f9b7beab56d89bf91b41fe721fe6a07525cc3cb5bf05df607fcf701bb` |
| 10 | `theorem` | [correlation_even](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean/declarations/correlation-even--6750c939a0e512376f0ec26d.md) | 89 | `result-track:6750c939a0e512376f0ec26db118ece5a728b13bc256cb50a4a7441ac64700fe` |
| 11 | `def` | [complexCorrelation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean/declarations/complexcorrelation--b1f4b3e5296b43d124d6c849.md) | 98 | `declaration-track:b1f4b3e5296b43d124d6c8494a14c169ab539b9c3c7b9e7516c24155bdb5cb49` |
| 12 | `theorem` | [complexCorrelation_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean/declarations/complexcorrelation-contdiff-two--f9e9ee6c3f21c9965ff720ae.md) | 101 | `result-track:f9e9ee6c3f21c9965ff720ae707c44b94bfc5f5d99ff838463d05c366c6ef4b4` |
| 13 | `theorem` | [complexCorrelation_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean/declarations/complexcorrelation-hascompactsupport--2b9f8cf1cc853e482a3be007.md) | 106 | `result-track:2b9f8cf1cc853e482a3be0073313ecdb4475c017153eadfaf5a2003babb451da` |
| 14 | `theorem` | [complexCorrelation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean/declarations/complexcorrelation-integrable--29c9cf2d3250d030ac8bf3c7.md) | 111 | `result-track:29c9cf2d3250d030ac8bf3c72273b52a11b758cb2a29e0da1ff8cc71de3138e2` |
| 15 | `theorem` | [correlation_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean/declarations/correlation-eq-source--dce24f321d6ce5aca960f22f.md) | 116 | `result-track:dce24f321d6ce5aca960f22f882642889bc657eaa428b32a19b07b0da0a199d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
