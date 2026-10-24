# toGeneratedByTopCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ccadc2c3082c415ec801dfc6929c5aeefda95b279f0f7d7827994219e1fe7157",
  "kind": "def",
  "lexical_name": "toGeneratedByTopCat",
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
  "slug": "togeneratedbytopcat--dfc61b8914ac6f7d18ff2c9c",
  "source": {
    "blob": "5ae368bbbeabcee47ee70504745ef9575312f31e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 235,
    "path": "GRWTSK/Topology/GeneralTopology/Category/Variant1a75ce2e5d4eb8b3507325926df7d0fb357de275d523d0ca3e648ba7ec7ce36f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfc61b8914ac6f7d18ff2c9cc1d3b42c2864b6be7dab1230670d9b6b3dc89294",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Category/Variant1a75ce2e5d4eb8b3507325926df7d0fb357de275d523d0ca3e648ba7ec7ce36f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ccadc2c3082c415ec801dfc6929c5aeefda95b279f0f7d7827994219e1fe7157`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toGeneratedByTopCat : ContinuousGeneratedByCat.{v} X ⥤ GeneratedByTopCat.{v} X :=
  ObjectProperty.lift _ (toTopCat X) (fun Y ↦ by
    rw [TopCat.generatedBy_def]
    exact inferInstanceAs (IsGeneratedBy X (WithGeneratedByTopology X ↑Y)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Category/Variant1a75ce2e5d4eb8b3507325926df7d0fb357de275d523d0ca3e648ba7ec7ce36f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Category/Variant1a75ce2e5d4eb8b3507325926df7d0fb357de275d523d0ca3e648ba7ec7ce36f.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ae368bbbeabcee47ee70504745ef9575312f31e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
