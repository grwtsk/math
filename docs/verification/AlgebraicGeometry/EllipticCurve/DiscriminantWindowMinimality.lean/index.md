# Verification target: GRWTSK.AlgebraicGeometry.EllipticCurve.DiscriminantWindowMinimality

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1870610a625e6e7a6c84f93ce9c7c9742fbb1f0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1870610a625e6e7a6c84f93ce9c7c9742fbb1f0`.

Source path: `GRWTSK/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.UnitInvariantMinimality`](../../../../mathematics/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [discriminantExponent](../../../../mathematics/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean/declarations/discriminantexponent--019ebafa9c873a8ece540a8b.md) | 27 | `declaration-track:019ebafa9c873a8ece540a8b4ec0b00d5b0f3f74fad26f843a9805d7ce4bab96` |
| 2 | `theorem` | [delta_value_ne_zero](../../../../mathematics/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean/declarations/delta-value-ne-zero--513b5b6ff8c42556040bb61a.md) | 30 | `result-track:513b5b6ff8c42556040bb61af3295a4e9475aed9ffc3db504bf3cf0bcdf052bb` |
| 3 | `theorem` | [delta_value_eq_exp](../../../../mathematics/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean/declarations/delta-value-eq-exp--93101d003d2f4c5496939168.md) | 34 | `result-track:93101d003d2f4c5496939168b83298b7d85d0f4db8bc155f7b363770e7e04ea2` |
| 4 | `theorem` | [exponent_nonneg](../../../../mathematics/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean/declarations/exponent-nonneg--c7b3552007b23c80f2a125b2.md) | 39 | `result-track:c7b3552007b23c80f2a125b282d4538e460d0801be142de4bfc235ebefe713fa` |
| 5 | `theorem` | [changed_delta_ne_zero](../../../../mathematics/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean/declarations/changed-delta-ne-zero--8551f2fac0e2dd38cf255337.md) | 45 | `result-track:8551f2fac0e2dd38cf255337c6890d0efb122f815572274f0888ba4cf68a15c8` |
| 6 | `theorem` | [exponent_change](../../../../mathematics/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean/declarations/exponent-change--7e73a9b088ded9dc2e01bd2d.md) | 51 | `result-track:7e73a9b088ded9dc2e01bd2d6f211df5843f5544aad04b93526bc01565225fd9` |
| 7 | `theorem` | [exponent_difference_multiple](../../../../mathematics/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean/declarations/exponent-difference-multiple--fcdd00abd0f74b2d4ae91925.md) | 66 | `result-track:fcdd00abd0f74b2d4ae91925065874994a92c69ba113b37ac033cd629eb80a54` |
| 8 | `theorem` | [scale_log_nonneg_of_window](../../../../mathematics/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean/declarations/scale-log-nonneg-of-window--fbdf9f82aaa78d67fc9ffaf2.md) | 73 | `result-track:fbdf9f82aaa78d67fc9ffaf2b586e40d820d56ac5ea256f07c4c34760ce68351` |
| 9 | `theorem` | [delta_value_le_of_window](../../../../mathematics/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean/declarations/delta-value-le-of-window--140c0e4f8c07659da268ea58.md) | 83 | `result-track:140c0e4f8c07659da268ea58e989d191ae81f99f7d1470705af34b80f6a0b4cd` |
| 10 | `theorem` | [minimal_of_exponent_lt_twelve](../../../../mathematics/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean/declarations/minimal-of-exponent-lt-twelve--93ae707afa62e124fd4ee588.md) | 94 | `result-track:93ae707afa62e124fd4ee58864c618d77aee2a9e8e6677dc6f1260ed74f77dd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
