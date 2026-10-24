# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Triangle.Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f5af3e36fc48a921dd30654ba14f7f7c74e37c8",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f5af3e36fc48a921dd30654ba14f7f7c74e37c8`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean.json)

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
| 1 | `theorem` | [norm_sub_sq_eq_norm_sq_add_norm_sq_sub_two_mul_norm_mul_norm_mul_cos_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/declarations/norm-sub-sq-eq-norm-sq-add-norm-sq-sub-two-mul-norm-mul-norm-mul-cos-ang--a8804447d6cfe8ac927a45a1.md) | 63 | `result-track:a8804447d6cfe8ac927a45a1309c6269d4ab73531b3241f508336a58113252dc` |
| 2 | `theorem` | [angle_sub_eq_angle_sub_rev_of_norm_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/declarations/angle-sub-eq-angle-sub-rev-of-norm-eq--1b1d9421310fb26f8818b50c.md) | 71 | `result-track:1b1d9421310fb26f8818b50c02195fc13ca3ee2d1a176cba25218a5788c50f82` |
| 3 | `theorem` | [norm_eq_of_angle_sub_eq_angle_sub_rev_of_angle_ne_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/declarations/norm-eq-of-angle-sub-eq-angle-sub-rev-of-angle-ne-pi--f873c41c82a05d2247584244.md) | 78 | `result-track:f873c41c82a05d2247584244fac67b5340ed9eefa7c16457e815daf7364914e0` |
| 4 | `theorem` | [cos_angle_sub_add_angle_sub_rev_eq_neg_cos_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/declarations/cos-angle-sub-add-angle-sub-rev-eq-neg-cos-angle--f4b8e0fb704d079dcb74b388.md) | 107 | `result-track:f4b8e0fb704d079dcb74b388bfced6ba833030cf4bbb233ff314dc5b6d432524` |
| 5 | `theorem` | [sin_angle_sub_add_angle_sub_rev_eq_sin_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/declarations/sin-angle-sub-add-angle-sub-rev-eq-sin-angle--05381cd6c9e59e849d6c3860.md) | 148 | `result-track:05381cd6c9e59e849d6c386053fffa6e0c5861bc2faa822a2c3b1ba12aa5f1c1` |
| 6 | `theorem` | [cos_angle_add_angle_sub_add_angle_sub_eq_neg_one](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/declarations/cos-angle-add-angle-sub-add-angle-sub-eq-neg-one--935a374779cbe7a1971561eb.md) | 191 | `result-track:935a374779cbe7a1971561eb25842b36c13d9f7894a6985a0c0d4d87fc49da56` |
| 7 | `theorem` | [sin_angle_add_angle_sub_add_angle_sub_eq_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/declarations/sin-angle-add-angle-sub-add-angle-sub-eq-zero--4effb5b63383f6429e561833.md) | 199 | `result-track:4effb5b63383f6429e561833e96962659274c418585faf87f67807d09f536558` |
| 8 | `theorem` | [angle_add_angle_sub_add_angle_sub_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/declarations/angle-add-angle-sub-add-angle-sub-eq-pi--8fb7e5bd337ec50fdd91a5d8.md) | 207 | `result-track:8fb7e5bd337ec50fdd91a5d8ad940c318ba0ecf639d8305e0b41b4e977dd8956` |
| 9 | `theorem` | [dist_sq_eq_dist_sq_add_dist_sq_sub_two_mul_dist_mul_dist_mul_cos_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/declarations/dist-sq-eq-dist-sq-add-dist-sq-sub-two-mul-dist-mul-dist-mul-cos-angle--d39a5bfbe0691cb773a87920.md) | 261 | `result-track:d39a5bfbe0691cb773a8792040cebecd7cd3b3ca59d83cba2753e6d5c36fcb60` |
| 10 | `theorem` | [angle_eq_angle_of_dist_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/declarations/angle-eq-angle-of-dist-eq--2413a6d47c33abb22f2db9f1.md) | 274 | `result-track:2413a6d47c33abb22f2db9f1fe5f9993dc1300a8fbd5e5c451a775f3964eebdc` |
| 11 | `theorem` | [dist_eq_of_angle_eq_angle_of_angle_ne_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/declarations/dist-eq-of-angle-eq-angle-of-angle-ne-pi--c5ed5ad148bb020fa8f29172.md) | 283 | `result-track:c5ed5ad148bb020fa8f291727ae6492fad088221a83413651687ff6f1ad69b05` |
| 12 | `theorem` | [angle_add_angle_add_angle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/declarations/angle-add-angle-add-angle-eq-pi--c9e75e834cbf2b1cf89f6a0f.md) | 293 | `result-track:c9e75e834cbf2b1cf89f6a0f7918d31d8853a164e612d37e2d2c439a857b8043` |
| 13 | `theorem` | [oangle_add_oangle_add_oangle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/declarations/oangle-add-oangle-add-oangle-eq-pi--45dc655d8c40e6f32fb62953.md) | 305 | `result-track:45dc655d8c40e6f32fb62953617f41b884a30996fca3e517a7a9ad918ce54a26` |
| 14 | `theorem` | [dist_sq_mul_dist_add_dist_sq_mul_dist](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/declarations/dist-sq-mul-dist-add-dist-sq-mul-dist--28d43d96fa0f22d7726b50c5.md) | 313 | `result-track:28d43d96fa0f22d7726b50c544024b48c6730ef7743be29fe02b081fa4254ed8` |
| 15 | `theorem` | [dist_sq_add_dist_sq_eq_two_mul_dist_midpoint_sq_add_half_dist_sq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/declarations/dist-sq-add-dist-sq-eq-two-mul-dist-midpoint-sq-add-half-dist-sq--10aa473d1067b804e2397d85.md) | 322 | `result-track:10aa473d1067b804e2397d85eedde0d8c3742c4fe29f97c0b68728e62d1e1a23` |
| 16 | `theorem` | [dist_mul_of_eq_angle_of_dist_mul](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/declarations/dist-mul-of-eq-angle-of-dist-mul--c85f12f2aee32870ba48d83c.md) | 346 | `result-track:c85f12f2aee32870ba48d83c9c9a266faa6f7f5c3650a1ffcd417afddeefc32e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
