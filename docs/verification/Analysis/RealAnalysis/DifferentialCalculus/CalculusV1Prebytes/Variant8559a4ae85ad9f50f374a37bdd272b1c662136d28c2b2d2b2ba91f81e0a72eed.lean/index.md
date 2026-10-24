# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CalculusV1Prebytes.Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f255f442bd0eebc7c8c54ff7bd085bc0655ea375",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f255f442bd0eebc7c8c54ff7bd085bc0655ea375`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean.json)

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
| 1 | `theorem` | [sourceCorrelation_eq_inner](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/sourcecorrelation-eq-inner--2a44de824afdf05feac8c969.md) | 34 | `result-track:2a44de824afdf05feac8c9693f8f68f65399aa4a0575cba26e3870aa013733fa` |
| 2 | `def` | [correlationScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/correlationscalederivative--18cf44fa4745dc9e94859238.md) | 58 | `declaration-track:18cf44fa4745dc9e94859238796fa40b310af75674449ffb8438d30c4c30ace1` |
| 3 | `theorem` | [sourceCorrelation_hasDerivAt_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/sourcecorrelation-hasderivat-scale--0cc6f78b6d7d57afee466982.md) | 63 | `result-track:0cc6f78b6d7d57afee466982045e11f5f18778f033600f9d3334085eaa65d9fe` |
| 4 | `theorem` | [sourceCorrelation_contDiffAt_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/sourcecorrelation-contdiffat-scale--d62722fdd657aa84b12839fd.md) | 81 | `result-track:d62722fdd657aa84b12839fd59c5c6e5abefa4f0a489440a402b26db6d58518d` |
| 5 | `theorem` | [sourceCorrelation_contDiffOn_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/sourcecorrelation-contdiffon-scale--f18d2a9bbc899ec67c4b71b8.md) | 93 | `result-track:f18d2a9bbc899ec67c4b71b8f5d2e1ebf1e005aa5dbb7568764b667a50d19566` |
| 6 | `theorem` | [closedPrimeWeight_zero_above_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/closedprimeweight-zero-above-cutoff--76ff61aa3bb18b3f21ce7d67.md) | 98 | `result-track:76ff61aa3bb18b3f21ce7d67d8263ed4f48f26edae2215422cf04b4f42a92ad1` |
| 7 | `theorem` | [correlationScaleDerivative_zero_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/correlationscalederivative-zero-of-lt--bdb15ad76999ca6ec34aafcd.md) | 112 | `result-track:bdb15ad76999ca6ec34aafcd3f785588307e346c8d950c8c68dd9132736c810d` |
| 8 | `theorem` | [correlationScaleDerivative_zero_above_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/correlationscalederivative-zero-above-cutoff--01e908422c166ae7868806b1.md) | 124 | `result-track:01e908422c166ae7868806b1fadbddadacd8628518305da6f99237649abc6481` |
| 9 | `def` | [closedPrimeMomentFixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/closedprimemomentfixed--db7cbe7be020601a15734c03.md) | 135 | `declaration-track:db7cbe7be020601a15734c0306b73b5b742c8087e01ee07f67e31f36e62e56b4` |
| 10 | `def` | [firstPrimeMomentFixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/firstprimemomentfixed--b0e83a58ab607d4e5e2fd20f.md) | 139 | `declaration-track:b0e83a58ab607d4e5e2fd20f99d894e4f2cd88f3fca841841c7b168365c40e17` |
| 11 | `theorem` | [closedPrimeMoment_eq_fixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/closedprimemoment-eq-fixed--961552bbd15db83314753e18.md) | 143 | `result-track:961552bbd15db83314753e18891d03ddc36b484d701c3b1b70e10cd1c13790f2` |
| 12 | `theorem` | [firstPrimeMoment_eq_fixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/firstprimemoment-eq-fixed--d83b697d7e563a37462f7086.md) | 160 | `result-track:d83b697d7e563a37462f708618e7783cda5e685efb1635089f339ef2a63204b1` |
| 13 | `def` | [localUpperCutoff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/localuppercutoff--7c48b1f525239581976d7f7d.md) | 179 | `declaration-track:7c48b1f525239581976d7f7de59f5d4fbc1866fd34a46eee14977a7392599e49` |
| 14 | `theorem` | [closedPrimeMoment_eventually_eq_fixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/closedprimemoment-eventually-eq-fixed--4e6ce90cbf753b159548346c.md) | 182 | `result-track:4e6ce90cbf753b159548346cf511e01f6bc44f5d502211dd17d7e76221d2a1b2` |
| 15 | `theorem` | [firstPrimeMoment_eventually_eq_fixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/firstprimemoment-eventually-eq-fixed--e8202da7eb17f83ed6fce18e.md) | 189 | `result-track:e8202da7eb17f83ed6fce18e1ce5ed22cd08554412e835a0727b7de5568823fb` |
| 16 | `def` | [closedPrimeWeightScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/closedprimeweightscalederivative--085d1dd0a731010fd32d7085.md) | 196 | `declaration-track:085d1dd0a731010fd32d708562629b7b3203527e7f5264ab7c46c3a3a48681a0` |
| 17 | `theorem` | [closedPrimeWeight_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/closedprimeweight-hasderivat--20906d4625fda34e490be485.md) | 200 | `result-track:20906d4625fda34e490be485810ab93289d4d02c201c5dd62d73a1b648b06254` |
| 18 | `theorem` | [closedPrimeWeight_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/closedprimeweight-contdiffat--18b189893edca78640c82b7c.md) | 207 | `result-track:18b189893edca78640c82b7c123134e2476b01a0fbc4119ddb6020bab42d269e` |
| 19 | `theorem` | [closedPrimeWeightScaleDerivative_zero_above_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/closedprimeweightscalederivative-zero-above-cutoff--16d15d443c04018e26f70f45.md) | 214 | `result-track:16d15d443c04018e26f70f4500ffe59c3b0d2e0a80ee043fb2112dbdc53505a6` |
| 20 | `def` | [closedPrimeMomentScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/closedprimemomentscalederivative--0bca45f8b448aaa67503cdf9.md) | 220 | `declaration-track:0bca45f8b448aaa67503cdf9536ff7434b31832b391afc1c63403665e9c6c172` |
| 21 | `def` | [firstPrimeMomentScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/firstprimemomentscalederivative--2be60cc1950f8b97c4d3da81.md) | 224 | `declaration-track:2be60cc1950f8b97c4d3da81842e4051dccfee09200d51aa269e31e88780acde` |
| 22 | `theorem` | [closedPrimeMomentScaleDerivative_eq_fixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/closedprimemomentscalederivative-eq-fixed--72e6e02b7b3a59a2a0c872f1.md) | 228 | `result-track:72e6e02b7b3a59a2a0c872f1c26bf6f77f148415a3f8bfc4d44e151765ae3bbb` |
| 23 | `theorem` | [firstPrimeMomentScaleDerivative_eq_fixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/firstprimemomentscalederivative-eq-fixed--976bed8731f44a55fcfa9e46.md) | 244 | `result-track:976bed8731f44a55fcfa9e4683ebf85a978362f61b1bdf30955f6f5225b919ab` |
| 24 | `theorem` | [closedPrimeMomentFixed_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/closedprimemomentfixed-hasderivat--9a3bc2dbe3a169cb373f4409.md) | 265 | `result-track:9a3bc2dbe3a169cb373f4409c92e13d04613adf80da4c55f430f0904366982d8` |
| 25 | `theorem` | [firstPrimeMomentFixed_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/firstprimemomentfixed-hasderivat--36a5f0967223ab92c7711fbc.md) | 272 | `result-track:36a5f0967223ab92c7711fbc35281edc1de16931093e27514b3d72f65c0802b0` |
| 26 | `theorem` | [closedPrimeMomentFixed_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/closedprimemomentfixed-contdiffat--c4ca675a3ff220018e51266d.md) | 280 | `result-track:c4ca675a3ff220018e51266d6883ddcfcb7f77bbf720bd6cbac2cd70081d82af` |
| 27 | `theorem` | [firstPrimeMomentFixed_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/firstprimemomentfixed-contdiffat--3612bd7b7cb05be247792ecb.md) | 286 | `result-track:3612bd7b7cb05be247792ecbba5e78b0426b2ea577c093e87f21b37727588ead` |
| 28 | `theorem` | [closedPrimeMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/closedprimemoment-hasderivat--56cc2e3b18d875a21c3a35f1.md) | 292 | `result-track:56cc2e3b18d875a21c3a35f13a29ec4d0f229a3b8b99246a4f2e89bd9af95c52` |
| 29 | `theorem` | [firstPrimeMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/firstprimemoment-hasderivat--1ce94c384b9c001b9337a87d.md) | 301 | `result-track:1ce94c384b9c001b9337a87d35d7af75b5f448c0cbad77a0d479044bf3fbd6bd` |
| 30 | `theorem` | [closedPrimeMoment_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/closedprimemoment-contdiffat--abc0a629e46bad2debf5b48b.md) | 310 | `result-track:abc0a629e46bad2debf5b48b972706ca73bad71fcbe5afaee9eb3d1e6c7fa011` |
| 31 | `theorem` | [firstPrimeMoment_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/firstprimemoment-contdiffat--a7539f6035d68c46efc9528a.md) | 316 | `result-track:a7539f6035d68c46efc9528a9c92714597c06b2d9e368b749ff5780bb5e806d6` |
| 32 | `theorem` | [closedPrimeMoment_contDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/closedprimemoment-contdiffon--7fa6cb07186f690562fb4e1f.md) | 322 | `result-track:7fa6cb07186f690562fb4e1f413c9f74f56f95a616ab260d120a0a43426c096a` |
| 33 | `theorem` | [firstPrimeMoment_contDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/firstprimemoment-contdiffon--d7fecb8409ab7a24f9708c4f.md) | 326 | `result-track:d7fecb8409ab7a24f9708c4fdc96808f0d3dd72d91160fd83d7de31a1a7c895f` |
| 34 | `theorem` | [mertensResidual_eventually_eq_closedPrimeMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/mertensresidual-eventually-eq-closedprimemoment--8f7900067cf443714238e016.md) | 330 | `result-track:8f7900067cf443714238e0160eb5d674cbc88533d97d0b99d5313ddc5cbd20ed` |
| 35 | `theorem` | [mertensResidual_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/mertensresidual-hasderivat--c1368e7a9f967ceb98da93d8.md) | 336 | `result-track:c1368e7a9f967ceb98da93d8a584c18ba97708850dba51a1f979d0f462af58c7` |
| 36 | `theorem` | [mertensResidual_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/mertensresidual-contdiffat--6a835ed2165b35b54f83047b.md) | 342 | `result-track:6a835ed2165b35b54f83047bb506e5c915bba9d3b134c72fd21e8f2499c93d4c` |
| 37 | `theorem` | [mertensResidual_contDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/declarations/mertensresidual-contdiffon--c0e88f371410dcc6e91193cc.md) | 348 | `result-track:c0e88f371410dcc6e91193cc4f599dca55c408a9111678116d4c3aa402ec5404` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
