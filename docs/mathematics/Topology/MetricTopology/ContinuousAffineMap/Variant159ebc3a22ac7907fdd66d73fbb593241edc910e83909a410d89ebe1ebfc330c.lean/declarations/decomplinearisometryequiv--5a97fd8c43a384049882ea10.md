# decompLinearIsometryEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a74c067c144890b919af68f79d0111d71740736fa07140eca9d0f4577ac70eb",
  "kind": "def",
  "lexical_name": "decompLinearIsometryEquiv",
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
  "slug": "decomplinearisometryequiv--5a97fd8c43a384049882ea10",
  "source": {
    "blob": "12129b5f342c8e9216ef6b9fe83c8add7b324533",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 113,
    "path": "GRWTSK/Topology/MetricTopology/ContinuousAffineMap/Variant159ebc3a22ac7907fdd66d73fbb593241edc910e83909a410d89ebe1ebfc330c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a97fd8c43a384049882ea10b9a6db1dcea9869ee95f87542a2e30aa0221c41a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ContinuousAffineMap/Variant159ebc3a22ac7907fdd66d73fbb593241edc910e83909a410d89ebe1ebfc330c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a74c067c144890b919af68f79d0111d71740736fa07140eca9d0f4577ac70eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decompLinearIsometryEquiv : (V →ᴬ[𝕜] W) ≃ₗᵢ[R] W × (V →L[𝕜] W) where
  __ := decompLinearEquiv 𝕜 R V W
  norm_map' _ := rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ContinuousAffineMap/Variant159ebc3a22ac7907fdd66d73fbb593241edc910e83909a410d89ebe1ebfc330c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ContinuousAffineMap/Variant159ebc3a22ac7907fdd66d73fbb593241edc910e83909a410d89ebe1ebfc330c.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12129b5f342c8e9216ef6b9fe83c8add7b324533` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
