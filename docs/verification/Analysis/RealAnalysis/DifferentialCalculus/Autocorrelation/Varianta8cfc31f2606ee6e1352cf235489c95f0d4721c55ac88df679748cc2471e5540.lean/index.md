# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Autocorrelation.Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87e3eb04134f621ae7acfa6f127ff0c1a94d0247",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87e3eb04134f621ae7acfa6f127ff0c1a94d0247`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.Cutoff` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTestRegularity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Convolution` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [self_convolution_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean/declarations/self-convolution-hasderivat--833ad96ee210652f06648921.md) | 34 | `result-track:833ad96ee210652f06648921c81d32787f3b70a3b2010bd389a390842395f13d` |
| 2 | `theorem` | [self_convolution_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean/declarations/self-convolution-contdiff-two--6c14ebebe0621932a9456db4.md) | 41 | `result-track:6c14ebebe0621932a9456db474c23d7a5051e0d636ec657c517c8a8b9c058018` |
| 3 | `def` | [correlation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean/declarations/correlation--6fc6bc1153c86c7f5a4334ae.md) | 52 | `declaration-track:6fc6bc1153c86c7f5a4334aeccbc2ba0259588fa933b9bb7bf2ce327ba891ec4` |
| 4 | `theorem` | [correlation_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean/declarations/correlation-product-integrable--2376d3676f8f3156f18a404d.md) | 55 | `result-track:2376d3676f8f3156f18a404dea0a391ab92531455b7518979b44c5e8e6005e70` |
| 5 | `theorem` | [correlation_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean/declarations/correlation-eq-convolution--28326ff2987563f1e1173f47.md) | 60 | `result-track:28326ff2987563f1e1173f473b0c5d0aa1e8c4e761fac9cd3fa300dda72addc5` |
| 6 | `theorem` | [correlation_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean/declarations/correlation-contdiff-two--2423de227728ee7955560873.md) | 71 | `result-track:2423de227728ee7955560873d2bdea0f6ab581061c05c93b606707607ffe62fe` |
| 7 | `theorem` | [correlation_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean/declarations/correlation-zero--4c2e5c91e2b936a2529985d7.md) | 78 | `result-track:4c2e5c91e2b936a2529985d70e34013eb2c1f8ebba6190138c02769361023d69` |
| 8 | `theorem` | [correlation_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean/declarations/correlation-hascompactsupport--8db34bae3a90ed4fca91e4b8.md) | 83 | `result-track:8db34bae3a90ed4fca91e4b8c6588606837507c2c16e88812faeb8575d571305` |
| 9 | `theorem` | [correlation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean/declarations/correlation-integrable--7e23ae96fb63fab21ac9b58d.md) | 92 | `result-track:7e23ae96fb63fab21ac9b58d444716e19b3784960f1e062de9a544af39041ed1` |
| 10 | `theorem` | [correlation_even](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean/declarations/correlation-even--302d641843282866c05457a6.md) | 97 | `result-track:302d641843282866c05457a64832f4041d433d13e85719d634c83018c321717d` |
| 11 | `def` | [complexCorrelation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean/declarations/complexcorrelation--38e3a6bafaee5932b6ef3df6.md) | 106 | `declaration-track:38e3a6bafaee5932b6ef3df6459a4d3616b29a22c218b42257631c5635992570` |
| 12 | `theorem` | [complexCorrelation_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean/declarations/complexcorrelation-contdiff-two--43485921d735433adc42a78b.md) | 109 | `result-track:43485921d735433adc42a78bf493f11215717fb19b184200f5999be5600c2c11` |
| 13 | `theorem` | [complexCorrelation_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean/declarations/complexcorrelation-hascompactsupport--3a927a31e475dd45da066be9.md) | 114 | `result-track:3a927a31e475dd45da066be9efddc4f1472b454bcb010c6da0336310ad209371` |
| 14 | `theorem` | [complexCorrelation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean/declarations/complexcorrelation-integrable--6394ef1a3a243c83cf3c6a7c.md) | 119 | `result-track:6394ef1a3a243c83cf3c6a7c9c6b66fd99b01e5e824e4363d2412b6ea79edd2d` |
| 15 | `theorem` | [correlation_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Varianta8cfc31f2606ee6e1352cf235489c95f0d4721c55ac88df679748cc2471e5540.lean/declarations/correlation-eq-source--c8473f0301fcdcd2c057c9d6.md) | 124 | `result-track:c8473f0301fcdcd2c057c9d6246245f9bad31f72ba1523698736e0cca78caa90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
