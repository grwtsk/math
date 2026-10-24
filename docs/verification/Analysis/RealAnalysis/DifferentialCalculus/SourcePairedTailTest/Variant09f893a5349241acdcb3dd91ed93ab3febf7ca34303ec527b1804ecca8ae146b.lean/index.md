# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourcePairedTailTest.Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59f4910115937ddf6128de7f427324e540ea9857",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59f4910115937ddf6128de7f427324e540ea9857`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [negativeSurvival](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/negativesurvival--e0a8fe42d00720fd1e58cb2b.md) | 31 | `declaration-track:e0a8fe42d00720fd1e58cb2ba8c5a54fdb42bab382a88b1933cd9f9443b5615a` |
| 2 | `def` | [pairedTailTest](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/pairedtailtest--4bbeb16f9ad506401042ef24.md) | 35 | `declaration-track:4bbeb16f9ad506401042ef241d01945ed859b8facb47062c6b399ac02247d8ed` |
| 3 | `def` | [negativeTimeMean](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/negativetimemean--7e160a01925fc5a7729c2ee8.md) | 38 | `declaration-track:7e160a01925fc5a7729c2ee800b67cd46042f82f41da237221bebee116044345` |
| 4 | `theorem` | [negativeSurvival_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/negativesurvival-hasderivat--a73367cb1e8707f2ffd20d12.md) | 41 | `result-track:a73367cb1e8707f2ffd20d12c1bd55bdd0bfa151feb9bff114e9089e27862489` |
| 5 | `theorem` | [negativeSurvival_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/negativesurvival-deriv--29d86c70c0ff70f7a745b109.md) | 47 | `result-track:29d86c70c0ff70f7a745b109a7df857c557840853716acff78e3f1d50a83e6fa` |
| 6 | `theorem` | [negativeSurvival_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/negativesurvival-contdiff--32ae03fd96f66b27e2b1332b.md) | 52 | `result-track:32ae03fd96f66b27e2b1332b78c1b1a76a85fc7f74275c93a9c929da13d617e3` |
| 7 | `theorem` | [negativeSurvival_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/negativesurvival-continuous--7a4e7b54e54fb027a810c1d7.md) | 63 | `result-track:7a4e7b54e54fb027a810c1d72cec8aaf25cadacbf8723950a1087aaa03519717` |
| 8 | `theorem` | [negativeSurvival_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/negativesurvival-at-zero--01b4d3032f554d022b6150d7.md) | 66 | `result-track:01b4d3032f554d022b6150d793262d9383a1f30f2e88647dabe556eb07511149` |
| 9 | `theorem` | [negativeSurvival_at_upper](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/negativesurvival-at-upper--b87d5fc9755dc91a0b26e48a.md) | 70 | `result-track:b87d5fc9755dc91a0b26e48a72cacbd5b077481491e51562558ffa4992ca0ce8` |
| 10 | `theorem` | [negativeSurvival_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/negativesurvival-antitone--7302e869a10d3c5b9478d441.md) | 74 | `result-track:7302e869a10d3c5b9478d441b796a0a6ae75d9fcefadcd1422842adbcca07f6e` |
| 11 | `theorem` | [negativeSurvival_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/negativesurvival-nonneg--8cc2d576843ffd9a1b283cce.md) | 85 | `result-track:8cc2d576843ffd9a1b283cceef73c3030ef731c5ee2692ef3c8b16f2b4f3a5f8` |
| 12 | `theorem` | [negativeSurvival_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/negativesurvival-le-one--7115ae3ace175826e0d9242f.md) | 90 | `result-track:7115ae3ace175826e0d9242f824409fac644a67f0385c559312ae7847720b0e5` |
| 13 | `theorem` | [pairedTailTest_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/pairedtailtest-hasderivat--099153c44a6ef134c7224bd7.md) | 95 | `result-track:099153c44a6ef134c7224bd7244671787f4630a19aa6570e9c4bd554aa25e67c` |
| 14 | `theorem` | [pairedTailTest_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/pairedtailtest-deriv--c96fcc1ce0f4935b27dcb3bb.md) | 107 | `result-track:c96fcc1ce0f4935b27dcb3bb32a9bc2dbc065c9e64200e7600a92e4d23f865f9` |
| 15 | `theorem` | [pairedTailTest_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/pairedtailtest-contdiff--3b708138c21a69c00a11510c.md) | 112 | `result-track:3b708138c21a69c00a11510c59f916f2c0075d4da41aabda974befcf9eb319c9` |
| 16 | `theorem` | [pairedTailTest_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/pairedtailtest-continuous--e01790372d42f49654de4659.md) | 116 | `result-track:e01790372d42f49654de4659a765c313b76614bed148698ea5e7469d7864d6e4` |
| 17 | `theorem` | [pairedTailTest_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/pairedtailtest-at-zero--b33d2b19e1b704e5ab2e0fa0.md) | 119 | `result-track:b33d2b19e1b704e5ab2e0fa0c145025b4e137c905776b6ce556a4276433c85aa` |
| 18 | `theorem` | [pairedTailTest_at_upper](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/pairedtailtest-at-upper--4deb94cb7264f25c229ff609.md) | 122 | `result-track:4deb94cb7264f25c229ff609c1c2b2ecfdf8aa92f30dcb36cfc4ffdfa2353f3e` |
| 19 | `theorem` | [negativeTimeMean_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/negativetimemean-nonneg--d0335bd887daf01be69f20fe.md) | 126 | `result-track:d0335bd887daf01be69f20fed79e267a79561cc38f88b2dfa62563b7e910719f` |
| 20 | `theorem` | [negativeTimeMean_le_upper](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/negativetimemean-le-upper--1b61518bac2088dc47ba596e.md) | 131 | `result-track:1b61518bac2088dc47ba596ea5e4569dbc9a37b7b7a92746815140e62c5f9874` |
| 21 | `theorem` | [negativeSurvival_integral_eq_timeMean](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/negativesurvival-integral-eq-timemean--01b39428c8e6820822fb1ff1.md) | 141 | `result-track:01b39428c8e6820822fb1ff1c558db10d2fe3cbd24118224b4ac761edbef97e7` |
| 22 | `theorem` | [pairedTailTest_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/pairedtailtest-integral-eq--4b5e7de01e3029cf95e8e30f.md) | 161 | `result-track:4b5e7de01e3029cf95e8e30fe646629861e05c814325df583746596abf207d39` |
| 23 | `theorem` | [pairedTailTest_deriv_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/pairedtailtest-deriv-abs--0195eda57d947983bc5af65d.md) | 174 | `result-track:0195eda57d947983bc5af65d5a155b659c56fae9579aa4520345d7ecc2488cc4` |
| 24 | `theorem` | [pairedTailTest_variation_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/declarations/pairedtailtest-variation-eq--abb663e9074935f300ec55ea.md) | 189 | `result-track:abb663e9074935f300ec55eafe0825a8bbb1ebb6e9fcb59c9ecf0989927e5be0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
