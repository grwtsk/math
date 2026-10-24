# mapsTo_insertNth_face

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53f966a6-0a70-f478-1596-2258e876bec6",
  "kind": "theorem",
  "lexical_name": "mapsTo_insertNth_face",
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
  "slug": "mapsto-insertnth-face--329984f6dd5eb362991a4af3",
  "source": {
    "blob": "db6d2dfe8366005498dd3bb04658b921a09c1a58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 381,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0925c33662c51ac6ee04bb76302ea1e56688fe0b77f8d67a91e9916383de4e81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:329984f6dd5eb362991a4af36f6c2ea89671335748f53f6ffec2c1c1e2550d0e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0925c33662c51ac6ee04bb76302ea1e56688fe0b77f8d67a91e9916383de4e81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53f966a6-0a70-f478-1596-2258e876bec6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapsTo_insertNth_face {n} (I : Box (Fin (n + 1))) {i : Fin (n + 1)} {x : ℝ}
    (hx : x ∈ Ioc (I.lower i) (I.upper i)) :
    MapsTo (i.insertNth x) (I.face i : Set (_ → _)) (I : Set (_ → _)) := by
  intro y hy
  simp_rw [mem_coe, mem_def, i.forall_iff_succAbove, Fin.insertNth_apply_same,
    Fin.insertNth_apply_succAbove]
  exact ⟨hx, hy⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0925c33662c51ac6ee04bb76302ea1e56688fe0b77f8d67a91e9916383de4e81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0925c33662c51ac6ee04bb76302ea1e56688fe0b77f8d67a91e9916383de4e81.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db6d2dfe8366005498dd3bb04658b921a09c1a58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
