# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Equivariance.Variant11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a493563672fa7a8b2bd94ab54ab7571506a46457",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a493563672fa7a8b2bd94ab54ab7571506a46457`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.ConnesBitfield.CrossedProduct` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.ConnesBitfield.Dynamics` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EquivariantScheduleKernelCertificate](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f.lean/declarations/equivariantschedulekernelcertificate--a95e9c20ade75388bcdfbfd3.md) | 16 | `declaration-track:a95e9c20ade75388bcdfbfd34bbbff41acfac089db30abf66275565848fe2c2e` |
| 2 | `theorem` | [invariantLaw_automorphism_invariant](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f.lean/declarations/invariantlaw-automorphism-invariant--f29b87fdf26f7284c065c2a5.md) | 60 | `result-track:f29b87fdf26f7284c065c2a54d844656aec6a6993778ae3aebc5574a63d454ed` |
| 3 | `theorem` | [iterateLaw_automorphism_equivariant](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f.lean/declarations/iteratelaw-automorphism-equivariant--278777a2d69d57a371b86fba.md) | 79 | `result-track:278777a2d69d57a371b86fba8c4d1bd33720372b306f0a23fb7148ac2c0c2bdf` |
| 4 | `theorem` | [automorphism_distance_to_boundary](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f.lean/declarations/automorphism-distance-to-boundary--a2aba77cd99a6152ec3a4f60.md) | 121 | `result-track:a2aba77cd99a6152ec3a4f60dfa2fe83c5cb80d78c515e55327c3c30b3b73911` |
| 5 | `theorem` | [automorphism_related_traversals_wasserstein_le](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f.lean/declarations/automorphism-related-traversals-wasserstein-le--f9d262057fb833c6f83d1b91.md) | 157 | `result-track:f9d262057fb833c6f83d1b916554c2eb0b4c59b3d19c266d8fc8bb2942c1a6bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
