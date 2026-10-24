# AffineSubspace.nonempty_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68727c8a-78c6-635f-add8-902a1b793934",
  "kind": "theorem",
  "lexical_name": "AffineSubspace.nonempty_map",
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
  "slug": "affinesubspace-nonempty-map--81d20cdc52f187eb80990cf5",
  "source": {
    "blob": "41f6b32bdca4ee637ca6d7a2c1acd44f2205c9b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 39,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Varianta1ec867a5bd4e90370a91d8a048ea4dd3ac0c16c044262947e4b39fe7543f80a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81d20cdc52f187eb80990cf5478eeebf13ddfdeac8317849201a1ab04d4e486e",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Varianta1ec867a5bd4e90370a91d8a048ea4dd3ac0c16c044262947e4b39fe7543f80a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68727c8a-78c6-635f-add8-902a1b793934`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineSubspace.nonempty_map {E : AffineSubspace k P₁} [Ene : Nonempty E] {φ : P₁ →ᵃ[k] P₂} :
    Nonempty (E.map φ) := by
  obtain ⟨x, hx⟩ := id Ene
  exact ⟨⟨φ x, AffineSubspace.mem_map.mpr ⟨x, hx, rfl⟩⟩⟩

attribute [local instance] AffineSubspace.nonempty_map AffineSubspace.toAddTorsor

/-- Restrict domain and codomain of an affine map to the given subspaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Varianta1ec867a5bd4e90370a91d8a048ea4dd3ac0c16c044262947e4b39fe7543f80a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Varianta1ec867a5bd4e90370a91d8a048ea4dd3ac0c16c044262947e4b39fe7543f80a.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41f6b32bdca4ee637ca6d7a2c1acd44f2205c9b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
