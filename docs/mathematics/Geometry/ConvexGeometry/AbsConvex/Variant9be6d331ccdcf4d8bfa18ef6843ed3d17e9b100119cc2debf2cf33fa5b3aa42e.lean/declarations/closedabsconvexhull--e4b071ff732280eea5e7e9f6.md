# closedAbsConvexHull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af5d29337b8762f3305c27ff6dde8b2742c5a97aa11e2a3f50a1b9e15b2e0fe1",
  "kind": "def",
  "lexical_name": "closedAbsConvexHull",
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
  "slug": "closedabsconvexhull--e4b071ff732280eea5e7e9f6",
  "source": {
    "blob": "d74a6ea41957e30db1e11d1b98604b25f5a3589b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 158,
    "path": "GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4b071ff732280eea5e7e9f6138aa814861272fb4a82e81d7edc0b464ce5affe",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af5d29337b8762f3305c27ff6dde8b2742c5a97aa11e2a3f50a1b9e15b2e0fe1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def closedAbsConvexHull : ClosureOperator (Set E) :=
  .ofCompletePred (fun s => AbsConvex 𝕜 s ∧ IsClosed s) fun _ ↦ absConvex_closed_sInter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d74a6ea41957e30db1e11d1b98604b25f5a3589b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
