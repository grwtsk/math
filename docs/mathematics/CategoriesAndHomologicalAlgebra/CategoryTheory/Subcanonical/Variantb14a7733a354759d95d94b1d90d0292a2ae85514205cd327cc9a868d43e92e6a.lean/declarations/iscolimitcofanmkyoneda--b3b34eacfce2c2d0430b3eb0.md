# isColimitCofanMkYoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2db13dc781fc9087ca69a793cc99086a42acf2bfe0aa39fe987a66b16cf97ac6",
  "kind": "def",
  "lexical_name": "isColimitCofanMkYoneda",
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
  "slug": "iscolimitcofanmkyoneda--b3b34eacfce2c2d0430b3eb0",
  "source": {
    "blob": "0f804a86dd8449d0cfb69472cbfd436d97805d34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 258,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantb14a7733a354759d95d94b1d90d0292a2ae85514205cd327cc9a868d43e92e6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3b34eacfce2c2d0430b3eb06aa1db1f7a9c5edb7aa4eae30ecc3ce2075ac809",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantb14a7733a354759d95d94b1d90d0292a2ae85514205cd327cc9a868d43e92e6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2db13dc781fc9087ca69a793cc99086a42acf2bfe0aa39fe987a66b16cf97ac6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitCofanMkYoneda {ι : Type*} (X : ι → C) {c : Cofan X}
    (H : (Sieve.ofArrows _ c.inj) ∈ J c.pt) [∀ (i : ι), Mono (c.inj i)]
    (hempty : (Y : C) → IsInitial Y → ⊥ ∈ J Y)
    (hdisj : ∀ {i j : ι} (_ : i ≠ j) {Y : C} (a : Y ⟶ X i)
      (b : Y ⟶ X j), a ≫ c.inj i = b ≫ c.inj j → Nonempty (IsInitial Y)) :
    IsColimit (Cofan.mk _ fun i ↦ J.yoneda.map (c.inj i)) := by
  have heq (s : Cofan fun i ↦ J.yoneda.obj (X i))
      {Y : C} {i j : ι} (a : Y ⟶ X i) (b : Y ⟶ X j) (hab : a ≫ c.inj i = b ≫ c.inj j) :
      (s.inj i).hom.app (op Y) a = (s.inj j).hom.app (op Y) b := by
    by_cases h : i = j
    · subst h
      rw [(cancel_mono _).mp hab]
    · obtain ⟨h⟩ := hdisj h a b hab
      have := Types.isTerminalEquivUnique _ (Sheaf.isTerminalOfBotCover s.pt _ (hempty Y h))
      exact Subsingleton.elim _ _
  refine Cofan.IsColimit.mk _ (fun s ↦ ⟨?_⟩) (fun s j ↦ ?_) fun s m hm ↦ ?_
  · refine (s.pt.2.isSheafFor _ H).extend ?_
    refine ⟨fun Y ↦ ↾fun g ↦ ((s.inj (Sieve.ofArrows.i g.2)).hom.app Y)
      (Sieve.ofArrows.h g.2), ?_⟩
    intro ⟨Y⟩ ⟨Z⟩ ⟨(g : Z ⟶ Y)⟩
    ext u
    simp only [Sieve.functor_obj, Sieve.generate_apply, Sieve.functor_map, Quiver.Hom.unop_op',
      TypeCat.Fun.toFun_apply, comp_apply, ConcreteCategory.hom_ofHom, TypeCat.Fun.coe_mk,
      ← heq s (g ≫ Sieve.ofArrows.h u.2)
      (Sieve.ofArrows.h <| Sieve.downward_closed _ u.2 g) (by simp)]
    exact ConcreteCategory.congr_hom ((s.inj _).hom.naturality g.op) _
  · ext : 1
    let u (j : ι) : CategoryTheory.yoneda.obj (X j) ⟶ (Sieve.ofArrows _ c.inj).functor :=
      (Sieve.ofArrows _ c.inj).toFunctor (c.inj j) (Sieve.ofArrows_mk _ _ j)
    have (j : ι) : u j ≫ (Sieve.ofArrows _ c.inj).functorInclusion =
      CategoryTheory.yoneda.map (c.inj j) := rfl
    dsimp
    simp only [← this, Category.assoc, Presieve.IsSheafFor.functorInclusion_comp_extend]
    ext Z (g : Z.unop ⟶ X j)
    have h : Sieve.ofArrows X c.inj (g ≫ c.inj j) :=
      Sieve.downward_closed _ (Sieve.ofArrows_mk _ _ j) _
    exact heq s (Sieve.ofArrows.h h) g (by simp)
  · ext : 1
    dsimp
    apply Presieve.IsSheafFor.unique_extend
    ext Y ⟨g, hg⟩
    simp [← hm (Sieve.ofArrows.i hg)]

/-- If the coproduct inclusions form a covering of `J` and coproducts are disjoint,
the yoneda embedding to `J`-sheaves preserves coproducts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantb14a7733a354759d95d94b1d90d0292a2ae85514205cd327cc9a868d43e92e6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantb14a7733a354759d95d94b1d90d0292a2ae85514205cd327cc9a868d43e92e6a.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f804a86dd8449d0cfb69472cbfd436d97805d34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
