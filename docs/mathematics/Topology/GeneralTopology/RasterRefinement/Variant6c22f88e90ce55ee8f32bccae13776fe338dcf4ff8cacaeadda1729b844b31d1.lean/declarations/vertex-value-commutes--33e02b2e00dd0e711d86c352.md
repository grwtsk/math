# vertex_value_commutes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1738f244d3da88ff4580acca3361a4d1783550c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c22f88e90ce55ee8f32bccae13776fe338dcf4ff8cacaeadda1729b844b31d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8047465a-bfa3-b3c2-0bc4-b567cac57d0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f43b746-064e-ee09-c452-3b13374634b0",
  "kind": "theorem",
  "lexical_name": "vertex_value_commutes",
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
  "slug": "vertex-value-commutes--33e02b2e00dd0e711d86c352",
  "source": {
    "blob": "d1738f244d3da88ff4580acca3361a4d1783550c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 87,
    "path": "GRWTSK/Topology/GeneralTopology/RasterRefinement/Variant6c22f88e90ce55ee8f32bccae13776fe338dcf4ff8cacaeadda1729b844b31d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33e02b2e00dd0e711d86c35202a1f79d17ea12992e1a5877e47965f19ca89d6e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RasterRefinement/Variant6c22f88e90ce55ee8f32bccae13776fe338dcf4ff8cacaeadda1729b844b31d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f43b746-064e-ee09-c452-3b13374634b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vertex_value_commutes
    (R : RasterRefinement charge coarseRaster fineRaster)
    (v : V)
    (i : Fin charge.channels) :
    fineRaster.field
        ⟨fineCarrier.vertexPoint v, fineCarrier.vertex_mem v⟩ i =
      coarseRaster.field
        ⟨coarseCarrier.vertexPoint v, coarseCarrier.vertex_mem v⟩ i := by
  rw [R.field_commutes]
  rw [R.mesh.vertex_preserving]

end RasterRefinement

end DAF.Geometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RasterRefinement/Variant6c22f88e90ce55ee8f32bccae13776fe338dcf4ff8cacaeadda1729b844b31d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RasterRefinement/Variant6c22f88e90ce55ee8f32bccae13776fe338dcf4ff8cacaeadda1729b844b31d1.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1738f244d3da88ff4580acca3361a4d1783550c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
