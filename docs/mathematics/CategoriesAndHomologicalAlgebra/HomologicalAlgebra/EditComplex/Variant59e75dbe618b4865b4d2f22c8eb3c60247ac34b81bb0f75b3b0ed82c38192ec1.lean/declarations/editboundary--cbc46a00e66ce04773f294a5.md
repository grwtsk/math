# editBoundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da1d717430e61d33dee1cf4dcc23d653712effe0a0f40d50bbf3883cc71dc108",
  "kind": "def",
  "lexical_name": "editBoundary",
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
  "slug": "editboundary--cbc46a00e66ce04773f294a5",
  "source": {
    "blob": "4e1473220c8695335ea180533f327c4e4b03fc35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 80,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cbc46a00e66ce04773f294a5aa3d4dc1eee6750cee91dd7f4e8cf6d379afa40a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da1d717430e61d33dee1cf4dcc23d653712effe0a0f40d50bbf3883cc71dc108`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def editBoundary (edit : M.Edit) : FreeZ Snapshot :=
  endpointBoundary M.src M.dst edit

/-- The degree-one differential, extended from `[e] ↦ [dst e] - [src e]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant59e75dbe618b4865b4d2f22c8eb3c60247ac34b81bb0f75b3b0ed82c38192ec1.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e1473220c8695335ea180533f327c4e4b03fc35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
