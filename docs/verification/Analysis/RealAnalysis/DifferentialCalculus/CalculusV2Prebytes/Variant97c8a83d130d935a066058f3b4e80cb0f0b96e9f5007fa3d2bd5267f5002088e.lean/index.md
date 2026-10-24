# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CalculusV2Prebytes.Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d6fca8d74387c79fcb52f82a193247885a5dc8f",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d6fca8d74387c79fcb52f82a193247885a5dc8f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceScaleDerivative` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePrimePowerPartition` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceCorrelation_eq_inner](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/sourcecorrelation-eq-inner--c2af906f263ab48752351f2e.md) | 26 | `result-track:c2af906f263ab48752351f2eb79eacde397670574d2abcc070d5975f15915ee7` |
| 2 | `def` | [correlationScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/correlationscalederivative--14fda891e1f7cea945d9ad96.md) | 50 | `declaration-track:14fda891e1f7cea945d9ad9625689ec173e393b03d72d5d60c07118f7930df85` |
| 3 | `theorem` | [sourceCorrelation_hasDerivAt_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/sourcecorrelation-hasderivat-scale--ee63f3826a87e9c35cbbe104.md) | 55 | `result-track:ee63f3826a87e9c35cbbe1040d3768274a7bb91700eaa9fca017df24246cd484` |
| 4 | `theorem` | [sourceCorrelation_contDiffAt_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/sourcecorrelation-contdiffat-scale--9915af819430d9d9e289b506.md) | 73 | `result-track:9915af819430d9d9e289b506a5c6877131d861a4134f6ac0f57f96633356bf29` |
| 5 | `theorem` | [sourceCorrelation_contDiffOn_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/sourcecorrelation-contdiffon-scale--9a19760f031373b11dae437c.md) | 85 | `result-track:9a19760f031373b11dae437c14095baf5dee306f290a0a7ac4ca89da27152464` |
| 6 | `theorem` | [closedPrimeWeight_zero_above_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/closedprimeweight-zero-above-cutoff--f2f69060796f54ce06200b0e.md) | 90 | `result-track:f2f69060796f54ce06200b0e68f2e3907bbe9df012680767f8916288ef2bded5` |
| 7 | `theorem` | [correlationScaleDerivative_zero_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/correlationscalederivative-zero-of-lt--088b9b66dc39096198a3d3c7.md) | 104 | `result-track:088b9b66dc39096198a3d3c78ed3877ed910989c3584164ec85143b4f36a59e5` |
| 8 | `theorem` | [correlationScaleDerivative_zero_above_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/correlationscalederivative-zero-above-cutoff--0b2f6d055c04ded50361f00f.md) | 116 | `result-track:0b2f6d055c04ded50361f00f8ce8d42a12c0a28b5684a0e0dfaf599c3442eb80` |
| 9 | `def` | [closedPrimeMomentFixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/closedprimemomentfixed--d684eb1b6c66d7c7bbf6bf8a.md) | 127 | `declaration-track:d684eb1b6c66d7c7bbf6bf8a33404264f0f630a172dc45e28ccff588e1d1beb2` |
| 10 | `def` | [firstPrimeMomentFixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/firstprimemomentfixed--e62d9562c09be03ad7b96ced.md) | 131 | `declaration-track:e62d9562c09be03ad7b96ced3b9b4c186f48d819d65736444820ca9e4c09b51c` |
| 11 | `theorem` | [closedPrimeMoment_eq_fixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/closedprimemoment-eq-fixed--d914b93933b07930a8e83fc0.md) | 135 | `result-track:d914b93933b07930a8e83fc09da4771b45e7a4b76e2c17282b8a0f6900342557` |
| 12 | `theorem` | [firstPrimeMoment_eq_fixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/firstprimemoment-eq-fixed--c866806b207a8952501b8002.md) | 152 | `result-track:c866806b207a8952501b80025f990553f1f94a6ef80cb0cf07f979f800d79943` |
| 13 | `def` | [localUpperCutoff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/localuppercutoff--80cb1f2eefe642f584ea9971.md) | 171 | `declaration-track:80cb1f2eefe642f584ea9971cea4bc99a974932d5686c086a8f97651c95d2d8c` |
| 14 | `theorem` | [closedPrimeMoment_eventually_eq_fixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/closedprimemoment-eventually-eq-fixed--0f2c4698161d095fc044d5a9.md) | 174 | `result-track:0f2c4698161d095fc044d5a938ac34f4662dbccb4f2ff6a0124e82ebcddf5313` |
| 15 | `theorem` | [firstPrimeMoment_eventually_eq_fixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/firstprimemoment-eventually-eq-fixed--4bbb039785936a0ea871b073.md) | 181 | `result-track:4bbb039785936a0ea871b073971a8851d21059ca67214ee9abd0ff83170c2269` |
| 16 | `def` | [closedPrimeWeightScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/closedprimeweightscalederivative--c1299d9829f199268aed0ecb.md) | 188 | `declaration-track:c1299d9829f199268aed0ecbb188471fd57163fd8b9bf90fad74b74874b2fca7` |
| 17 | `theorem` | [closedPrimeWeight_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/closedprimeweight-hasderivat--24e9dfe60e19892daf91110d.md) | 192 | `result-track:24e9dfe60e19892daf91110d911763f56339f9210d8d0d6bec1e877a95c5f220` |
| 18 | `theorem` | [closedPrimeWeight_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/closedprimeweight-contdiffat--3df3e885282ad4f456534ada.md) | 199 | `result-track:3df3e885282ad4f456534ada9487f1348b30e6de2447ad8da3545201206a6582` |
| 19 | `theorem` | [closedPrimeWeightScaleDerivative_zero_above_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/closedprimeweightscalederivative-zero-above-cutoff--cf6d01b11c97060c41919b0c.md) | 207 | `result-track:cf6d01b11c97060c41919b0c78c2fa65ca10cac91f504857a5ed9efe0c19dc3f` |
| 20 | `def` | [closedPrimeMomentScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/closedprimemomentscalederivative--1c1e889994a1d656ec524c27.md) | 213 | `declaration-track:1c1e889994a1d656ec524c27fa10318ca6286087a7653240d7f4cd1ed0f346e7` |
| 21 | `def` | [firstPrimeMomentScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/firstprimemomentscalederivative--f7d7dd899f8d4f052fb05828.md) | 217 | `declaration-track:f7d7dd899f8d4f052fb0582842b092a6694a475466cfd6944f1be096bc844cbe` |
| 22 | `theorem` | [closedPrimeMomentScaleDerivative_eq_fixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/closedprimemomentscalederivative-eq-fixed--25644392ff4c0cf44ddfd35a.md) | 221 | `result-track:25644392ff4c0cf44ddfd35a971f830ad4add342a0116b91bbe4eaa0fec39ded` |
| 23 | `theorem` | [firstPrimeMomentScaleDerivative_eq_fixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/firstprimemomentscalederivative-eq-fixed--dcb39533478a3cb883149ad7.md) | 237 | `result-track:dcb39533478a3cb883149ad7a95c297092fabba5df15950a3d21031e33068259` |
| 24 | `theorem` | [closedPrimeMomentFixed_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/closedprimemomentfixed-hasderivat--954eb8d46e151a15da001214.md) | 258 | `result-track:954eb8d46e151a15da0012149fdd83ca34215313843d10c53451fed9c42eb5d1` |
| 25 | `theorem` | [firstPrimeMomentFixed_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/firstprimemomentfixed-hasderivat--dea18a8d9d1a7295ff4f3976.md) | 265 | `result-track:dea18a8d9d1a7295ff4f39762bc4e2bc9b47c492db2c0434e3a29785fbe5a16d` |
| 26 | `theorem` | [closedPrimeMomentFixed_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/closedprimemomentfixed-contdiffat--a9364c255064cfab7a423cd7.md) | 273 | `result-track:a9364c255064cfab7a423cd7a949afc099012da20e93f081c25e190e9f9085b0` |
| 27 | `theorem` | [firstPrimeMomentFixed_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/firstprimemomentfixed-contdiffat--29e3840dd56ddc80bcd99888.md) | 279 | `result-track:29e3840dd56ddc80bcd99888c32e232547a0234b3d0773cf6c322e3c23bc8212` |
| 28 | `theorem` | [closedPrimeMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/closedprimemoment-hasderivat--11b6a7f8ffe854e56b2f3918.md) | 285 | `result-track:11b6a7f8ffe854e56b2f391869185cd2b977c06144ead84c4184b82eff01db74` |
| 29 | `theorem` | [firstPrimeMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/firstprimemoment-hasderivat--cd2d0d572c79a6a7142b9d26.md) | 294 | `result-track:cd2d0d572c79a6a7142b9d26a5a5ef5be63c0e2af08c35d6947acfd0c8ea9158` |
| 30 | `theorem` | [closedPrimeMoment_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/closedprimemoment-contdiffat--a8f41a0e19c19eefaa172fd7.md) | 303 | `result-track:a8f41a0e19c19eefaa172fd7c1bcfad3af580eef0b555728227e6247eae0d278` |
| 31 | `theorem` | [firstPrimeMoment_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/firstprimemoment-contdiffat--3fdbd5c3ecdae460cd488688.md) | 309 | `result-track:3fdbd5c3ecdae460cd488688e4025b8806b721ad4f1c5ca212629ba7e5bd907d` |
| 32 | `theorem` | [closedPrimeMoment_contDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/closedprimemoment-contdiffon--cd96baed4171b3b05d59c363.md) | 315 | `result-track:cd96baed4171b3b05d59c363e4c1f7dc2d2293ab3a88fb2f725a9a93cefd8e2f` |
| 33 | `theorem` | [firstPrimeMoment_contDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/firstprimemoment-contdiffon--a31aecd5357d449b8165ae56.md) | 319 | `result-track:a31aecd5357d449b8165ae56bd306b96c43a10ff9c75967acfc15e39ace9ad34` |
| 34 | `theorem` | [mertensResidual_eventually_eq_closedPrimeMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/mertensresidual-eventually-eq-closedprimemoment--8f6872c505111ebf857671dd.md) | 323 | `result-track:8f6872c505111ebf857671dd82b02059c25e8628ef6741a057e99e68cb9723f1` |
| 35 | `theorem` | [mertensResidual_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/mertensresidual-hasderivat--713963dd0fc1d234fb894457.md) | 329 | `result-track:713963dd0fc1d234fb8944574327c91aead67699b5846b6f1eeb7fcc04be0937` |
| 36 | `theorem` | [mertensResidual_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/mertensresidual-contdiffat--d12bca9e4454108f2fa2a484.md) | 335 | `result-track:d12bca9e4454108f2fa2a4843de02b98b9b84d58e531cbbb560fb524189939bb` |
| 37 | `theorem` | [mertensResidual_contDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/declarations/mertensresidual-contdiffon--48f82c4ffb46a07001b799f9.md) | 341 | `result-track:48f82c4ffb46a07001b799f919871af04d570df202c1888e6ee8229841e5caa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
