# IsVanKampenColimit.map_reflective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:220f5612-e6c9-80c3-004a-9739627b7a9a",
  "kind": "theorem",
  "lexical_name": "IsVanKampenColimit.map_reflective",
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
  "slug": "isvankampencolimit-map-reflective--e92189112a49787eac121094",
  "source": {
    "blob": "84c446cc78642d32e394722750dfdfa6594c127b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 403,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e92189112a49787eac1210947630e65b1ab1c8548d3465343e4e4076bc1157e6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:220f5612-e6c9-80c3-004a-9739627b7a9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsVanKampenColimit.map_reflective [HasColimitsOfShape J C]
    {Gl : C ⥤ D} {Gr : D ⥤ C} (adj : Gl ⊣ Gr) [Gr.Full] [Gr.Faithful]
    {F : J ⥤ D} {c : Cocone (F ⋙ Gr)} (H : IsVanKampenColimit c)
    [∀ X (f : X ⟶ Gl.obj c.pt), HasPullback (Gr.map f) (adj.unit.app c.pt)]
    [∀ X (f : X ⟶ Gl.obj c.pt), PreservesLimit (cospan (Gr.map f) (adj.unit.app c.pt)) Gl]
    [∀ X i (f : X ⟶ c.pt), PreservesLimit (cospan f (c.ι.app i)) Gl] :
    IsVanKampenColimit (Gl.mapCocone c) := by
  have := adj.rightAdjoint_preservesLimits
  have : PreservesColimitsOfSize.{u', v'} Gl := adj.leftAdjoint_preservesColimits
  intro F' c' α f h hα
  refine ⟨?_, H.isUniversal.map_reflective adj c' α f h hα⟩
  intro ⟨hc'⟩ j
  let α' := α ≫ (Functor.associator _ _ _).hom ≫ whiskerLeft F adj.counit ≫ F.rightUnitor.hom
  have hα' : NatTrans.Equifibered α' := hα.comp (NatTrans.equifibered_of_isIso _)
  have hα'' : ∀ j, Gl.map (Gr.map <| α'.app j) = adj.counit.app _ ≫ α.app j := by
    intro j
    rw [← cancel_mono (adj.counit.app <| F.obj j)]
    dsimp [α']
    simp only [Category.comp_id, Adjunction.counit_naturality_assoc, Category.id_comp,
      Adjunction.counit_naturality, Category.assoc, Functor.map_comp]
  let β := isoWhiskerLeft F' (asIso adj.counit) ≪≫ F'.rightUnitor
  let hl := (IsColimit.precomposeHomEquiv β c').symm hc'
  let hr := isColimitOfPreserves Gl (colimit.isColimit <| F' ⋙ Gr)
  have : α.app j = β.inv.app _ ≫ Gl.map (Gr.map <| α'.app j) := by
    rw [hα'']
    simp [β]
  rw [this]
  have : f = (hl.coconePointUniqueUpToIso hr).hom ≫
    Gl.map (colimit.desc _ ⟨_, whiskerRight α' Gr ≫ c.2⟩) := by
    symm
    convert @IsColimit.coconePointUniqueUpToIso_hom_desc _ _ _ _ ((F' ⋙ Gr) ⋙ Gl)
      (Gl.mapCocone ⟨_, (whiskerRight α' Gr ≫ c.2 :)⟩) _ _ hl hr using 2
    · apply hr.hom_ext
      intro j
      rw [hr.fac, Functor.mapCocone_ι_app, ← Gl.map_comp, colimit.cocone_ι, colimit.ι_desc]
      rfl
    · clear_value α'
      apply hl.hom_ext
      intro j
      rw [hl.fac]
      dsimp [β]
      simp only [Category.comp_id, hα'', Category.assoc, Gl.map_comp]
      congr 1
      exact (NatTrans.congr_app h j).symm
  rw [this]
  have := ((H (colimit.cocone <| F' ⋙ Gr) (whiskerRight α' Gr)
    (colimit.desc _ ⟨_, whiskerRight α' Gr ≫ c.2⟩) ?_ (hα'.whiskerRight Gr)).mp
    ⟨(getColimitCocone <| F' ⋙ Gr).2⟩ j).map Gl
  · convert IsPullback.paste_vert _ this
    refine IsPullback.of_vert_isIso ⟨?_⟩
    rw [← IsIso.inv_comp_eq, ← Category.assoc, NatIso.inv_inv_app]
    exact IsColimit.comp_coconePointUniqueUpToIso_hom hl hr _
  · clear_value α'
    ext j
    simp

end reflective

section Initial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84c446cc78642d32e394722750dfdfa6594c127b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
