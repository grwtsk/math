# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Triangle.Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afe5d98760c97de78b3b87756755a9c0cbfc3560",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afe5d98760c97de78b3b87756755a9c0cbfc3560`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Angle.Oriented.Affine` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/declarations/macro-rules--3bb5bb9b71b70f0be63a9cae.md) | 41 | `declaration-track:3bb5bb9b71b70f0be63a9cae13f99726cd7b8b9faee6ba86e222b96c5164df3e` |
| 2 | `theorem` | [norm_sub_sq_eq_norm_sq_add_norm_sq_sub_two_mul_norm_mul_norm_mul_cos_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/declarations/norm-sub-sq-eq-norm-sq-add-norm-sq-sub-two-mul-norm-mul-norm-mul-cos-ang--088f2969ac2820e472b6a937.md) | 66 | `result-track:088f2969ac2820e472b6a93770dc87ab9270fd896abb6b51e17188729f4c4d87` |
| 3 | `theorem` | [angle_sub_eq_angle_sub_rev_of_norm_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/declarations/angle-sub-eq-angle-sub-rev-of-norm-eq--4f45f0b2005b206213e22e6a.md) | 75 | `result-track:4f45f0b2005b206213e22e6a9468d634d18fcef06b716c5dae7b9e65d838c457` |
| 4 | `theorem` | [norm_eq_of_angle_sub_eq_angle_sub_rev_of_angle_ne_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/declarations/norm-eq-of-angle-sub-eq-angle-sub-rev-of-angle-ne-pi--22ce93419e6ebd7f48043d99.md) | 83 | `result-track:22ce93419e6ebd7f48043d99d189a5fbd235f0495487270e4a02ab025b853ef4` |
| 5 | `theorem` | [cos_angle_sub_add_angle_sub_rev_eq_neg_cos_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/declarations/cos-angle-sub-add-angle-sub-rev-eq-neg-cos-angle--1cb72e69a4bdaf056b93e230.md) | 113 | `result-track:1cb72e69a4bdaf056b93e23020655abc587948d521aef89407bdb763767e71a3` |
| 6 | `theorem` | [sin_angle_sub_add_angle_sub_rev_eq_sin_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/declarations/sin-angle-sub-add-angle-sub-rev-eq-sin-angle--6c1fc6c8db492bab923f40d0.md) | 152 | `result-track:6c1fc6c8db492bab923f40d0cbbf076a6bbe2a4d65c36c5c4af566fc42c31450` |
| 7 | `theorem` | [cos_angle_add_angle_sub_add_angle_sub_eq_neg_one](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/declarations/cos-angle-add-angle-sub-add-angle-sub-eq-neg-one--510724446e10560f5f42e77b.md) | 193 | `result-track:510724446e10560f5f42e77b0483e6111c1222786e7641b13da92f8dcf3ba486` |
| 8 | `theorem` | [sin_angle_add_angle_sub_add_angle_sub_eq_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/declarations/sin-angle-add-angle-sub-add-angle-sub-eq-zero--dd0b3e99eeba52155eee3723.md) | 202 | `result-track:dd0b3e99eeba52155eee3723159569cb8a31bba56ce131adb46133c75bb8a691` |
| 9 | `theorem` | [angle_add_angle_sub_add_angle_sub_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/declarations/angle-add-angle-sub-add-angle-sub-eq-pi--67c4c277031f32d76ba96bdf.md) | 211 | `result-track:67c4c277031f32d76ba96bdf6e14021cd48b0e9763ccb2b91fb13174a624fe73` |
| 10 | `theorem` | [dist_sq_eq_dist_sq_add_dist_sq_sub_two_mul_dist_mul_dist_mul_cos_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/declarations/dist-sq-eq-dist-sq-add-dist-sq-sub-two-mul-dist-mul-dist-mul-cos-angle--a3e7dad0bc13b01320f625c7.md) | 273 | `result-track:a3e7dad0bc13b01320f625c788dda21ce1344d40f72df66f421dc7dd9ce70e52` |
| 11 | `theorem` | [angle_eq_angle_of_dist_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/declarations/angle-eq-angle-of-dist-eq--64c1cef9a15856c5beb9a664.md) | 288 | `result-track:64c1cef9a15856c5beb9a664031be756639e163f24a9326b51ba10ccb0f25d6c` |
| 12 | `theorem` | [dist_eq_of_angle_eq_angle_of_angle_ne_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/declarations/dist-eq-of-angle-eq-angle-of-angle-ne-pi--00ddb5c7e812dbca6344772a.md) | 298 | `result-track:00ddb5c7e812dbca6344772ab36537e4a7add40dbcce66f8b6a84fb821577b2e` |
| 13 | `theorem` | [angle_add_angle_add_angle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/declarations/angle-add-angle-add-angle-eq-pi--5a66e86042f1b872321859fd.md) | 309 | `result-track:5a66e86042f1b872321859fddc8ce8274936ed2b951faff8d4426122d9c7f2d4` |
| 14 | `theorem` | [oangle_add_oangle_add_oangle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/declarations/oangle-add-oangle-add-oangle-eq-pi--ba6697e6fb38efe00d36f333.md) | 322 | `result-track:ba6697e6fb38efe00d36f333a6b5911c9e8ce4e5ebf1ea8901b8ab76f16ae06a` |
| 15 | `theorem` | [dist_sq_mul_dist_add_dist_sq_mul_dist](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/declarations/dist-sq-mul-dist-add-dist-sq-mul-dist--153b37d1bb7362f9f967368a.md) | 331 | `result-track:153b37d1bb7362f9f967368a550cf4b22d36b1675f7126487435683c5323b366` |
| 16 | `theorem` | [dist_sq_add_dist_sq_eq_two_mul_dist_midpoint_sq_add_half_dist_sq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/declarations/dist-sq-add-dist-sq-eq-two-mul-dist-midpoint-sq-add-half-dist-sq--186ff97d16bc8fc04e097c2d.md) | 341 | `result-track:186ff97d16bc8fc04e097c2dee15c34121ada54d6322c0156a184d5e059a5038` |
| 17 | `theorem` | [dist_mul_of_eq_angle_of_dist_mul](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/declarations/dist-mul-of-eq-angle-of-dist-mul--61634326620f406a58ca381a.md) | 355 | `result-track:61634326620f406a58ca381a01a8842980a331c50a8bfcfb458988d7047f57fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
