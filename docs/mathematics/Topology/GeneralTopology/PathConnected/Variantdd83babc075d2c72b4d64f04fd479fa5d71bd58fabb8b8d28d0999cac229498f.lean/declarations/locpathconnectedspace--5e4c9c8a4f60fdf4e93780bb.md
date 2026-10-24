# LocPathConnectedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c2ce1ec82714ec5dbc7e65a482be77a1f85bbbc6264b60372ced1a907a10e5d",
  "kind": "class",
  "lexical_name": "LocPathConnectedSpace",
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
  "slug": "locpathconnectedspace--5e4c9c8a4f60fdf4e93780bb",
  "source": {
    "blob": "f79ff3e521956a45c84342dd1cf5b96187dc336a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1216,
    "line": 1210,
    "path": "GRWTSK/Topology/GeneralTopology/PathConnected/Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e4c9c8a4f60fdf4e93780bb68abc84274ca2cbe95cd71ebbe93c0460c2f7322",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PathConnected/Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c2ce1ec82714ec5dbc7e65a482be77a1f85bbbc6264b60372ced1a907a10e5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1210–1216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LocPathConnectedSpace (X : Type*) [TopologicalSpace X] : Prop where
  /-- Each neighborhood filter has a basis of path-connected neighborhoods. -/
  path_connected_basis : ∀ x : X, (𝓝 x).HasBasis (fun s : Set X => s ∈ 𝓝 x ∧ IsPathConnected s) id
#align loc_path_connected_space LocPathConnectedSpace

export LocPathConnectedSpace (path_connected_basis)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PathConnected/Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PathConnected/Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.lean#L1210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f79ff3e521956a45c84342dd1cf5b96187dc336a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
