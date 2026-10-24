# IsOpen.absConvexHull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d74a6ea41957e30db1e11d1b98604b25f5a3589b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c83fa02d-0dea-976b-9918-821f841ee116",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73ddc8f6-b850-d8ce-cde3-9e7acae75e06",
  "kind": "theorem",
  "lexical_name": "IsOpen.absConvexHull",
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
  "slug": "isopen-absconvexhull--7ad83a47593e0103b8a1e3b4",
  "source": {
    "blob": "d74a6ea41957e30db1e11d1b98604b25f5a3589b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 237,
    "path": "GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ad83a47593e0103b8a1e3b4a79f12fc57aa8fdf71725742abca792531b828c5",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73ddc8f6-b850-d8ce-cde3-9e7acae75e06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsOpen.absConvexHull {s : Set E} (hs : IsOpen s) (hzero : 0 ∈ s) :
    IsOpen (absConvexHull 𝕜 s) := by
  rw [absConvexHull_eq_convexHull_balancedHull]
  exact hs.balancedHull hzero |>.convexHull

end

section NontriviallyNormedField

variable (𝕜 E)
variable [NontriviallyNormedField 𝕜] [PartialOrder 𝕜] [AddCommGroup E] [Module 𝕜 E]
variable [TopologicalSpace E] [LocallyConvexSpace 𝕜 E] [ContinuousSMul 𝕜 E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d74a6ea41957e30db1e11d1b98604b25f5a3589b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
