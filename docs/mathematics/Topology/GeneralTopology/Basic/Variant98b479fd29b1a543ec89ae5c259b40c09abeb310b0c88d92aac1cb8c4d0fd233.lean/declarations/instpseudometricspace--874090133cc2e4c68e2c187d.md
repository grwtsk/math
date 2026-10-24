# instPseudoMetricSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c84d5766d61a8437d8188e20205d0f55bde5a5ee131b689426c42dbb03348b2c",
  "kind": "instance",
  "lexical_name": "instPseudoMetricSpace",
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
  "slug": "instpseudometricspace--874090133cc2e4c68e2c187d",
  "source": {
    "blob": "77cc4bca6fcb8e95aeecf896bb413fc08a18c905",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant98b479fd29b1a543ec89ae5c259b40c09abeb310b0c88d92aac1cb8c4d0fd233.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:874090133cc2e4c68e2c187d96080628ea6a2aaa29754ff05680340e7e368643",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant98b479fd29b1a543ec89ae5c259b40c09abeb310b0c88d92aac1cb8c4d0fd233.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c84d5766d61a8437d8188e20205d0f55bde5a5ee131b689426c42dbb03348b2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instPseudoMetricSpace : PseudoMetricSpace (α →ᵇ β) where
  dist_self f := le_antisymm ((dist_le le_rfl).2 fun x => by simp) dist_nonneg'
  dist_comm f g := by simp [dist_eq, dist_comm]
  dist_triangle _ _ _ := (dist_le (add_nonneg dist_nonneg' dist_nonneg')).2
    fun _ => le_trans (dist_triangle _ _ _) (add_le_add (dist_coe_le_dist _) (dist_coe_le_dist _))

/-- The type of bounded continuous functions, with the uniform distance, is a metric space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant98b479fd29b1a543ec89ae5c259b40c09abeb310b0c88d92aac1cb8c4d0fd233.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant98b479fd29b1a543ec89ae5c259b40c09abeb310b0c88d92aac1cb8c4d0fd233.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77cc4bca6fcb8e95aeecf896bb413fc08a18c905` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
