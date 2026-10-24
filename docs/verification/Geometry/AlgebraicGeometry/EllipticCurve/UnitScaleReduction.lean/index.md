# Verification target: GRWTSK.AlgebraicGeometry.EllipticCurve.UnitScaleReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36a59b115be3dd268cee11880ad7058a2fc7f8b3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/EllipticCurve/UnitScaleReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitScaleReduction.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitScaleReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36a59b115be3dd268cee11880ad7058a2fc7f8b3`.

Source path: `GRWTSK/AlgebraicGeometry/EllipticCurve/UnitScaleReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/EllipticCurve/UnitScaleReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.C4MinimalScale`](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [delta_value_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitScaleReduction.lean/declarations/delta-value-eq--e7c88602744513c136b7ecec.md) | 24 | `result-track:e7c88602744513c136b7ececea8a577f06eac6d4ad5d146b1bbe611e8fe57527` |
| 2 | `theorem` | [c4_value_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitScaleReduction.lean/declarations/c4-value-eq--b20bd28f5194dc8685cae85d.md) | 30 | `result-track:b20bd28f5194dc8685cae85da7910eeb1898f98e00c888740bc5bcd0a9c005ad` |
| 3 | `theorem` | [minimal_of_unit_scale](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitScaleReduction.lean/declarations/minimal-of-unit-scale--579ffb03db7e5cbdeb0b6dd0.md) | 38 | `result-track:579ffb03db7e5cbdeb0b6dd0472c836675f1578dbc62a6887c7634e53675a83a` |
| 4 | `theorem` | [good_of_unit_scale](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitScaleReduction.lean/declarations/good-of-unit-scale--26dfd31da183fe65f506391c.md) | 50 | `result-track:26dfd31da183fe65f506391c57d89a44854cb62d875023c9f54c4c50278817dc` |
| 5 | `theorem` | [multiplicative_of_unit_scale](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitScaleReduction.lean/declarations/multiplicative-of-unit-scale--c2841dd2eacb63d8441a1169.md) | 59 | `result-track:c2841dd2eacb63d8441a1169d1adc8665a575b4256e3e0f7ba46b039ec6f2728` |
| 6 | `theorem` | [additive_of_unit_scale](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitScaleReduction.lean/declarations/additive-of-unit-scale--e3fcdde1b2ffca3cae1e1a89.md) | 71 | `result-track:e3fcdde1b2ffca3cae1e1a89c732b608aa26473a0fcb7a84489d65ea60248168` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
