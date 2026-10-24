# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.GradedDyadicEnergyHalfPlane

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f36b892e40998d0c900fb474617b9677ae19e96",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f36b892e40998d0c900fb474617b9677ae19e96`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.GreenMellinContinuation`](../../../../../mathematics/NumberTheory/Zeta/GreenMellinContinuation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.LogDerivativeZeroExclusion`](../../../../../mathematics/NumberTheory/Zeta/LogDerivativeZeroExclusion.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZetaZeroFreeHalfPlaneAdapter`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaZeroFreeHalfPlaneAdapter.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Analysis.Complex.Convex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rightHalfPlane](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/declarations/righthalfplane--ac2bbd4618976380be75af41.md) | 61 | `declaration-track:ac2bbd4618976380be75af415c4430c9d95518412fffab63c7e1189f249d3633` |
| 2 | `theorem` | [rightHalfPlane_open](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/declarations/righthalfplane-open--627d05b8732c88e150042434.md) | 64 | `result-track:627d05b8732c88e150042434ac8fbcdfeb0afa6ab37b2594fb118ab0c4200b2a` |
| 3 | `theorem` | [rightHalfPlane_preconnected](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/declarations/righthalfplane-preconnected--b06b2c9c9e097bd2ddd6c9f8.md) | 68 | `result-track:b06b2c9c9e097bd2ddd6c9f8b43a6295f382c418cd4549d6b2a64b888558f09f` |
| 4 | `theorem` | [one_mem_rightHalfPlane](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/declarations/one-mem-righthalfplane--ae456e8e01e33d65e0211ca4.md) | 72 | `result-track:ae456e8e01e33d65e0211ca4deba462b0cff40ff6a46a8bb8b5f44649c551a02` |
| 5 | `theorem` | [two_mem_rightHalfPlane](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/declarations/two-mem-righthalfplane--d22a4ef7b0f7cd55b61fc48c.md) | 78 | `result-track:d22a4ef7b0f7cd55b61fc48cca60ede333024b376dbf64bf9b9424ed981a39cb` |
| 6 | `def` | [AllDyadicEnergyAtThreshold](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/declarations/alldyadicenergyatthreshold--05b9b384137e77229aa2b405.md) | 86 | `declaration-track:05b9b384137e77229aa2b4050b1ff239e3794409286fef517a5105989935369f` |
| 7 | `theorem` | [allDyadicEnergyAtThreshold_half_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/declarations/alldyadicenergyatthreshold-half-iff--501f33c3c380c367d1dd49c8.md) | 94 | `result-track:501f33c3c380c367d1dd49c8bb6496a910104654660d6a4e40d496e79fca1a52` |
| 8 | `theorem` | [uniform_energy_constant_atThreshold](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/declarations/uniform-energy-constant-atthreshold--f777c302c29e31cd97ac8d2c.md) | 109 | `result-track:f777c302c29e31cd97ac8d2cbab867edc3373773273c5f41c8903063f6f7062b` |
| 9 | `theorem` | [energyThreshold_to_geometric_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/declarations/energythreshold-to-geometric-bound--b61ee4873d8a225aab321fe4.md) | 133 | `result-track:b61ee4873d8a225aab321fe4a978d741448c9fb902364c31b1088d70cd90a999` |
| 10 | `theorem` | [graded_uniform_majorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/declarations/graded-uniform-majorant--bdb56fe0f76f3fea8f6a0909.md) | 199 | `result-track:bdb56fe0f76f3fea8f6a0909f2b17e7d1c6709f3c79c18341aa68f1994e00d46` |
| 11 | `theorem` | [graded_absolute_summability](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/declarations/graded-absolute-summability--9bc3e3ae086f4a35ce9de429.md) | 233 | `result-track:9bc3e3ae086f4a35ce9de4295de6de4108db82836348a00d8a7e36701fc66add` |
| 12 | `theorem` | [graded_blockSeries_differentiableOn](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/declarations/graded-blockseries-differentiableon--e0cf7286383c055171cf4459.md) | 247 | `result-track:e0cf7286383c055171cf44590a5f8563aeb9ad9a4a2912aefccecdd086d6c74e` |
| 13 | `theorem` | [graded_continuation](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/declarations/graded-continuation--eec541327555e903d76ac16a.md) | 295 | `result-track:eec541327555e903d76ac16a4bf5c2bcfbae0d28f202f561514c07fb5eb66db1` |
| 14 | `theorem` | [poleRemoved_analyticOn_rightHalfPlane](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/declarations/poleremoved-analyticon-righthalfplane--a74888fed0aac8a5f1d20329.md) | 307 | `result-track:a74888fed0aac8a5f1d20329f5981d5bdbe51ada3e4d7f8e75469cfe94d668ba` |
| 15 | `theorem` | [ode_on_rightHalfPlane](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/declarations/ode-on-righthalfplane--5b3907193f1abb3abf58df36.md) | 316 | `result-track:5b3907193f1abb3abf58df3645d9b51632ad4be4dd6c5fa793f4f114d44a00b9` |
| 16 | `theorem` | [poleRemoved_ne_zero_on_rightHalfPlane](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/declarations/poleremoved-ne-zero-on-righthalfplane--bb97bd27631cbd165b7d12f3.md) | 366 | `result-track:bb97bd27631cbd165b7d12f3d3b5a00c73bff4322238b90f00339871fe9460fd` |
| 17 | `theorem` | [riemannZetaZeroFreeRightHalfPlane_of_graded_extension](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/declarations/riemannzetazerofreerighthalfplane-of-graded-extension--1690f9470712fcd95328f0a7.md) | 396 | `result-track:1690f9470712fcd95328f0a7e3e1159e3bde4a677b3205cc449f2c0bc9ee2de2` |
| 18 | `theorem` | [energyAtThreshold_to_zeroFree](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/declarations/energyatthreshold-to-zerofree--7bd93fa99f69680d74364560.md) | 421 | `result-track:7bd93fa99f69680d74364560f7d0255922ae9ae638cb2523318c77e1d5e508d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
