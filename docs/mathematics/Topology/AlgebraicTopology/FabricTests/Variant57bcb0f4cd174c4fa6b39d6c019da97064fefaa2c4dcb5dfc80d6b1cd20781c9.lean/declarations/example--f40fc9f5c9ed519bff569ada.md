# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a44ab55ca4e69ac3bbca97653d8710669a4ca55b435e806bbc846dacc79f4cbc",
  "kind": "example",
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
  "slug": "example--f40fc9f5c9ed519bff569ada",
  "source": {
    "blob": "82da4796ee9e03ed1fd05766410afbc9375afd7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 89,
    "path": "GRWTSK/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f40fc9f5c9ed519bff569adac8448335af3e61c9f79a4925c9482e956e55e6da",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a44ab55ca4e69ac3bbca97653d8710669a4ca55b435e806bbc846dacc79f4cbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example
    (edge : SimplexOperator 1 2)
    (vertex : SimplexOperator 0 1) :
    triangleFabric.contract (vertex ≫ edge) canonicalTriangle =
      triangleFabric.contract edge canonicalTriangle ≫
        triangleFabric.contract vertex
          (triangleShape.restrict edge canonicalTriangle) ≫
        eqToHom
          (congrArg (triangleFabric.presentation 0)
            (triangleShape.restrict_comp vertex edge canonicalTriangle).symm) :=
  triangleFabric.contract_comp_apply vertex edge canonicalTriangle

/-- A vertex and its degenerate identity-expanded edge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82da4796ee9e03ed1fd05766410afbc9375afd7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
