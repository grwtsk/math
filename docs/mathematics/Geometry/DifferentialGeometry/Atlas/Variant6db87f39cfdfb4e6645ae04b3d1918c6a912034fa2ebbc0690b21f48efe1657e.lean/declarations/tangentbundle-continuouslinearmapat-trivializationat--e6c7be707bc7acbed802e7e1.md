# TangentBundle.continuousLinearMapAt_trivializationAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fe0f38d447a00ea5e5e39d84a66ae26b8103bd4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 411,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6db87f39cfdfb4e6645ae04b3d1918c6a912034fa2ebbc0690b21f48efe1657e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a00f6129-6ce8-cc9d-ef54-7f5ba99c0573",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24496a53-e2ab-0bd9-6745-465ec1de2940",
  "kind": "theorem",
  "lexical_name": "TangentBundle.continuousLinearMapAt_trivializationAt",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "tangentbundle-continuouslinearmapat-trivializationat--e6c7be707bc7acbed802e7e1",
  "source": {
    "blob": "5fe0f38d447a00ea5e5e39d84a66ae26b8103bd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 411,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant6db87f39cfdfb4e6645ae04b3d1918c6a912034fa2ebbc0690b21f48efe1657e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6c7be707bc7acbed802e7e1ad38c9555d0117b8235825cc655e672fd156a2f9",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Atlas/Variant6db87f39cfdfb4e6645ae04b3d1918c6a912034fa2ebbc0690b21f48efe1657e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24496a53-e2ab-0bd9-6745-465ec1de2940`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TangentBundle.continuousLinearMapAt_trivializationAt
    {x₀ x : M} (hx : x ∈ (chartAt H x₀).source) :
    (trivializationAt E (TangentSpace I) x₀).continuousLinearMapAt 𝕜 x =
      mfderiv% (extChartAt I x₀) x := by
  have : MDiffAt (extChartAt I x₀) x := mdifferentiableAt_extChartAt hx
  simp only [extChartAt, OpenPartialHomeomorph.extend, PartialEquiv.coe_trans,
    ModelWithCorners.toPartialEquiv_coe, OpenPartialHomeomorph.toFun_eq_coe] at this
  simp only [hx, mfderiv, this, mfld_simps]
  rfl

set_option backward.isDefEq.respectTransparency false in
/-- The inverse trivialization of the tangent bundle at a point is the manifold derivative of the
inverse of the extended chart.
Use with care as this abuses the defeq `TangentSpace 𝓘(𝕜, E) y = E` for `y : E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Atlas/Variant6db87f39cfdfb4e6645ae04b3d1918c6a912034fa2ebbc0690b21f48efe1657e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant6db87f39cfdfb4e6645ae04b3d1918c6a912034fa2ebbc0690b21f48efe1657e.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fe0f38d447a00ea5e5e39d84a66ae26b8103bd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
