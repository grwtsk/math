# Verification target: GRWTSK.Topology.GeneralTopology.FunctionalAnalyticLinearAlgebra.Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc363a63ee9dd81448c1ea0c95241a44213924d9",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc363a63ee9dd81448c1ea0c95241a44213924d9`.

Source path: `GRWTSK/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Analysis.AnalyticGenerators` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousLinearOperatorSkeleton](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/continuouslinearoperatorskeleton--da3707b295256d8dcd57ab92.md) | 31 | `declaration-track:da3707b295256d8dcd57ab92f748bcc4d175b069f9bcf4eaccce0e74349680b0` |
| 2 | `def` | [LinearKernel](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/linearkernel--8e46a4c5b58a669f83d46217.md) | 45 | `declaration-track:8e46a4c5b58a669f83d462173775ef62214f398409a1b3a36434e0ecdf9aedb4` |
| 3 | `def` | [LinearRange](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/linearrange--5f6e9d7e898713fd1bd3bb16.md) | 49 | `declaration-track:5f6e9d7e898713fd1bd3bb1622b0057a8ad3dcd6b69a2db7d51e9dc5401b850d` |
| 4 | `def` | [LinearAffineFiber](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/linearaffinefiber--4e2c2d3905864d93a2724dbb.md) | 53 | `declaration-track:4e2c2d3905864d93a2724dbbe15f89f5ed5f5b489c27125f7ab72a5a720ec1bc` |
| 5 | `def` | [LinearEqualizer](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/linearequalizer--e83f8129bf875f477e9f4fad.md) | 57 | `declaration-track:e83f8129bf875f477e9f4fade7ef15d1c53b7a8748c8bfe6fb148e6c027b8f10` |
| 6 | `def` | [LinearConstraintIntersection](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/linearconstraintintersection--5b5f82b7f3656eb7d660601d.md) | 61 | `declaration-track:5b5f82b7f3656eb7d660601d89b4783cf20d7004ff10b7132f4374c35f8850c3` |
| 7 | `theorem` | [linear_affine_fiber_nonempty_iff_range](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/linear-affine-fiber-nonempty-iff-range--8c1bfe5f2e1c568b1f254de7.md) | 65 | `result-track:8c1bfe5f2e1c568b1f254de7d084a379520c90a2abb470767fc54eaac6d3429d` |
| 8 | `theorem` | [linear_affine_fiber_zero_eq_kernel](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/linear-affine-fiber-zero-eq-kernel--dcbe91ed6944cc5df33e9cfe.md) | 77 | `result-track:dcbe91ed6944cc5df33e9cfe0bbed162b4ccadbdff218f26c22f68494cbfa950` |
| 9 | `inductive` | [LinearAnalyticOperatorForm](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/linearanalyticoperatorform--2a0b61e9118035e55fe517c4.md) | 88 | `declaration-track:2a0b61e9118035e55fe517c4698fab03f6a84f56be7c3c5a5efe1719fe3422c5` |
| 10 | `def` | [analyticGeneratorLinearOperatorForm](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/analyticgeneratorlinearoperatorform--ea579e929c979cda69ed49d0.md) | 101 | `declaration-track:ea579e929c979cda69ed49d0557b0714fcf5dddef8c1407bcfe3c26d8bdf53f5` |
| 11 | `theorem` | [analytic_generator_has_linear_operator_form](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/analytic-generator-has-linear-operator-form--b582c37aae4ea321c644f4af.md) | 129 | `result-track:b582c37aae4ea321c644f4afa6c0755a6dac9a4ec022f7126f375311556587d2` |
| 12 | `structure` | [LocalFunctionalAnalyticContext](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/localfunctionalanalyticcontext--1e5a6ce51a2aaf985e094c27.md) | 155 | `declaration-track:1e5a6ce51a2aaf985e094c27d8b54247952bfe0ca9558bb70c85bcd8b9092192` |
| 13 | `def` | [LocalAnalyticRange](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/localanalyticrange--7c77905cfdfd01d5e8132d1d.md) | 163 | `declaration-track:7c77905cfdfd01d5e8132d1d2b06678781587f51cb1b253b7c6382f6d2fe9291` |
| 14 | `def` | [LocalCoefficientFiber](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/localcoefficientfiber--3a7bb33109b2a5d559b80048.md) | 170 | `declaration-track:3a7bb33109b2a5d559b800482d203358f49afb2c4c1ca0266deb04105b319a75` |
| 15 | `theorem` | [local_coefficient_fiber_nonempty_iff_range](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/local-coefficient-fiber-nonempty-iff-range--923a9db9c7cc19f5987b4c3f.md) | 177 | `result-track:923a9db9c7cc19f5987b4c3ffa95d0df60db1c8485dc62e9b78a3617a002f235` |
| 16 | `theorem` | [local_analytic_range_subset_analyticSubspace](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/local-analytic-range-subset-analyticsubspace--9070757e4ab1e2d76382a674.md) | 192 | `result-track:9070757e4ab1e2d76382a67410730541697440546707d9c54d1027b9bfaa9eee` |
| 17 | `theorem` | [local_coefficient_fiber_witness_lands_in_analyticSubspace](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/local-coefficient-fiber-witness-lands-in-analyticsubspace--b9df6249a7d295d90ed62fa6.md) | 201 | `result-track:b9df6249a7d295d90ed62fa63b15ddc7da7865db1a13d95b8881a89fe3c9a090` |
| 18 | `structure` | [GlobalFunctionalAnalyticContext](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/globalfunctionalanalyticcontext--1d6bfbf877b43350a6e0917b.md) | 235 | `declaration-track:1d6bfbf877b43350a6e0917bf67fa1745565ae82da38cbb167073f8e3606ecd7` |
| 19 | `def` | [GlobalSynthesizedSection](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/globalsynthesizedsection--f40e378f646b6b34ede6cbac.md) | 246 | `declaration-track:f40e378f646b6b34ede6cbacffc97e717f61326b9db0ffd27bb337af009dd502` |
| 20 | `def` | [GlobalCechEqualizer](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/globalcechequalizer--15d95cdb66237b4e7d99a4e1.md) | 254 | `declaration-track:15d95cdb66237b4e7d99a4e1f735731c4389993331c7e789c302c07e36c1dbf5` |
| 21 | `def` | [GlobalIdentification](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/globalidentification--a9c6c7f0e50e4e4ca483940d.md) | 264 | `declaration-track:a9c6c7f0e50e4e4ca483940dd0dbee61ce26d97a34084bb170544b8cf5404aee` |
| 22 | `def` | [GlobalCoefficientFiber](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/globalcoefficientfiber--3638e1aa54818a6f09cb6b08.md) | 272 | `declaration-track:3638e1aa54818a6f09cb6b08b5d5e7ec11037e133834bce13ed0eae9fbd14722` |
| 23 | `theorem` | [global_coefficient_fiber_requires_equalizer](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/global-coefficient-fiber-requires-equalizer--6b2abfee826c433739669e66.md) | 282 | `result-track:6b2abfee826c433739669e664c6a2ef210160ee444dae98eae7612393fca3f62` |
| 24 | `theorem` | [global_coefficient_fiber_requires_identification](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/global-coefficient-fiber-requires-identification--c1b91db78a95817c22de47fe.md) | 292 | `result-track:c1b91db78a95817c22de47fe0842fd6c88af0f62a3d8a0676e8581c13f81dfe9` |
| 25 | `theorem` | [global_synthesized_section_lands_in_analyticSubspace](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/global-synthesized-section-lands-in-analyticsubspace--f0433509aec85a7c32781a74.md) | 302 | `result-track:f0433509aec85a7c32781a7445265ab8133afb0c18825637db8aeb932a8c7814` |
| 26 | `theorem` | [global_coefficient_fiber_lands_in_local_analyticSubspaces](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/global-coefficient-fiber-lands-in-local-analyticsubspaces--0659ec216a3b6f0674c11d76.md) | 311 | `result-track:0659ec216a3b6f0674c11d760e7c988489a502fa73da8145e4a28e6f948a36be` |
| 27 | `structure` | [LocalGeneratorOperatorSignature](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/localgeneratoroperatorsignature--86a228b5151686de967222d8.md) | 348 | `declaration-track:86a228b5151686de967222d8ff2ffc254d14d16c76ba87599576c82e8eec9738` |
| 28 | `theorem` | [local_generator_operator_signature_lands_in_range](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/local-generator-operator-signature-lands-in-range--3dd44bc84d887a1313d17a1a.md) | 361 | `result-track:3dd44bc84d887a1313d17a1a78d118910493adfdb576c8363cf39b56e26c16dc` |
| 29 | `theorem` | [local_generator_operator_signature_lands_in_analyticSubspace](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/local-generator-operator-signature-lands-in-analyticsubspace--9d5dc5aad2efbbd2d2ef7ba5.md) | 371 | `result-track:9d5dc5aad2efbbd2d2ef7ba520089025aba756dd4e3217fc106aa746644409b8` |
| 30 | `structure` | [GlobalGeneratorOperatorSignature](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/globalgeneratoroperatorsignature--120f6210115d6bb35290b7d0.md) | 387 | `declaration-track:120f6210115d6bb35290b7d0713966bad6363b04482d9d65e28b8c3a7b8b3b0f` |
| 31 | `theorem` | [global_generator_operator_signature_satisfies_equalizer](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/global-generator-operator-signature-satisfies-equalizer--2e3520c5ca22f183782c72e1.md) | 401 | `result-track:2e3520c5ca22f183782c72e13ab4cb585a20f7e67697feaede49106fb11e5403` |
| 32 | `theorem` | [global_generator_operator_signature_identifies_restrictions](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/global-generator-operator-signature-identifies-restrictions--87b2949157c33a088e362d87.md) | 413 | `result-track:87b2949157c33a088e362d871e47b89f838a032ccdcf400453063266b13ee2dd` |
| 33 | `theorem` | [global_generator_operator_signature_lands_in_local_analyticSubspaces](../../../../../mathematics/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/declarations/global-generator-operator-signature-lands-in-local-analyticsubspaces--220ce22ddd84efd8f2353263.md) | 425 | `result-track:220ce22ddd84efd8f2353263ccb4113404030909aaab6d151bbdff0270aea5c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
