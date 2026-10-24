# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceExactEnergyMeanConsumer.Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1bf56a8b4acc129ad7c93b6e90f1e921394b2d9",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1bf56a8b4acc129ad7c93b6e90f1e921394b2d9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceExactTailEnergy` — import line 6; external provider; requires a separately pinned dependency.
- `SourceActualF7MeanConsumer` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exactWeightBudget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/declarations/exactweightbudget--474f9bfe0e3a1b852b2c0b08.md) | 35 | `declaration-track:474f9bfe0e3a1b852b2c0b08a5e5517d558248983841f432ca6ac6b145239b2b` |
| 2 | `def` | [exactMeanTailBudget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/declarations/exactmeantailbudget--9d9d2dc33126c31f446e54d3.md) | 38 | `declaration-track:9d9d2dc33126c31f446e54d33c8ea8a4a1e1b52cb289c8c1c8203ec3af73de7b` |
| 3 | `def` | [exactMeanAtomBudget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/declarations/exactmeanatombudget--bcb38f28e2296a6f168ff3e7.md) | 42 | `declaration-track:bcb38f28e2296a6f168ff3e744a3da9996fd7ea9d0c595386d3d724f17e0daa1` |
| 4 | `def` | [exactMeanResidualBudget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/declarations/exactmeanresidualbudget--c6047e8d589180963c8e4877.md) | 44 | `declaration-track:c6047e8d589180963c8e4877291349a8519d6f1157546433ff75ddb3f9287c84` |
| 5 | `theorem` | [exactWeightBudget_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/declarations/exactweightbudget-nonneg--632eb8ad90f0e0379b153679.md) | 47 | `result-track:632eb8ad90f0e0379b15367993e9b5cfdd806b8d3a596d135a82be172a774f7e` |
| 6 | `theorem` | [exactMeanTailBudget_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/declarations/exactmeantailbudget-nonneg--256ba7b9229f25723288504f.md) | 53 | `result-track:256ba7b9229f25723288504f38ca7c7c00953978c7bf3d5bed03eee867161a76` |
| 7 | `theorem` | [physicalCurvatureWeight_abs_le_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/declarations/physicalcurvatureweight-abs-le-exact--8cfea5153cfafd28c5ea4c4b.md) | 61 | `result-track:8cfea5153cfafd28c5ea4c4b6b3edaaed5b1ac79b4812817db517fef029879a1` |
| 8 | `theorem` | [complete_tail_abs_le_exact_weighted_mass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/declarations/complete-tail-abs-le-exact-weighted-mass--919d6860f997af6af2a26a0a.md) | 76 | `result-track:919d6860f997af6af2a26a0ab7a1abc3dea8f5a4dce5e2d7d1a66a02689283f8` |
| 9 | `theorem` | [complete_tail_abs_le_exact_mean](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/declarations/complete-tail-abs-le-exact-mean--6c41a4d63d22f052957a2150.md) | 96 | `result-track:6c41a4d63d22f052957a2150b93f50780353457e74237f21088a8d35747200ed` |
| 10 | `theorem` | [complete_tail_lower_of_exact_mean](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/declarations/complete-tail-lower-of-exact-mean--6b057a54e7edfb4f187486b8.md) | 119 | `result-track:6b057a54e7edfb4f187486b83fe9c716b16f89993b2ecff080c9424c91029d72` |
| 11 | `theorem` | [exactMeanAtomBudget_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/declarations/exactmeanatombudget-eq--6497d25cf40c9139578be256.md) | 131 | `result-track:6497d25cf40c9139578be25642239e44e3068ba3cf0c7ff4d4584f703f47e0cc` |
| 12 | `theorem` | [atom_witness_of_exact_mean](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/declarations/atom-witness-of-exact-mean--1c62b2d1b67b6c506ea6b6ef.md) | 138 | `result-track:1c62b2d1b67b6c506ea6b6ef31bae7302366e06de27e12cc45dd3de7c842a1fa` |
| 13 | `theorem` | [all_real_lower_of_exact_mean](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/declarations/all-real-lower-of-exact-mean--52bcc6a3f77ba184d3b57b4c.md) | 145 | `result-track:52bcc6a3f77ba184d3b57b4c3493b27ea2a7be8cadb3a5b0fec64abf0aaf2506` |
| 14 | `theorem` | [estimate_of_exact_mean](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/declarations/estimate-of-exact-mean--8a23f8f074c6d0e381dd0b04.md) | 155 | `result-track:8a23f8f074c6d0e381dd0b04c02196ab9fc8025d54c69de24ad0d42e4be22e18` |
| 15 | `theorem` | [residual_upper_of_exact_mean](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/declarations/residual-upper-of-exact-mean--c87df9f4c6d2ca6942625712.md) | 160 | `result-track:c87df9f4c6d2ca694262571240f4f99e69f9645e0c13df75d8284cb7a9dbb703` |
| 16 | `theorem` | [actual_leading_upper_of_exact_mean](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/declarations/actual-leading-upper-of-exact-mean--a4a248e80286807336bb0f00.md) | 168 | `result-track:a4a248e80286807336bb0f002d063cbb0d397586e7ac9330213e6cc558a6afc7` |
| 17 | `theorem` | [exactMeanTailBudget_forty](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/declarations/exactmeantailbudget-forty--94dfeb30e93de118c14d9491.md) | 178 | `result-track:94dfeb30e93de118c14d9491eef2305c4467b4ddf9febe5e5a50cdc320277f8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
