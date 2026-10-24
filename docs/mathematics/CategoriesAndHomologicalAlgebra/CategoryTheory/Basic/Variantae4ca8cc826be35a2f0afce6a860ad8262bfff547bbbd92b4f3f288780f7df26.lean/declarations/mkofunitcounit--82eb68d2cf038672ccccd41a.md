# mkOfUnitCounit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43a721bb620828fa4ec5e5a8e141ff77fe9011f69771ac405b81f32890ca9515",
  "kind": "def",
  "lexical_name": "mkOfUnitCounit",
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
  "slug": "mkofunitcounit--82eb68d2cf038672ccccd41a",
  "source": {
    "blob": "427dd6265732914e32468191367030e2dea57fa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 372,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantae4ca8cc826be35a2f0afce6a860ad8262bfff547bbbd92b4f3f288780f7df26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82eb68d2cf038672ccccd41a87b3a6dbeade7ae0b1ca308f38048181e756811f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantae4ca8cc826be35a2f0afce6a860ad8262bfff547bbbd92b4f3f288780f7df26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43a721bb620828fa4ec5e5a8e141ff77fe9011f69771ac405b81f32890ca9515`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkOfUnitCounit (adj : CoreUnitCounit F G) : F ⊣ G :=
  { adj with
    homEquiv := fun X Y =>
      { toFun := fun f => adj.unit.app X ≫ G.map f
        invFun := fun g => F.map g ≫ adj.counit.app Y
        left_inv := fun f => by
          change F.map (_ ≫ _) ≫ _ = _
          rw [F.map_comp, assoc, ← Functor.comp_map, adj.counit.naturality, ← assoc]
          convert id_comp f
          have t := congrArg (fun (s : NatTrans (𝟭 C ⋙ F) (F ⋙ 𝟭 D)) => s.app X) adj.left_triangle
          dsimp at t
          simp only [id_comp] at t
          exact t
        right_inv := fun g => by
          change _ ≫ G.map (_ ≫ _) = _
          rw [G.map_comp, ← assoc, ← Functor.comp_map, ← adj.unit.naturality, assoc]
          convert comp_id g
          have t := congrArg (fun t : NatTrans (G ⋙ 𝟭 C) (𝟭 D ⋙ G) => t.app Y) adj.right_triangle
          dsimp at t
          simp only [id_comp] at t
          exact t } }
#align category_theory.adjunction.mk_of_unit_counit CategoryTheory.Adjunction.mkOfUnitCounit

/- Porting note: simpNF linter claims these are solved by simp but that
is not true -/
attribute [nolint simpNF] CategoryTheory.Adjunction.mkOfUnitCounit_homEquiv_symm_apply
attribute [nolint simpNF] CategoryTheory.Adjunction.mkOfUnitCounit_homEquiv_apply

/-- The adjunction between the identity functor on a category and itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantae4ca8cc826be35a2f0afce6a860ad8262bfff547bbbd92b4f3f288780f7df26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantae4ca8cc826be35a2f0afce6a860ad8262bfff547bbbd92b4f3f288780f7df26.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `427dd6265732914e32468191367030e2dea57fa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
