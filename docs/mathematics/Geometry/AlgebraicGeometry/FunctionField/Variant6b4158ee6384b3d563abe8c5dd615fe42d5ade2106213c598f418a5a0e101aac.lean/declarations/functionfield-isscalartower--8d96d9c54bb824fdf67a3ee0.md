# functionField_isScalarTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5ce0d261f15d891e88f1c04b0bd8962f1015319a1e202a7f814722ff4832058",
  "kind": "instance",
  "lexical_name": "functionField_isScalarTower",
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
  "slug": "functionfield-isscalartower--8d96d9c54bb824fdf67a3ee0",
  "source": {
    "blob": "1693e86cdeed0b96333abda923a718394744719a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 94,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d96d9c54bb824fdf67a3ee044e9227d0db80795db1461fa242279d988221dd2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5ce0d261f15d891e88f1c04b0bd8962f1015319a1e202a7f814722ff4832058`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance functionField_isScalarTower [IrreducibleSpace X] (U : X.Opens) (x : U)
    [Nonempty U] : IsScalarTower Γ(X, U) (X.presheaf.stalk x) X.functionField := by
  apply IsScalarTower.of_algebraMap_eq'
  simp_rw [RingHom.algebraMap_toAlgebra]
  change _ = (X.presheaf.germ U x x.2 ≫ _).hom
  rw [X.presheaf.germ_stalkSpecializes]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1693e86cdeed0b96333abda923a718394744719a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
