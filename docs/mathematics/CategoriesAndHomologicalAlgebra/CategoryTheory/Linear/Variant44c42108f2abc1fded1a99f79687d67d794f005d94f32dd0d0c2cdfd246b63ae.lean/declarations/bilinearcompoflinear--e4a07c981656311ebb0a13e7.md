# bilinearCompOfLinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:993ca595d6e5440bb33f1aa87d3f46c0036180a37dd4d06e5c642cb5157e44da",
  "kind": "def",
  "lexical_name": "bilinearCompOfLinear",
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
  "slug": "bilinearcompoflinear--e4a07c981656311ebb0a13e7",
  "source": {
    "blob": "5c37be084fc24a9c9a7803ecd6dd1e8099af5fe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 106,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant44c42108f2abc1fded1a99f79687d67d794f005d94f32dd0d0c2cdfd246b63ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4a07c981656311ebb0a13e755042abbbf6f62d27e59abe495a8aebcaff0351a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant44c42108f2abc1fded1a99f79687d67d794f005d94f32dd0d0c2cdfd246b63ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:993ca595d6e5440bb33f1aa87d3f46c0036180a37dd4d06e5c642cb5157e44da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def bilinearCompOfLinear (R : Type t) [CommRing R] [Linear R C] (X Y Z : C)
    (a b c : ℕ) (h : a + b = c) :
    Ext X Y a →ₗ[R] Ext Y Z b →ₗ[R] Ext X Z c where
  toFun α :=
    { toFun β := α.comp β h
      map_add' := by simp
      map_smul' := by simp }
  map_add' := by aesop
  map_smul' := by aesop

/-- The postcomposition `Ext X Y a →ₗ[R] Ext X Z b` with `β : Ext Y Z n` when `a + n = b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant44c42108f2abc1fded1a99f79687d67d794f005d94f32dd0d0c2cdfd246b63ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant44c42108f2abc1fded1a99f79687d67d794f005d94f32dd0d0c2cdfd246b63ae.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c37be084fc24a9c9a7803ecd6dd1e8099af5fe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
