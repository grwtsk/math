# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.ImageHyperplane.Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd018a7a039bf28166c76c801093999f7e849600",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd018a7a039bf28166c76c801093999f7e849600`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Inversion.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.PerpBisector` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inversion_mem_perpBisector_inversion_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1.lean/declarations/inversion-mem-perpbisector-inversion-iff--fb79187e0defa359874df6c6.md) | 37 | `result-track:fb79187e0defa359874df6c6e0a532643619c1ea30d4499faee4f35f992fe4d8` |
| 2 | `theorem` | [inversion_mem_perpBisector_inversion_iff'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1.lean/declarations/inversion-mem-perpbisector-inversion-iff--56a5099b4d108170a22b5070.md) | 47 | `result-track:56a5099b4d108170a22b5070e623b9a5284685cc9ae92a4b5de2f9d17f296e47` |
| 3 | `theorem` | [preimage_inversion_perpBisector_inversion](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1.lean/declarations/preimage-inversion-perpbisector-inversion--da8cf1dd0e2f95464d9412e3.md) | 53 | `result-track:da8cf1dd0e2f95464d9412e379d1a3eaeae8356860c54dd002e4d840ec6a87c0` |
| 4 | `theorem` | [preimage_inversion_perpBisector](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1.lean/declarations/preimage-inversion-perpbisector--5209609e2b6a4f2f48c4ad07.md) | 57 | `result-track:5209609e2b6a4f2f48c4ad07c34ae94ec22831a735f8a1bb032513a65690a62d` |
| 5 | `theorem` | [image_inversion_perpBisector](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1.lean/declarations/image-inversion-perpbisector--6952ab10c97501fb4072a12b.md) | 62 | `result-track:6952ab10c97501fb4072a12bc7ff2fa70eec04ed1e4af4e410fa9f1a7ea7f894` |
| 6 | `theorem` | [preimage_inversion_sphere_dist_center](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1.lean/declarations/preimage-inversion-sphere-dist-center--cd61579405dbd1acc3d6782f.md) | 67 | `result-track:cd61579405dbd1acc3d6782f0c5b2b8b766e3693b32eafe9cc80f8d78209b47f` |
| 7 | `theorem` | [image_inversion_sphere_dist_center](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1.lean/declarations/image-inversion-sphere-dist-center--53b5b33def1760c8c8663317.md) | 74 | `result-track:53b5b33def1760c8c8663317f18ffc4abb8ae6c2d58892e3c3988e1a2a1cdd4c` |
| 8 | `theorem` | [mapsTo_inversion_affineSubspace_of_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1.lean/declarations/mapsto-inversion-affinesubspace-of-mem--7ab1d1aa70377d98e018274e.md) | 80 | `result-track:7ab1d1aa70377d98e018274eb2ee7a8cffd639b1fbe7f3448acd37138792d032` |
| 9 | `theorem` | [image_inversion_affineSubspace_of_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1.lean/declarations/image-inversion-affinesubspace-of-mem--f14a37524cc9467819121406.md) | 84 | `result-track:f14a37524cc9467819121406e3d764cada7a5456035f179703542c9254224c0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
