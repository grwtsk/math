# Verification target: GRWTSK.Analysis.MeasureTheory.Traj.Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aecab82187dd1a96d6b92c32351b800965fcd31d",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aecab82187dd1a96d6b92c32351b800965fcd31d`.

Source path: `GRWTSK/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.ProjectiveFamilyContent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.FactorsThrough` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.ProbabilityMeasure` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.OuterMeasure.OfAddContent` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.IntegralCompProd` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.IonescuTulcea.PartialTraj` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.SetIntegral` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Iic_pi_eq](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/iic-pi-eq--c27b2401294e0fd77a74787f.md) | 91 | `result-track:c27b2401294e0fd77a74787f76864bf372ce4f1d440d189d81360d2c8e1167f1` |
| 2 | `lemma` | [cast_pi](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/cast-pi--af85e6a90304b2cd4896f541.md) | 94 | `result-track:af85e6a90304b2cd4896f541ab878132a092fa8e5f24fa1c83bc1b94b926f610` |
| 3 | `lemma` | [measure_cast](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/measure-cast--46055b324267cab4db3ef3e3.md) | 100 | `result-track:46055b324267cab4db3ef3e3c75119156353cd40189d57ed754002b7eb836d4e` |
| 4 | `lemma` | [heq_measurableSpace_Iic_pi](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/heq-measurablespace-iic-pi--a2947cc16e113d2bf4f909a0.md) | 105 | `result-track:a2947cc16e113d2bf4f909a059bc0bcb95267c1801da8f1ea57083801a3c6700` |
| 5 | `def` | [iterateInduction](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/iterateinduction--5cf23309761dd8f226a2d1ae.md) | 116 | `declaration-track:5cf23309761dd8f226a2d1ae83c71f6e8b307b4541200929354f79297993ccb8` |
| 6 | `lemma` | [frestrictLe_iterateInduction](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/frestrictle-iterateinduction--0412670c6350b35ddbe8c7e5.md) | 124 | `result-track:0412670c6350b35ddbe8c7e5a81dd3db97f7a0928c4428e0bef6e6896c0ab7ad` |
| 7 | `theorem` | [isProjectiveLimit_nat_iff'](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/isprojectivelimit-nat-iff--2523627db6c8008c3c0df8b8.md) | 147 | `result-track:2523627db6c8008c3c0df8b83ecb1a0eed4c8df733a8475e229fb6c761c3f410` |
| 8 | `theorem` | [isProjectiveLimit_nat_iff](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/isprojectivelimit-nat-iff--0f5f894625a49dd4c7dee968.md) | 157 | `result-track:0f5f894625a49dd4c7dee968c0a00ed2601838132676b6d1e5391ec8c594cd40` |
| 9 | `def` | [inducedFamily](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/inducedfamily--9acfc74f5bd4994d2f62217b.md) | 167 | `declaration-track:9acfc74f5bd4994d2f62217bc55573d83bec72ca395dd6ec616ae96ee6c94beb` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/instance--60eac1c6465b165a1f5efb9e.md) | 170 | `declaration-track:60eac1c6465b165a1f5efb9e2ec821d3e3a37a8608a19da02187db4bcbf94353` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/instance--1fa3a57585b155d216074206.md) | 173 | `declaration-track:1fa3a57585b155d21607420668f1c32852527963988af616a370feea88282320` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/instance--4153b00597d5075c2ae6c08b.md) | 176 | `declaration-track:4153b00597d5075c2ae6c08b1539bd0dad7fdb2c30e4884d3934c2974f526887` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/instance--79190a77b0d334684d4605e0.md) | 179 | `declaration-track:79190a77b0d334684d4605e06e1783f742af4871cb66a6a95ebc1ac68f1e7811` |
| 14 | `theorem` | [inducedFamily_Iic](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/inducedfamily-iic--9410eafdf35b3b3a2b78bfe8.md) | 186 | `result-track:9410eafdf35b3b3a2b78bfe89c83f1e54f1c949e6c0f58f59c58085547fd4b96` |
| 15 | `theorem` | [isProjectiveMeasureFamily_inducedFamily](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/isprojectivemeasurefamily-inducedfamily--e65283c93ab87cad35cd0641.md) | 194 | `result-track:e65283c93ab87cad35cd06410596d5feed34ed184e56ca2e0175c9c73e33b833` |
| 16 | `lemma` | [isProjectiveMeasureFamily_partialTraj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/isprojectivemeasurefamily-partialtraj--434876bf0ac67363419f5ab3.md) | 219 | `result-track:434876bf0ac67363419f5ab39dea81a31a18cc1e39165342ea5671dbb993f2e6` |
| 17 | `def` | [trajContent](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/trajcontent--c8bd54ad4aca5ca59eaad653.md) | 227 | `declaration-track:c8bd54ad4aca5ca59eaad6533a09c537468132ec739329568ddfa7c5066c2d5d` |
| 18 | `theorem` | [trajContent_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/trajcontent-cylinder--b64bfdd25014cbb88374244b.md) | 234 | `result-track:b64bfdd25014cbb88374244bcf87d12b4f4f19e1ca0db81ee43c153d5f4fc175` |
| 19 | `theorem` | [trajContent_eq_lmarginalPartialTraj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/trajcontent-eq-lmarginalpartialtraj--c01c7494f8a9d86bba06555b.md) | 241 | `result-track:c01c7494f8a9d86bba06555b9c2ce04f2ef9ab51fcae2d9e81bd200f67f283d4` |
| 20 | `lemma` | [trajContent_ne_top](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/trajcontent-ne-top--1483ec50e6e5a6a98d0e858c.md) | 252 | `result-track:1483ec50e6e5a6a98d0e858ce7db8cb9ef3307f8e5b5ccf57f06a477b666e72f` |
| 21 | `theorem` | [le_lmarginalPartialTraj_succ](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/le-lmarginalpartialtraj-succ--764b192c0252ecf8d61580a1.md) | 264 | `result-track:764b192c0252ecf8d61580a1e4ba7787082abfed4d2fd6377ac7393287e73846` |
| 22 | `theorem` | [trajContent_tendsto_zero](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/trajcontent-tendsto-zero--0c8b5910cbf359fd02ae62b4.md) | 343 | `result-track:0c8b5910cbf359fd02ae62b44160a0e7cc22be23747f9ad5809bd32780c8e996` |
| 23 | `theorem` | [isSigmaSubadditive_trajContent](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/issigmasubadditive-trajcontent--755cb58a80b3e02c0a59188f.md) | 459 | `result-track:755cb58a80b3e02c0a59188f7f8b8f25bb7e8ae7fe550ecc27c48f710b6eb0c8` |
| 24 | `def` | [trajFun](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/trajfun--7c87bb2f3ae45fb6f7612389.md) | 469 | `declaration-track:7c87bb2f3ae45fb6f761238929323dc3b943f8b0d817554ee607ed556b2dab74` |
| 25 | `theorem` | [isProbabilityMeasure_trajFun](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/isprobabilitymeasure-trajfun--7d9132ce5341d1325211ede4.md) | 473 | `result-track:7d9132ce5341d1325211ede452e853d6e12e49c62b6007903d1b6766020e15ae` |
| 26 | `theorem` | [isProjectiveLimit_trajFun](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/isprojectivelimit-trajfun--7fa88b0eedff84fd1aa6a67c.md) | 481 | `result-track:7fa88b0eedff84fd1aa6a67c9201287bfbc64bfeefb62c87f92346097a6d359c` |
| 27 | `theorem` | [measurable_trajFun](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/measurable-trajfun--8e5c31a68e00e4b58c0d10a6.md) | 491 | `result-track:8e5c31a68e00e4b58c0d10a6af0a8f3a8390502df27213dc9ee412d5bd4d440f` |
| 28 | `def` | [traj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/traj--4c6f13b121f44388f355dd7f.md) | 516 | `declaration-track:4c6f13b121f44388f355dd7fbe93b1d775000af82d4977d09781cb7ba98a500e` |
| 29 | `lemma` | [traj_apply](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/traj-apply--300f8dd452c6e8bfb0203c35.md) | 524 | `result-track:300f8dd452c6e8bfb0203c35223cf48d60d0740b6800951f1be3b299c99eebeb` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/instance--34c80a776edc4d1b3c68fe79.md) | 526 | `declaration-track:34c80a776edc4d1b3c68fe795989e66c9a9fcba561c002036fabfc763a04c3ef` |
| 31 | `lemma` | [traj_map_frestrictLe](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/traj-map-frestrictle--dcdff85a95e144f5dd6fc003.md) | 528 | `result-track:dcdff85a95e144f5dd6fc003002052972307c61efad105fef924f197668cb7ed` |
| 32 | `lemma` | [traj_map_frestrictLe_apply](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/traj-map-frestrictle-apply--9f10d4300d42adfa00aab4a7.md) | 533 | `result-track:9f10d4300d42adfa00aab4a72a1a6c872f8dae0ad3cc987e69a30e50dcef3806` |
| 33 | `lemma` | [traj_map_frestrictLe_of_le](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/traj-map-frestrictle-of-le--10387f0b6772ae10f36b9f2e.md) | 537 | `result-track:10387f0b6772ae10f36b9f2e4f48eae06116f7d1d518b3dc298ac82d91824269` |
| 34 | `theorem` | [eq_traj'](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/eq-traj--5aea02256237bbfa722718c7.md) | 546 | `result-track:5aea02256237bbfa722718c7ca843b8e2fdf1bbd7147d2ec5fccdb78c936a620` |
| 35 | `theorem` | [eq_traj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/eq-traj--a004175509d8b79ea993e3aa.md) | 557 | `result-track:a004175509d8b79ea993e3aae13a8d6c229d4c84277fe9febc8c8be406f3b537` |
| 36 | `theorem` | [traj_comp_partialTraj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/traj-comp-partialtraj--94c381319115a451277207a7.md) | 566 | `result-track:94c381319115a451277207a71bb6f74ee3606e3bcc6d208ce782fe8e519ee529` |
| 37 | `theorem` | [traj_eq_prod](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/traj-eq-prod--d0c45071184fd976facc8406.md) | 574 | `result-track:d0c45071184fd976facc8406ed05ad40121a4bd6bb8ce9a4513e59df59cbe42a` |
| 38 | `theorem` | [traj_map_updateFinset](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/traj-map-updatefinset--53555e4deb0760fd50b8f1d5.md) | 588 | `result-track:53555e4deb0760fd50b8f1d5cdd38bc6f5b6b637b22cfecc3f37cd29913a5846` |
| 39 | `theorem` | [integrable_traj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/integrable-traj--fc8b3181255cbf15690d0aca.md) | 605 | `result-track:fc8b3181255cbf15690d0aca29e26a6d462a71c9bb0411cb1d1d6362e31fba91` |
| 40 | `theorem` | [aestronglyMeasurable_traj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/aestronglymeasurable-traj--1616b413258ab6710e8ba7c1.md) | 615 | `result-track:1616b413258ab6710e8ba7c193e0a60886aefc83dffac9bd4a8b0f5d31a2e955` |
| 41 | `theorem` | [integral_traj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/integral-traj--c4bc38b80874954a8e7b7187.md) | 625 | `result-track:c4bc38b80874954a8e7b7187db9a496b0e4a42b463873d1fa2e96ec9d85c9cf2` |
| 42 | `lemma` | [partialTraj_compProd_traj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/partialtraj-compprod-traj--7f5c5096aec0a2271d6e4954.md) | 633 | `result-track:7f5c5096aec0a2271d6e495431e7fe28a15a2574137d7b3d0f9d8c8fef1082db` |
| 43 | `theorem` | [integral_traj_partialTraj'](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/integral-traj-partialtraj--71a29b5318ecc9b1611a6e9d.md) | 647 | `result-track:71a29b5318ecc9b1611a6e9ddc7f6a11cbe187752be5e40c07389041c997ff26` |
| 44 | `theorem` | [integral_traj_partialTraj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/integral-traj-partialtraj--a03b0b6eaae1a39ee7b4f2f1.md) | 657 | `result-track:a03b0b6eaae1a39ee7b4f2f181b811971a4b9f650733a5238a9f41efb29a2665` |
| 45 | `theorem` | [setIntegral_traj_partialTraj'](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/setintegral-traj-partialtraj--0f12b1d7348287a5155ef56d.md) | 664 | `result-track:0f12b1d7348287a5155ef56d76fd897b3288e9060a8f05938cb2253ac34d5be9` |
| 46 | `theorem` | [setIntegral_traj_partialTraj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/setintegral-traj-partialtraj--58542619b062515f3a9f26dc.md) | 677 | `result-track:58542619b062515f3a9f26dc43c99f694fb2601fd38c405ae80ed6828de8a3b6` |
| 47 | `theorem` | [condExp_traj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/condexp-traj--e540b2a99ed589d99110fcdd.md) | 690 | `result-track:e540b2a99ed589d99110fcddcce4e9fd7653fdf397adc54f7e750cfc93959954` |
| 48 | `theorem` | [condExp_traj'](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/declarations/condexp-traj--9282fff2efe10bb7188e9ea1.md) | 709 | `result-track:9282fff2efe10bb7188e9ea1642fce8536786cdc2b46488f3d4ea3fb47a23906` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
