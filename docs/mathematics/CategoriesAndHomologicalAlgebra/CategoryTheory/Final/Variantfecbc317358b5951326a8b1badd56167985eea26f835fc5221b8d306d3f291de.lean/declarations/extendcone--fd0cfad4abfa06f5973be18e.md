# extendCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:add5f749c8658eb8986deb31e51bf59d68476cecd01973865f2f48d4e8a9952c",
  "kind": "def",
  "lexical_name": "extendCone",
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
  "slug": "extendcone--fd0cfad4abfa06f5973be18e",
  "source": {
    "blob": "363482bad4919be7a541753ea8f6e3d0ea174957",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 603,
    "line": 579,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfecbc317358b5951326a8b1badd56167985eea26f835fc5221b8d306d3f291de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd0cfad4abfa06f5973be18e472cdb00e83d89b49d4d1ead9416b25d339caf5d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfecbc317358b5951326a8b1badd56167985eea26f835fc5221b8d306d3f291de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:add5f749c8658eb8986deb31e51bf59d68476cecd01973865f2f48d4e8a9952c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 579–603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extendCone : Cone (F ⋙ G) ⥤ Cone G where
  obj c :=
    { pt := c.pt
      π :=
        { app := fun d => c.π.app (lift F d) ≫ G.map (homToLift F d)
          naturality := fun X Y f => by
            dsimp; simp only [Category.id_comp, Category.assoc]
            -- This would be true if we'd chosen `lift F Y` to be `lift F X`
            -- and `homToLift F Y` to be `homToLift F X ≫ f`.
            apply
              induction F fun Z k =>
                (c.π.app Z ≫ G.map k : c.pt ⟶ _) =
                  c.π.app (lift F X) ≫ G.map (homToLift F X) ≫ G.map f
            · intro Z₁ Z₂ k₁ k₂ g a z
              rw [← a, Functor.map_comp, ← Functor.comp_map, ← Category.assoc, ← Category.assoc,
                c.w] at z
              rw [z, Category.assoc]
            · intro Z₁ Z₂ k₁ k₂ g a z
              rw [← a, Functor.map_comp, ← Functor.comp_map, ← Category.assoc, ← Category.assoc,
                c.w, z, Category.assoc]
            · rw [← Functor.map_comp] } }
  map f := { hom := f.hom }

/-- Alternative equational lemma for `(extendCone c).π.app` in case a lift of the object
is given explicitly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfecbc317358b5951326a8b1badd56167985eea26f835fc5221b8d306d3f291de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfecbc317358b5951326a8b1badd56167985eea26f835fc5221b8d306d3f291de.lean#L579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `363482bad4919be7a541753ea8f6e3d0ea174957` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
