# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FixedKernelLaplace.Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c4153624bb0ce8aab90ec65ae902dcf14a2b072",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c4153624bb0ce8aab90ec65ae902dcf14a2b072`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Complex` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/declarations/weightedsource--a4dbbe0900c58c15fea9d137.md) | 21 | `declaration-track:a4dbbe0900c58c15fea9d1377ad025c33f88c8e4be2fe5d4352ec050b2c913cc` |
| 2 | `def` | [laplaceSample](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/declarations/laplacesample--293dd0647fb79e6630c8b010.md) | 25 | `declaration-track:293dd0647fb79e6630c8b01076cd4b11e7f75a7411ee21c89c752905453127de` |
| 3 | `def` | [sampleCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/declarations/samplecoefficient--472ba8eb0e9d4cd0f30b12bb.md) | 29 | `declaration-track:472ba8eb0e9d4cd0f30b12bbe3c6ca43b4d744f45447f9390ca296a7bee44bd5` |
| 4 | `def` | [sourceNormIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/declarations/sourcenormintegral--09846ce55d5763002e7a3d50.md) | 34 | `declaration-track:09846ce55d5763002e7a3d5065b13e696b8fecc4c2d63c2986d9b4a5b6601ce3` |
| 5 | `theorem` | [V_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/declarations/v-even--a0c82529c8181c4084f5cdb7.md) | 37 | `result-track:a0c82529c8181c4084f5cdb7340763867429a6cf96ad42272f6bed09bfbbbb6d` |
| 6 | `theorem` | [weightedSource_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/declarations/weightedsource-integrable--bf3dcc7abf87f7382119c0d0.md) | 47 | `result-track:bf3dcc7abf87f7382119c0d0dcd0d78f6026e6d445b95caa67db800fe1b43226` |
| 7 | `theorem` | [laplaceSample_eq_translate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/declarations/laplacesample-eq-translate--b18be6942b3193bf9e0995a6.md) | 51 | `result-track:b18be6942b3193bf9e0995a62cab414712ff494b3efab6f7cb3c168ba25bf826` |
| 8 | `theorem` | [laplaceSample_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/declarations/laplacesample-integrable--0c9db6cb3586475cc87ebfa6.md) | 66 | `result-track:0c9db6cb3586475cc87ebfa6356ac2cca66026518ebc483f7efea35f41a3f755` |
| 9 | `theorem` | [laplaceSample_zero_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/declarations/laplacesample-zero-of-nonpos--142f456a6c374bde249e8410.md) | 74 | `result-track:142f456a6c374bde249e8410158d9007bb9bcf836d059dbfc6c6a5eaa9b66283` |
| 10 | `theorem` | [laplaceSample_integral_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/declarations/laplacesample-integral-ioi--93d04d66a093292821608569.md) | 80 | `result-track:93d04d66a0932928216085699c0af038510fb8f4fc6c4c0f048534ee6cda67a7` |
| 11 | `theorem` | [sourceNormIntegral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/declarations/sourcenormintegral-nonneg--a4430739534ce8902da4ebd3.md) | 90 | `result-track:a4430739534ce8902da4ebd36d31cd7ebb1803d130b2e5692009c40fe095e127` |
| 12 | `theorem` | [laplaceSample_norm_integral_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/declarations/laplacesample-norm-integral-ioi--ab064fd000ca8afa81e2add6.md) | 94 | `result-track:ab064fd000ca8afa81e2add639c88402264385ed63a7c988f2e76f039ff7ff43` |
| 13 | `theorem` | [sampleCoefficient_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/declarations/samplecoefficient-norm--fa31e5246f2fb20928c4708c.md) | 105 | `result-track:fa31e5246f2fb20928c4708c31b4fbef5e2665918f5cc13fffa625422b6bced5` |
| 14 | `theorem` | [laplaceSample_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/declarations/laplacesample-norm-integrals-summable--bbacbfd94b592a990415cdf5.md) | 119 | `result-track:bbacbfd94b592a990415cdf58b0e103673ad54242d2e51301540ffddbe12a43e` |
| 15 | `theorem` | [sampleCoefficient_eq_cpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/declarations/samplecoefficient-eq-cpow--d864e6532eb7311665600efa.md) | 130 | `result-track:d864e6532eb7311665600efa771868829a5e87dc1654c552a1c252bac562d06b` |
| 16 | `theorem` | [laplaceSample_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/declarations/laplacesample-tsum--2fb86be85683516294fa981d.md) | 145 | `result-track:2fb86be85683516294fa981d15831c9dffe0c63506c3df022def346202a82178` |
| 17 | `theorem` | [fixedKernel_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/declarations/fixedkernel-laplace-integrable--8a947742c255b5eb17fa5c07.md) | 151 | `result-track:8a947742c255b5eb17fa5c07cbb0eb64cacef91486e5214ad32eae332304ea71` |
| 18 | `theorem` | [fixedKernel_laplace_eq_transferProduct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/declarations/fixedkernel-laplace-eq-transferproduct--6752aed9e27d4058c5374307.md) | 167 | `result-track:6752aed9e27d4058c5374307f35d59bbe3111f4755f41743d07a976a5cc7ee44` |
| 19 | `theorem` | [fixedKernel_laplace_eq_repairedTransfer](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/declarations/fixedkernel-laplace-eq-repairedtransfer--5af8f746e618fb0a4d25d03c.md) | 187 | `result-track:5af8f746e618fb0a4d25d03cb960c3fae700b44eb32d0f665d6525b7c6d26b2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
