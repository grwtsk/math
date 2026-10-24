# Wbtw.collinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0930d846d75149db0982c06820eee86c52d59ace",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 776,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/49104925f6425f3f09e1203da599b2dd0595f697d6ee9e9daf54f27283f44e2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8569f40a-b618-6dc7-9190-6d0873672892",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:67ceb5d0-a2b3-5859-f038-445f56a9b69a",
  "kind": "theorem",
  "lexical_name": "Wbtw.collinear",
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
  "slug": "wbtw-collinear--b5dda2967ba5659184e6e802",
  "source": {
    "blob": "0930d846d75149db0982c06820eee86c52d59ace",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 788,
    "line": 776,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant49104925f6425f3f09e1203da599b2dd0595f697d6ee9e9daf54f27283f44e2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5dda2967ba5659184e6e802face233370f2e93d8640bb905578d091bcb63063",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Between/Variant49104925f6425f3f09e1203da599b2dd0595f697d6ee9e9daf54f27283f44e2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67ceb5d0-a2b3-5859-f038-445f56a9b69a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 776–788.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Wbtw.collinear {x y z : P} (h : Wbtw R x y z) : Collinear R ({x, y, z} : Set P) := by
  rw [collinear_iff_exists_forall_eq_smul_vadd]
  refine ⟨x, z -ᵥ x, ?_⟩
  intro p hp
  simp_rw [Set.mem_insert_iff, Set.mem_singleton_iff] at hp
  rcases hp with (rfl | rfl | rfl)
  · refine ⟨0, ?_⟩
    simp
  · rcases h with ⟨t, -, rfl⟩
    exact ⟨t, rfl⟩
  · refine ⟨1, ?_⟩
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variant49104925f6425f3f09e1203da599b2dd0595f697d6ee9e9daf54f27283f44e2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variant49104925f6425f3f09e1203da599b2dd0595f697d6ee9e9daf54f27283f44e2b.lean#L776).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0930d846d75149db0982c06820eee86c52d59ace` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
