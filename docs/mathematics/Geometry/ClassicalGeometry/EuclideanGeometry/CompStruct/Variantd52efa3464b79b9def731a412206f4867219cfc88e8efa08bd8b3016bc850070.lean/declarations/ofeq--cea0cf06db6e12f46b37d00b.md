# ofEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4f4ddbf6227d453dc6cefcf0be096c759d7fd62ee10e60fa8e1ca9787f1a2d8",
  "kind": "def",
  "lexical_name": "ofEq",
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
  "slug": "ofeq--cea0cf06db6e12f46b37d00b",
  "source": {
    "blob": "30f26a46eee1235bda793be529a7c9b5e31e9c54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 148,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variantd52efa3464b79b9def731a412206f4867219cfc88e8efa08bd8b3016bc850070.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cea0cf06db6e12f46b37d00b3f9332070cb5c7a86cd134a1326c247790f8fd8b",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variantd52efa3464b79b9def731a412206f4867219cfc88e8efa08bd8b3016bc850070.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4f4ddbf6227d453dc6cefcf0be096c759d7fd62ee10e60fa8e1ca9787f1a2d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofEq {y₀ y₁ : X _⦋0⦌} (e : Edge x₀ x₁) (h₀ : x₀ = y₀) (h₁ : x₁ = y₁) :
    Edge y₀ y₁ where
  edge    := e.edge
  src_eq  := e.src_eq.trans h₀
  tgt_eq  := e.tgt_eq.trans h₁

/-- When the underlying simplex of an edge belongs to a subcomplex,
this is the induced edge of the subcomplex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variantd52efa3464b79b9def731a412206f4867219cfc88e8efa08bd8b3016bc850070.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variantd52efa3464b79b9def731a412206f4867219cfc88e8efa08bd8b3016bc850070.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30f26a46eee1235bda793be529a7c9b5e31e9c54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
