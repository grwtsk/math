# freeOn_isBase_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a0c302d-9d6c-c123-80dd-bf402b243f65",
  "kind": "theorem",
  "lexical_name": "freeOn_isBase_iff",
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
  "slug": "freeon-isbase-iff--b66d0f908d92558b3d586609",
  "source": {
    "blob": "0854c6c5c2645bdb02139c34af7847dc27ba6b92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 152,
    "path": "GRWTSK/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b66d0f908d92558b3d58660953f5ad6e1b537eb527b7c2901d8f55dd4463bf51",
  "verification": {
    "reference": "docs/verification/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a0c302d-9d6c-c123-80dd-bf402b243f65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem freeOn_isBase_iff : (freeOn E).IsBase B ↔ B = E := by
  simp only [freeOn, loopyOn_ground, dual_isBase_iff', loopyOn_isBase_iff, diff_eq_empty,
    ← subset_antisymm_iff, eq_comm (a := E)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0854c6c5c2645bdb02139c34af7847dc27ba6b92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
