# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Periodic.Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89b4a25870dcedc2776f47194ba9a7324690266a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89b4a25870dcedc2776f47194ba9a7324690266a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.InverseFunctionTheorem.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ZeroAndBoundedAtFilter` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [qParam](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/qparam--5247cbcb4cf3ca30a5ed0b6c.md) | 36 | `declaration-track:5247cbcb4cf3ca30a5ed0b6c10d3739bab57a68d546b148190e28f963a8903c5` |
| 2 | `def` | [invQParam](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/invqparam--b41b3ccbe7c23b589f58092e.md) | 39 | `declaration-track:b41b3ccbe7c23b589f58092eb7429962b34eda77945f30dff3449bf7ae912d01` |
| 3 | `theorem` | [norm_qParam](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/norm-qparam--d623b5080a8caf1b00b082b2.md) | 45 | `result-track:d623b5080a8caf1b00b082b269848236786384fe41831aeaf81219703b886dac` |
| 4 | `theorem` | [im_invQParam](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/im-invqparam--1950ddaaa7cf6be489738b36.md) | 52 | `result-track:1950ddaaa7cf6be489738b36bdab0f4f9a722a91e673969e6f2c9676b914e1a3` |
| 5 | `theorem` | [qParam_right_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/qparam-right-inv--c225a156533e9e92d09ac05d.md) | 59 | `result-track:c225a156533e9e92d09ac05d332d228a5fd99ec294a1c5c50373c4cb2435fbe6` |
| 6 | `theorem` | [qParam_left_inv_mod_period](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/qparam-left-inv-mod-period--a8050a609f5edf922ed67e87.md) | 63 | `result-track:a8050a609f5edf922ed67e8777ff97e5d7d61a1e3f75c7932508abe4e13d61ad` |
| 7 | `theorem` | [norm_qParam_lt_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/norm-qparam-lt-iff--ea7a7152c01fba554ef6e822.md) | 70 | `result-track:ea7a7152c01fba554ef6e8222009f0b5ad7e314e770dce70a12aa50566db6d5f` |
| 8 | `theorem` | [qParam_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/qparam-tendsto--52f843c56359a1e2afc4043c.md) | 77 | `result-track:52f843c56359a1e2afc4043c8e0eeb85a01d1ff20d9c3253cf785d65234a687f` |
| 9 | `theorem` | [invQParam_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/invqparam-tendsto--3dc491411b0ec41258621461.md) | 86 | `result-track:3dc491411b0ec412586214611bd512fe346240e28418f8467ee3f31faf30c918` |
| 10 | `def` | [cuspFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/cuspfunction--f3369d3f23a31a1c8545ae45.md) | 98 | `declaration-track:f3369d3f23a31a1c8545ae45d1028d41474919cacc95c96fc56fd021f66448a0` |
| 11 | `theorem` | [cuspFunction_eq_of_nonzero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/cuspfunction-eq-of-nonzero--00d9b67b45ea71c96ed8375e.md) | 101 | `result-track:00d9b67b45ea71c96ed8375e8ee8b34b57a0d31a2b649aa02999aaf9d9e750e8` |
| 12 | `theorem` | [cuspFunction_zero_eq_limUnder_nhds_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/cuspfunction-zero-eq-limunder-nhds-ne--4fcbb07a9dd78c6a2008478d.md) | 105 | `result-track:4fcbb07a9dd78c6a2008478d2b01e639e90c5730c5d77347d2883f621ad159d7` |
| 13 | `theorem` | [eq_cuspFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/eq-cuspfunction--614e4e5091cb59e238db54d4.md) | 113 | `result-track:614e4e5091cb59e238db54d43b466f9cb3ec02c7386013f1f1369a9c8648d5ec` |
| 14 | `theorem` | [differentiableAt_cuspFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/differentiableat-cuspfunction--5cf7839837ccb46bfa323035.md) | 131 | `result-track:5cf7839837ccb46bfa3230355cc6c808f889c3bb5e7d053a10beb594e54f781d` |
| 15 | `theorem` | [eventually_differentiableAt_cuspFunction_nhds_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/eventually-differentiableat-cuspfunction-nhds-ne-zero--b4bfc25728df2743ac383a4a.md) | 154 | `result-track:b4bfc25728df2743ac383a4aaba0e8de86ff16dc67a801981f415d7a872b4ede` |
| 16 | `theorem` | [boundedAtFilter_cuspFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/boundedatfilter-cuspfunction--870e0448ce92480d920eef92.md) | 168 | `result-track:870e0448ce92480d920eef92818ded719d2fefa3ea608255f6c7976450f79134` |
| 17 | `theorem` | [cuspFunction_zero_of_zero_at_inf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/cuspfunction-zero-of-zero-at-inf--78748602eda6090f3097ba3c.md) | 174 | `result-track:78748602eda6090f3097ba3ca578b1f0258a66c79a6aeb494cfb12b4d9bff3fa` |
| 18 | `theorem` | [differentiableAt_cuspFunction_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/differentiableat-cuspfunction-zero--82ed9248709a82279aa03556.md) | 178 | `result-track:82ed9248709a82279aa035569086273f63ba36dc43cd8daf6c0eaf285f93e65b` |
| 19 | `theorem` | [tendsto_at_I_inf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/tendsto-at-i-inf--ecd2c8d5d994ba242b414237.md) | 200 | `result-track:ecd2c8d5d994ba242b414237a07c1c3f6698366c29d4e230cb10a0bf68feca08` |
| 20 | `theorem` | [exp_decay_of_zero_at_inf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/declarations/exp-decay-of-zero-at-inf--726cd6845354b23a5aa2922c.md) | 212 | `result-track:726cd6845354b23a5aa2922c9cf3281b24394deba13a1ec3a1a8603025094b5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
