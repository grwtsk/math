# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:904dbae7e0ddbaa801bd5cf6a0f34ec6d5eaa6a7142fc34aba800c4d99f5076f",
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
  "slug": "instance--a548f75605254bff9ed1dc15",
  "source": {
    "blob": "76e5a262cb3b16845ecc95c68b8955b4cd24526d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 369,
    "path": "GRWTSK/Topology/GeneralTopology/Compacts/Variant9f897430e92d1bb496298d6c4daefecb76232f79c4e9cdee7d137eecaf77b5fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a548f75605254bff9ed1dc15e65e5b9de94ee560a55c84f17a3d3876c12cf34b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compacts/Variant9f897430e92d1bb496298d6c4daefecb76232f79c4e9cdee7d137eecaf77b5fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:904dbae7e0ddbaa801bd5cf6a0f34ec6d5eaa6a7142fc34aba800c4d99f5076f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [T2Space α] (K : Compacts α) : IsCodirectedOrder K.openRcNhds where
  directed U1 U2 := ⟨⟨U1 ⊓ U2, (isCompact_closure_of_mem_openRcNhds (Subtype.coe_prop U1) |>.inter
    <| isCompact_closure_of_mem_openRcNhds U2.coe_prop).of_isClosed_subset
      isClosed_closure <| closure_inter_subset_inter_closure ..,
      le_inf (subset_of_mem_openRcNhds (Subtype.coe_prop U1))
      <| subset_of_mem_openRcNhds (Subtype.coe_prop U2)⟩,
         Subtype.coe_le_coe.mp inf_le_left,
         Subtype.coe_le_coe.mp inf_le_right⟩

end Compacts

namespace Opens

/-- The set of compacts inside an open subset -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compacts/Variant9f897430e92d1bb496298d6c4daefecb76232f79c4e9cdee7d137eecaf77b5fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compacts/Variant9f897430e92d1bb496298d6c4daefecb76232f79c4e9cdee7d137eecaf77b5fc.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76e5a262cb3b16845ecc95c68b8955b4cd24526d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
