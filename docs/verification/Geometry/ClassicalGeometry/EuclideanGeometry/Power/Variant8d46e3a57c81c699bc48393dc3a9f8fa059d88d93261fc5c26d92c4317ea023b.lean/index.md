# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Power.Variant8d46e3a57c81c699bc48393dc3a9f8fa059d88d93261fc5c26d92c4317ea023b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5e525f90e55dcd4311dd7148531b98b97aa7a05",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant8d46e3a57c81c699bc48393dc3a9f8fa059d88d93261fc5c26d92c4317ea023b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant8d46e3a57c81c699bc48393dc3a9f8fa059d88d93261fc5c26d92c4317ea023b.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant8d46e3a57c81c699bc48393dc3a9f8fa059d88d93261fc5c26d92c4317ea023b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5e525f90e55dcd4311dd7148531b98b97aa7a05`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant8d46e3a57c81c699bc48393dc3a9f8fa059d88d93261fc5c26d92c4317ea023b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant8d46e3a57c81c699bc48393dc3a9f8fa059d88d93261fc5c26d92c4317ea023b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Sphere.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_norm_eq_abs_sub_sq_norm](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant8d46e3a57c81c699bc48393dc3a9f8fa059d88d93261fc5c26d92c4317ea023b.lean/declarations/mul-norm-eq-abs-sub-sq-norm--77dc58f33191c09d1c65d773.md) | 38 | `result-track:77dc58f33191c09d1c65d77391dcab370067ca7b44a37aab2c679d333e21962c` |
| 2 | `theorem` | [mul_dist_eq_abs_sub_sq_dist](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant8d46e3a57c81c699bc48393dc3a9f8fa059d88d93261fc5c26d92c4317ea023b.lean/declarations/mul-dist-eq-abs-sub-sq-dist--78803944e1777d9d25f7162f.md) | 81 | `result-track:78803944e1777d9d25f7162f42fcb1fb3916de8952839af8ddf477a3e45b9f79` |
| 3 | `theorem` | [mul_dist_eq_mul_dist_of_cospherical](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant8d46e3a57c81c699bc48393dc3a9f8fa059d88d93261fc5c26d92c4317ea023b.lean/declarations/mul-dist-eq-mul-dist-of-cospherical--ed5a17f0b336143c93f6d80a.md) | 97 | `result-track:ed5a17f0b336143c93f6d80aa981b4918227f6d47fc304dddedb549a8f4632dc` |
| 4 | `theorem` | [mul_dist_eq_mul_dist_of_cospherical_of_angle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant8d46e3a57c81c699bc48393dc3a9f8fa059d88d93261fc5c26d92c4317ea023b.lean/declarations/mul-dist-eq-mul-dist-of-cospherical-of-angle-eq-pi--febad4bb11755d16d496d0f8.md) | 108 | `result-track:febad4bb11755d16d496d0f8e9e89e50613420336266b671d758a9cca0c888c7` |
| 5 | `theorem` | [mul_dist_eq_mul_dist_of_cospherical_of_angle_eq_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant8d46e3a57c81c699bc48393dc3a9f8fa059d88d93261fc5c26d92c4317ea023b.lean/declarations/mul-dist-eq-mul-dist-of-cospherical-of-angle-eq-zero--4fa2143289954b19b8906e11.md) | 116 | `result-track:4fa2143289954b19b8906e11b2b55af7c94f3acbd5acfaa4c1866ad54a630c99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
