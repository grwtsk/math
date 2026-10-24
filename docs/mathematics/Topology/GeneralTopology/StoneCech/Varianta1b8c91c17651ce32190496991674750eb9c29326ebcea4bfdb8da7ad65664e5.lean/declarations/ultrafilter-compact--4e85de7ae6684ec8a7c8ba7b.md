# ultrafilter_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd0b676fd90da0dad2b8ae03ad7c7196f417d5dbff74f8df2b947995e83de321",
  "kind": "instance",
  "lexical_name": "ultrafilter_compact",
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
  "slug": "ultrafilter-compact--4e85de7ae6684ec8a7c8ba7b",
  "source": {
    "blob": "abbaa476aba7139389c6225e698dfc7832dfad97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e85de7ae6684ec8a7c8ba7b9c2fdf01c6fe0326dda889ae5b8989a9d512a7c1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd0b676fd90da0dad2b8ae03ad7c7196f417d5dbff74f8df2b947995e83de321`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ultrafilter_compact : CompactSpace (Ultrafilter α) :=
  ⟨isCompact_iff_ultrafilter_le_nhds.mpr fun f _ =>
      ⟨joinM f, trivial, ultrafilter_converges_iff.mpr rfl⟩⟩
#align ultrafilter_compact ultrafilter_compact

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abbaa476aba7139389c6225e698dfc7832dfad97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
