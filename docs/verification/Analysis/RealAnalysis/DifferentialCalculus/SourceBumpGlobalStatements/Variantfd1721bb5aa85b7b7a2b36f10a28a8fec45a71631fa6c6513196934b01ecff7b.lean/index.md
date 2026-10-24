# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceBumpGlobalStatements.Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23b6fe92368dc3bf065a78932551ec77e36457d4",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23b6fe92368dc3bf065a78932551ec77e36457d4`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ParametricIntervalIntegral` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/bumpmoment--47afbcddcbd6e99bb755e2e5.md) | 22 | `declaration-track:47afbcddcbd6e99bb755e2e57dc2ebb746c8285a8d59775d300bfade429a1ffc` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/bumpmoment-intervalintegrable--c47bd4fc736ae12518822b17.md) | 27 | `result-track:c47bd4fc736ae12518822b17c7d03c9b165cc6c496c042942e47a7371b412586` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/bumpmoment-zero-eq-source--f57cce17e9ba8de61b7786c7.md) | 34 | `result-track:f57cce17e9ba8de61b7786c797afc1b0704a14895de29c88dbd9615cd5ac53d3` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/bumpmoment-zero-zero--2b334e5a0c2448252d77854d.md) | 47 | `result-track:2b334e5a0c2448252d77854d9121a0c616eb3a712913c2cd98b981aed047f3a7` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/bumpflux-hasderivat--0d5fde9445fbcfa0dd7f0f55.md) | 57 | `result-track:0d5fde9445fbcfa0dd7f0f5561c1b3f5d45adf2e177101cb4d7d443ade6839bc` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/bumpmoment-equation--d989f744315a7122a117a9ec.md) | 68 | `result-track:d989f744315a7122a117a9ec3ecb60c85f45bcedfc704e6e4e950c55722de63a` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/re-eq-zero-of-weighted-energy--638330ada5f45627c5941630.md) | 103 | `result-track:638330ada5f45627c59416302761255eb61c87605e126637396cf91aae587816` |
| 8 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/bumpmoment-hasderivat--4a43c1cae48c301a2da2d40f.md) | 136 | `result-track:4a43c1cae48c301a2da2d40f866ff7cdadba25775b0aa87607282eb3836886c3` |
| 9 | `theorem` | [bumpMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/bumpmoment-continuous--551bf6b0b2face391dfd5831.md) | 172 | `result-track:551bf6b0b2face391dfd5831b69d0253593c6e822b8d98076be3a2562cf1c41e` |
| 10 | `def` | [radialProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/radialprofile--8a5e313f70d940b4fb378e11.md) | 177 | `declaration-track:8a5e313f70d940b4fb378e1188d81ca38f078b6d02700ba9c90907b56afe0739` |
| 11 | `def` | [radialFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/radialflux--693a1aa50f4d5a0454772699.md) | 180 | `declaration-track:693a1aa50f4d5a045477269950c1fcc0d3329f90b3c0615bd74a7b9da12f3a6d` |
| 12 | `theorem` | [radialProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/radialprofile-hasderivat--3418538f2880075b06e90775.md) | 184 | `result-track:3418538f2880075b06e90775cc6498da1202452e5f8a5dbefc29cadb86106ac6` |
| 13 | `theorem` | [radialFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/radialflux-hasderivat--427c7e1d79cb9fd9355fcf94.md) | 193 | `result-track:427c7e1d79cb9fd9355fcf94e31a67a3c1c40d2505beb039a8ba8103ff7e66b9` |
| 14 | `theorem` | [radialProfile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/radialprofile-continuous--98fba2b0e5a94e680201419e.md) | 203 | `result-track:98fba2b0e5a94e680201419e6a750f93c4da072a84d12bca85d56ecfd3fb1c18` |
| 15 | `theorem` | [radialFlux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/radialflux-continuous--409b17eb991af30da58d1a0b.md) | 207 | `result-track:409b17eb991af30da58d1a0bc2a8b0656c085a9b3bd6ee3fd624d5bc666b4bf4` |
| 16 | `def` | [radialMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/radialmass--18b493700ea88e158ad4db92.md) | 212 | `declaration-track:18b493700ea88e158ad4db9219022cbe4ceb8b810ba0237c00f8ec10d11bed5d` |
| 17 | `def` | [radialEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/radialenergy--3e57aab8986be6d99c32eae5.md) | 215 | `declaration-track:3e57aab8986be6d99c32eae5db146d8f13a6cc45ba253cee8b0b89dcc33dec04` |
| 18 | `theorem` | [radial_integrands_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/radial-integrands-intervalintegrable--a7dec47cab897aad604ec68c.md) | 219 | `result-track:a7dec47cab897aad604ec68c83cc0a64716294e0c797d0c238f91594cd6ee007` |
| 19 | `theorem` | [radialEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/radialenergy-nonneg--b408dc67f55d272f7a9926eb.md) | 231 | `result-track:b408dc67f55d272f7a9926eb6436805648b9887a804f1676524d20e64ad7c6b7` |
| 20 | `theorem` | [radialProfile_eventually_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/radialprofile-eventually-ne-zero--355455b6f4a5d3d8861c331b.md) | 237 | `result-track:355455b6f4a5d3d8861c331b15382ce59886b5f7040256589cca73a9e3d7bf3f` |
| 21 | `theorem` | [radialMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/radialmass-pos--1c246ac4253595a921d8e608.md) | 244 | `result-track:1c246ac4253595a921d8e608a0b9837c007b786c84dc5a2b1836017abad670ab` |
| 22 | `theorem` | [radial_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/radial-energy-identity--ae8f96823118528516c79809.md) | 260 | `result-track:ae8f96823118528516c7980913697046a568ce1044428089e2ccb6d3d47706e5` |
| 23 | `theorem` | [bumpMoment_zero_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/bumpmoment-zero-re--7fe0c63f280f1c8266f653cd.md) | 318 | `result-track:7fe0c63f280f1c8266f653cd1afa39790eaf5ac556475f2476060605fda9f664` |
| 24 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/example--f834c8d6e964440c1b600ac2.md) | 329 | `declaration-track:f834c8d6e964440c1b600ac2b81969026b57705c4134c64f46ae669ecee59924` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/example--43a3e873e4d199a3ae54f07e.md) | 333 | `declaration-track:43a3e873e4d199a3ae54f07ef89e5e7a7337d49fadaee75aaa920a50f3ff3f14` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/example--ab850c433b3441132fa92f0f.md) | 335 | `declaration-track:ab850c433b3441132fa92f0fd492a2d5567f0cf266688ef6ffd4892360132382` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/example--bd6cd0d35a6a02c0ebd41f15.md) | 337 | `declaration-track:bd6cd0d35a6a02c0ebd41f150b2eaad0011403edcabb3653877170ade94ead82` |
| 28 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/example--9c3626e8bda2b90df837754e.md) | 340 | `declaration-track:9c3626e8bda2b90df837754ecec7e5c0ca787b2e4bc1278cd20954600511d9a5` |
| 29 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/example--49bd08b22c4cf3dce45d4677.md) | 344 | `declaration-track:49bd08b22c4cf3dce45d4677b55069e2ed867d9570a2319b37493fbbea08150f` |
| 30 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/example--07ac15cd2732232d0b8ad31a.md) | 348 | `declaration-track:07ac15cd2732232d0b8ad31a683a4e8a7356f45371a88ec8b73e05d704af655e` |
| 31 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/example--30fb3fcd934266bd812cb5c5.md) | 351 | `declaration-track:30fb3fcd934266bd812cb5c5ac7d1365c45cb839042303887efd285f0739aa39` |
| 32 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/example--8337bccacfa810a3a51c28bf.md) | 354 | `declaration-track:8337bccacfa810a3a51c28bfde57daae2249a45b52b6539484f995d252e1cd82` |
| 33 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/example--f915066d8cf4b7cf7bd02529.md) | 360 | `declaration-track:f915066d8cf4b7cf7bd02529c1da582d1488ec2a8bec02ea6ec1b53f8f8b0388` |
| 34 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/example--0b9fa1df58ecccf3339aafd3.md) | 362 | `declaration-track:0b9fa1df58ecccf3339aafd35d8a5037ea2d4351e1fb5bd73e87995915ae1e4c` |
| 35 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/example--b01d77213c61fcd0cb7c1e90.md) | 364 | `declaration-track:b01d77213c61fcd0cb7c1e90fec2fd5481c6288373abc8c0987595be2b1d39cd` |
| 36 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/example--87df5799f815e70b5f1d5afb.md) | 367 | `declaration-track:87df5799f815e70b5f1d5afb802f1f164518abc7483c1b02ccce3e8e863740bc` |
| 37 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/example--8e50b8c4180ad8624523e782.md) | 369 | `declaration-track:8e50b8c4180ad8624523e782a279eea3c1e12d3287e6508e3f6b6d280c4c14f9` |
| 38 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantfd1721bb5aa85b7b7a2b36f10a28a8fec45a71631fa6c6513196934b01ecff7b.lean/declarations/example--2cce7c3e0194992c47e4f944.md) | 376 | `declaration-track:2cce7c3e0194992c47e4f9449d470dc0d0031d082fd458ff9055b0fbc2f0e25e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
