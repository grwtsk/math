# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ArchimedeanKernel.Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b07eb98df89b79e20bc680aa4116a572a8008a3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b07eb98df89b79e20bc680aa4116a572a8008a3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/kernel--f3305d0c59e43e00595ce381.md) | 13 | `declaration-track:f3305d0c59e43e00595ce38152ef22bb0b634d967ddd57cb917a24db64edfadd` |
| 2 | `def` | [secondMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/secondmomentintegrand--7d6d113b9b5991da8d7bc5f2.md) | 14 | `declaration-track:7d6d113b9b5991da8d7bc5f2ed51a98559a3783317ccbceffbfa81fc0ef05790` |
| 3 | `def` | [majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/majorant--75457e6c0549a3d4781e392e.md) | 15 | `declaration-track:75457e6c0549a3d4781e392e93f5b35ecf9d61492f2a339e955f84f3c7e3a1ba` |
| 4 | `theorem` | [denominator_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/denominator-pos--77ee116a83d7ba496d532b74.md) | 17 | `result-track:77ee116a83d7ba496d532b74858d730582dc49426032e53d20688165b8ea48fd` |
| 5 | `theorem` | [kernel_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/kernel-nonneg--d11c996f941404b97867479b.md) | 22 | `result-track:d11c996f941404b97867479b38eb73dff78fd36876d638a4e7f618c665194f94` |
| 6 | `theorem` | [reciprocal_denominator_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/reciprocal-denominator-bound--dd9f6275c159b9fae840e7d3.md) | 25 | `result-track:dd9f6275c159b9fae840e7d38a9cf3c7d95474f9a373c27739b4900ca87cbd6c` |
| 7 | `theorem` | [secondMoment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/secondmoment-bound--d564fad76f4f2fb319f88b5b.md) | 37 | `result-track:d564fad76f4f2fb319f88b5b5e6918f778106379d31c9f39873b05f24ad9b754` |
| 8 | `theorem` | [polynomial_exp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/polynomial-exp-integrable--26ac26fff5ae47175970e2b1.md) | 49 | `result-track:26ac26fff5ae47175970e2b1bc707a3949532e44aee8d03269d74af3163b8ecc` |
| 9 | `theorem` | [polynomial_exp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/polynomial-exp-integral--81f6a23a15fd6e399bd5fab7.md) | 58 | `result-track:81f6a23a15fd6e399bd5fab71040034b74e42e35df3f6f5e8b15dac73c275649` |
| 10 | `theorem` | [majorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/majorant-integrable--c47c4274cb3b414168d4e7fe.md) | 68 | `result-track:c47c4274cb3b414168d4e7fea61e88e973ad79b4993f59a3ee9dd7b018f85b33` |
| 11 | `theorem` | [majorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/majorant-integral--e7d4731cccedef3886287551.md) | 76 | `result-track:e7d4731cccedef3886287551cfc2381668c4e3e8f35806c5d1a9605d623e74dc` |
| 12 | `theorem` | [secondMoment_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/secondmoment-measurable--4927bd50be1bb5cb2228e709.md) | 86 | `result-track:4927bd50be1bb5cb2228e70920af202fbba8cb82592fc36a97bfe67c72e88fd0` |
| 13 | `theorem` | [secondMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/secondmoment-integrable--c07ef0cc3bc3e59dbaf384d8.md) | 90 | `result-track:c07ef0cc3bc3e59dbaf384d8fde61cd06f0e4cf7701e03142b85ad7162de777e` |
| 14 | `theorem` | [secondMoment_integral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/secondmoment-integral-nonneg--06c6452d5af568996e0c1a09.md) | 97 | `result-track:06c6452d5af568996e0c1a09ce83614daf9539beeceff153387b5b35320145f7` |
| 15 | `theorem` | [secondMoment_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/secondmoment-integral-le--d367a5f78e90d238a58becab.md) | 102 | `result-track:d367a5f78e90d238a58becab80df545e14ccd3dd64072f5fbaa4a402026d2ff3` |
| 16 | `def` | [weightedDeficit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/weighteddeficit--f5a8f373c96bc4ef82c07c37.md) | 108 | `declaration-track:f5a8f373c96bc4ef82c07c370219708f86cc615d7fb804bf0961a72c5db1bcce` |
| 17 | `theorem` | [weightedDeficit_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/weighteddeficit-measurable--b645eec51a8a28fcb1e292d7.md) | 110 | `result-track:b645eec51a8a28fcb1e292d7f9dc3e3f7d96bc431504bba2c971b34c79290eed` |
| 18 | `theorem` | [weightedDeficit_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/weighteddeficit-bound--4a39e71e4e8e788a2b4a35ce.md) | 115 | `result-track:4a39e71e4e8e788a2b4a35ced08d040d3bdc60a663c59904c718a4f66362f29e` |
| 19 | `theorem` | [weightedDeficit_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/weighteddeficit-integrable--34a8022f93d4a3ec8b63c2f5.md) | 123 | `result-track:34a8022f93d4a3ec8b63c2f5f72f405abce2b829478932f3d1058b6fbc164fe7` |
| 20 | `theorem` | [weightedDeficit_integral_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/weighteddeficit-integral-budget--1156fe7f18a9902ac0368395.md) | 133 | `result-track:1156fe7f18a9902ac0368395262bab82ead017cd51ab2c4857e9b750bc3bb224` |
| 21 | `theorem` | [gamma_budget_from_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/declarations/gamma-budget-from-identity--8133188da7ca12804321e2ad.md) | 153 | `result-track:8133188da7ca12804321e2adca17a7685317aec04012dab12ab19ae6bbfd0bb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
