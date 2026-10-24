# Verification target: GRWTSK.Analysis.LinearAlgebra.ThreePhaseCoefficientHeat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b50b0dd31cfcbb3e3faa04d622eefbe7eb9c544",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/LinearAlgebra/ThreePhaseCoefficientHeat.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b50b0dd31cfcbb3e3faa04d622eefbe7eb9c544`.

Source path: `GRWTSK/Analysis/LinearAlgebra/ThreePhaseCoefficientHeat.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/LinearAlgebra/ThreePhaseCoefficientHeat.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Triple](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/triple--2c48cd50eb0ef92db91a73b9.md) | 25 | `declaration-track:2c48cd50eb0ef92db91a73b92a41165b32bfebcbb970a5112e8f256009e66473` |
| 2 | `def` | [mean](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/mean--8567dba0b701721d9686d8c7.md) | 27 | `declaration-track:8567dba0b701721d9686d8c7fed301f78e88d2bcea38eee942d59b177c778dd8` |
| 3 | `def` | [relax](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/relax--abade3349fc56429ee5eca91.md) | 29 | `declaration-track:abade3349fc56429ee5eca91ad27bb079db00796e92666f1b3bf7b35420a5f6f` |
| 4 | `def` | [decay](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/decay--7f3a51e67c1fc1507518f8bc.md) | 32 | `declaration-track:7f3a51e67c1fc1507518f8bcfc70103342a6c1f0ec52793e87f9bce580d0966f` |
| 5 | `def` | [flow](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/flow--8ecf90ee487dca2852aabd6b.md) | 34 | `declaration-track:8ecf90ee487dca2852aabd6bdb4dce316210241ae597e70049f5af74fd81a3ad` |
| 6 | `theorem` | [mean_relax](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/mean-relax--6ccec546d4b437ad2955b8e0.md) | 36 | `result-track:6ccec546d4b437ad2955b8e0c99a57abb5a6b3be222f9b7115f6e9eb07b4a1dd` |
| 7 | `theorem` | [relax_one](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/relax-one--a286af81efa4603a6493fa40.md) | 40 | `result-track:a286af81efa4603a6493fa4042e3de2ad5b3b903dd0c6acb78a7952bec5d4c76` |
| 8 | `theorem` | [relax_comp](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/relax-comp--cf6fa7adebec8d63732d35d6.md) | 46 | `result-track:cf6fa7adebec8d63732d35d65e77f00c4642ffc27735b526ca0e46fb4bc43387` |
| 9 | `theorem` | [decay_zero](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/decay-zero--6c6598247412687973410264.md) | 51 | `result-track:6c6598247412687973410264d58e0c3aefd42f13237a4c4b5e8b51e60a23b831` |
| 10 | `theorem` | [decay_add](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/decay-add--2e8619d00a9d6bef49ef0649.md) | 53 | `result-track:2e8619d00a9d6bef49ef06492fe4ea62ef8577b7dc468a0929e432342f395d79` |
| 11 | `theorem` | [decay_pos](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/decay-pos--a6cc4d1a33cff95bcae99f69.md) | 56 | `result-track:a6cc4d1a33cff95bcae99f69acc06d6907eee411dd8372a3c4b1ec23af7207c9` |
| 12 | `theorem` | [decay_square](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/decay-square--2679ce51d1ee775f3884fad7.md) | 59 | `result-track:2679ce51d1ee775f3884fad74c652f6ac1c0f83812e38796033abd6571b4fe76` |
| 13 | `theorem` | [flow_zero](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/flow-zero--24be1357a8285b75cc156cf8.md) | 64 | `result-track:24be1357a8285b75cc156cf8f8923b01ff12bfda491793bca12e2348d80dcd2e` |
| 14 | `theorem` | [flow_add](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/flow-add--64a4d3e09ef9de795f39eddc.md) | 66 | `result-track:64a4d3e09ef9de795f39eddc9b0b4a4463af76946e7a5d638fa3eacf1daaf8c1` |
| 15 | `theorem` | [mean_flow](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/mean-flow--986c1ca70f8619ec8eb86996.md) | 69 | `result-track:986c1ca70f8619ec8eb86996da417f029b42b80489fbfce529cc7a02b70db9c0` |
| 16 | `theorem` | [flow_continuous](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/flow-continuous--f4dae21042ddf1d4bf107c08.md) | 72 | `result-track:f4dae21042ddf1d4bf107c0870c8808d7f5a7bac93d6bc904e9c91947926466f` |
| 17 | `def` | [generator](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/generator--e9ce6e2dd20d46bfbd706fc0.md) | 78 | `declaration-track:e9ce6e2dd20d46bfbd706fc0a1c6aaa648470f78725b002b2dbdd1d56c545728` |
| 18 | `theorem` | [flow_derivative](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/flow-derivative--afe2ae0e57fdf4719dd7f9ff.md) | 81 | `result-track:afe2ae0e57fdf4719dd7f9ff4616c157e6550171e50f9d3889324a74c813b882` |
| 19 | `def` | [phaseEnergy](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/phaseenergy--8b2d9ff1bd3f44c8dae069cb.md) | 87 | `declaration-track:8b2d9ff1bd3f44c8dae069cb99ee1e5d581863b09ad6fa3d4b8be8638b7ff7f6` |
| 20 | `def` | [residualEnergy](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/residualenergy--73b50fda7ce2de9a65b95e7b.md) | 89 | `declaration-track:73b50fda7ce2de9a65b95e7b2301511b24d9d2ef8cad36a3fe7c316f919e5320` |
| 21 | `def` | [totalEnergy](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/totalenergy--3746429238caac572a4124a7.md) | 92 | `declaration-track:3746429238caac572a4124a7aa94d0365bd614b42e2639909693fa55696eac1b` |
| 22 | `def` | [defectEnergy](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/defectenergy--7e69615bd68016c7986ee20f.md) | 94 | `declaration-track:7e69615bd68016c7986ee20fd19acb8807665db0ab173c5c66db39524de365c6` |
| 23 | `theorem` | [energy_decomposition](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/energy-decomposition--20540cd7ce4308d3122aa2e5.md) | 96 | `result-track:20540cd7ce4308d3122aa2e5b9c7d39f0fc7adb854d3a22fd98e1d094e990276` |
| 24 | `theorem` | [edge_energy](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/edge-energy--9b8027ae08d4ca1ccb7d7697.md) | 102 | `result-track:9b8027ae08d4ca1ccb7d76976d485b4b331635d22521b09ac4209e6fb6125b19` |
| 25 | `theorem` | [filled_cell_gap](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/filled-cell-gap--d5f734c249dff59a083decbd.md) | 108 | `result-track:d5f734c249dff59a083decbd2750b60bb4fa62c937e8385481529ccc83ed1d23` |
| 26 | `theorem` | [defect_nonneg](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/defect-nonneg--653b6d5d09b6fa25f4233d83.md) | 115 | `result-track:653b6d5d09b6fa25f4233d837ec84f042af5ff6c12eb782644f939196b5f546f` |
| 27 | `theorem` | [defect_zero_iff](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/defect-zero-iff--d58829a05e8596f8f27dba50.md) | 121 | `result-track:d58829a05e8596f8f27dba50d6ae49ef9736a0dfa45c5fe453c0e38b9dbc1324` |
| 28 | `theorem` | [defect_relax](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/defect-relax--ec419998672e3416903e74a9.md) | 140 | `result-track:ec419998672e3416903e74a96e52d10657e6b2a7d54aed0db1738e3fb06d2a04` |
| 29 | `theorem` | [defect_flow](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/defect-flow--1d5652bc6b3fa123ff281c0a.md) | 145 | `result-track:1d5652bc6b3fa123ff281c0a6b8a78bedfa81be4fe24069ab63b39c4ceab5217` |
| 30 | `theorem` | [total_flow](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/total-flow--9fd92f9705d55be9584eee39.md) | 151 | `result-track:9fd92f9705d55be9584eee39bd7e50fdfb415d988dd3a7f456dd3eeefb530162` |
| 31 | `theorem` | [defect_contraction](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/defect-contraction--cd8a0a43278c5e25ff791b93.md) | 157 | `result-track:cd8a0a43278c5e25ff791b93dc9cad2fcde7fcd5087052f1edc2051bd077aed5` |
| 32 | `theorem` | [finite_time_zero_iff](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/finite-time-zero-iff--371679d6e7bd32d7ec90e0c6.md) | 168 | `result-track:371679d6e7bd32d7ec90e0c6a9eae0328f1e12108f1b2af76c00274dfcfab43e` |
| 33 | `theorem` | [nonconstant_fixture](../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/declarations/nonconstant-fixture--d157eaba9a0bb2faba1f214c.md) | 174 | `result-track:d157eaba9a0bb2faba1f214cb340638c7240ef352fd818ab550eff28b8064c82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
