# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Power.Variantcac736fd98dfe0930fae600a4741da688376aa860b709d425b0984a4db534ea7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49548dbc20367c94288544c373ea993b8f703f64",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variantcac736fd98dfe0930fae600a4741da688376aa860b709d425b0984a4db534ea7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variantcac736fd98dfe0930fae600a4741da688376aa860b709d425b0984a4db534ea7.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variantcac736fd98dfe0930fae600a4741da688376aa860b709d425b0984a4db534ea7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49548dbc20367c94288544c373ea993b8f703f64`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variantcac736fd98dfe0930fae600a4741da688376aa860b709d425b0984a4db534ea7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variantcac736fd98dfe0930fae600a4741da688376aa860b709d425b0984a4db534ea7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Sphere.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_norm_eq_abs_sub_sq_norm](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variantcac736fd98dfe0930fae600a4741da688376aa860b709d425b0984a4db534ea7.lean/declarations/mul-norm-eq-abs-sub-sq-norm--588721d16827a0dc6606c139.md) | 46 | `result-track:588721d16827a0dc6606c13919da07ccd2715de19a5ecfa9dd44450be7ad0457` |
| 2 | `theorem` | [mul_dist_eq_abs_sub_sq_dist](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variantcac736fd98dfe0930fae600a4741da688376aa860b709d425b0984a4db534ea7.lean/declarations/mul-dist-eq-abs-sub-sq-dist--2a52193f7823ac6dd525ec21.md) | 89 | `result-track:2a52193f7823ac6dd525ec21e483d57c4bedadc1ed8a0e5a075318f4488a1ef6` |
| 3 | `theorem` | [mul_dist_eq_mul_dist_of_cospherical](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variantcac736fd98dfe0930fae600a4741da688376aa860b709d425b0984a4db534ea7.lean/declarations/mul-dist-eq-mul-dist-of-cospherical--27c387b7be8687da370c7fb0.md) | 105 | `result-track:27c387b7be8687da370c7fb0a6f38f6495751038daefc1c259defae4102966f8` |
| 4 | `theorem` | [mul_dist_eq_mul_dist_of_cospherical_of_angle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variantcac736fd98dfe0930fae600a4741da688376aa860b709d425b0984a4db534ea7.lean/declarations/mul-dist-eq-mul-dist-of-cospherical-of-angle-eq-pi--de10a2d20a2560a0de938253.md) | 116 | `result-track:de10a2d20a2560a0de938253b72727948a9d9280401635e79d6b8a811e0f5f86` |
| 5 | `theorem` | [mul_dist_eq_mul_dist_of_cospherical_of_angle_eq_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variantcac736fd98dfe0930fae600a4741da688376aa860b709d425b0984a4db534ea7.lean/declarations/mul-dist-eq-mul-dist-of-cospherical-of-angle-eq-zero--c3f261aeb23d6e272b670b5d.md) | 124 | `result-track:c3f261aeb23d6e272b670b5dc9b00d8964245f240d14543a4ad1ef0a6dd2c4e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
