# Verification target: GRWTSK.Analysis.RankOneTraceBoundary.Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3f6da49f142bd4f265747a89fee67db5af94b70",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/index.md) · [Full source](../../../../mathematics/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3f6da49f142bd4f265747a89fee67db5af94b70`.

Source path: `GRWTSK/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rankOneDetailEnergy](../../../../mathematics/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/declarations/rankonedetailenergy--3542b5c0abdd68fe1dbe0ac8.md) | 35 | `declaration-track:3542b5c0abdd68fe1dbe0ac8505fc52a0b805872ba08d3c375de4b9ab3064110` |
| 2 | `theorem` | [rank_one_cauchy](../../../../mathematics/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/declarations/rank-one-cauchy--dac06a4d6f9cb0fb7875883b.md) | 38 | `result-track:dac06a4d6f9cb0fb7875883b0a988eda0e2cecf395b7af59b85559be4dcb4d31` |
| 3 | `theorem` | [rank_one_detail_controls_scalar](../../../../mathematics/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/declarations/rank-one-detail-controls-scalar--9a3b0adb5139f30d417fb6e8.md) | 46 | `result-track:9a3b0adb5139f30d417fb6e8dd7de2dccd69f7641939b0c9020eddcb7163f2fb` |
| 4 | `theorem` | [rank_one_detail_controls_scalar_coefficient](../../../../mathematics/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/declarations/rank-one-detail-controls-scalar-coefficient--5d8ce56b712c44dbdc59666e.md) | 52 | `result-track:5d8ce56b712c44dbdc59666e717f254ec9efd49a56150ff44c5b03ac9a1af58a` |
| 5 | `theorem` | [rank_one_detail_controls_full_product](../../../../mathematics/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/declarations/rank-one-detail-controls-full-product--db0dfd16873b3a906dedffdb.md) | 57 | `result-track:db0dfd16873b3a906dedffdb851b10f3df597758c59e0d35419a37152f738afc` |
| 6 | `theorem` | [rank_one_detail_nonnegative](../../../../mathematics/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/declarations/rank-one-detail-nonnegative--b1ddc012067605819f949a51.md) | 63 | `result-track:b1ddc012067605819f949a519c7f15368c32e97f807b6dd6109c526277262980` |
| 7 | `theorem` | [zero_rank_one_detail_iff](../../../../mathematics/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/declarations/zero-rank-one-detail-iff--330f4b07c5c999182a142afe.md) | 67 | `result-track:330f4b07c5c999182a142afecbff340504f7e5dbd52e42aa4bcd33f870c121d7` |
| 8 | `theorem` | [exact_source_detail_budget_controls_readout](../../../../mathematics/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/declarations/exact-source-detail-budget-controls-readout--034996c73c11e393630b2937.md) | 81 | `result-track:034996c73c11e393630b29376df869f088af5ce8b81ef981bbe9a98d7135169f` |
| 9 | `abbrev` | [Operator](../../../../mathematics/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/declarations/operator--809bcac281bf39e3338d9c23.md) | 92 | `declaration-track:809bcac281bf39e3338d9c23f8f062e00fa34d7e769b8b64214f739ae0fb81b9` |
| 10 | `def` | [scalarMatrix](../../../../mathematics/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/declarations/scalarmatrix--21e2faac9c5b291d445fde8d.md) | 97 | `declaration-track:21e2faac9c5b291d445fde8da5ad02df93c395833dc9e8bc87933b0a099b949a` |
| 11 | `def` | [scalarCoefficient](../../../../mathematics/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/declarations/scalarcoefficient--b441c4d7055434f65c78db25.md) | 102 | `declaration-track:b441c4d7055434f65c78db25a267bcf92ec0c149a6e617f8da6eaabf1357bd06` |
| 12 | `def` | [tracelessPart](../../../../mathematics/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/declarations/tracelesspart--00cc62b31b7fa35022d541af.md) | 107 | `declaration-track:00cc62b31b7fa35022d541afe406409255e6a28ff0ea2527da4a1d1b4829b84d` |
| 13 | `def` | [rankOneMatrix](../../../../mathematics/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/declarations/rankonematrix--b939f9f5978070f378193886.md) | 112 | `declaration-track:b939f9f5978070f378193886f099ad7814c978385f0a76f175d10b53c4afd219` |
| 14 | `theorem` | [scalar_matrix_coefficient](../../../../mathematics/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/declarations/scalar-matrix-coefficient--3d7429b8590e508c70832540.md) | 114 | `result-track:3d7429b8590e508c708325403953e19fb3bdb8b666de29818b186294e7b69e2e` |
| 15 | `theorem` | [scalar_matrix_has_zero_traceless_part](../../../../mathematics/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/declarations/scalar-matrix-has-zero-traceless-part--35b1eccc5f07b16d0734f87a.md) | 117 | `result-track:35b1eccc5f07b16d0734f87a8cd9f6df931ceeee2f3f310ebb8e66c14ab0edd4` |
| 16 | `theorem` | [general_operator_zero_detail_has_unbounded_scalar](../../../../mathematics/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/declarations/general-operator-zero-detail-has-unbounded-scalar--72d0d8e517e771ac43465ad6.md) | 120 | `result-track:72d0d8e517e771ac43465ad6dc47609e001da29b632794e09c23876c284d98d8` |
| 17 | `theorem` | [rank_one_scalar_matrix_forces_zero](../../../../mathematics/Analysis/RankOneTraceBoundary/Variant7ed3a2b5313d060cd449f07b144aaf138064459b4df871b86e5d9ad4e3ec3864.lean/declarations/rank-one-scalar-matrix-forces-zero--023be576fd0e438a29bd72fe.md) | 127 | `result-track:023be576fd0e438a29bd72fe9e47c13fbe97923d59152f426718a7d14f969aa7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
