# coneOfConeUncurry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b7595f9608f47297433d9ba389b7709de7aed2aab53069b29d54c50dddd6ff3",
  "kind": "def",
  "lexical_name": "coneOfConeUncurry",
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
  "slug": "coneofconeuncurry--e55197c0714a140bc31c6a7e",
  "source": {
    "blob": "0866a25508c63c4c36ff19353cc633c2d3652778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantdaa6d3cacf7a73c2b15d1913cb8978b2280e87c973dd4b9d048678729b09ed4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e55197c0714a140bc31c6a7e43611b1abf08866cdf552765318e38f581f41686",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantdaa6d3cacf7a73c2b15d1913cb8978b2280e87c973dd4b9d048678729b09ed4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b7595f9608f47297433d9ba389b7709de7aed2aab53069b29d54c50dddd6ff3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coneOfConeUncurry {D : DiagramOfCones F} (Q : ∀ j, IsLimit (D.obj j))
    (c : Cone (uncurry.obj F)) : Cone D.conePoints where
  pt := c.pt
  π :=
    { app := fun j =>
        (Q j).lift
          { pt := c.pt
            π :=
              { app := fun k => c.π.app (j, k)
                naturality := fun k k' f => by
                  dsimp; simp only [Category.id_comp]
                  have := @NatTrans.naturality _ _ _ _ _ _ c.π (j, k) (j, k') (𝟙 j, f)
                  dsimp at this
                  simp? at this says
                    simp only [Category.id_comp, Functor.map_id, NatTrans.id_app] at this
                  exact this } }
      naturality := fun j j' f =>
        (Q j').hom_ext
          (by
            dsimp
            intro k
            simp only [Limits.ConeMorphism.w, Limits.Cones.postcompose_obj_π,
              Limits.IsLimit.fac_assoc, Limits.IsLimit.fac, NatTrans.comp_app, Category.id_comp,
              Category.assoc]
            have := @NatTrans.naturality _ _ _ _ _ _ c.π (j, k) (j', k) (f, 𝟙 k)
            dsimp at this
            simp only [Category.id_comp, Category.comp_id, CategoryTheory.Functor.map_id,
              NatTrans.id_app] at this
            exact this) }

/-- Given a diagram `D` of limit cones over the `curry.obj G j`, and a cone over `G`,
we can construct a cone over the diagram consisting of the cone points from `D`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantdaa6d3cacf7a73c2b15d1913cb8978b2280e87c973dd4b9d048678729b09ed4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantdaa6d3cacf7a73c2b15d1913cb8978b2280e87c973dd4b9d048678729b09ed4d.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0866a25508c63c4c36ff19353cc633c2d3652778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
