# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Angle.Variantea84345170bc391c80464d3845ce3b75f92b8abc9a5728c002521c9c4211c402

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56fc51287d2e81905df053a7d34447fbb1ae5dec",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantea84345170bc391c80464d3845ce3b75f92b8abc9a5728c002521c9c4211c402.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantea84345170bc391c80464d3845ce3b75f92b8abc9a5728c002521c9c4211c402.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantea84345170bc391c80464d3845ce3b75f92b8abc9a5728c002521c9c4211c402.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56fc51287d2e81905df053a7d34447fbb1ae5dec`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantea84345170bc391c80464d3845ce3b75f92b8abc9a5728c002521c9c4211c402.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantea84345170bc391c80464d3845ce3b75f92b8abc9a5728c002521c9c4211c402.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [angle_eq_abs_arg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantea84345170bc391c80464d3845ce3b75f92b8abc9a5728c002521c9c4211c402.lean/declarations/angle-eq-abs-arg--6e5e8e77a73977801edc59b0.md) | 45 | `result-track:6e5e8e77a73977801edc59b027fb27ea5e1f241195d6c604fa9df735c97b7a71` |
| 2 | `lemma` | [angle_one_left](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantea84345170bc391c80464d3845ce3b75f92b8abc9a5728c002521c9c4211c402.lean/declarations/angle-one-left--8fd0dce986727d921748c643.md) | 53 | `result-track:8fd0dce986727d921748c64368ff7e7a44ea37e9dcf714aea5376fec97fc8c4a` |
| 3 | `lemma` | [angle_one_right](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantea84345170bc391c80464d3845ce3b75f92b8abc9a5728c002521c9c4211c402.lean/declarations/angle-one-right--49ff68f0007c9eb416fc62e6.md) | 54 | `result-track:49ff68f0007c9eb416fc62e6652d1ea76a2512fdc615defa91bb1630c04dc933` |
| 4 | `lemma` | [angle_mul_left](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantea84345170bc391c80464d3845ce3b75f92b8abc9a5728c002521c9c4211c402.lean/declarations/angle-mul-left--b14b66cc530aace28a151b4a.md) | 56 | `result-track:b14b66cc530aace28a151b4a8e803b64b4de776c37f1c8c91adabb52b8ba7281` |
| 5 | `lemma` | [angle_mul_right](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantea84345170bc391c80464d3845ce3b75f92b8abc9a5728c002521c9c4211c402.lean/declarations/angle-mul-right--318166712ca309d4efb59a4e.md) | 60 | `result-track:318166712ca309d4efb59a4e6789c81f8e4ea592fba0e0f2d941e27684aae76a` |
| 6 | `lemma` | [angle_div_left_eq_angle_mul_right](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantea84345170bc391c80464d3845ce3b75f92b8abc9a5728c002521c9c4211c402.lean/declarations/angle-div-left-eq-angle-mul-right--3bb34d7bd719636e4b11dbf5.md) | 63 | `result-track:3bb34d7bd719636e4b11dbf5e1e1a540d73e9bd14174934ca699d46fca9489a6` |
| 7 | `lemma` | [angle_div_right_eq_angle_mul_left](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantea84345170bc391c80464d3845ce3b75f92b8abc9a5728c002521c9c4211c402.lean/declarations/angle-div-right-eq-angle-mul-left--5f3b8fceae40115ca63f8a03.md) | 68 | `result-track:5f3b8fceae40115ca63f8a03b3b60c139f4dad99dd2e93c189a8aba3f9ea8861` |
| 8 | `lemma` | [angle_exp_exp](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantea84345170bc391c80464d3845ce3b75f92b8abc9a5728c002521c9c4211c402.lean/declarations/angle-exp-exp--c847e86bbe2b8b28773d9deb.md) | 71 | `result-track:c847e86bbe2b8b28773d9deb82a10d95795560f2420539b14926b893a902e229` |
| 9 | `lemma` | [angle_exp_one](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantea84345170bc391c80464d3845ce3b75f92b8abc9a5728c002521c9c4211c402.lean/declarations/angle-exp-one--809367244a24ee3c6d67c540.md) | 76 | `result-track:809367244a24ee3c6d67c5409a4b42e8017e8c19b82a6f3fa76b446818c16bb0` |
| 10 | `lemma` | [norm_sub_mem_Icc_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantea84345170bc391c80464d3845ce3b75f92b8abc9a5728c002521c9c4211c402.lean/declarations/norm-sub-mem-icc-angle--749b83e1e6ea4007bab9de02.md) | 87 | `result-track:749b83e1e6ea4007bab9de027222c569d473a850b4105ccba33703abed04eb34` |
| 11 | `lemma` | [norm_sub_le_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantea84345170bc391c80464d3845ce3b75f92b8abc9a5728c002521c9c4211c402.lean/declarations/norm-sub-le-angle--086e9a1e8410a00065049e38.md) | 117 | `result-track:086e9a1e8410a00065049e3802377abeffbb11ffcb26b18ec0ebff33d741a791` |
| 12 | `lemma` | [mul_angle_le_norm_sub](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantea84345170bc391c80464d3845ce3b75f92b8abc9a5728c002521c9c4211c402.lean/declarations/mul-angle-le-norm-sub--4cbaf2c77f2128e693cec62b.md) | 121 | `result-track:4cbaf2c77f2128e693cec62be123a12a7291b9f01bf66db6d0b911d4b2a6ee99` |
| 13 | `lemma` | [angle_le_mul_norm_sub](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantea84345170bc391c80464d3845ce3b75f92b8abc9a5728c002521c9c4211c402.lean/declarations/angle-le-mul-norm-sub--d0d4c5114bb72418343da925.md) | 125 | `result-track:d0d4c5114bb72418343da925f8701ca6a9c3fdeb238d30b6d5145af98f62edbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
