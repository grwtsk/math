# IsCardinalPure.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c5a8c159f695950895e4d61d83619d6515bc29904a3de2fdef6698530e8bdbb",
  "kind": "instance",
  "lexical_name": "IsCardinalPure.map",
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
  "slug": "iscardinalpure-map--af5a131c3035f7282b0dc335",
  "source": {
    "blob": "3888b6569a56ee30e9a3a46f7dfa0d131bf93e2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 148,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variantb4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af5a131c3035f7282b0dc335e946877f5e4f352249a184116899ec54816701d1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variantb4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c5a8c159f695950895e4d61d83619d6515bc29904a3de2fdef6698530e8bdbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsCardinalPure.map
    [IsCardinalAccessibleCategory C κ] [F.IsCardinalAccessible κ]
    {X Y : C} (f : X ⟶ Y) [IsCardinalPure κ f] :
    IsCardinalPure κ (F.map f) where
  exists_of_commSq {X' Y' t l r _ _ } sq := by
    /- Write X and Y as κ-filtered colimits of κ-presentable objects `X ≅ colimᵢ pXᵢ` and
    `Y ≅ colimⱼ pYⱼ`. -/
    obtain ⟨I, _, _, ⟨pX⟩⟩ :=
      (isCardinalFilteredGenerator_isCardinalPresentable C κ).exists_colimitsOfShape X
    obtain ⟨J, _, _, ⟨pY⟩⟩ :=
      (isCardinalFilteredGenerator_isCardinalPresentable C κ).exists_colimitsOfShape Y
    -- `F` is κ-accessible so the presentations of `X` and `Y` are preserved by `F`.
    have := F.preservesColimitsOfShape_of_isCardinalAccessible_of_essentiallySmall κ I
    have := F.preservesColimitsOfShape_of_isCardinalAccessible_of_essentiallySmall κ J
    -- `X'` is κ-presentable so `l : X' ⟶ F.obj X` factors through some `F.obj pXᵢ`.
    obtain ⟨i, l', hl'⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ
      (isColimitOfPreserves F pX.isColimit) l
    have : isCardinalPresentable C κ (pX.diag.obj i) := pX.prop_diag_obj i
    /- `Y'` is also κ-presentable so `l : Y' ⟶ F.obj Y` factors through some `F.obj pYⱼ₀`,
    and the composite `pXᵢ ⟶ X ⟶ Y` also lifts to some pYⱼ₁, taking the filtered max, one gets an
    index `j` such that `l` factors through `F.obj pYⱼ` and a lift `pXᵢ ⟶ pYⱼ` of `f`. -/
    obtain ⟨j, r', a, hr', ha⟩ :
        ∃ (j : J) (r' : Y' ⟶ F.obj (pY.diag.obj j)) (a : pX.diag.obj i ⟶ pY.diag.obj j),
          r' ≫ F.map (pY.ι.app j) = r ∧ a ≫ pY.ι.app j = pX.ι.app i ≫ f := by
      obtain ⟨j₀, r', hr'⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ
        (isColimitOfPreserves F pY.isColimit) r
      obtain ⟨j₁, a, ha⟩ :=
        IsCardinalPresentable.exists_hom_of_isColimit κ pY.isColimit (pX.ι.app i ≫ f)
      have := isFiltered_of_isCardinalFiltered J κ
      refine ⟨IsFiltered.max j₀ j₁, r' ≫ F.map (pY.diag.map (IsFiltered.leftToMax j₀ j₁)),
        a ≫ pY.diag.map (IsFiltered.rightToMax j₀ j₁), ?_, ?_⟩
      all_goals simpa [← Functor.map_comp, pY.w]
    /- Using again that `X'` is κ-presentable, the composites `X' ⟶ Y' ⟶ F.obj pYⱼ` and
    `X' ⟶ F.obj pXᵢ ⟶ F.obj pYⱼ` are equalized for some index `k ≥ j`. -/
    obtain ⟨k, b, hb⟩ := IsCardinalPresentable.exists_eq_of_isColimit' κ
      (isColimitOfPreserves F pY.isColimit) (t ≫ r') (l' ≫ F.map a) (by
        dsimp
        rw [Category.assoc, Category.assoc, hr', ← Functor.map_comp, ha,
          Functor.map_comp, reassoc_of% dsimp% hl', sq.w])
    have : isCardinalPresentable C κ (pY.diag.obj k) := pY.prop_diag_obj k
    /- Now one can use purity of `f` to get a morphism `pYₖ ⟶ X`, and the composite
    `Y' ⟶ F.obj pYₖ ⟶ F.obj X` is the desired lift. -/
    obtain ⟨ρ, hρ⟩ := IsCardinalPure.exists_of_commSq κ (f := f) (t := a ≫ pY.diag.map b)
      (l := pX.ι.app i) (r := pY.ι.app k) ⟨by simpa [pY.w]⟩
    simp only [Category.assoc] at hb hρ
    refine ⟨r' ≫ F.map (pY.diag.map b) ≫ F.map ρ, ?_⟩
    rw [reassoc_of% hb, ← Functor.map_comp, ← Functor.map_comp, hρ, dsimp% hl']

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variantb4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variantb4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3888b6569a56ee30e9a3a46f7dfa0d131bf93e2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
