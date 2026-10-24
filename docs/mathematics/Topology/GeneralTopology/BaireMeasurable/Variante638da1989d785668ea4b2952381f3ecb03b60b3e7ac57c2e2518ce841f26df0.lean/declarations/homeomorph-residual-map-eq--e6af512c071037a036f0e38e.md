# Homeomorph.residual_map_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82dcc073-1e97-a471-06b3-ffaf083596b2",
  "kind": "theorem",
  "lexical_name": "Homeomorph.residual_map_eq",
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
  "slug": "homeomorph-residual-map-eq--e6af512c071037a036f0e38e",
  "source": {
    "blob": "10f1f6f2b0b559d0501ea0f036b480bc00aa794c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 219,
    "path": "GRWTSK/Topology/GeneralTopology/BaireMeasurable/Variante638da1989d785668ea4b2952381f3ecb03b60b3e7ac57c2e2518ce841f26df0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6af512c071037a036f0e38e85f554f7cec81e4ce1dcd6ff5d8ba28c9d516d00",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BaireMeasurable/Variante638da1989d785668ea4b2952381f3ecb03b60b3e7ac57c2e2518ce841f26df0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82dcc073-1e97-a471-06b3-ffaf083596b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Homeomorph.residual_map_eq (h : α ≃ₜ β) : (residual α).map h = residual β := by
  refine le_antisymm (tendsto_residual_of_isOpenMap h.continuous h.isOpenMap) (le_map ?_)
  simp_rw [← preimage_symm]
  exact tendsto_residual_of_isOpenMap h.symm.continuous h.symm.isOpenMap

end Map
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BaireMeasurable/Variante638da1989d785668ea4b2952381f3ecb03b60b3e7ac57c2e2518ce841f26df0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BaireMeasurable/Variante638da1989d785668ea4b2952381f3ecb03b60b3e7ac57c2e2518ce841f26df0.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10f1f6f2b0b559d0501ea0f036b480bc00aa794c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
