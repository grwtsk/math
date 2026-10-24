# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Angle.Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d99f67b6802728c501ac722eba20084d485f9ff",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d99f67b6802728c501ac722eba20084d485f9ff`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [angle_eq_abs_arg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean/declarations/angle-eq-abs-arg--6a48fa7304c0739f42f02a3a.md) | 37 | `result-track:6a48fa7304c0739f42f02a3a093838789083132331b4c330c7f11b2f8c3b0d0b` |
| 2 | `lemma` | [angle_one_left](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean/declarations/angle-one-left--3cb4eb63df6b2659fcf52c60.md) | 45 | `result-track:3cb4eb63df6b2659fcf52c60a3feb679e9f200d6881edc684d349e8a6a29f615` |
| 3 | `lemma` | [angle_one_right](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean/declarations/angle-one-right--b4b6df2bc574277418fb4d36.md) | 46 | `result-track:b4b6df2bc574277418fb4d36bbdd19e5bc5824a00c022e219c8b4ec1f6e81b96` |
| 4 | `lemma` | [angle_mul_left](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean/declarations/angle-mul-left--f232892f9fb7238497617a8e.md) | 48 | `result-track:f232892f9fb7238497617a8e8d604165afce9987f0795c69059e6095747892a8` |
| 5 | `lemma` | [angle_mul_right](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean/declarations/angle-mul-right--3425a7648a2db5ce131a9e18.md) | 52 | `result-track:3425a7648a2db5ce131a9e1893929d769fb4c5060110d343a67ac572af180f41` |
| 6 | `lemma` | [angle_div_left_eq_angle_mul_right](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean/declarations/angle-div-left-eq-angle-mul-right--a2b53c1931d2577c990c7790.md) | 55 | `result-track:a2b53c1931d2577c990c77900ae0eff40f79baad9912b8b77271649343170994` |
| 7 | `lemma` | [angle_div_right_eq_angle_mul_left](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean/declarations/angle-div-right-eq-angle-mul-left--33a99484e94fccb9be424998.md) | 60 | `result-track:33a99484e94fccb9be4249980bdd9ac7aa9aacbaf5ef0160d415b292ee15bcaa` |
| 8 | `lemma` | [angle_exp_exp](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean/declarations/angle-exp-exp--110f2c0ec692b6ccfbcf993f.md) | 63 | `result-track:110f2c0ec692b6ccfbcf993f755ed8221b32532880f6e07104115a27770601c7` |
| 9 | `lemma` | [angle_exp_one](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean/declarations/angle-exp-one--464c256099f53a832a84f1c5.md) | 68 | `result-track:464c256099f53a832a84f1c5af423d302e34c85872e9739b31243ec0a4904c49` |
| 10 | `lemma` | [norm_sub_mem_Icc_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean/declarations/norm-sub-mem-icc-angle--13d1e55439ad674817a86b0c.md) | 79 | `result-track:13d1e55439ad674817a86b0c8e19c602909293819bd5b7d39e1c557e0a50a971` |
| 11 | `lemma` | [norm_sub_le_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean/declarations/norm-sub-le-angle--00edb154c9bde68c7fb65331.md) | 109 | `result-track:00edb154c9bde68c7fb65331d779c9a027e42ab82c86c7d85b42c4969d7c855f` |
| 12 | `lemma` | [mul_angle_le_norm_sub](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean/declarations/mul-angle-le-norm-sub--263dd56c0d84983dd7c75b0f.md) | 113 | `result-track:263dd56c0d84983dd7c75b0f49882cddf7ff3c8001eefd7923ea7badeb58b0cb` |
| 13 | `lemma` | [angle_le_mul_norm_sub](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantc23edf3fb26f0c1e4310c11365909eb59ba7656158623594cd4950f7b0f87dc0.lean/declarations/angle-le-mul-norm-sub--a6565c032e88f41349a2c5b3.md) | 117 | `result-track:a6565c032e88f41349a2c5b39de624e1f178d331dda785fc80a4094148cfd8ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
