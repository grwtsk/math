# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FixedKernelLaplace.Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53b28ae889f4a1c0910301464977328decc03df7",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53b28ae889f4a1c0910301464977328decc03df7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Complex` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/declarations/weightedsource--57ec70006998ec9209e31b59.md) | 13 | `declaration-track:57ec70006998ec9209e31b59431bc5106b38b8c1d97f5b897f7c5f0009d7892b` |
| 2 | `def` | [laplaceSample](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/declarations/laplacesample--235540174586029e50b62a75.md) | 17 | `declaration-track:235540174586029e50b62a7519a2aee3a5e3f27b056882838181e51db9f20e32` |
| 3 | `def` | [sampleCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/declarations/samplecoefficient--5b279da5d5695f96cfd6f47a.md) | 21 | `declaration-track:5b279da5d5695f96cfd6f47a76719f8cb847091593524ac0210f2512e188ff83` |
| 4 | `def` | [sourceNormIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/declarations/sourcenormintegral--d163209af82ef3f9f38901f7.md) | 26 | `declaration-track:d163209af82ef3f9f38901f7cdf6a0b76ad088191ac6ef1f32bd236b4cb1af55` |
| 5 | `theorem` | [V_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/declarations/v-even--e96bd6851f74d5224575a1c4.md) | 29 | `result-track:e96bd6851f74d5224575a1c413999b964237b3a8710da344b16a1a750f88db4e` |
| 6 | `theorem` | [weightedSource_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/declarations/weightedsource-integrable--f567775770c824fd497760e6.md) | 39 | `result-track:f567775770c824fd497760e6d317cd86e7e61c31e5449459f581801b4dbb8f53` |
| 7 | `theorem` | [laplaceSample_eq_translate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/declarations/laplacesample-eq-translate--4d9bd09fb9eaaa7c13677c01.md) | 43 | `result-track:4d9bd09fb9eaaa7c13677c01a8c1f75a73d7f72ef53a1558ed299b3e10071eed` |
| 8 | `theorem` | [laplaceSample_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/declarations/laplacesample-integrable--4238c1749fe0c74b86c872c0.md) | 58 | `result-track:4238c1749fe0c74b86c872c0f51d2ee4b33191d89967acc6c52c2dce2b793942` |
| 9 | `theorem` | [laplaceSample_zero_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/declarations/laplacesample-zero-of-nonpos--cb15af7e1ce10ac529726ce3.md) | 66 | `result-track:cb15af7e1ce10ac529726ce3b854f1a5f40425a925a510a1a0b4b7b459d76be4` |
| 10 | `theorem` | [laplaceSample_integral_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/declarations/laplacesample-integral-ioi--5f5a92a774c5b983299f723b.md) | 72 | `result-track:5f5a92a774c5b983299f723b7640a0520ba03fdf043d79fa96a3f4962a1b2509` |
| 11 | `theorem` | [sourceNormIntegral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/declarations/sourcenormintegral-nonneg--ae402a05224b3f1217fc3c9c.md) | 82 | `result-track:ae402a05224b3f1217fc3c9c4e6cb95c9f34137bd29889efcb71a9a164a0a58d` |
| 12 | `theorem` | [laplaceSample_norm_integral_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/declarations/laplacesample-norm-integral-ioi--8b8d40ddc45978b7e727d4a2.md) | 86 | `result-track:8b8d40ddc45978b7e727d4a29850ac7fb3cbd58880b5cbc0c8163a57f8e8dab8` |
| 13 | `theorem` | [sampleCoefficient_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/declarations/samplecoefficient-norm--3846502928096fdd6b3f0e29.md) | 97 | `result-track:3846502928096fdd6b3f0e290253a78b27ccdafc127b781cdcacb99c7071d754` |
| 14 | `theorem` | [laplaceSample_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/declarations/laplacesample-norm-integrals-summable--9a81135ed69180bf81179d5d.md) | 111 | `result-track:9a81135ed69180bf81179d5d839465ee6e597686b3555c989cfdb2445d2168c5` |
| 15 | `theorem` | [sampleCoefficient_eq_cpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/declarations/samplecoefficient-eq-cpow--a03b691cc4341dd5d7ff70c5.md) | 122 | `result-track:a03b691cc4341dd5d7ff70c541ab16ad1a65338f802d979d5abd42e20e1c3147` |
| 16 | `theorem` | [laplaceSample_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/declarations/laplacesample-tsum--cd0b469d602289d7af1ab5e9.md) | 137 | `result-track:cd0b469d602289d7af1ab5e90e6ac090afaf1243a7999f247153b7337da62988` |
| 17 | `theorem` | [fixedKernel_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/declarations/fixedkernel-laplace-integrable--50793af738581b01acda457f.md) | 143 | `result-track:50793af738581b01acda457f7150759363537a7303e8290c2372e691958a2973` |
| 18 | `theorem` | [fixedKernel_laplace_eq_transferProduct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/declarations/fixedkernel-laplace-eq-transferproduct--32dd2b8f9c0476cb5cefec8a.md) | 159 | `result-track:32dd2b8f9c0476cb5cefec8a792f165643239a450b331458205827d2295cf863` |
| 19 | `theorem` | [fixedKernel_laplace_eq_repairedTransfer](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/declarations/fixedkernel-laplace-eq-repairedtransfer--92244545f3ac5a06012caed4.md) | 179 | `result-track:92244545f3ac5a06012caed439078125e0be153d7dcebdd9abfe56396d66997f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
