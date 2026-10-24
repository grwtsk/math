# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.ImageHyperplane.Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44a1c1f6c026f678d36c1d5b9b09d3a02ad48514",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44a1c1f6c026f678d36c1d5b9b09d3a02ad48514`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Inversion.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.PerpBisector` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inversion_mem_perpBisector_inversion_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean/declarations/inversion-mem-perpbisector-inversion-iff--7c791751f0f70a632a726ce2.md) | 45 | `result-track:7c791751f0f70a632a726ce2d0573c5d1b51e0e12bfff70102bcb33512ee8fd0` |
| 2 | `theorem` | [inversion_mem_perpBisector_inversion_iff'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean/declarations/inversion-mem-perpbisector-inversion-iff--6baa7143c90655ea8564bfbe.md) | 55 | `result-track:6baa7143c90655ea8564bfbec9cd72b1d56da9d1727e10623f4def439c613aa5` |
| 3 | `theorem` | [preimage_inversion_perpBisector_inversion](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean/declarations/preimage-inversion-perpbisector-inversion--20f5c1d1d2198f8422c7b808.md) | 61 | `result-track:20f5c1d1d2198f8422c7b80877b247b416f53a75f6c39d8647a4754c6fe822f2` |
| 4 | `theorem` | [preimage_inversion_perpBisector](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean/declarations/preimage-inversion-perpbisector--ffe6ecc3d15933ad8e63b9ff.md) | 65 | `result-track:ffe6ecc3d15933ad8e63b9ff5e821058e630407317997ab923a3bbc1c6198ae9` |
| 5 | `theorem` | [image_inversion_perpBisector](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean/declarations/image-inversion-perpbisector--55808e9cf7f0f244063b75ce.md) | 70 | `result-track:55808e9cf7f0f244063b75ceda75351208319fa0b54f4fae3889114f45a4ef90` |
| 6 | `theorem` | [preimage_inversion_sphere_dist_center](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean/declarations/preimage-inversion-sphere-dist-center--13ba69282a4f084bc8f94209.md) | 75 | `result-track:13ba69282a4f084bc8f94209825b0740cd5b41cd3bafe853e1396c3876e4dbb4` |
| 7 | `theorem` | [image_inversion_sphere_dist_center](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean/declarations/image-inversion-sphere-dist-center--a0bbec4e098f08ed21b2e42d.md) | 82 | `result-track:a0bbec4e098f08ed21b2e42d6bb16d4b802f61369d101119d6b800a6b10f1828` |
| 8 | `theorem` | [mapsTo_inversion_affineSubspace_of_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean/declarations/mapsto-inversion-affinesubspace-of-mem--92fe73f64f953c1e5a1278a7.md) | 88 | `result-track:92fe73f64f953c1e5a1278a7d1b0d55ae3adadb7c9d30ec6dd47cbbab8c445b6` |
| 9 | `theorem` | [image_inversion_affineSubspace_of_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean/declarations/image-inversion-affinesubspace-of-mem--84df9e20819ee9833508ca8c.md) | 92 | `result-track:84df9e20819ee9833508ca8cd9e93ff351e61b2cb38fe516ade9d9701fc43275` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
