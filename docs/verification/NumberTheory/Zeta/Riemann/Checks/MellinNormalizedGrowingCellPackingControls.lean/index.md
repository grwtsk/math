# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.MellinNormalizedGrowingCellPackingControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82b35bd9073a033f7092897816856457861953a2",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/MellinNormalizedGrowingCellPackingControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/MellinNormalizedGrowingCellPackingControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/MellinNormalizedGrowingCellPackingControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82b35bd9073a033f7092897816856457861953a2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/MellinNormalizedGrowingCellPackingControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/MellinNormalizedGrowingCellPackingControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.MellinNormalizedGrowingCellPacking`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedGrowingCellPacking.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [growing_stage_nonnegative](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/MellinNormalizedGrowingCellPackingControls.lean/declarations/growing-stage-nonnegative--acf7f8e7d173fa87bd16ca5d.md) | 14 | `result-track:acf7f8e7d173fa87bd16ca5d7ff58644f9875822dba7df4fdbaf64c6c2cf5adc` |
| 2 | `theorem` | [growing_stage_monotone](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/MellinNormalizedGrowingCellPackingControls.lean/declarations/growing-stage-monotone--01949d2ed2582eff70f81453.md) | 18 | `result-track:01949d2ed2582eff70f814531b76e10fec7338f0fdbeabda2c060349855cc890` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
