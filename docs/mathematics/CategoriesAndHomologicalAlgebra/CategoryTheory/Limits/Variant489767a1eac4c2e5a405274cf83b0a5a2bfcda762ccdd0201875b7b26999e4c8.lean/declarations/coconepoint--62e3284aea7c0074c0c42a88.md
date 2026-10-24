# coconePoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:251d983a0b7eddb1ebd9ad6a66113936faa1ee62f9d3f16e15e46a5df8e92e13",
  "kind": "def",
  "lexical_name": "coconePoint",
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
  "slug": "coconepoint--62e3284aea7c0074c0c42a88",
  "source": {
    "blob": "4f91b124d1e98a6e9005e55db78b40831d951c7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 170,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant489767a1eac4c2e5a405274cf83b0a5a2bfcda762ccdd0201875b7b26999e4c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62e3284aea7c0074c0c42a88a0fd4adf273852a871272404da01687c90f6b1ad",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant489767a1eac4c2e5a405274cf83b0a5a2bfcda762ccdd0201875b7b26999e4c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:251d983a0b7eddb1ebd9ad6a66113936faa1ee62f9d3f16e15e46a5df8e92e13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coconePoint : Algebra T where
  A := c.pt
  a := lambda c t
  unit := by
    apply t.hom_ext
    intro j
    rw [show c.ι.app j ≫ T.η.app c.pt ≫ _ = T.η.app (D.obj j).A ≫ _ ≫ _ from
        T.η.naturality_assoc _ _,
      commuting, Algebra.unit_assoc (D.obj j)]
    dsimp; simp
  -- See library note [dsimp, simp]
  assoc := by
    refine (isColimitOfPreserves _ (isColimitOfPreserves _ t)).hom_ext fun j => ?_
    rw [Functor.mapCocone_ι_app, Functor.mapCocone_ι_app,
      show (T : C ⥤ C).map ((T : C ⥤ C).map _) ≫ _ ≫ _ = _ from T.μ.naturality_assoc _ _, ←
      Functor.map_comp_assoc, commuting, Functor.map_comp, Category.assoc, commuting]
    apply (D.obj j).assoc_assoc _

/-- (Impl) Construct the lifted cocone in `Algebra T` which will be colimiting. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant489767a1eac4c2e5a405274cf83b0a5a2bfcda762ccdd0201875b7b26999e4c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant489767a1eac4c2e5a405274cf83b0a5a2bfcda762ccdd0201875b7b26999e4c8.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f91b124d1e98a6e9005e55db78b40831d951c7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
