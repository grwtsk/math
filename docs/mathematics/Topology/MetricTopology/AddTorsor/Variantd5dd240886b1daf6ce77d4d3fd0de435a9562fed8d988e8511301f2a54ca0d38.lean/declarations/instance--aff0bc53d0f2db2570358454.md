# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3b15f5ea1b8538bbba711d3e46c532c5c4203cfbf120f0d4b10e9cd268a5f54",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--aff0bc53d0f2db2570358454",
  "source": {
    "blob": "7c53ef40d37cf0e7bec06c906575f236270fd5a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 49,
    "path": "GRWTSK/Topology/MetricTopology/AddTorsor/Variantd5dd240886b1daf6ce77d4d3fd0de435a9562fed8d988e8511301f2a54ca0d38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aff0bc53d0f2db25703584549954e60ec9c9a97dd1f7b97b7a65ce2468d4de58",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/AddTorsor/Variantd5dd240886b1daf6ce77d4d3fd0de435a9562fed8d988e8511301f2a54ca0d38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3b15f5ea1b8538bbba711d3e46c532c5c4203cfbf120f0d4b10e9cd268a5f54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) NormedAddTorsor.to_isIsIsometricVAdd : IsIsometricVAdd V P :=
  ⟨fun c => Isometry.of_dist_eq fun x y => by
    simp [NormedAddTorsor.dist_eq_norm']⟩

/-- A `SeminormedAddCommGroup` is a `NormedAddTorsor` over itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/AddTorsor/Variantd5dd240886b1daf6ce77d4d3fd0de435a9562fed8d988e8511301f2a54ca0d38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/AddTorsor/Variantd5dd240886b1daf6ce77d4d3fd0de435a9562fed8d988e8511301f2a54ca0d38.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c53ef40d37cf0e7bec06c906575f236270fd5a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
