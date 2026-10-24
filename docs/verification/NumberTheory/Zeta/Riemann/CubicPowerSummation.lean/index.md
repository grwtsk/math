# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CubicPowerSummation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44b23e69254182668c698ad7503be216735df592",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44b23e69254182668c698ad7503be216735df592`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.CubicEulerMaclaurin`](../../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.IntervalMellinKernel`](../../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic.FieldSimp` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellRemainder](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean/declarations/cellremainder--6e7b908d34034060c7c92416.md) | 30 | `declaration-track:6e7b908d34034060c7c924163ff924deb3cc9b73293f087d588bd016f43cc8c6` |
| 2 | `theorem` | [shifted_power_deriv](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean/declarations/shifted-power-deriv--b1935fa324bbf01a2c39e8c0.md) | 33 | `result-track:b1935fa324bbf01a2c39e8c02fb8893a1f0c72d79098a9248138b8d34d090c87` |
| 3 | `theorem` | [continuousOn_shifted_power](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean/declarations/continuouson-shifted-power--ecd38a169506719572dd826d.md) | 42 | `result-track:ecd38a169506719572dd826db786b7bbdc9ca8d3ff389a2b008aa5e084a2223e` |
| 4 | `theorem` | [integral_shifted_power](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean/declarations/integral-shifted-power--d981fbc16fc43772953590e6.md) | 48 | `result-track:d981fbc16fc43772953590e69fce3c07f9f951a60242250501625b4f82372c32` |
| 5 | `theorem` | [one_cell_power](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean/declarations/one-cell-power--bf53298f6e297b5384bd3a47.md) | 62 | `result-track:bf53298f6e297b5384bd3a47513bcdeedaea978b2da5d57df6d6a857932b80ac` |
| 6 | `theorem` | [finite_power_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean/declarations/finite-power-sum--2eec4ff0cb88b99afa8b6f69.md) | 103 | `result-track:2eec4ff0cb88b99afa8b6f69e14d468caffff5d13de449aa7b88ee39186044d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
