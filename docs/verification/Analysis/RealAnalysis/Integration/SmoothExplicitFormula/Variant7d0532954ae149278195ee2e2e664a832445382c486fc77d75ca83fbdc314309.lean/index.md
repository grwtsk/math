# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SmoothExplicitFormula.Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b425f973f9833ebb51b75823e783d29be23875f7",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b425f973f9833ebb51b75823e783d29be23875f7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingLogarithmic` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Convolution` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [polynomial_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/polynomial-norm-le--01cca72847f537c9d931f0f9.md) | 47 | `result-track:01cca72847f537c9d931f0f93f81ce430cfdf44f96f4a368f8339e1a2ff64464` |
| 2 | `def` | [decayConstant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/decayconstant--5e6e160c9ed570d85f9fd1cb.md) | 70 | `declaration-track:5e6e160c9ed570d85f9fd1cb5ca94b5066eb649c7427bcc795ee0aa03c0933f1` |
| 3 | `theorem` | [transform_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/transform-norm-le--0c4861f2669febd0b4abc667.md) | 72 | `result-track:0c4861f2669febd0b4abc6672bc12766ee32c9ff5f4dceb4647ac769f3c08bcd` |
| 4 | `theorem` | [transform_square_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/transform-square-norm-le--f15b6b076d03798e8dae6b72.md) | 125 | `result-track:f15b6b076d03798e8dae6b7276f85d9d5cced1e0e8f06f2e8c8f6752be1aa6ac` |
| 5 | `theorem` | [eventually_one_le_shifted_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/eventually-one-le-shifted-norm--2c27a7cc02526c81dd454675.md) | 150 | `result-track:2c27a7cc02526c81dd454675da81d9c151ef49635e49cfecf8908c1c7314cd2e` |
| 6 | `theorem` | [source_transform_square_norms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/source-transform-square-norms-summable--332f82a4838c0c781961ac7c.md) | 158 | `result-track:332f82a4838c0c781961ac7c67f42a8a5bf6d397c260d13776825c024da593cd` |
| 7 | `theorem` | [smoothed_square_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/smoothed-square-norm-le--e719342e2902ece40ce84545.md) | 168 | `result-track:e719342e2902ece40ce84545b766693a03f5ca1d12d09871b0670015b10a4c0c` |
| 8 | `theorem` | [smoothed_squares_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/smoothed-squares-summable--edb42cdbd4e2cf5e8a30575f.md) | 188 | `result-track:edb42cdbd4e2cf5e8a30575f5ba959007ce98e61d52c29b60450c737148bcb1d` |
| 9 | `def` | [correlation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/correlation--9896bfe350eacdd600e3f777.md) | 198 | `declaration-track:9896bfe350eacdd600e3f77766bd7e5d137b3ffbb1aa69ea0c1ed898510f8d6f` |
| 10 | `def` | [bilateral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/bilateral--50280a8d9c7db8b0f96cfc13.md) | 200 | `declaration-track:50280a8d9c7db8b0f96cfc136d8fd7a15c7243d091b00269193121ffce2d5eb5` |
| 11 | `theorem` | [weighted_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/weighted-integrable--fcd822828ea793d78944b441.md) | 203 | `result-track:fcd822828ea793d78944b44138674a9ff890b7fb6cc7fd2cb2a04cc81fbb72da` |
| 12 | `theorem` | [correlation_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/correlation-eq-convolution--7106ff012b9afd02da221b58.md) | 212 | `result-track:7106ff012b9afd02da221b58f8aaf63253d8b3e8bfb53ef7e8b0493bc8237112` |
| 13 | `theorem` | [correlation_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/correlation-even--0f584f7abe4bcded74b85fb9.md) | 221 | `result-track:0f584f7abe4bcded74b85fb9333e2ec3842303e4ddc3eb00c6583bdfd08c0e90` |
| 14 | `theorem` | [correlation_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/correlation-contdiff--55724746a4a2ca46eed04933.md) | 228 | `result-track:55724746a4a2ca46eed0493311e7364b16a28cb477fdee34691eb8e8bc43580c` |
| 15 | `theorem` | [correlation_support_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/correlation-support-subset--6aa4d5b20d75279a735455fd.md) | 234 | `result-track:6aa4d5b20d75279a735455fd4787418582db6a734a9fac6ccb9299b20197c1ea` |
| 16 | `theorem` | [weighted_correlation_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/weighted-correlation-eq-convolution--9aeb22867844bc0d0014715d.md) | 245 | `result-track:9aeb22867844bc0d0014715d672e4c3dc32b53736a2ceb062b0e2f8f1a8f3195` |
| 17 | `theorem` | [weighted_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/weighted-product-integrable--9bf37b583c9f68e29ec823c7.md) | 268 | `result-track:9bf37b583c9f68e29ec823c75b713309fe738a898b2dde7faf1e06e5c9b6ec85` |
| 18 | `theorem` | [bilateral_correlation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/bilateral-correlation--749b7bc01ff6214f8eb94d72.md) | 277 | `result-track:749b7bc01ff6214f8eb94d726d6dc1dfdf7a188708a4f92aaac03cb829191371` |
| 19 | `def` | [smoothKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/smoothkernel--bef3b4d4a1ed3424785d2594.md) | 287 | `declaration-track:bef3b4d4a1ed3424785d25949b6c9f68e2c45e5d3bf77dfdcc9dee038f1b1370` |
| 20 | `def` | [smoothKernelFT](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/smoothkernelft--ee15e8a215ec2120efa69faf.md) | 291 | `declaration-track:ee15e8a215ec2120efa69faf9f43b93947ba4a15b4043703b1421df6465d130e` |
| 21 | `theorem` | [smoothKernelFT_eq_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/smoothkernelft-eq-square--782dee9e2c4d9143561d9b99.md) | 296 | `result-track:782dee9e2c4d9143561d9b99fd1be51f8abd8391b9038f6c675cda64b1215ce1` |
| 22 | `theorem` | [smoothKernelFT_shifted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/smoothkernelft-shifted--d9748ec0c9be7d30bb04b49c.md) | 309 | `result-track:d9748ec0c9be7d30bb04b49c6cb6f8523ebaaabc7ebe93b04257fe98a3ebfc96` |
| 23 | `theorem` | [smoothed_pole_bilateral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/smoothed-pole-bilateral--755fc0a5db1fc32efb768c16.md) | 318 | `result-track:755fc0a5db1fc32efb768c164f810c39356d6d253af6b5b4b52ecd02692186b6` |
| 24 | `def` | [SmoothExplicitFormulaObligation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/smoothexplicitformulaobligation--cc08918069eef2b19f95cd3b.md) | 334 | `declaration-track:cc08918069eef2b19f95cd3b71268223a08035b7d50d56b9028ddbe8c6e9ab25` |
| 25 | `theorem` | [smooth_kernel_admission](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/declarations/smooth-kernel-admission--5e8427a67f6a48f227e6ffc6.md) | 344 | `result-track:5e8427a67f6a48f227e6ffc6f4d2bc90e4571ace37a1b7f3d3644cdfedd4db16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
