# dist_add_dist_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:104514ef-8fe6-0848-2e08-dd7d1d5732cd",
  "kind": "theorem",
  "lexical_name": "dist_add_dist_eq_iff",
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
  "slug": "dist-add-dist-eq-iff--7971f2ebd305840c7da5cdd5",
  "source": {
    "blob": "7c84211c530fcb836e83252d0b44f609b5472495",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 245,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7971f2ebd305840c7da5cdd55cd3223a106ec622870fc7ca105dd89b76d4947e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:104514ef-8fe6-0848-2e08-dd7d1d5732cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_add_dist_eq_iff : dist x y + dist y z = dist x z ↔ y ∈ [x -[ℝ] z] := by
  simp only [mem_segment_iff_sameRay, sameRay_iff_norm_add, dist_eq_norm', sub_add_sub_cancel',
    eq_comm]
#align dist_add_dist_eq_iff dist_add_dist_eq_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c84211c530fcb836e83252d0b44f609b5472495` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
