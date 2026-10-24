# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.L2Space.Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba68f2afcf2ef56eb220febdb81ae54ab9e7826b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba68f2afcf2ef56eb220febdb81ae54ab9e7826b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.LinearMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousFunctions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Inner` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MemLp.integrable_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/memlp-integrable-sq--80df14d8ca7b3d4d81c59699.md) | 46 | `result-track:80df14d8ca7b3d4d81c596992fd865756eb782cd22965c9597a2e2d21dca0f02` |
| 2 | `theorem` | [memLp_two_iff_integrable_sq_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/memlp-two-iff-integrable-sq-norm--197c5ee1e2a7101ed1abd654.md) | 52 | `result-track:197c5ee1e2a7101ed1abd654cf7fa989cd13effd43d0ec5eaf01894d62376df8` |
| 3 | `theorem` | [memLp_two_iff_integrable_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/memlp-two-iff-integrable-sq--c9d60e3bb0cf30717e4843de.md) | 62 | `result-track:c9d60e3bb0cf30717e4843de2aa72d243d273a5cf84a42dbbac375bb24a3f862` |
| 4 | `theorem` | [MemLp.const_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/memlp-const-inner--a91f297c59bebf528dc83dbd.md) | 79 | `result-track:a91f297c59bebf528dc83dbdeb9167ed3334b6106a12703127a8534e484c75e0` |
| 5 | `theorem` | [MemLp.inner_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/memlp-inner-const--d951aa097f342165c3c40218.md) | 86 | `result-track:d951aa097f342165c3c40218e0b4812410e66b7d60bfa45b4ba14086d168fc5b` |
| 6 | `theorem` | [Integrable.const_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/integrable-const-inner--1108fb038ccaa638f0f7ecb8.md) | 96 | `result-track:1108fb038ccaa638f0f7ecb8bf501e27311778fec6499953c93edb7369d0fc95` |
| 7 | `theorem` | [Integrable.inner_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/integrable-inner-const--97b638872c1ec28585e1d0a2.md) | 101 | `result-track:97b638872c1ec28585e1d0a2eb00028ec8a2ac1ca1e3801b9ccddfab9d598e31` |
| 8 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.MemLpIntegrableSq.Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.integral_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/root-grwtsk-analysis-realanalysis-integration-memlpintegrablesq-variant6--d812780df661ad28f995cc48.md) | 107 | `result-track:d812780df661ad28f995cc485b51e5d459326c168d6b8b53751fab97c0229303` |
| 9 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.MemLpIntegrableSq.Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.integral_eq_zero_of_forall_integral_inner_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/root-grwtsk-analysis-realanalysis-integration-memlpintegrablesq-variant6--47ac1e0b1818f7d8849f91c5.md) | 113 | `result-track:47ac1e0b1818f7d8849f91c52ff534683664fa0d1833a73ce295f645920b982f` |
| 10 | `theorem` | [eLpNorm_rpow_two_norm_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/elpnorm-rpow-two-norm-lt-top--ee52e0c1a98928facb88e67b.md) | 126 | `result-track:ee52e0c1a98928facb88e67bdf1f794bc7c3822fed45b38e6e493679ca7abcc7` |
| 11 | `theorem` | [eLpNorm_inner_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/elpnorm-inner-lt-top--a474f161be0285abc00b90f8.md) | 132 | `result-track:a474f161be0285abc00b90f86512aff264a7c6dc83e78d45c4cf1010e6ccd1e3` |
| 12 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/instance--9c0771205bc9ba5be9160d95.md) | 153 | `declaration-track:9c0771205bc9ba5be9160d951ab0336af25dcb8a11c3c189d17b1e4718e0637a` |
| 13 | `theorem` | [inner_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/inner-def--f28f92bc60af68aab28983f1.md) | 156 | `result-track:f28f92bc60af68aab28983f15250915baf68a7004071f22a4a54f94efd385b8e` |
| 14 | `theorem` | [integral_inner_eq_sq_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/integral-inner-eq-sq-elpnorm--02a97e4e6d34d4e3689cf5d8.md) | 159 | `result-track:02a97e4e6d34d4e3689cf5d820dd3063948a7a7cde15ba63e9acee52b79f2b5b` |
| 15 | `theorem` | [norm_sq_eq_re_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/norm-sq-eq-re-inner--ec98bdf1228dfe8e71106701.md) | 174 | `result-track:ec98bdf1228dfe8e71106701c5deb987b9f1ddbc13b8684d4c942441c62e40d7` |
| 16 | `theorem` | [mem_L1_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/mem-l1-inner--1e9afa60cc6b587dfac062a7.md) | 187 | `result-track:1e9afa60cc6b587dfac062a7be232af92479aed1df57c26d1ccba1ffe7c0b919` |
| 17 | `theorem` | [integrable_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/integrable-inner--8c5b3e804209b88fe9fcc335.md) | 193 | `result-track:8c5b3e804209b88fe9fcc335456bf63fcb465a5c642d9bb06eb6741418cdb074` |
| 18 | `theorem` | [add_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/add-left--f0c3488a3f60198fd0fad5d4.md) | 199 | `result-track:f0c3488a3f60198fd0fad5d40dee116e7f4f9c52b9d0146e675160fd40b10afc` |
| 19 | `theorem` | [smul_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/smul-left--612f5841e5b1fa2af5d22789.md) | 205 | `result-track:612f5841e5b1fa2af5d22789e8a7aebf76f1616c5f9c1aa4a4caa756e91fba9c` |
| 20 | `instance` | [innerProductSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/innerproductspace--181a0840389c5c4d43ddaa5a.md) | 211 | `declaration-track:181a0840389c5c4d43ddaa5a2bba9bc53346b214d4ca598f55867443861746ab` |
| 21 | `theorem` | [inner_indicatorConstLp_eq_setIntegral_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/inner-indicatorconstlp-eq-setintegral-inner--55bb16d680cd8603435d160d.md) | 225 | `result-track:55bb16d680cd8603435d160d1e71529f4ca2cbc61a85f9993456a662a07047cd` |
| 22 | `theorem` | [inner_indicatorConstLp_eq_inner_setIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/inner-indicatorconstlp-eq-inner-setintegral--e7db92320c423a03ce35820e.md) | 253 | `result-track:e7db92320c423a03ce35820ee3a87f898916fc7a7e3a2b03db19b1494ae57dc2` |
| 23 | `theorem` | [inner_indicatorConstLp_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/inner-indicatorconstlp-one--de72311f7bb760af3246f498.md) | 263 | `result-track:de72311f7bb760af3246f498800bea7003360f71442c9a4aafd8bdfb6f5abc8d` |
| 24 | `theorem` | [BoundedContinuousFunction.inner_toLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/boundedcontinuousfunction-inner-tolp--5732e4307553708952abd691.md) | 282 | `result-track:5732e4307553708952abd691ed662052bffcc253ae10e4eaaf9572a00c590f83` |
| 25 | `theorem` | [ContinuousMap.inner_toLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/declarations/continuousmap-inner-tolp--10ffc5530874008d2a263c78.md) | 297 | `result-track:10ffc5530874008d2a263c782d902104db0757f4865ea4288e5794eb9e8f1144` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
