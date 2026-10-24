# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Triangle.Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "267c03ebb878ed33b6a48b88490dcdb9d593ded9",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `267c03ebb878ed33b6a48b88490dcdb9d593ded9`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Angle.Oriented.Affine` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/declarations/macro-rules--c303f7a49234b1addd8b4353.md) | 49 | `declaration-track:c303f7a49234b1addd8b435385b5f38a1a5040efa81816e436c7738bf2cb4750` |
| 2 | `theorem` | [norm_sub_sq_eq_norm_sq_add_norm_sq_sub_two_mul_norm_mul_norm_mul_cos_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/declarations/norm-sub-sq-eq-norm-sq-add-norm-sq-sub-two-mul-norm-mul-norm-mul-cos-ang--b981fdec279e7647980e0061.md) | 74 | `result-track:b981fdec279e7647980e00610bb37af883b3a0eaa4ffb92a9a4fa70fd93ef91f` |
| 3 | `theorem` | [angle_sub_eq_angle_sub_rev_of_norm_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/declarations/angle-sub-eq-angle-sub-rev-of-norm-eq--122fbc8fbb3fdf8ffe2a21b3.md) | 83 | `result-track:122fbc8fbb3fdf8ffe2a21b37e7bbe676611110685eaf4bef0f8f89f5df4a281` |
| 4 | `theorem` | [norm_eq_of_angle_sub_eq_angle_sub_rev_of_angle_ne_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/declarations/norm-eq-of-angle-sub-eq-angle-sub-rev-of-angle-ne-pi--73505950a2f5e349b349ebe1.md) | 91 | `result-track:73505950a2f5e349b349ebe1e5a61e70d91ce2216549d3d11c982326f1cd2f69` |
| 5 | `theorem` | [cos_angle_sub_add_angle_sub_rev_eq_neg_cos_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/declarations/cos-angle-sub-add-angle-sub-rev-eq-neg-cos-angle--068a5bd0c92a5cd3aa4a8d3f.md) | 121 | `result-track:068a5bd0c92a5cd3aa4a8d3fdd94013508693dcda6bf81453452d67148ae524f` |
| 6 | `theorem` | [sin_angle_sub_add_angle_sub_rev_eq_sin_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/declarations/sin-angle-sub-add-angle-sub-rev-eq-sin-angle--76f660a79f9db99f94a479d7.md) | 160 | `result-track:76f660a79f9db99f94a479d7098fa74c8d8d3efd9c1a428f6737860cc75a1fb8` |
| 7 | `theorem` | [cos_angle_add_angle_sub_add_angle_sub_eq_neg_one](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/declarations/cos-angle-add-angle-sub-add-angle-sub-eq-neg-one--123bf6b658ffc70f7399e446.md) | 201 | `result-track:123bf6b658ffc70f7399e446db21b3755b41855446d1c19c8bdfc405409a116e` |
| 8 | `theorem` | [sin_angle_add_angle_sub_add_angle_sub_eq_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/declarations/sin-angle-add-angle-sub-add-angle-sub-eq-zero--d071e29b511b5781304c2dba.md) | 210 | `result-track:d071e29b511b5781304c2dbab615f243ac70002ca3654c8c77add6da0bfa7dc0` |
| 9 | `theorem` | [angle_add_angle_sub_add_angle_sub_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/declarations/angle-add-angle-sub-add-angle-sub-eq-pi--b355699e66e032ac76996f42.md) | 219 | `result-track:b355699e66e032ac76996f42fda67fdfaeaca19369a49e664bcf9f153fb4e527` |
| 10 | `theorem` | [dist_sq_eq_dist_sq_add_dist_sq_sub_two_mul_dist_mul_dist_mul_cos_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/declarations/dist-sq-eq-dist-sq-add-dist-sq-sub-two-mul-dist-mul-dist-mul-cos-angle--9edddb529049482a3c406642.md) | 281 | `result-track:9edddb529049482a3c40664242943281e34696bd1e9e47a79edc73c6568747ad` |
| 11 | `theorem` | [angle_eq_angle_of_dist_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/declarations/angle-eq-angle-of-dist-eq--3630f0d41eebfbdbd591a647.md) | 296 | `result-track:3630f0d41eebfbdbd591a6479fdca4f18550fc9a785a200f647d05094ac07314` |
| 12 | `theorem` | [dist_eq_of_angle_eq_angle_of_angle_ne_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/declarations/dist-eq-of-angle-eq-angle-of-angle-ne-pi--ac061f434ce6ed3cc11b7a8e.md) | 306 | `result-track:ac061f434ce6ed3cc11b7a8e0144d8009ba5d355b1205add4d05467e25fc3f9f` |
| 13 | `theorem` | [angle_add_angle_add_angle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/declarations/angle-add-angle-add-angle-eq-pi--f07dea170a7dfab1f5ae207b.md) | 317 | `result-track:f07dea170a7dfab1f5ae207b80170ab8481053eecfb138e2e876d0b21dab2293` |
| 14 | `theorem` | [oangle_add_oangle_add_oangle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/declarations/oangle-add-oangle-add-oangle-eq-pi--b12442f3854c8925da78f319.md) | 330 | `result-track:b12442f3854c8925da78f31925e0eae3538b0aafd1c20dbda9d548a40f39dd95` |
| 15 | `theorem` | [dist_sq_mul_dist_add_dist_sq_mul_dist](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/declarations/dist-sq-mul-dist-add-dist-sq-mul-dist--bb13e7806413fa6b02843d94.md) | 339 | `result-track:bb13e7806413fa6b02843d94b9fa0c9bf4d9a9d8edea65fc7e2941da81020bc8` |
| 16 | `theorem` | [dist_sq_add_dist_sq_eq_two_mul_dist_midpoint_sq_add_half_dist_sq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/declarations/dist-sq-add-dist-sq-eq-two-mul-dist-midpoint-sq-add-half-dist-sq--a04db5c7a6f7aaf09abaa33b.md) | 349 | `result-track:a04db5c7a6f7aaf09abaa33b3418139e7799f9774bb6273fe4bd53d46c058bfb` |
| 17 | `theorem` | [dist_mul_of_eq_angle_of_dist_mul](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/declarations/dist-mul-of-eq-angle-of-dist-mul--97489cf46a4a5a9dee50836c.md) | 363 | `result-track:97489cf46a4a5a9dee50836cbbf779fed4cc3b90ad965450259fd6e9700955b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
