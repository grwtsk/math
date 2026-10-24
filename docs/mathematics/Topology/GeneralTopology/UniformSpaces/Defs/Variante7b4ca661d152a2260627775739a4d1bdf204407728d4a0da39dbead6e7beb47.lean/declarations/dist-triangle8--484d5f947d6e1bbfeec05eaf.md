# dist_triangle8

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:508ff2a6-415c-072c-0788-3bdabb359f95",
  "kind": "theorem",
  "lexical_name": "dist_triangle8",
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
  "slug": "dist-triangle8--484d5f947d6e1bbfeec05eaf",
  "source": {
    "blob": "d67fcb197e4a2658ac3da9ee76ba8f99572ba50f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 220,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variante7b4ca661d152a2260627775739a4d1bdf204407728d4a0da39dbead6e7beb47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:484d5f947d6e1bbfeec05eaff7936a439ef79581958cbf54f269a5a426839988",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Defs/Variante7b4ca661d152a2260627775739a4d1bdf204407728d4a0da39dbead6e7beb47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:508ff2a6-415c-072c-0788-3bdabb359f95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_triangle8 (a b c d e f g h : α) : dist a h ≤ dist a b + dist b c + dist c d
    + dist d e + dist e f + dist f g + dist g h := by
  apply le_trans (dist_triangle4 a f g h)
  apply add_le_add_right (add_le_add_right _ (dist f g)) (dist g h)
  apply le_trans (dist_triangle4 a d e f)
  apply add_le_add_right (add_le_add_right _ (dist d e)) (dist e f)
  exact dist_triangle4 a b c d

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Defs/Variante7b4ca661d152a2260627775739a4d1bdf204407728d4a0da39dbead6e7beb47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variante7b4ca661d152a2260627775739a4d1bdf204407728d4a0da39dbead6e7beb47.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d67fcb197e4a2658ac3da9ee76ba8f99572ba50f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
