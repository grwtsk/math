# degeneracy_eq_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f5abfb9-0c10-9ea5-cadb-4f2a2bbe989d",
  "kind": "theorem",
  "lexical_name": "degeneracy_eq_map",
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
  "slug": "degeneracy-eq-map--de4535e4390fc265a3e6e852",
  "source": {
    "blob": "35a2664f0fea8b2c637e1628aeb1427df69e526b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 100,
    "path": "GRWTSK/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de4535e4390fc265a3e6e85286b28f2246ceb5c1a4ff87788e7e759cfec6e1c8",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f5abfb9-0c10-9ea5-cadb-4f2a2bbe989d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degeneracy_eq_map (S : Shape) {n : Nat}
    (i : Fin (n + 1)) (x : S.Cell n) :
    S.degeneracy i x = S.map (SimplexCategory.σ i).op x :=
  rfl

end Shape

/-- A shape together with finite cell types in every degree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35a2664f0fea8b2c637e1628aeb1427df69e526b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
