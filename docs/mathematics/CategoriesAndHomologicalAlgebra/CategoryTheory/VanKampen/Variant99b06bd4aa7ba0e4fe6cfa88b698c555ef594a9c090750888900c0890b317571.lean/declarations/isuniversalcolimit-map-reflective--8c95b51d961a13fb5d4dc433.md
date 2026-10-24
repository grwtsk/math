# IsUniversalColimit.map_reflective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1777b4c9-e708-38f6-2371-320ecc29a4c1",
  "kind": "theorem",
  "lexical_name": "IsUniversalColimit.map_reflective",
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
  "slug": "isuniversalcolimit-map-reflective--8c95b51d961a13fb5d4dc433",
  "source": {
    "blob": "234334143a3f956799e30609ae546e4762ce41b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 264,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c95b51d961a13fb5d4dc43346eac5d6111de8f09de9255ea4c36109a1ecc562",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1777b4c9-e708-38f6-2371-320ecc29a4c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsUniversalColimit.map_reflective
    {Gl : C ⥤ D} {Gr : D ⥤ C} (adj : Gl ⊣ Gr) [Gr.Full] [Gr.Faithful]
    {F : J ⥤ D} {c : Cocone (F ⋙ Gr)}
    (H : IsUniversalColimit c)
    [∀ X (f : X ⟶ Gl.obj c.pt), HasPullback (Gr.map f) (adj.unit.app c.pt)]
    [∀ X (f : X ⟶ Gl.obj c.pt), PreservesLimit (cospan (Gr.map f) (adj.unit.app c.pt)) Gl] :
    IsUniversalColimit (Gl.mapCocone c) := by
  have := adj.rightAdjoint_preservesLimits
  have : PreservesColimitsOfSize.{u', v'} Gl := adj.leftAdjoint_preservesColimits
  intro F' c' α f h hα hc'
  have : HasPullback (Gl.map (Gr.map f)) (Gl.map (adj.unit.app c.pt)) :=
    ⟨⟨_, isLimitPullbackConeMapOfIsLimit _ pullback.condition
      (IsPullback.of_hasPullback _ _).isLimit⟩⟩
  let α' := α ≫ (Functor.associator _ _ _).hom ≫ whiskerLeft F adj.counit ≫ F.rightUnitor.hom
  have hα' : NatTrans.Equifibered α' := hα.comp (.of_isIso _)
  have hadj : ∀ X, Gl.map (adj.unit.app X) = inv (adj.counit.app _) := by
    intro X
    apply IsIso.eq_inv_of_inv_hom_id
    exact adj.left_triangle_components _
  have : ∀ X, IsIso (Gl.map (adj.unit.app X)) := by
    simp_rw [hadj]
    infer_instance
  have hα'' : ∀ j, Gl.map (Gr.map <| α'.app j) = adj.counit.app _ ≫ α.app j := by
    intro j
    rw [← cancel_mono (adj.counit.app <| F.obj j)]
    dsimp [α']
    simp only [Category.comp_id, Adjunction.counit_naturality_assoc, Category.id_comp,
      Adjunction.counit_naturality, Category.assoc, Functor.map_comp]
  have hc'' : ∀ j, α.app j ≫ Gl.map (c.ι.app j) = c'.ι.app j ≫ f := NatTrans.congr_app h
  let β := isoWhiskerLeft F' (asIso adj.counit) ≪≫ F'.rightUnitor
  let c'' : Cocone (F' ⋙ Gr) := by
    refine
    { pt := pullback (Gr.map f) (adj.unit.app _)
      ι := { app := fun j ↦ pullback.lift (Gr.map <| c'.ι.app j) (Gr.map (α'.app j) ≫ c.ι.app j) ?_
             naturality := ?_ } }
    · rw [← Gr.map_comp, ← hc'']
      simp_all [← adj.unit_naturality]
    · intro i j g
      dsimp [α']
      ext
      all_goals simp only [Category.comp_id, Category.id_comp, Category.assoc,
        ← Functor.map_comp, pullback.lift_fst, pullback.lift_snd, ← Functor.map_comp_assoc]
      · congr 1
        exact c'.w _
      · rw [α.naturality_assoc]
        dsimp
        rw [adj.counit_naturality, ← Category.assoc, Gr.map_comp_assoc]
        congr 1
        exact c.w _
  let cf : (Cocone.precompose β.hom).obj c' ⟶ Gl.mapCocone c'' := by
    refine { hom := pullback.lift ?_ f ?_ ≫ (PreservesPullback.iso _ _ _).inv, w := ?_ }
    · exact inv <| adj.counit.app c'.pt
    · simp [← cancel_mono (adj.counit.app <| Gl.obj c.pt)]
    · intro j
      rw [← Category.assoc, Iso.comp_inv_eq]
      ext
      all_goals simp only [c'', PreservesPullback.iso_hom_fst, PreservesPullback.iso_hom_snd,
          pullback.lift_fst, pullback.lift_snd, Category.assoc,
          Functor.mapCocone_ι_app, ← Gl.map_comp]
      · dsimp [β]
        simp only [IsIso.comp_inv_eq, adj.counit_naturality, Category.comp_id]
      · rw [Gl.map_comp, hα'', Category.assoc, hc'']
        dsimp [β]
        rw [Category.comp_id, Category.assoc]
  have :
      cf.hom ≫ (PreservesPullback.iso _ _ _).hom ≫ pullback.fst _ _ ≫ adj.counit.app _ = 𝟙 _ := by
    simp only [cf, IsIso.inv_hom_id, Iso.inv_hom_id_assoc, Category.assoc,
      pullback.lift_fst_assoc]
  have : IsIso cf := by
    apply @Cocone.cocone_iso_of_hom_iso (i := ?_)
    rw [← IsIso.eq_comp_inv] at this
    rw [this]
    infer_instance
  have ⟨Hc''⟩ := H c'' (whiskerRight α' Gr) (pullback.snd _ _) ?_ (hα'.whiskerRight Gr) ?_
  · exact ⟨IsColimit.precomposeHomEquiv β c' <|
      (isColimitOfPreserves Gl Hc'').ofIsoColimit (asIso cf).symm⟩
  · ext j
    dsimp [c'']
    simp only [pullback.lift_snd]
  · intro j
    apply IsPullback.of_right _ _ (IsPullback.of_hasPullback _ _)
    · dsimp [α', c'']
      simp only [Category.comp_id, Category.id_comp, Category.assoc, Functor.map_comp,
        pullback.lift_fst]
      rw [← Category.comp_id (Gr.map f)]
      refine ((hc' j).map Gr).paste_vert (IsPullback.of_vert_isIso ⟨?_⟩)
      rw [← adj.unit_naturality, Category.comp_id, ← Category.assoc,
        ← Category.id_comp (Gr.map ((Gl.mapCocone c).ι.app j))]
      congr 1
      rw [← cancel_mono (Gr.map (adj.counit.app (F.obj j)))]
      dsimp
      simp only [Category.comp_id, Adjunction.right_triangle_components, Category.id_comp,
        Category.assoc]
    · dsimp [c'']
      simp only [pullback.lift_snd]

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `234334143a3f956799e30609ae546e4762ce41b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
