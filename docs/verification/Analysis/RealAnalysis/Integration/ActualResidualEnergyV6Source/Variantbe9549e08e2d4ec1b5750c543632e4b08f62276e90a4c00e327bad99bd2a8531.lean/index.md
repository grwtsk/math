# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualResidualEnergyV6Source.Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40fa74e97e435ece26352d4c5184cf20ef90f779",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40fa74e97e435ece26352d4c5184cf20ef90f779`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCausalEnergy` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forwardHalfKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/forwardhalfkernel--a7f0a1be60af102ce9a9ffc3.md) | 18 | `declaration-track:a7f0a1be60af102ce9a9ffc3b027cdffab955eb38d8c147d93dc652fdd59b332` |
| 2 | `theorem` | [forwardHalfKernel_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/forwardhalfkernel-continuous--38a757223c988d58ed57c9da.md) | 23 | `result-track:38a757223c988d58ed57c9da8791a3d6ae9a48b97b545cfc732e33b357df5faf` |
| 3 | `theorem` | [forwardHalfKernel_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/forwardhalfkernel-hascompactsupport--676e9f980c23feb924f9b733.md) | 31 | `result-track:676e9f980c23feb924f9b733e6daac3de727342db49be7447fa6827439d44282` |
| 4 | `theorem` | [forwardHalfKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/forwardhalfkernel-integrable--a46d6e2b84c56b37c8b5c275.md) | 53 | `result-track:a46d6e2b84c56b37c8b5c275739edeb55edd1ecea3c3b36fb3d47bec59c7d6d7` |
| 5 | `theorem` | [sourceCorrelation_eq_plus_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/sourcecorrelation-eq-plus-shift--5583d4cc69ce039bde506e8e.md) | 59 | `result-track:5583d4cc69ce039bde506e8e46982d76f2ee6a27dad697647627098b2763320e` |
| 6 | `theorem` | [negativeSmoothMoment_eq_forward_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/negativesmoothmoment-eq-forward-integral--0057eb52a0ae98fd7a0e5dbd.md) | 67 | `result-track:0057eb52a0ae98fd7a0e5dbd088cbb85cc170df316fd0ab8ceac6ca90ad2bcef` |
| 7 | `theorem` | [forwardHalfKernel_interval_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/forwardhalfkernel-interval-eq-tail-pairing--2bcf01b95496f5d056933d45.md) | 79 | `result-track:2bcf01b95496f5d056933d4546430b698fff63c1388fe74046ae7d1354cbb6e7` |
| 8 | `theorem` | [negativeSmoothMoment_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/negativesmoothmoment-eq-tail-pairing--66c4b45ddbcbb8955e7c2215.md) | 117 | `result-track:66c4b45ddbcbb8955e7c2215595b62af31e3e28e8c2e468825c31476da2f7e23` |
| 9 | `theorem` | [negativeSmoothMoment_eq_half_causal_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/negativesmoothmoment-eq-half-causal-energy--c2ea71c2bf76b807778d7b18.md) | 127 | `result-track:c2ea71c2bf76b807778d7b1866f162f14c4304d88f9b406870d196e7ece2ec4f` |
| 10 | `theorem` | [negativeSmoothMoment_eq_normalized_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/negativesmoothmoment-eq-normalized-energy--a61957f0113519b0d4fbcd7c.md) | 133 | `result-track:a61957f0113519b0d4fbcd7cf5d216650497aef21276be47e0a9684de281bc46` |
| 11 | `theorem` | [negativeSmoothMoment_eq_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/negativesmoothmoment-eq-rational--57bc44a4f8ee0318e71c39b8.md) | 141 | `result-track:57bc44a4f8ee0318e71c39b8a771afb8e508f9fffde0234e68f7625ed280c8db` |
| 12 | `theorem` | [criticalContinuousMoment_eq_neg_half_causal_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/criticalcontinuousmoment-eq-neg-half-causal-energy--25319b83c490a475d964af48.md) | 150 | `result-track:25319b83c490a475d964af484c39a93672ed3190c95641ba3f21c5a9d9716e06` |
| 13 | `theorem` | [criticalContinuousMoment_eq_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/criticalcontinuousmoment-eq-rational--670f20788b958f2aa9ecf908.md) | 157 | `result-track:670f20788b958f2aa9ecf908c54154fc8d6e24bedf003d4cd57e2eccb8423887` |
| 14 | `theorem` | [negativeSmoothMoment_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/negativesmoothmoment-pos--f6e071e407e1b7aab7ea6b56.md) | 165 | `result-track:f6e071e407e1b7aab7ea6b5659b68fbe64246b16b37063ad458a62ef1b48f518` |
| 15 | `theorem` | [criticalContinuousMoment_lt_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/criticalcontinuousmoment-lt-zero--6961c1cfff5c0a0fa6f8e661.md) | 171 | `result-track:6961c1cfff5c0a0fa6f8e661f8566f11df9e29c263b75acf38e5061f1cb86592` |
| 16 | `theorem` | [criticalContinuousMoment_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/criticalcontinuousmoment-ne-zero--c85dd6c7cd27e31ab9866f83.md) | 177 | `result-track:c85dd6c7cd27e31ab9866f835a80022e778a9da9379428eb0d8be206f9233153` |
| 17 | `theorem` | [criticalContinuousMoment_strict_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/criticalcontinuousmoment-strict-bounds--0f3a1daeb8cdb0e14e9c4b35.md) | 181 | `result-track:0f3a1daeb8cdb0e14e9c4b35cd0ce0fa955b2bb8a9b0213fe9673bb1a3640fcf` |
| 18 | `theorem` | [mertensResidual_eq_neg_causal_energy_sub_work](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/mertensresidual-eq-neg-causal-energy-sub-work--2c78c27a95f2ccea9ba86985.md) | 190 | `result-track:2c78c27a95f2ccea9ba869852f7e6a8673022a77b73818a64253b85ad0ba4f10` |
| 19 | `theorem` | [mertensResidual_eq_rational_sub_work](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/mertensresidual-eq-rational-sub-work--58f574c12a310aed9cccb088.md) | 197 | `result-track:58f574c12a310aed9cccb0880899188cf47ef75096c14c09b723b25eef2811f8` |
| 20 | `theorem` | [mertensResidual_lt_neg_work](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/mertensresidual-lt-neg-work--7e3f2223ce4a76523f7a0759.md) | 204 | `result-track:7e3f2223ce4a76523f7a07593c29e56a750c8827bf6d7987795a63c533c6bfb9` |
| 21 | `theorem` | [residual_tail_of_Mangoldt_work_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/declarations/residual-tail-of-mangoldt-work-tail--bedadea05894754256baa166.md) | 211 | `result-track:bedadea05894754256baa16604aeb5f650f38b172ba9ee0e443bc14091a1e283` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
