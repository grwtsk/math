# Verification target: GRWTSK.Topology.GeneralTopology.FunctionalAnalyticLinearAlgebra.Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "238d9fa2019c172305c471d42655127b6b2b02a4",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `238d9fa2019c172305c471d42655127b6b2b02a4`.

Source path: `GRWTSK/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Analysis.AnalyticGenerators` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousLinearOperatorSkeleton](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/continuouslinearoperatorskeleton--6faa263882b8c87379f2e1e8.md) | 23 | `declaration-track:6faa263882b8c87379f2e1e8dbf27896ef02a8a531b146acb51562567b2d3808` |
| 2 | `def` | [LinearKernel](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/linearkernel--897bd3574c9dca79dd15306c.md) | 37 | `declaration-track:897bd3574c9dca79dd15306c365c3f03c1bc14f018da274c4b1854c5d136e705` |
| 3 | `def` | [LinearRange](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/linearrange--940b9580029526d68bf6532b.md) | 41 | `declaration-track:940b9580029526d68bf6532b78eaca80f02df3269227ef4328c096ca3273751e` |
| 4 | `def` | [LinearAffineFiber](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/linearaffinefiber--774f28c7a6dd529be64d141d.md) | 45 | `declaration-track:774f28c7a6dd529be64d141df908292a15a023fd99f53bb07e1a786a0a3d2561` |
| 5 | `def` | [LinearEqualizer](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/linearequalizer--b673a480a7adceb97125b429.md) | 49 | `declaration-track:b673a480a7adceb97125b429a016c2d506c9db88c3a87fd27fd4bae8a9a52d9e` |
| 6 | `def` | [LinearConstraintIntersection](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/linearconstraintintersection--e6248bf08bd34698b2457e1a.md) | 53 | `declaration-track:e6248bf08bd34698b2457e1a4df1c7dd5fa09acaf77ab632dc6eed76a8f508e7` |
| 7 | `theorem` | [linear_affine_fiber_nonempty_iff_range](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/linear-affine-fiber-nonempty-iff-range--3045cb4c3faaf7ab4e73a62d.md) | 57 | `result-track:3045cb4c3faaf7ab4e73a62d836d23cc6657adc58021d69972c2ec82ead83408` |
| 8 | `theorem` | [linear_affine_fiber_zero_eq_kernel](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/linear-affine-fiber-zero-eq-kernel--845824bb303fc7aa8c61b597.md) | 69 | `result-track:845824bb303fc7aa8c61b5976473f987578e65ea103fe7d19c38764bdb19a430` |
| 9 | `inductive` | [LinearAnalyticOperatorForm](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/linearanalyticoperatorform--8c64fca9704f20e85fff2f46.md) | 80 | `declaration-track:8c64fca9704f20e85fff2f46c03ac39fdd6ffe9f1459651fd2b884e537bdfa11` |
| 10 | `def` | [analyticGeneratorLinearOperatorForm](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/analyticgeneratorlinearoperatorform--48dcf0d48db0cb8ed0db48ca.md) | 93 | `declaration-track:48dcf0d48db0cb8ed0db48cafea35c0eaccef6dee58f0278e0827346ac33891e` |
| 11 | `theorem` | [analytic_generator_has_linear_operator_form](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/analytic-generator-has-linear-operator-form--312ae737fa6666b5d83a870a.md) | 121 | `result-track:312ae737fa6666b5d83a870a21978cdba557a048b78da68a0230ae00b68016f1` |
| 12 | `structure` | [LocalFunctionalAnalyticContext](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/localfunctionalanalyticcontext--a935e4161686c3ebd248b1ec.md) | 147 | `declaration-track:a935e4161686c3ebd248b1eca670413d37623af93c52b0f2d4a1d166e566d746` |
| 13 | `def` | [LocalAnalyticRange](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/localanalyticrange--76b953230f65be95e7b4984e.md) | 155 | `declaration-track:76b953230f65be95e7b4984e54fbf6578992da3d7b85b775417cf68f8f75da1f` |
| 14 | `def` | [LocalCoefficientFiber](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/localcoefficientfiber--de9af7c338a91d22a05c10dc.md) | 162 | `declaration-track:de9af7c338a91d22a05c10dc0b5fed6fa6a7ed0dfcfb00b4a2cf91b157790c69` |
| 15 | `theorem` | [local_coefficient_fiber_nonempty_iff_range](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/local-coefficient-fiber-nonempty-iff-range--f2d4901e13ed0d9fa4219faf.md) | 169 | `result-track:f2d4901e13ed0d9fa4219fafe8e3dff735e2bd7af0e8d3e30f2b9aab4d95a09e` |
| 16 | `theorem` | [local_analytic_range_subset_analyticSubspace](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/local-analytic-range-subset-analyticsubspace--dc88791786f82fbe05e6aa23.md) | 184 | `result-track:dc88791786f82fbe05e6aa2325d6b50a80cc76a6ae985240e42b7070e7750f79` |
| 17 | `theorem` | [local_coefficient_fiber_witness_lands_in_analyticSubspace](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/local-coefficient-fiber-witness-lands-in-analyticsubspace--3b4891084bda015abc4a7f69.md) | 193 | `result-track:3b4891084bda015abc4a7f6919da274b7033730ee203a4c4f987860fc703aeef` |
| 18 | `structure` | [GlobalFunctionalAnalyticContext](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/globalfunctionalanalyticcontext--ba4eb1c7600de83a38226a21.md) | 227 | `declaration-track:ba4eb1c7600de83a38226a2193798f58627a7ff14536e2fbd5e8a1e395df366b` |
| 19 | `def` | [GlobalSynthesizedSection](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/globalsynthesizedsection--0b545da8918531284b707fce.md) | 238 | `declaration-track:0b545da8918531284b707fce41969f1637b7f6edb6b970be58627e9fa2365abb` |
| 20 | `def` | [GlobalCechEqualizer](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/globalcechequalizer--ce24d6d9573ec1f744db5d72.md) | 246 | `declaration-track:ce24d6d9573ec1f744db5d72017c87839124016a9ffb5b364dee8f588e209469` |
| 21 | `def` | [GlobalIdentification](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/globalidentification--f8235dccaa6317402e439ac9.md) | 256 | `declaration-track:f8235dccaa6317402e439ac9523a775496428f0a7a12500b55e2e04b46e94d4e` |
| 22 | `def` | [GlobalCoefficientFiber](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/globalcoefficientfiber--2c5bc93ef4ab73cc51050798.md) | 264 | `declaration-track:2c5bc93ef4ab73cc51050798b2f6bde2581ac9281a94acf72569ebbcecadd023` |
| 23 | `theorem` | [global_coefficient_fiber_requires_equalizer](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/global-coefficient-fiber-requires-equalizer--e85c9c3dc8688605628d1a18.md) | 274 | `result-track:e85c9c3dc8688605628d1a183d76172f91906a8d9172df418ae2d0284c53e63f` |
| 24 | `theorem` | [global_coefficient_fiber_requires_identification](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/global-coefficient-fiber-requires-identification--79bbd3d04a999e13324c4355.md) | 284 | `result-track:79bbd3d04a999e13324c43556afad6fc3cdec81bbb049fe8fb35760c701b125b` |
| 25 | `theorem` | [global_synthesized_section_lands_in_analyticSubspace](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/global-synthesized-section-lands-in-analyticsubspace--ed13f868b3a969b03d1bb414.md) | 294 | `result-track:ed13f868b3a969b03d1bb414ddb44b210656c2de75bcbab91355b00555112fb4` |
| 26 | `theorem` | [global_coefficient_fiber_lands_in_local_analyticSubspaces](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/global-coefficient-fiber-lands-in-local-analyticsubspaces--4b03df1d955eb20c91ca0e40.md) | 303 | `result-track:4b03df1d955eb20c91ca0e405c7ba9d40dd7496634cd453816b3a8b710e17a1e` |
| 27 | `structure` | [LocalGeneratorOperatorSignature](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/localgeneratoroperatorsignature--ebd532b28c3ff384ad826dea.md) | 340 | `declaration-track:ebd532b28c3ff384ad826dea9a6c3927ab3bb2e5f8c6ca909adc749666975a66` |
| 28 | `theorem` | [local_generator_operator_signature_lands_in_range](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/local-generator-operator-signature-lands-in-range--d519b0102fd8973628af9029.md) | 353 | `result-track:d519b0102fd8973628af9029f89c6290f3422d0a6d8ea4551cb125a55e05b8b5` |
| 29 | `theorem` | [local_generator_operator_signature_lands_in_analyticSubspace](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/local-generator-operator-signature-lands-in-analyticsubspace--e6bd4eb12e52b6e4fed35169.md) | 363 | `result-track:e6bd4eb12e52b6e4fed351697ad5d3637345f325121ce23761d721f68cb06d3f` |
| 30 | `structure` | [GlobalGeneratorOperatorSignature](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/globalgeneratoroperatorsignature--b4c07bc217776badd64f91f9.md) | 379 | `declaration-track:b4c07bc217776badd64f91f91f6c7f56215573aa2b2cbefcf37c8bcad3cc67f3` |
| 31 | `theorem` | [global_generator_operator_signature_satisfies_equalizer](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/global-generator-operator-signature-satisfies-equalizer--1c0013a068dff8d2c1b5cd58.md) | 393 | `result-track:1c0013a068dff8d2c1b5cd582780514e3ec1303bdd9d25b970dec30f5c418c2b` |
| 32 | `theorem` | [global_generator_operator_signature_identifies_restrictions](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/global-generator-operator-signature-identifies-restrictions--8a082647f4b23d6d8fc5ce84.md) | 405 | `result-track:8a082647f4b23d6d8fc5ce84c2ce19a98edd6a1a04f43e95dee070d3a58b366e` |
| 33 | `theorem` | [global_generator_operator_signature_lands_in_local_analyticSubspaces](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/declarations/global-generator-operator-signature-lands-in-local-analyticsubspaces--b0eca61c444a5e48357fb471.md) | 417 | `result-track:b0eca61c444a5e48357fb4718141408a869445fc3452eceaf9bb67e891fc4124` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
