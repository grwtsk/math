# smulRightₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb2a8f7cf41f691d8489045858eee72fde79de69364303ca335cdd0e2e28d247",
  "kind": "def",
  "lexical_name": "smulRightₗ",
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
  "slug": "smulright--f2e218d81cc296fe628db423",
  "source": {
    "blob": "485d17dedd0d78752818c8b7c81dcb378252f585",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 396,
    "path": "GRWTSK/Algebra/LinearAlgebra/End/Variant2ad29f87f6f306f5e39f5081607749a66b94b447bdba9dea0c354defcc54ddb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2e218d81cc296fe628db4231425106587eb84b19bfbcc05980813a8252babb4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/End/Variant2ad29f87f6f306f5e39f5081607749a66b94b447bdba9dea0c354defcc54ddb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb2a8f7cf41f691d8489045858eee72fde79de69364303ca335cdd0e2e28d247`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def smulRightₗ : (M₂ →ₗ[R] R) →ₗ[R] M →ₗ[R] M₂ →ₗ[R] M where
  toFun f :=
    { toFun := LinearMap.smulRight f
      map_add' := fun m m' => by
        ext
        apply smul_add
      map_smul' := fun c m => by
        ext
        apply smul_comm }
  map_add' f f' := by
    ext
    apply add_smul
  map_smul' c f := by
    ext
    apply mul_smul

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/End/Variant2ad29f87f6f306f5e39f5081607749a66b94b447bdba9dea0c354defcc54ddb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/End/Variant2ad29f87f6f306f5e39f5081607749a66b94b447bdba9dea0c354defcc54ddb4.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `485d17dedd0d78752818c8b7c81dcb378252f585` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
