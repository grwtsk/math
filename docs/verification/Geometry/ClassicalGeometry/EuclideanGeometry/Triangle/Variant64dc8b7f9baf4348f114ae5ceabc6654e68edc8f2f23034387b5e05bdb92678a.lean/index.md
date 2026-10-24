# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Triangle.Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "252595b3e38c1ef65ffdb991f790cd82b040e4ba",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `252595b3e38c1ef65ffdb991f790cd82b040e4ba`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean.json)

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
| 1 | `theorem` | [norm_sub_sq_eq_norm_sq_add_norm_sq_sub_two_mul_norm_mul_norm_mul_cos_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/declarations/norm-sub-sq-eq-norm-sq-add-norm-sq-sub-two-mul-norm-mul-norm-mul-cos-ang--3c2792a7fbc60fa3da5bcd1d.md) | 55 | `result-track:3c2792a7fbc60fa3da5bcd1d20aaa27fd77e43bc73a6551a4baa50c7f8f32132` |
| 2 | `theorem` | [angle_sub_eq_angle_sub_rev_of_norm_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/declarations/angle-sub-eq-angle-sub-rev-of-norm-eq--eb9537c66775d6f1f2aa77c1.md) | 63 | `result-track:eb9537c66775d6f1f2aa77c1d5e8a7739f5ccb12f596d9779e91518cb8179ae7` |
| 3 | `theorem` | [norm_eq_of_angle_sub_eq_angle_sub_rev_of_angle_ne_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/declarations/norm-eq-of-angle-sub-eq-angle-sub-rev-of-angle-ne-pi--30abb6f8581d366bbc2180e7.md) | 70 | `result-track:30abb6f8581d366bbc2180e7bec414dbc8f76ae6745cd87d35ee1eb49a6442c8` |
| 4 | `theorem` | [cos_angle_sub_add_angle_sub_rev_eq_neg_cos_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/declarations/cos-angle-sub-add-angle-sub-rev-eq-neg-cos-angle--8a0ea0a0c354bd173f38f9e9.md) | 99 | `result-track:8a0ea0a0c354bd173f38f9e98f08484f2381cd6d166e6037bba5e0931b8290ba` |
| 5 | `theorem` | [sin_angle_sub_add_angle_sub_rev_eq_sin_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/declarations/sin-angle-sub-add-angle-sub-rev-eq-sin-angle--9cdd811b3a28fc0036281651.md) | 140 | `result-track:9cdd811b3a28fc0036281651db068df13e25a99a7125f809ef138ea304c8825e` |
| 6 | `theorem` | [cos_angle_add_angle_sub_add_angle_sub_eq_neg_one](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/declarations/cos-angle-add-angle-sub-add-angle-sub-eq-neg-one--892d41e71510d50880df891a.md) | 183 | `result-track:892d41e71510d50880df891a444cfbc71e273031f8652bf9a939b35981dfeada` |
| 7 | `theorem` | [sin_angle_add_angle_sub_add_angle_sub_eq_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/declarations/sin-angle-add-angle-sub-add-angle-sub-eq-zero--9fd7f121b74334d582d17e14.md) | 191 | `result-track:9fd7f121b74334d582d17e145f89b086590c38833f0e1b14f9ffcd3e128a92fc` |
| 8 | `theorem` | [angle_add_angle_sub_add_angle_sub_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/declarations/angle-add-angle-sub-add-angle-sub-eq-pi--cc176cfed1b6f3f7d5c25028.md) | 199 | `result-track:cc176cfed1b6f3f7d5c2502879ccde0a591938377ef1a7bce625b28ac17e9e0e` |
| 9 | `theorem` | [dist_sq_eq_dist_sq_add_dist_sq_sub_two_mul_dist_mul_dist_mul_cos_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/declarations/dist-sq-eq-dist-sq-add-dist-sq-sub-two-mul-dist-mul-dist-mul-cos-angle--9acb83b96617e33f2fc06793.md) | 253 | `result-track:9acb83b96617e33f2fc067932fe8b99992bc9a0155eabf2344b55f11ac1c22b6` |
| 10 | `theorem` | [angle_eq_angle_of_dist_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/declarations/angle-eq-angle-of-dist-eq--e75b376b5f05b4a3d1de21b6.md) | 266 | `result-track:e75b376b5f05b4a3d1de21b67231c01f7714a8206f95432bfc1a6028577a5351` |
| 11 | `theorem` | [dist_eq_of_angle_eq_angle_of_angle_ne_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/declarations/dist-eq-of-angle-eq-angle-of-angle-ne-pi--1dd54668a4f5dd6b2a69b8c1.md) | 275 | `result-track:1dd54668a4f5dd6b2a69b8c1c575ba0da8e17d0f05183891091daa616a1e5a51` |
| 12 | `theorem` | [angle_add_angle_add_angle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/declarations/angle-add-angle-add-angle-eq-pi--67845e6b22bf7504a45cdc82.md) | 285 | `result-track:67845e6b22bf7504a45cdc82d735dd30e5ec6c9d42a1354fabece0e7629e607f` |
| 13 | `theorem` | [oangle_add_oangle_add_oangle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/declarations/oangle-add-oangle-add-oangle-eq-pi--a0ff53e872adcc5909082770.md) | 297 | `result-track:a0ff53e872adcc5909082770e51c1bc8e99a511b87cf8abbff42d7aa75b4d14d` |
| 14 | `theorem` | [dist_sq_mul_dist_add_dist_sq_mul_dist](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/declarations/dist-sq-mul-dist-add-dist-sq-mul-dist--c1e7e4429bacd7e341697f1a.md) | 305 | `result-track:c1e7e4429bacd7e341697f1af3e3a0c867bc07a7e272e698ca6c77a0cbbdee6c` |
| 15 | `theorem` | [dist_sq_add_dist_sq_eq_two_mul_dist_midpoint_sq_add_half_dist_sq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/declarations/dist-sq-add-dist-sq-eq-two-mul-dist-midpoint-sq-add-half-dist-sq--b6c182151dc3cc476f76fa15.md) | 314 | `result-track:b6c182151dc3cc476f76fa1570d0523dcb0d42578540f01ef2a3768c56ecdd74` |
| 16 | `theorem` | [dist_mul_of_eq_angle_of_dist_mul](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/declarations/dist-mul-of-eq-angle-of-dist-mul--8a4e2ba4c4af0d222c3c80c1.md) | 338 | `result-track:8a4e2ba4c4af0d222c3c80c10650be039b12bffd743ff7bd7a19ac6b47dc9179` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
