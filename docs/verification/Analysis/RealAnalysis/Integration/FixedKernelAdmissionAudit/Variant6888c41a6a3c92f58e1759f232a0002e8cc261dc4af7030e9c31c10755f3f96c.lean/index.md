# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FixedKernelAdmissionAudit.Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "795dc6364c6ee1ac002cd2b40cf63d5b5d08d421",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `795dc6364c6ee1ac002cd2b40cf63d5b5d08d421`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SamplingError` — import line 5; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.InnerPrimitiveTransport` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSample](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/logsample--aacb015b556398963fca0db4.md) | 20 | `declaration-track:aacb015b556398963fca0db4dabb20b9fcb4adfc2f07b81ca5430dcc4bb47799` |
| 2 | `def` | [sampleDerivativeProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/samplederivativeprofile--8f54c1aee0e34129585a7a47.md) | 23 | `declaration-track:8f54c1aee0e34129585a7a475b30ece26cad0936690d6ffd0a5b58fcf9464ab7` |
| 3 | `theorem` | [v_diff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/v-diff--c8a24d925a934caa296d59b7.md) | 25 | `result-track:c8a24d925a934caa296d59b706a615dfff34005ecc3dcad3f31c0418f58b6967` |
| 4 | `theorem` | [v_cont](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/v-cont--37bc285e19458a6eb64053ad.md) | 28 | `result-track:37bc285e19458a6eb64053ade3947949e12613b2e605b1db896fbb64cf7f0168` |
| 5 | `theorem` | [profile_cont](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/profile-cont--fb394c396215d6f47ad9c546.md) | 30 | `result-track:fb394c396215d6f47ad9c5468ebd61fe5cad48e304e5486616b48f18ea298c4b` |
| 6 | `theorem` | [profile_compact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/profile-compact--99de7b802a5fc47d76975a7e.md) | 34 | `result-track:99de7b802a5fc47d76975a7eb22642914e40604b3e1760084eb34ea5375557f4` |
| 7 | `theorem` | [logSample_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/logsample-hasderivat--6e48b43f5504c53f564b602e.md) | 42 | `result-track:6e48b43f5504c53f564b602e18993e091e49751aee851d3ad187c137124f300b` |
| 8 | `theorem` | [logSample_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/logsample-eq--e5721abb290660bf923b714a.md) | 52 | `result-track:e5721abb290660bf923b714ab1bb09e9d4426989dc90b59a4cf9685d7648d94e` |
| 9 | `theorem` | [logSample_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/logsample-exp--bc3f3bf3e13f34b561c1771c.md) | 57 | `result-track:bc3f3bf3e13f34b561c1771c25c5b60491323e7eebcb7118934734301ab4b25f` |
| 10 | `theorem` | [translated_compact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/translated-compact--9e76ee7463084d4cfe6144fd.md) | 64 | `result-track:9e76ee7463084d4cfe6144fde6e579f10f33339ae946b1547a843a1643314579` |
| 11 | `theorem` | [logSample_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/logsample-integrableon--26f753d66b3a47c6a6497fd6.md) | 71 | `result-track:26f753d66b3a47c6a6497fd6747c8b924f8d60ef0967a840e60ef6f931ecf9b2` |
| 12 | `theorem` | [logSample_deriv_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/logsample-deriv-exp--25feb294b92e79d88e77a473.md) | 82 | `result-track:25feb294b92e79d88e77a473df163460e83e9ea8833ae64d7b7d5bb3d498dcec` |
| 13 | `def` | [derivativeBudget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/derivativebudget--2138bf771c682e13cebff25b.md) | 90 | `declaration-track:2138bf771c682e13cebff25b40607a382495185b07b89c9ea4216fd395f4ff51` |
| 14 | `theorem` | [derivativeBudget_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/derivativebudget-integrable--8c9817a69137b4f6c27bb250.md) | 93 | `result-track:8c9817a69137b4f6c27bb2509c54979df0013d1295c329a28aeac0377906b369` |
| 15 | `theorem` | [derivativeBudget_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/derivativebudget-nonneg--4c686358abfe7438442155a4.md) | 99 | `result-track:4c686358abfe7438442155a45dea9e1e717f2a275eefc5fc0e63875ee1f6d20c` |
| 16 | `theorem` | [derivative_translate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/derivative-translate--ece7dde81465b66efb972452.md) | 102 | `result-track:ece7dde81465b66efb972452fbd951d3c8d83c4ef2840ef8b7030a9b2d4456d7` |
| 17 | `theorem` | [logSample_deriv_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/logsample-deriv-integrableon--310a572767443e05c66d9ad4.md) | 111 | `result-track:310a572767443e05c66d9ad449732caf6816cbaa6caf20070aa5406ef86206e4` |
| 18 | `theorem` | [logSample_variation_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/logsample-variation-le--754909c9aafa1954177a50c2.md) | 129 | `result-track:754909c9aafa1954177a50c2c3c72de417f7094d28bfeeada3fda2bc17aef685` |
| 19 | `theorem` | [logSample_zero_of_time_le_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/logsample-zero-of-time-le-log--5ec0d50031bdb92bbe9719fd.md) | 148 | `result-track:5ec0d50031bdb92bbe9719fd982dc04f97aee35ae01e74f2f486492452035ff0` |
| 20 | `theorem` | [logSample_zero_of_exp_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/logsample-zero-of-exp-le--6a5afd8d08e102076ec71804.md) | 155 | `result-track:6a5afd8d08e102076ec7180425f34512ebc380edf09eb3e079baecac14dbc5c8` |
| 21 | `def` | [fixedKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/fixedkernel--ccaab2451ca8774635dac14b.md) | 161 | `declaration-track:ccaab2451ca8774635dac14be723c8209ffd10893d4731b94d778012012cb23d` |
| 22 | `theorem` | [fixedKernel_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/fixedkernel-eq-sum--4e320d1e9fa9ae04d1d534de.md) | 164 | `result-track:4e320d1e9fa9ae04d1d534dec06d6f4b4ad9f500517d16bed7e849222aca6e08` |
| 23 | `theorem` | [fixedKernel_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/fixedkernel-summable--089213b05b225d0b2e21f905.md) | 174 | `result-track:089213b05b225d0b2e21f90568f7e6904b10868efe91eb59e6fccb06ba643b3d` |
| 24 | `theorem` | [fixedKernel_eq_literal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/fixedkernel-eq-literal--1e076090c286e906405ec14f.md) | 186 | `result-track:1e076090c286e906405ec14fbbaec80c7fdb5517ac6c38c63a9e061f03f9463c` |
| 25 | `theorem` | [fixedKernel_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/fixedkernel-measurable--ad69e62ccc081655c9289441.md) | 195 | `result-track:ad69e62ccc081655c9289441030b377a2d52e8c9169917c1df55874bbcd90ba1` |
| 26 | `theorem` | [fixedKernel_zero_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/fixedkernel-zero-of-nonpos--ce7538f1f538baee807edd16.md) | 202 | `result-track:ce7538f1f538baee807edd169d99fa9bd5ecbe8c75fa7adb6f5fa712c757cd48` |
| 27 | `theorem` | [fixedKernel_integrableOn_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/fixedkernel-integrableon-icc--8c621cf963bac65bf5ce3569.md) | 210 | `result-track:8c621cf963bac65bf5ce35699a7e6c9c1b414e661be665f60df410998a127d9e` |
| 28 | `theorem` | [weighted_translate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/weighted-translate--6d8f2f71d0b8e9bfaf09ea22.md) | 237 | `result-track:6d8f2f71d0b8e9bfaf09ea225a35c63689a090b614ecd4d734816ddc60189966` |
| 29 | `theorem` | [weighted_translated_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/weighted-translated-integrable--63580e6f1cc727350766ea81.md) | 246 | `result-track:63580e6f1cc727350766ea81c739799adf88b90631191d150051cde1cc01b598` |
| 30 | `theorem` | [weighted_translated_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/weighted-translated-integral-zero--1baea1436018b3ce8103c5b7.md) | 253 | `result-track:1baea1436018b3ce8103c5b70b8c3681223bd3fde30364b13a2b0b91e7cc203e` |
| 31 | `theorem` | [logSample_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/logsample-integral-zero--7651e330b8d99b666af1d8c8.md) | 261 | `result-track:7651e330b8d99b666af1d8c88dce6967afaa0e7b409cb62d7a98df292220894a` |
| 32 | `theorem` | [logSample_integrableOn_and_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/logsample-integrableon-and-integral-zero--aa18f7f9197cc9e8bb4a44a0.md) | 275 | `result-track:aa18f7f9197cc9e8bb4a44a0d2e60e361950e20b41b91404f28155034366007b` |
| 33 | `theorem` | [sample_prefix_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/sample-prefix-eq--248ed46d29e069444f09f9bc.md) | 295 | `result-track:248ed46d29e069444f09f9bcbe439a5b570318e2ebc24a082d0ae70c758a5a6a` |
| 34 | `theorem` | [fixedKernel_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/fixedkernel-abs-le--3ea0daddf52f9f7cedbf80e9.md) | 305 | `result-track:3ea0daddf52f9f7cedbf80e91456992bafef337d8c351bf2255b1341c3af72ec` |
| 35 | `theorem` | [tail_majorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/tail-majorant-integrable--bea2b8aba8e0cd692e9ebc78.md) | 320 | `result-track:bea2b8aba8e0cd692e9ebc7874124dcba21cfdc3f1bd1161ead3bd7dc1826650` |
| 36 | `theorem` | [fixedKernel_integrableOn_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/fixedkernel-integrableon-tail--094b11a42d756d335224e7ca.md) | 332 | `result-track:094b11a42d756d335224e7ca05c56a484973816b7b493148c90e75b7155e6a53` |
| 37 | `theorem` | [fixedKernel_integrableOn_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/fixedkernel-integrableon-ioi--72c6afbd47042ddd4b9558db.md) | 339 | `result-track:72c6afbd47042ddd4b9558db06148f9c1004e021db3322c5543174a380d21997` |
| 38 | `theorem` | [fixedKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/fixedkernel-integrable--e15aee99b4988cd74bf0aed0.md) | 347 | `result-track:e15aee99b4988cd74bf0aed08497d94883b43b11f298e744f5b51a892566f2b4` |
| 39 | `theorem` | [fixedKernel_square_integrableOn_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/fixedkernel-square-integrableon-icc--14ae83076d9a72af44016fa1.md) | 356 | `result-track:14ae83076d9a72af44016fa1460e0cf93ac87c45248ecd8b468465c8448be07a` |
| 40 | `theorem` | [fixedKernel_square_integrableOn_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/fixedkernel-square-integrableon-tail--fd15d2da78c3ea1976d622dd.md) | 372 | `result-track:fd15d2da78c3ea1976d622dd24c0b8a39e304c9d1e2e015e5c6e4f27e1bc7255` |
| 41 | `theorem` | [fixedKernel_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/fixedkernel-square-integrable--8bfe70c751fef2e99b97589f.md) | 397 | `result-track:8bfe70c751fef2e99b97589f1811f83585833450f32178cf818aa0ed5675216e` |
| 42 | `theorem` | [fixedKernel_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/declarations/fixedkernel-memlp-two--0d103f33888fc05001d99b77.md) | 415 | `result-track:0d103f33888fc05001d99b773b4180f9b60a3f476de6e58f82fb60f754fc3323` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
