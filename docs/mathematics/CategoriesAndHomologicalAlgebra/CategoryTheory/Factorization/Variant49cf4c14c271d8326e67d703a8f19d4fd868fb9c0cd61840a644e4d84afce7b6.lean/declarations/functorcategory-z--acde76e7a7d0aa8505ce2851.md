# functorCategory.Z

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be8def5e3522559d7befb82f6bcec2606729cb18abadfbaf015e9afcb64503a2",
  "kind": "def",
  "lexical_name": "functorCategory.Z",
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
  "slug": "functorcategory-z--acde76e7a7d0aa8505ce2851",
  "source": {
    "blob": "cb7c74fcfba58bfd1fcac0aa4fc3f6fbe0c7b668",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 163,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:acde76e7a7d0aa8505ce2851371099333c077f8f4561f97ff3baad7bfa939d89",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be8def5e3522559d7befb82f6bcec2606729cb18abadfbaf015e9afcb64503a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorCategory.Z : Arrow (J ⥤ C) ⥤ J ⥤ C where
  obj f :=
    { obj := fun j => (data.factorizationData (f.hom.app j)).Z
      map := fun φ => data.mapZ
        { left := f.left.map φ
          right := f.right.map φ }
      map_id := fun j => by
        dsimp
        rw [← data.mapZ_id (f.hom.app j)]
        congr <;> simp
      map_comp := fun _ _ => by
        dsimp
        rw [← data.mapZ_comp]
        congr <;> simp }
  map τ :=
    { app := fun j => data.mapZ
        { left := τ.left.app j
          right := τ.right.app j
          w := congr_app τ.w j }
      naturality := fun _ _ α => by
        dsimp
        rw [← data.mapZ_comp, ← data.mapZ_comp]
        congr 1
        ext <;> simp }
  map_id f := by
    ext j
    dsimp
    rw [← data.mapZ_id]
    congr 1
  map_comp f g := by
    ext j
    dsimp
    rw [← data.mapZ_comp]
    congr 1

/-- A functorial factorization in the category `C` extends to the functor category `J ⥤ C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb7c74fcfba58bfd1fcac0aa4fc3f6fbe0c7b668` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
