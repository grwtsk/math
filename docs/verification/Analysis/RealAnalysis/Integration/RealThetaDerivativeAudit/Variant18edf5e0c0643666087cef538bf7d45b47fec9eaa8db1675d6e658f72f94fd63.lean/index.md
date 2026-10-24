# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RealThetaDerivativeAudit.Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b0d5394eeaa2ffd3ae58da8d9af7c33f6e61336",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b0d5394eeaa2ffd3ae58da8d9af7c33f6e61336`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelEstimate` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationPrimitiveMoments` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realThetaKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/realthetakernel--2ed3541109602346a90f674a.md) | 23 | `declaration-track:2ed3541109602346a90f674ab106dacb92c540b5d9d1e01c569c827de4c1b125` |
| 2 | `def` | [differenceSamplingKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/differencesamplingkernel--fd2589efa5923d0e3621ed07.md) | 26 | `declaration-track:fd2589efa5923d0e3621ed0742bc85eeb53c0bc13684327d3c35a0e24d5feb2c` |
| 3 | `def` | [realThetaDifferenceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/realthetadifferencekernel--64fcd2bfa64d585897dd49d9.md) | 30 | `declaration-track:64fcd2bfa64d585897dd49d9cdf61706c25766679d6b575b1481121c13e4a10a` |
| 4 | `def` | [realThetaRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/realthetaremainder--26538a71596ccb1c240f46dd.md) | 33 | `declaration-track:26538a71596ccb1c240f46ddba5a6f0d12feb1038fcc4b628efe47c6fce5198d` |
| 5 | `theorem` | [samplingIndices_eq_fixed_filter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/samplingindices-eq-fixed-filter--f622f280116b6146dd2e3c71.md) | 36 | `result-track:f622f280116b6146dd2e3c712ed4748dd6ece3b8193b20391497c188e7ee4cfe` |
| 6 | `theorem` | [realThetaKernel_eq_strict_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/realthetakernel-eq-strict-sum--1dbf89e6c83b511a42321283.md) | 52 | `result-track:1dbf89e6c83b511a4232128371acaed102efa55e45630790063b8581d17f0a97` |
| 7 | `theorem` | [realThetaKernel_eq_nat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/realthetakernel-eq-nat--b6e538660eca15032b469814.md) | 67 | `result-track:b6e538660eca15032b4698141788b88093f2b33aacad677c2e2db5d2bfc51c14` |
| 8 | `theorem` | [realThetaRemainder_eq_nat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/realthetaremainder-eq-nat--069d48c36ed481b2eaa676bd.md) | 72 | `result-track:069d48c36ed481b2eaa676bdbbbdc475199f1b911a16a0deec422cc27c74af21` |
| 9 | `theorem` | [differenceSamplingKernel_eq_mul_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/differencesamplingkernel-eq-mul-deriv--11872c01d6aed9f9d9f52ce9.md) | 77 | `result-track:11872c01d6aed9f9d9f52ce951913fe22a21935bc2850f37d4c54e099e63dd90` |
| 10 | `theorem` | [realThetaKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/realthetakernel-hasderivat--cc93206b15e09c37a1288ede.md) | 83 | `result-track:cc93206b15e09c37a1288ede4f0416f1d2178a8d3f10748c13943b119279c2fd` |
| 11 | `theorem` | [realThetaKernel_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/realthetakernel-deriv--8cb26951a1f34ea051103e75.md) | 99 | `result-track:8cb26951a1f34ea051103e75b462f5a3fe5c3172642eca4d0bd826d50210b855` |
| 12 | `theorem` | [realThetaRemainder_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/realthetaremainder-hasderivat--045b6993aa310cb0f3542e63.md) | 103 | `result-track:045b6993aa310cb0f3542e6375921e0c9d1ec35f0ec98bfff3b6a63f49079d06` |
| 13 | `theorem` | [realThetaRemainder_differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/realthetaremainder-differentiableon--69287c646184505405ec2675.md) | 113 | `result-track:69287c646184505405ec2675f4b12ec1ace47be114ef66a8cac8202260ec5a0b` |
| 14 | `theorem` | [difference_primitive_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/difference-primitive-eq--1b3852096e773723cdec5286.md) | 118 | `result-track:1b3852096e773723cdec528601a281881b6f31df64f52e1a3a75ba3ba83e0a3c` |
| 15 | `def` | [differencePrimitiveSamplingKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/differenceprimitivesamplingkernel--c094e828f989e4fe3001f15c.md) | 136 | `declaration-track:c094e828f989e4fe3001f15c856adf1899d43fa4954bff560012b613e322d113` |
| 16 | `theorem` | [differencePrimitiveSamplingKernel_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/differenceprimitivesamplingkernel-eq--74e020b72c458f20e4f10a31.md) | 141 | `result-track:74e020b72c458f20e4f10a312a3bee87dc95a059ad380f4d295b5952edb2ed3d` |
| 17 | `theorem` | [differencePrimitiveSamplingKernel_add_rankOne_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/differenceprimitivesamplingkernel-add-rankone-abs-le--6fe0e440b65160ab5fbcc4f2.md) | 148 | `result-track:6fe0e440b65160ab5fbcc4f28b2fa3863df4b17d420e3ef9fba693cbaa8e243c` |
| 18 | `theorem` | [differencePrimitiveSamplingKernel_eq_fixed_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/differenceprimitivesamplingkernel-eq-fixed-sum--1aafee8b6eec10420d604b47.md) | 171 | `result-track:1aafee8b6eec10420d604b479417e1649d40b8153d59d0c419b71aaca83f961a` |
| 19 | `theorem` | [difference_tail_eq_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/difference-tail-eq-primitive--418c3340dfdd268e8731ec56.md) | 191 | `result-track:418c3340dfdd268e8731ec56b1004fa4f69e03fb0772001340334a4758c12d31` |
| 20 | `theorem` | [rootWeight_difference_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/rootweight-difference-integral--88a1628750e26b4a04e53ee5.md) | 229 | `result-track:88a1628750e26b4a04e53ee580e605214c7c913ce43354645cded3953f321993` |
| 21 | `def` | [differenceInnerTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/differenceinnerterm--5137fbda28fab33bb33b0b2c.md) | 239 | `declaration-track:5137fbda28fab33bb33b0b2ca3b2a6c4a86a3446b9e61790908d2fe3c09cf6b0` |
| 22 | `theorem` | [differenceInnerTerm_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/differenceinnerterm-eq--0b09b9e635d08eda7e837ed9.md) | 243 | `result-track:0b09b9e635d08eda7e837ed9a7a5cad124ae28bbee92239de90848972e879518` |
| 23 | `theorem` | [differenceInnerTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/differenceinnerterm-integrable--8bf8c8581be78f2dabf55931.md) | 252 | `result-track:8bf8c8581be78f2dabf55931f893945d4958c3aa9c52d635cfa4a406642b4861` |
| 24 | `theorem` | [differenceInnerTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/differenceinnerterm-integral--ea56a074112979cec3419b9e.md) | 265 | `result-track:ea56a074112979cec3419b9e220341b16acd9cd3058e9c78ceb3cebc5aab410a` |
| 25 | `theorem` | [differenceKernel_eq_inner_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/differencekernel-eq-inner-sum--2c77ee3be74562d447e18ab4.md) | 282 | `result-track:2c77ee3be74562d447e18ab41b36b0d8449514f94c38fedabbb39f3050f3e19f` |
| 26 | `theorem` | [differenceKernel_rescaled_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/differencekernel-rescaled-integrable--aa26edad9de9fd9777383007.md) | 294 | `result-track:aa26edad9de9fd9777383007ab0ce80bd2453b7317fd762436332322a88e0b69` |
| 27 | `theorem` | [differenceKernel_integral_eq_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/differencekernel-integral-eq-primitive--2eb15e1f95284450269be0be.md) | 304 | `result-track:2eb15e1f95284450269be0be58bb3272091e85cb5305413db7063895a0b669f5` |
| 28 | `theorem` | [differenceKernel_integral_add_rankOne_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/declarations/differencekernel-integral-add-rankone-abs-le--2fd940425169024f193c60ba.md) | 323 | `result-track:2fd940425169024f193c60ba31dcc9cfd6a4627d6d3cd7ef544f1499eabcee97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
