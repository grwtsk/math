# isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:012cb3d3e84baf5b993e61c55f97fed1cf36389e91fe629c5ed549b4eb77c10e",
  "kind": "instance",
  "lexical_name": "isIso",
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
  "slug": "isiso--2608f13d3ddbf0cddd17e4a2",
  "source": {
    "blob": "d463861180d35e98e6fa296364ceba8ddd98fedb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 156,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2608f13d3ddbf0cddd17e4a2b19a4e3bb742163b6bbc7c56ccf5276921bf20fa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:012cb3d3e84baf5b993e61c55f97fed1cf36389e91fe629c5ed549b4eb77c10e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isIso {X Y : PresheafedSpace.{_, _, v} C} (α : X ⟶ Y) [IsIso α] (x : X) :
    IsIso (α.stalkMap x) where
  out := by
    let β : Y ⟶ X := CategoryTheory.inv α
    have h_eq : (α ≫ β).base x = x := by rw [IsIso.hom_inv_id α, id_base, TopCat.id_app]
    -- Intuitively, the inverse of the stalk map of `α` at `x` should just be the stalk map of `β`
    -- at `α x`. Unfortunately, we have a problem with dependent type theory here: Because `x`
    -- is not *definitionally* equal to `β (α x)`, the map `stalk_map β (α x)` has not the correct
    -- type for an inverse.
    -- To get a proper inverse, we need to compose with the `eqToHom` arrow
    -- `X.stalk x ⟶ X.stalk ((α ≫ β).base x)`.
    refine
      ⟨eqToHom (show X.presheaf.stalk x = X.presheaf.stalk ((α ≫ β).base x) by rw [h_eq]) ≫
          (β.stalkMap (α.base x) :),
        ?_, ?_⟩
    · rw [← Category.assoc, congr_point α x ((α ≫ β).base x) h_eq.symm, Category.assoc]
      erw [← stalkMap.comp β α (α.base x)]
      rw [congr_hom _ _ (IsIso.inv_hom_id α), stalkMap.id, eqToHom_trans_assoc, eqToHom_refl,
        Category.id_comp]
    · rw [Category.assoc, ← stalkMap.comp, congr_hom _ _ (IsIso.hom_inv_id α), stalkMap.id,
        eqToHom_trans_assoc, eqToHom_refl, Category.id_comp]

/-- An isomorphism between presheafed spaces induces an isomorphism of stalks.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d463861180d35e98e6fa296364ceba8ddd98fedb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
