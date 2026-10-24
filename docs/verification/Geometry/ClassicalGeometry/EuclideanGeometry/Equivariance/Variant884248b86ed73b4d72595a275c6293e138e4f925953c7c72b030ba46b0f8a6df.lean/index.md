# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Equivariance.Variant884248b86ed73b4d72595a275c6293e138e4f925953c7c72b030ba46b0f8a6df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be466be6a015c2c1e8466a4958b75d058c10fadd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant884248b86ed73b4d72595a275c6293e138e4f925953c7c72b030ba46b0f8a6df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant884248b86ed73b4d72595a275c6293e138e4f925953c7c72b030ba46b0f8a6df.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant884248b86ed73b4d72595a275c6293e138e4f925953c7c72b030ba46b0f8a6df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be466be6a015c2c1e8466a4958b75d058c10fadd`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant884248b86ed73b4d72595a275c6293e138e4f925953c7c72b030ba46b0f8a6df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant884248b86ed73b4d72595a275c6293e138e4f925953c7c72b030ba46b0f8a6df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.ConnesBitfield.CrossedProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.ConnesBitfield.Dynamics` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EquivariantScheduleKernelCertificate](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant884248b86ed73b4d72595a275c6293e138e4f925953c7c72b030ba46b0f8a6df.lean/declarations/equivariantschedulekernelcertificate--891199b71f712e9cde268f0a.md) | 24 | `declaration-track:891199b71f712e9cde268f0abf275ef6a22c4c63a35f5d0466006ffef2e2839b` |
| 2 | `theorem` | [invariantLaw_automorphism_invariant](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant884248b86ed73b4d72595a275c6293e138e4f925953c7c72b030ba46b0f8a6df.lean/declarations/invariantlaw-automorphism-invariant--cf09a4497091830ace7b467b.md) | 68 | `result-track:cf09a4497091830ace7b467b450aa8d738fccc0a523171933da23550d2c39d2b` |
| 3 | `theorem` | [iterateLaw_automorphism_equivariant](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant884248b86ed73b4d72595a275c6293e138e4f925953c7c72b030ba46b0f8a6df.lean/declarations/iteratelaw-automorphism-equivariant--9c0a8e897c18ec53d9b2858b.md) | 87 | `result-track:9c0a8e897c18ec53d9b2858b40dcc26cdf966db9318e7f5c3d9d7721cef4cc8b` |
| 4 | `theorem` | [automorphism_distance_to_boundary](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant884248b86ed73b4d72595a275c6293e138e4f925953c7c72b030ba46b0f8a6df.lean/declarations/automorphism-distance-to-boundary--c23c2f425bd0b657e30653d1.md) | 129 | `result-track:c23c2f425bd0b657e30653d1c9245405ec4b81f5a22375edc517ebfbe584ef5a` |
| 5 | `theorem` | [automorphism_related_traversals_wasserstein_le](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant884248b86ed73b4d72595a275c6293e138e4f925953c7c72b030ba46b0f8a6df.lean/declarations/automorphism-related-traversals-wasserstein-le--b68a3aa8706aa133ae4c031c.md) | 165 | `result-track:b68a3aa8706aa133ae4c031c3d817e540ee578179b7f410417a427dad7ef3f10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
