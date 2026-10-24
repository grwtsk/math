# Verification target: GRWTSK.Analysis.LaplaceTransform.MoebiusResponseFormula

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b22682e66ee5b5d6940008b257670e1ddb10218",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/LaplaceTransform/MoebiusResponseFormula.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b22682e66ee5b5d6940008b257670e1ddb10218`.

Source path: `GRWTSK/Analysis/LaplaceTransform/MoebiusResponseFormula.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/LaplaceTransform/MoebiusResponseFormula.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MoebiusEulerProduct`](../../../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound`](../../../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.InfiniteSum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedAtom](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/signedatom--0e0c425677988f6a1a84e288.md) | 19 | `declaration-track:0e0c425677988f6a1a84e288461ac803f7271b251e7a3e00e9a4782c1f1047a4` |
| 2 | `def` | [atomKernel](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/atomkernel--0da61699ddda64d32ff05f6b.md) | 21 | `declaration-track:0da61699ddda64d32ff05f6bc9259f37bb6f1e1b9f15b96b39d8a91f623ea64e` |
| 3 | `def` | [laplaceTerm](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/laplaceterm--ac3cc1557e5a02a7a32acfa4.md) | 23 | `declaration-track:ac3cc1557e5a02a7a32acfa4d57e1b95e474a8ae0f95df5f201e1cfb0f0b769d` |
| 4 | `def` | [atomSmooth](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/atomsmooth--dc621c720f147599fc803985.md) | 25 | `declaration-track:dc621c720f147599fc8039855827862d30b13d0a9d3bdb2878cbc017a8f5ef90` |
| 5 | `theorem` | [shifted_exp](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/shifted-exp--ec1d12b2e3a91721ad591d77.md) | 29 | `result-track:ec1d12b2e3a91721ad591d775d231e26eabea9b087ac3fc7ec9b833213e17761` |
| 6 | `theorem` | [atomKernel_eq_indicator](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/atomkernel-eq-indicator--bba26edd75f4b61a99dd5429.md) | 37 | `result-track:bba26edd75f4b61a99dd5429afe94e9c2e2040dd3d1e573014f6bfe2df284f4d` |
| 7 | `theorem` | [atomSmooth_integrable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/atomsmooth-integrable--e0fa67ad3d687b3ca04fb37f.md) | 54 | `result-track:e0fa67ad3d687b3ca04fb37f619e0b8024c770a1ff735149d09172f4e4e2121c` |
| 8 | `theorem` | [atomKernel_integrable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/atomkernel-integrable--687a9124ec42e21a15fc8c4a.md) | 62 | `result-track:687a9124ec42e21a15fc8c4a8c42842f367847320142bf1b0e86ef6f15bf856e` |
| 9 | `theorem` | [log_nonneg_nat](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/log-nonneg-nat--c07d987171a9cf32cab08735.md) | 67 | `result-track:c07d987171a9cf32cab08735ac85c4d135561455d79e7da4185396913504ab9d` |
| 10 | `theorem` | [atomKernel_integral](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/atomkernel-integral--fb345b8531782d22e8c8c729.md) | 70 | `result-track:fb345b8531782d22e8c8c7293f48842078bc048e622ed968a31f8c376b993ae3` |
| 11 | `theorem` | [sqrtInverse_exp_log](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/sqrtinverse-exp-log--39f8b5596b31959deca5c03c.md) | 92 | `result-track:39f8b5596b31959deca5c03c249d4193c91b92093102be84a95a94a245fa05a4` |
| 12 | `theorem` | [atomKernel_laplace](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/atomkernel-laplace--54437da3dc056b17ff4bf06e.md) | 103 | `result-track:54437da3dc056b17ff4bf06e3b090f6b08b74eddc0cf50d4de14ebe54eadd61b` |
| 13 | `theorem` | [signedAtom_outside_inventory](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/signedatom-outside-inventory--0d2a5b67e9a872676c6ff22c.md) | 134 | `result-track:0d2a5b67e9a872676c6ff22c0aac35d90a1ee1026174636721032b4b0bd1170d` |
| 14 | `theorem` | [completedPickup_eq_tsum](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/completedpickup-eq-tsum--3935fb624fe9ce58b068594f.md) | 147 | `result-track:3935fb624fe9ce58b068594f51d6833d5c71a3259edcd34c38db99fc587b52b2` |
| 15 | `theorem` | [completedPickup_horizon](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/completedpickup-horizon--fb4de427c4e2337d61a41325.md) | 154 | `result-track:fb4de427c4e2337d61a413253758014cf9a6ff66c9acc609af0a9a892e2c93aa` |
| 16 | `theorem` | [completedPickup_energy](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/completedpickup-energy--4e44b54fd5914a7a621ce092.md) | 168 | `result-track:4e44b54fd5914a7a621ce092da2bc57871a98fe044456063cf6028ec1c0827ea` |
| 17 | `theorem` | [laplaceTerm_eq_tsum](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/laplaceterm-eq-tsum--7fc5c6b5bd40d2b7079c1419.md) | 177 | `result-track:7fc5c6b5bd40d2b7079c1419ebea5fd8d6caf8c4a01925bd6e40299d0e9d7a6a` |
| 18 | `theorem` | [laplaceTerm_integrable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/laplaceterm-integrable--0cc31c4ac2b4c5cd8a9ad397.md) | 191 | `result-track:0cc31c4ac2b4c5cd8a9ad397a2f6271321bbf92f62cd0b369fdf05f59dd112ca` |
| 19 | `theorem` | [laplaceTerm_integral](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/laplaceterm-integral--00155804b00af59a8112451d.md) | 199 | `result-track:00155804b00af59a8112451d2d4f940f99eaa87f13bcf6f036e11c1b971f5ed8` |
| 20 | `theorem` | [atomKernel_real](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/atomkernel-real--1f121f7704550caa2881aa0d.md) | 210 | `result-track:1f121f7704550caa2881aa0df0790cc2c62aa251d70f6c1df0364d977d625152` |
| 21 | `theorem` | [kernel_norm_integral_real](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/kernel-norm-integral-real--10915e7c5790020f2df094cd.md) | 215 | `result-track:10915e7c5790020f2df094cd7f79143b7039a86e8496b9aec32772c7e5bb1e64` |
| 22 | `theorem` | [laplaceTerm_norm_integral](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/laplaceterm-norm-integral--71067f623cc55142a748b9b7.md) | 230 | `result-track:71067f623cc55142a748b9b7e7ef1cf96bac1b71d25742c7aa70259ddf2e0b0d` |
| 23 | `theorem` | [laplaceTerm_norm_summable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/laplaceterm-norm-summable--969b49b7bfaf636d5121871a.md) | 257 | `result-track:969b49b7bfaf636d5121871a6b644856add8a7f07bf1c5028bf48b8cec7f730e` |
| 24 | `theorem` | [pickupLaplace_integrable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/pickuplaplace-integrable--5cbf697380708fddab507c15.md) | 264 | `result-track:5cbf697380708fddab507c157691ca610b25f1deff3722e0421c04f749a1f1e1` |
| 25 | `theorem` | [pickupLaplace_eq_reciprocal](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/declarations/pickuplaplace-eq-reciprocal--476166acfc77881e338974c2.md) | 292 | `result-track:476166acfc77881e338974c2b5d24d6f915e58281f19326c8bed082d919ae6df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
