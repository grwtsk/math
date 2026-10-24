# GeometricallyIntegral.iff_geometricallyIntegral_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5dc3526560070f090b639bb1151d6e0b9138ee46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c2a5820c355cfa045259e02eb0d47e3513e26898e59b4cff3d3efefa2a499d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:036ae97d-5a1c-02c0-7a6c-ad4f7cf4c215",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8ad5db2-2986-a2ca-8695-16157ea2dd5a",
  "kind": "lemma",
  "lexical_name": "GeometricallyIntegral.iff_geometricallyIntegral_fiber",
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
  "slug": "geometricallyintegral-iff-geometricallyintegral-fiber--382e1d668ca75696a393621e",
  "source": {
    "blob": "5dc3526560070f090b639bb1151d6e0b9138ee46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 116,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Integral/Variant2c2a5820c355cfa045259e02eb0d47e3513e26898e59b4cff3d3efefa2a499d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:382e1d668ca75696a393621ea0d4ce7de0660c583c7b59fad4aacbd0145bdc2e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Integral/Variant2c2a5820c355cfa045259e02eb0d47e3513e26898e59b4cff3d3efefa2a499d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8ad5db2-2986-a2ca-8695-16157ea2dd5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma GeometricallyIntegral.iff_geometricallyIntegral_fiber :
    GeometricallyIntegral f ↔ ∀ s, GeometricallyIntegral (f.fiberToSpecResidueField s) := by
  simp only [GeometricallyIntegral.eq_geometrically,
    ← geometrically_iff_forall_fiberToSpecResidueField]

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Integral/Variant2c2a5820c355cfa045259e02eb0d47e3513e26898e59b4cff3d3efefa2a499d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Integral/Variant2c2a5820c355cfa045259e02eb0d47e3513e26898e59b4cff3d3efefa2a499d4.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dc3526560070f090b639bb1151d6e0b9138ee46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
