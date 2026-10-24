# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CalculusV2Prebytes.Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08eaf294dc4d3068565c77f3a68aef2a6c18a768",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08eaf294dc4d3068565c77f3a68aef2a6c18a768`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceScaleDerivative` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePrimePowerPartition` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceCorrelation_eq_inner](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/sourcecorrelation-eq-inner--1f821d1d32e7b933c12264ad.md) | 34 | `result-track:1f821d1d32e7b933c12264adc8aefd28e20a3aee472e64f152fd152af5015a03` |
| 2 | `def` | [correlationScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/correlationscalederivative--6ac1f3b778599c6e30747af2.md) | 58 | `declaration-track:6ac1f3b778599c6e30747af29ff7fff5774a64e9c1ebcfbd6d85ce57ce555773` |
| 3 | `theorem` | [sourceCorrelation_hasDerivAt_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/sourcecorrelation-hasderivat-scale--f93fce57abb7a3bb4dc6a4c0.md) | 63 | `result-track:f93fce57abb7a3bb4dc6a4c0a57ec0ab4247dd33b8252531ab536df0a527856f` |
| 4 | `theorem` | [sourceCorrelation_contDiffAt_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/sourcecorrelation-contdiffat-scale--bdcdedf8ca1e3d979ed0f4cd.md) | 81 | `result-track:bdcdedf8ca1e3d979ed0f4cd0e4330a78643e7f31f51f525779cb6a795084f0a` |
| 5 | `theorem` | [sourceCorrelation_contDiffOn_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/sourcecorrelation-contdiffon-scale--2a950d1d7ba17c829adbc94f.md) | 93 | `result-track:2a950d1d7ba17c829adbc94f7883740f088a7826ba869372257d6ce01cd7f476` |
| 6 | `theorem` | [closedPrimeWeight_zero_above_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/closedprimeweight-zero-above-cutoff--8f600f3b8d9a7fe66cd76d56.md) | 98 | `result-track:8f600f3b8d9a7fe66cd76d56ecbbed1a0f94fc311c547d9c26b88bc1965ad54d` |
| 7 | `theorem` | [correlationScaleDerivative_zero_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/correlationscalederivative-zero-of-lt--42acf9694d6153180cbf3c1a.md) | 112 | `result-track:42acf9694d6153180cbf3c1a58565b431687a8f3acc023a2cca8007b46ed5cda` |
| 8 | `theorem` | [correlationScaleDerivative_zero_above_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/correlationscalederivative-zero-above-cutoff--ec01714b51eb5fee526ef900.md) | 124 | `result-track:ec01714b51eb5fee526ef900be277881c2a1fa5aa6ce9378e6c6c312079431f4` |
| 9 | `def` | [closedPrimeMomentFixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/closedprimemomentfixed--a30b5cce666c9c3edd25cc9e.md) | 135 | `declaration-track:a30b5cce666c9c3edd25cc9e999eeffbdf9f90c29ba36f57e4d967ebf83f98f3` |
| 10 | `def` | [firstPrimeMomentFixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/firstprimemomentfixed--0480ad5b025e163e071867bb.md) | 139 | `declaration-track:0480ad5b025e163e071867bbf86468cf16649814f6c29f2ba5f56b9bc767653e` |
| 11 | `theorem` | [closedPrimeMoment_eq_fixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/closedprimemoment-eq-fixed--153d40cd428049769b8e0014.md) | 143 | `result-track:153d40cd428049769b8e001410ae626d4753e639bf3015a59de8280b03f5ee5f` |
| 12 | `theorem` | [firstPrimeMoment_eq_fixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/firstprimemoment-eq-fixed--d9871d5c3bbd44f856559b8c.md) | 160 | `result-track:d9871d5c3bbd44f856559b8c99e35cfa16580e27665f44068167afa26a70c034` |
| 13 | `def` | [localUpperCutoff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/localuppercutoff--fba287a9b6afbe4aaf59fede.md) | 179 | `declaration-track:fba287a9b6afbe4aaf59fedece4cdf24cdc823972b2ce4ac4473ea50f07fda45` |
| 14 | `theorem` | [closedPrimeMoment_eventually_eq_fixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/closedprimemoment-eventually-eq-fixed--e7c7e1c2975c6e794bf572e0.md) | 182 | `result-track:e7c7e1c2975c6e794bf572e09eb94988f4a0961218b62ba6c006185ff9093433` |
| 15 | `theorem` | [firstPrimeMoment_eventually_eq_fixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/firstprimemoment-eventually-eq-fixed--84117b43607ec389187bc460.md) | 189 | `result-track:84117b43607ec389187bc46041b96e3a7e9fd5b95a94fb35a75f910ea7196104` |
| 16 | `def` | [closedPrimeWeightScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/closedprimeweightscalederivative--6d366b194fb3f44b0f0f49a7.md) | 196 | `declaration-track:6d366b194fb3f44b0f0f49a7d48df9e5ddbc340bc017b0df7596caf3ef6a3c35` |
| 17 | `theorem` | [closedPrimeWeight_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/closedprimeweight-hasderivat--099132603b417f369fb1ecf1.md) | 200 | `result-track:099132603b417f369fb1ecf1eabf5b5e9d578ed16dcbe59951e2b8a339ccb9a6` |
| 18 | `theorem` | [closedPrimeWeight_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/closedprimeweight-contdiffat--dba0080d3e1ba6db9968a200.md) | 207 | `result-track:dba0080d3e1ba6db9968a2006b1fb598e98be887c0717f5798d39b38a2ee8317` |
| 19 | `theorem` | [closedPrimeWeightScaleDerivative_zero_above_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/closedprimeweightscalederivative-zero-above-cutoff--1c1ebe7c6d20b4e65f967ef6.md) | 215 | `result-track:1c1ebe7c6d20b4e65f967ef6b591bc360fdd76a8c6e3f6cfa2b9ca6b9545c280` |
| 20 | `def` | [closedPrimeMomentScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/closedprimemomentscalederivative--e2900f4638e7695d3aa42857.md) | 221 | `declaration-track:e2900f4638e7695d3aa428571c5244ac623a9844075582f8ac993decd1acebff` |
| 21 | `def` | [firstPrimeMomentScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/firstprimemomentscalederivative--0f236802a54af85ea26cd87a.md) | 225 | `declaration-track:0f236802a54af85ea26cd87ae7232f53c67fac9b472cbe032c0f383f9c61a4e7` |
| 22 | `theorem` | [closedPrimeMomentScaleDerivative_eq_fixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/closedprimemomentscalederivative-eq-fixed--c7f68d45c3b6944b4627bed1.md) | 229 | `result-track:c7f68d45c3b6944b4627bed16b5e88cd6e83f730ae048e73cfaec733470003bb` |
| 23 | `theorem` | [firstPrimeMomentScaleDerivative_eq_fixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/firstprimemomentscalederivative-eq-fixed--51374550989e69472e4e6bce.md) | 245 | `result-track:51374550989e69472e4e6bce88df7f9d10e5bf8a37bd718b0f251e2dcd245d55` |
| 24 | `theorem` | [closedPrimeMomentFixed_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/closedprimemomentfixed-hasderivat--1fa2020b6c70d21fd04e35c4.md) | 266 | `result-track:1fa2020b6c70d21fd04e35c41c62332e312636cf6d6a5df567afd04b00898aee` |
| 25 | `theorem` | [firstPrimeMomentFixed_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/firstprimemomentfixed-hasderivat--ab158e8f9ae9c1bfb56e4601.md) | 273 | `result-track:ab158e8f9ae9c1bfb56e4601e8cc6854059624344a6ac0941a0c747a62b44b67` |
| 26 | `theorem` | [closedPrimeMomentFixed_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/closedprimemomentfixed-contdiffat--cefe0622db2068c5a276fca5.md) | 281 | `result-track:cefe0622db2068c5a276fca5c4ec721c7d4247cc0047a01aa769cb8adb257a17` |
| 27 | `theorem` | [firstPrimeMomentFixed_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/firstprimemomentfixed-contdiffat--6aaef1fbaeec5e9ba93e48b0.md) | 287 | `result-track:6aaef1fbaeec5e9ba93e48b0dd016a4978bd0321531dffc1732cd5363511d413` |
| 28 | `theorem` | [closedPrimeMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/closedprimemoment-hasderivat--20aaf823078f58561dbf13f5.md) | 293 | `result-track:20aaf823078f58561dbf13f58beb7181de0d5c27032a310231d1033bbf880a02` |
| 29 | `theorem` | [firstPrimeMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/firstprimemoment-hasderivat--2c1a935e6a58994dcc466f8d.md) | 302 | `result-track:2c1a935e6a58994dcc466f8d48c670fa2fc87d26f919e0e34d04d091df7f0a21` |
| 30 | `theorem` | [closedPrimeMoment_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/closedprimemoment-contdiffat--85ddef45a7c0d1a863ac81b0.md) | 311 | `result-track:85ddef45a7c0d1a863ac81b0aaf8dbc5b4674f445b558ffaa35a2d2d40a9a903` |
| 31 | `theorem` | [firstPrimeMoment_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/firstprimemoment-contdiffat--77b31bb868ec93e8bf73b742.md) | 317 | `result-track:77b31bb868ec93e8bf73b742f21e91c968af4c2f38424dca1ff8fb9c4d574b8b` |
| 32 | `theorem` | [closedPrimeMoment_contDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/closedprimemoment-contdiffon--e5e69a3edc27033c6aa98871.md) | 323 | `result-track:e5e69a3edc27033c6aa98871a85f28684d5be5734796aa5b351462f73ce6ec42` |
| 33 | `theorem` | [firstPrimeMoment_contDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/firstprimemoment-contdiffon--f92848192360f7d077958a4e.md) | 327 | `result-track:f92848192360f7d077958a4e08405f2fdb588d3cf5cea2c8ad35052b07352779` |
| 34 | `theorem` | [mertensResidual_eventually_eq_closedPrimeMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/mertensresidual-eventually-eq-closedprimemoment--0d5629d89a6071de301b495e.md) | 331 | `result-track:0d5629d89a6071de301b495e9081f106ad484f340b7dba2c4b6dcdb48fa99068` |
| 35 | `theorem` | [mertensResidual_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/mertensresidual-hasderivat--96f22b7437c57197b512efa8.md) | 337 | `result-track:96f22b7437c57197b512efa8320d282b24f54b75f6706569e15838b7e8b7eafb` |
| 36 | `theorem` | [mertensResidual_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/mertensresidual-contdiffat--4ca70db1bb38fbb3b92fdd61.md) | 343 | `result-track:4ca70db1bb38fbb3b92fdd617237690fdb88605c653efbc439067b392a3be20f` |
| 37 | `theorem` | [mertensResidual_contDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant30b25fc2c5f8b072ad68e653363d59276b99bc7d91e6e4fd964cbe2a798b83c1.lean/declarations/mertensresidual-contdiffon--fb79d29b0479a39ea81a9a7d.md) | 349 | `result-track:fb79d29b0479a39ea81a9a7d7d32b284e26b921d2d3a71ae58fe84bf0a20c401` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
