# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.GreenHarmonicQuadrature

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4cea2c1f1c6101646ebd26b0e95d40d506d9fd9",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4cea2c1f1c6101646ebd26b0e95d40d506d9fd9`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_succ_ratio_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean/declarations/log-succ-ratio-bounds--ec7e8c56df094eebde76fe5a.md) | 15 | `result-track:ec7e8c56df094eebde76fe5aa7a1dd3ea941a61c38dfefebbb65ee2320ac0a3e` |
| 2 | `theorem` | [harmonic_Ioc_sub_log_ratio_abs_le_local](../../../../../mathematics/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean/declarations/harmonic-ioc-sub-log-ratio-abs-le-local--6855e908755d39afe1a34e1c.md) | 47 | `result-track:6855e908755d39afe1a34e1c30ce62155d89e51d084ed2d743b5ee332fa2958f` |
| 3 | `theorem` | [abs_log_floor_ratio_sub_log_le_local](../../../../../mathematics/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean/declarations/abs-log-floor-ratio-sub-log-le-local--419d918665d728eb817ed6e7.md) | 83 | `result-track:419d918665d728eb817ed6e7358867b56e1f11ab2f44e3bf6ffd7f595030ab71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
