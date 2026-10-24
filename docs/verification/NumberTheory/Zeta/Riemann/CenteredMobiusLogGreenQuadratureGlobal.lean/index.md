# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenQuadratureGlobal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d26635c00c27ba9163646152764f50ef33ee2f4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureGlobal.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureGlobal.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureGlobal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d26635c00c27ba9163646152764f50ef33ee2f4`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureGlobal.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureGlobal.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenQuadratureError`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureError.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [greenFourierBackgroundCoordinate_eq_sum_cells](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureGlobal.lean/declarations/greenfourierbackgroundcoordinate-eq-sum-cells--5754a6a5c8dbee7eed756bba.md) | 17 | `result-track:5754a6a5c8dbee7eed756bba8c891854d75ff5b9eba19bc75b45bace3ef2cbc7` |
| 2 | `theorem` | [greenCenteringResidual_eq_cellErrorSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureGlobal.lean/declarations/greencenteringresidual-eq-cellerrorsum--0f79974e89ff1f54411339e4.md) | 59 | `result-track:0f79974e89ff1f54411339e471c484da6f3bb8dd0d53ed4814b1c04ab136ab13` |
| 3 | `theorem` | [norm_greenCenteringResidual_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureGlobal.lean/declarations/norm-greencenteringresidual-le--2d68f05bef9af7aa3bfb9983.md) | 73 | `result-track:2d68f05bef9af7aa3bfb9983a4e6fe61010a1e60e23dc5ab037693d0f7898f64` |
| 4 | `theorem` | [norm_greenCenteringResidual_le_explicit](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureGlobal.lean/declarations/norm-greencenteringresidual-le-explicit--f286b48c5b8e56f9e18abdc3.md) | 98 | `result-track:f286b48c5b8e56f9e18abdc3c19263207430496d23850a18325c1cf3b216a91b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
