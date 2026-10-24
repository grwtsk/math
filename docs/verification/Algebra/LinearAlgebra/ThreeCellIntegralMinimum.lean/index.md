# Verification target: GRWTSK.LinearAlgebra.ThreeCellIntegralMinimum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1555e9eea1b5460a4483660f4a2de645da2d0f0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/ThreeCellIntegralMinimum.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1555e9eea1b5460a4483660f4a2de645da2d0f0`.

Source path: `GRWTSK/LinearAlgebra/ThreeCellIntegralMinimum.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/ThreeCellIntegralMinimum.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.Homology.ThreeCellIntegralGauge`](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.Analysis.LinearAlgebra.ThreeCellGaugeMetric`](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [castCell](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/declarations/castcell--31ab83f4671e5d12f5a5f3f6.md) | 24 | `declaration-track:31ab83f4671e5d12f5a5f3f6dfcd231e8803c9356228c184f9c3b9ff60303ef9` |
| 2 | `def` | [minimum](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/declarations/minimum--fe898f000231fbad02463224.md) | 28 | `declaration-track:fe898f000231fbad02463224cf58bc17a3cbc087fdc4710105f129e0da007746` |
| 3 | `def` | [IntegralMinimum](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/declarations/integralminimum--178139fadb83bf785496e6ad.md) | 31 | `declaration-track:178139fadb83bf785496e6adafa4cd660185a7a926ccf58194555e642a72ca48` |
| 4 | `theorem` | [normalForm_cast](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/declarations/normalform-cast--d9826ab13316e49f3d25ba20.md) | 35 | `result-track:d9826ab13316e49f3d25ba20595ed1fd5ec0f5178805cbc9c6fa1d792bb95b26` |
| 5 | `theorem` | [minimum_integral_iff](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/declarations/minimum-integral-iff--1941a09847de1396d1e9f94e.md) | 44 | `result-track:1941a09847de1396d1e9f94ea6c0764b6f80f304be2442a5b9f75dfa6b9c2c40` |
| 6 | `abbrev` | [Obstruction](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/declarations/obstruction--7b1fc9e139329182c7435e44.md) | 76 | `declaration-track:7b1fc9e139329182c7435e44f81bc80d1653ae7724d00c2955bb3abbd8b60faa` |
| 7 | `def` | [obstructionHom](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/declarations/obstructionhom--9429f2ae806799710ceaa85d.md) | 79 | `declaration-track:9429f2ae806799710ceaa85dfc15095f5dd778bc091b28b8c55c49b1dae797a2` |
| 8 | `def` | [obstruction](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/declarations/obstruction--fe6dfbe6565968caeff8f482.md) | 88 | `declaration-track:fe6dfbe6565968caeff8f482dc71eac9d79f8e0f2c9511d18c8f54b14e8ec354` |
| 9 | `theorem` | [obstruction_zero_iff](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/declarations/obstruction-zero-iff--04bc9f675c66f25946830b92.md) | 93 | `result-track:04bc9f675c66f25946830b925b56cb326d7f9a8e1c3e8619beb8f362b6930b5b` |
| 10 | `theorem` | [obstruction_surjective](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/declarations/obstruction-surjective--8df6540ae7bbede20973d40a.md) | 100 | `result-track:8df6540ae7bbede20973d40aa6d8960f37f2817ddfc74eecdf6c885806db1c93` |
| 11 | `abbrev` | [MinimumIntegralLattice](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/declarations/minimumintegrallattice--0a6a9fa7818a258fc6054d9b.md) | 106 | `declaration-track:0a6a9fa7818a258fc6054d9b356c550a15f940e4ee060ce6d46975fdb72360cf` |
| 12 | `def` | [obstructionEquiv](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/declarations/obstructionequiv--c66f5a067b319d22a77fc303.md) | 108 | `declaration-track:c66f5a067b319d22a77fc303d96d21351949f5971b405e56ce7570daf140fb73` |
| 13 | `theorem` | [obstructionEquiv_mk](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/declarations/obstructionequiv-mk--27cba8fb5954d9ff118b484a.md) | 111 | `result-track:27cba8fb5954d9ff118b484a907c5097c49bacf4cfc3931ec363cebd74b0bcb0` |
| 14 | `theorem` | [minimum_lattice_index](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/declarations/minimum-lattice-index--0c059d38b7bb900dc0da87a1.md) | 114 | `result-track:0c059d38b7bb900dc0da87a1b060367ea852c2ad6d3a0fa81f70a173227dc22f` |
| 15 | `theorem` | [universal_clearing_iff](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/declarations/universal-clearing-iff--e951dfe252729e7b4225b171.md) | 121 | `result-track:e951dfe252729e7b4225b171041f89d533c64eafc741eb5697b33452d2cf1426` |
| 16 | `theorem` | [clear12](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/declarations/clear12--f6f5e165c987269d46890484.md) | 136 | `result-track:f6f5e165c987269d4689048415b511c59dfaa59ba1e912888e41d8da7dcb1a47` |
| 17 | `theorem` | [two_independent_obstructions](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/declarations/two-independent-obstructions--9fb077a3999db0dcce3eb463.md) | 141 | `result-track:9fb077a3999db0dcce3eb4633e851d92dd4256adf901b36eb3d9f0f15d13af02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
