# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteThirdCumulant.Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53d5613f360c78d8b29f600342329d2f3e9dbc0e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53d5613f360c78d8b29f600342329d2f3e9dbc0e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteLogAffineSecondDerivative` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [covarianceSlice](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/covarianceslice--efa22208b53d02750566432c.md) | 42 | `declaration-track:efa22208b53d02750566432ce78b38f071309f4043a612f1dbb6179142cc1474` |
| 2 | `theorem` | [covarianceSlice_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/covarianceslice-apply--756e3fcfba37140af12f9022.md) | 47 | `result-track:756e3fcfba37140af12f90223416430d13d69dcae0506f897aefadf0f694394a` |
| 3 | `def` | [centeredStatisticDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/centeredstatisticderivative--b3945be79331df3b9ff77708.md) | 54 | `declaration-track:b3945be79331df3b9ff77708f90235355a04243e6d290d4c68bb6aa44f385707` |
| 4 | `theorem` | [centeredStatisticDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/centeredstatisticderivative-apply--37d3d36919434a0f50103953.md) | 59 | `result-track:37d3d36919434a0f50103953a84137a05ebb9f85a5304fe8d3527f0d0f82de84` |
| 5 | `theorem` | [hasFDerivAt_centeredStatistic_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/hasfderivat-centeredstatistic-apply--ad591a1884b2f61afce49dfc.md) | 66 | `result-track:ad591a1884b2f61afce49dfc01b1fbca7920b34442677c89b6402d8a79ebdd94` |
| 6 | `def` | [covarianceSummand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/covariancesummand--05bc9554bc71ebda489355b1.md) | 90 | `declaration-track:05bc9554bc71ebda489355b190b3c0c4423318be5048b753986ca90c25ad2101` |
| 7 | `def` | [rawThirdSummandDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/rawthirdsummandderivative--7ae65e1389fb4d7d61eab8f6.md) | 97 | `declaration-track:7ae65e1389fb4d7d61eab8f6d4eb8e99bd50734498accdec5122546a8b6f6600` |
| 8 | `theorem` | [hasFDerivAt_covarianceSummand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/hasfderivat-covariancesummand--4956194fee266b5ba07e5949.md) | 108 | `result-track:4956194fee266b5ba07e59496304360c6bda1f41fd9b7f44a9ed404f8fb536f1` |
| 9 | `def` | [covarianceScalar](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/covariancescalar--f7daa5bb8b07fc500a482a24.md) | 121 | `declaration-track:f7daa5bb8b07fc500a482a2451a30138f98049860574eaa1afc4cf00f9ae1263` |
| 10 | `theorem` | [covarianceScalar_eq_covarianceForm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/covariancescalar-eq-covarianceform--0b2f40decf8d6293cc2a1a28.md) | 125 | `result-track:0b2f40decf8d6293cc2a1a283f16239b4896cc27a6f88f1c699052aad9b176bc` |
| 11 | `def` | [rawThirdDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/rawthirdderivative--250da5c0bb746752050f4d72.md) | 132 | `declaration-track:250da5c0bb746752050f4d72e6133a627110f7464101f733c1b9cf7508ad4e17` |
| 12 | `theorem` | [hasFDerivAt_covarianceScalar_raw](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/hasfderivat-covariancescalar-raw--70a9bd4b2cc043323b861275.md) | 137 | `result-track:70a9bd4b2cc043323b861275b750c8d2431e5be7b5987db8081865163232fdef` |
| 13 | `theorem` | [rawThirdSummandDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/rawthirdsummandderivative-apply--fbf7119ecb1512520b5cd4d6.md) | 154 | `result-track:fbf7119ecb1512520b5cd4d6591f4253ea18877d518b6dfaea1a1a014e1ca019` |
| 14 | `theorem` | [rawThirdDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/rawthirdderivative-apply--d9e48bcb8466178851fdb50f.md) | 174 | `result-track:d9e48bcb8466178851fdb50fb54a1a92eac313c27850c5e8dc3e78d951ab84c0` |
| 15 | `def` | [thirdCumulantOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/thirdcumulantoperator--31f2fd5710548c858294d6a8.md) | 195 | `declaration-track:31f2fd5710548c858294d6a85447f052964846bcaaaa023e193b11a8d3c6866e` |
| 16 | `theorem` | [thirdCumulantOperator_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/thirdcumulantoperator-apply--27cf56cf83aedf5b619e7f35.md) | 205 | `result-track:27cf56cf83aedf5b619e7f3518c6673fc0f04b38d5c3893e66a37b06c6671c3e` |
| 17 | `theorem` | [rawThirdDerivative_eq_thirdCumulantOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/rawthirdderivative-eq-thirdcumulantoperator--04c9c1dc369190ca9454e2b7.md) | 218 | `result-track:04c9c1dc369190ca9454e2b748e3b12c17ebdf05883bdbc27ac79d93c04cd26e` |
| 18 | `theorem` | [hasFDerivAt_covarianceScalar](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/hasfderivat-covariancescalar--bf716d2595b1c4fd6fbb1107.md) | 233 | `result-track:bf716d2595b1c4fd6fbb1107b35dd6be823058bd5f98b438c93a72f71edf5028` |
| 19 | `theorem` | [fderiv_covarianceScalar_eq_thirdCumulant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/fderiv-covariancescalar-eq-thirdcumulant--563a603cb510490d685f9391.md) | 243 | `result-track:563a603cb510490d685f93916784fd6a0eef8529248e3bcee86d63f075f842cf` |
| 20 | `theorem` | [thirdCumulant_swap_first_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/thirdcumulant-swap-first-two--65c6936d4e5e8d4d51188077.md) | 250 | `result-track:65c6936d4e5e8d4d51188077e07e8c9fc0abf5de5668ea35324fc6834de04a3b` |
| 21 | `theorem` | [thirdCumulant_swap_last_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/thirdcumulant-swap-last-two--26a488f15a45a46b0464b313.md) | 261 | `result-track:26a488f15a45a46b0464b313ee872292814e805c91ae7ac8c1645d70b66fc348` |
| 22 | `theorem` | [third_fderiv_logPartition_eq_thirdCumulant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/declarations/third-fderiv-logpartition-eq-thirdcumulant--04fae5da3113eda7c1de8dde.md) | 273 | `result-track:04fae5da3113eda7c1de8dde08c96a9a12a86beb1c07b83791a7c940f1b70dcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
