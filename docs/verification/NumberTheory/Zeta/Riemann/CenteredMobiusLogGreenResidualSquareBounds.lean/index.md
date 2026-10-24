# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenResidualSquareBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed12daac7e86e83783d641c3755a882db6a9bc1f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualSquareBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualSquareBounds.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualSquareBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed12daac7e86e83783d641c3755a882db6a9bc1f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualSquareBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualSquareBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenHybridEnergy`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridEnergy.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenResidualA](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualSquareBounds.lean/declarations/greenresiduala--32b0a6aeb29cb5d02a802bc5.md) | 14 | `declaration-track:32b0a6aeb29cb5d02a802bc592345037e6a1541d4f19c41b9c21a962d4b325e5` |
| 2 | `def` | [greenResidualB](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualSquareBounds.lean/declarations/greenresidualb--f11b3eb24e53d7c66c4f68d1.md) | 18 | `declaration-track:f11b3eb24e53d7c66c4f68d15828ca9ce398c2bc6f2fcfdd2c692b17f8477669` |
| 3 | `def` | [greenResidualC](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualSquareBounds.lean/declarations/greenresidualc--d3b74d61c6729b8241bfb40b.md) | 22 | `declaration-track:d3b74d61c6729b8241bfb40bb06d421b9cb34d8b3883b7018d345dcf4c4c2dd3` |
| 4 | `theorem` | [sq_add_three_le_three_sq_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualSquareBounds.lean/declarations/sq-add-three-le-three-sq-sum--7c754ce1763993a3a4e21252.md) | 26 | `result-track:7c754ce1763993a3a4e212525082b8f7f11e8ed8b089705ed7bf8a06162345f8` |
| 5 | `theorem` | [sq_norm_greenCenteringResidual_le_residue](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualSquareBounds.lean/declarations/sq-norm-greencenteringresidual-le-residue--f1a03b87bbad41ca2bb3c230.md) | 32 | `result-track:f1a03b87bbad41ca2bb3c2302295063a76c242ecfe76da23ad146d583220f854` |
| 6 | `def` | [greenAliasResidualA](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualSquareBounds.lean/declarations/greenaliasresiduala--241fde6136f838afbbc97cf0.md) | 62 | `declaration-track:241fde6136f838afbbc97cf0b18f96467ccb13bd41895d2584a0dd23dc66766f` |
| 7 | `def` | [greenAliasResidualD](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualSquareBounds.lean/declarations/greenaliasresiduald--bc7bf8b1950c0337278b7037.md) | 63 | `declaration-track:bc7bf8b1950c0337278b70372da724dc41555a254eeac26ec7a69544aa5639cd` |
| 8 | `theorem` | [sq_add_two_le_two_sq_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualSquareBounds.lean/declarations/sq-add-two-le-two-sq-sum--452a72065bba32b6c1b01cef.md) | 66 | `result-track:452a72065bba32b6c1b01cef0375d93c2f178dd60d3e26cce4cad5d2167860d5` |
| 9 | `theorem` | [sq_norm_greenCenteringResidual_le_aliasing](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualSquareBounds.lean/declarations/sq-norm-greencenteringresidual-le-aliasing--b8e3237dc91fb39489bad165.md) | 71 | `result-track:b8e3237dc91fb39489bad1654a54ce9b608e15dac463c5aba7b3249c29952d09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
