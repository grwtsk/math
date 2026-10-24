# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ReflectedStripDecay

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a8d7935113a23e1e6009ffcb44f54a0785efce3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a8d7935113a23e1e6009ffcb44f54a0785efce3`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ReflectedStripBudget`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nat_add_two_tendsto_atTop](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean/declarations/nat-add-two-tendsto-attop--e71d5da512ce6ea1a808f1e5.md) | 31 | `result-track:e71d5da512ce6ea1a808f1e58ca58e99e74c6d867c7ea7f91b7d29a2af3c8aba` |
| 2 | `theorem` | [inv_nat_succ_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean/declarations/inv-nat-succ-tendsto-zero--c860eef48e60709f2dd250ee.md) | 36 | `result-track:c860eef48e60709f2dd250eee596d61b0b467b513a5518d25d382d94d5ba3d96` |
| 3 | `theorem` | [log_div_nat_succ_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean/declarations/log-div-nat-succ-tendsto-zero--7812091a4b7811b00798adee.md) | 44 | `result-track:7812091a4b7811b00798adee3af88b78ddfff761f8ad4272a2858114bc8228f4` |
| 4 | `theorem` | [growthLog_div_nat_succ_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean/declarations/growthlog-div-nat-succ-tendsto-zero--a7451d5ff454b8708f09c0f7.md) | 55 | `result-track:a7451d5ff454b8708f09c0f7c5048451f020542f2d5faf5ec5aec386b3e0be57` |
| 5 | `theorem` | [inv_height_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean/declarations/inv-height-tendsto-zero--0c645f4147b58ee1ea341cc4.md) | 65 | `result-track:0c645f4147b58ee1ea341cc44570554fd54f2c1c11aa5e750ba7a2fac35ecbfe` |
| 6 | `theorem` | [growthLog_div_height_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean/declarations/growthlog-div-height-tendsto-zero--92726c9ee15f6984ba995fb8.md) | 70 | `result-track:92726c9ee15f6984ba995fb80e225b0ae1800cc3b666cd22f6e00291d5f62532` |
| 7 | `theorem` | [const_div_height_sq_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean/declarations/const-div-height-sq-tendsto-zero--1962770232a61c38ef3534a3.md) | 78 | `result-track:1962770232a61c38ef3534a390a9b3d29e5f695fc6d9da106fc700ed24b3ac7c` |
| 8 | `theorem` | [centralBudget_div_height_sq_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean/declarations/centralbudget-div-height-sq-tendsto-zero--9ec60f69283c8217af046445.md) | 88 | `result-track:9ec60f69283c8217af04644534ec8f1adae0142ea2b8be197635c1a844ec0947` |
| 9 | `theorem` | [stripBudget_div_height_sq_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean/declarations/stripbudget-div-height-sq-tendsto-zero--e2eeab813b89214a3e67fb02.md) | 104 | `result-track:e2eeab813b89214a3e67fb023b5a2349bc8cbc297cb5de6cc56b4fdb260d5017` |
| 10 | `theorem` | [weighted_strip_div_height_sq_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean/declarations/weighted-strip-div-height-sq-tendsto-zero--db5b6a6359a70e01abc8dc00.md) | 119 | `result-track:db5b6a6359a70e01abc8dc00cfde4e0035bce1df8e4d1601524ff876a4ba67ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
