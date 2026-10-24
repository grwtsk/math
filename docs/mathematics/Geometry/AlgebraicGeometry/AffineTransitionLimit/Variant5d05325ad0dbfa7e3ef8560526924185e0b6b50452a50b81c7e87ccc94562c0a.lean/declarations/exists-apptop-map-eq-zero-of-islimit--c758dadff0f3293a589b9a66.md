# exists_appTop_map_eq_zero_of_isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 739,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db8d3edb-d25d-b2b1-7c04-fe1b3cfb69b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8de1140e-92c9-b729-8a0d-8f41783a3bff",
  "kind": "lemma",
  "lexical_name": "exists_appTop_map_eq_zero_of_isLimit",
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
  "slug": "exists-apptop-map-eq-zero-of-islimit--c758dadff0f3293a589b9a66",
  "source": {
    "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 788,
    "line": 739,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c758dadff0f3293a589b9a665a6d5974e3f8c7dc2474f76972c8a57bcb272f6f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8de1140e-92c9-b729-8a0d-8f41783a3bff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 739–788.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_appTop_map_eq_zero_of_isLimit [∀ {i j} (f : i ⟶ j), IsAffineHom (D.map f)]
    {i : I} [CompactSpace (D.obj i)] (s : Γ(D.obj i, ⊤)) (hs : (c.π.app i).appTop s = 0) :
    ∃ (j : I) (f : j ⟶ i), (D.map f).appTop s = 0 := by
  classical
  have (x : D.obj i) : ∃ (U : (D.obj i).Opens) (hU : IsAffineOpen U)
      (hU : x ∈ U) (j : I) (f : j ⟶ i), (D.map f).app U (s |_ U) = 0 := by
    obtain ⟨_, ⟨U, hU : IsAffineOpen U, rfl⟩, hxU, -⟩ :=
      (D.obj i).isBasis_affineOpens.exists_subset_of_mem_open (Set.mem_univ x) isOpen_univ
    have (j : Over i) : IsAffine ((opensDiagram D i U).obj j) := hU.preimage (D.map _)
    obtain ⟨j, f, hj⟩ := exists_appTop_map_eq_zero_of_isAffine_of_isLimit _ _
      (isLimitOpensCone D c hc i U) (.mk (𝟙 i)) (((opensDiagramι D i U).app _).appTop s) (by
        convert congr((c.pt.presheaf.map (homOfLE le_top).op).hom $hs)
        · simp [Scheme.Hom.app_eq_appLE, Scheme.Hom.resLE_appLE, ← ConcreteCategory.comp_apply]; rfl
        · simp)
    refine ⟨U, hU, hxU, j.left, j.hom, ?_⟩
    have hf : f.left = j.hom := by simpa using Over.w f
    let t' : Γ(D.map j.hom ⁻¹ᵁ U, ⊤) ⟶ Γ(D.obj j.left, D.map j.hom ⁻¹ᵁ U) :=
      (D.obj _).presheaf.map (eqToHom ((D.map j.hom ⁻¹ᵁ U).ι_image_top.symm)).op
    convert! congr(t' $hj)
    · dsimp [TopCat.Presheaf.restrictOpen, TopCat.Presheaf.restrict]
      simp only [Scheme.Hom.app_eq_appLE, homOfLE_leOfHom, ← ConcreteCategory.comp_apply, hf,
        Scheme.Hom.map_appLE, TopologicalSpace.Opens.map_top, Scheme.Hom.resLE_appLE]
      simp [t']
    · simp
  choose U hU hxU j f H using this
  obtain ⟨t, ht⟩ := CompactSpace.elim_nhds_subcover (U ·) (fun x ↦ (U x).2.mem_nhds (hxU x))
  obtain ⟨k, fk, hk⟩ := IsCofiltered.inf_exists (insert i <| t.image j) (by
    exact t.attach.image fun x ↦ ⟨j x.1, i, Finset.mem_insert_of_mem
      (Finset.mem_image_of_mem _ x.2), by simp, f x.1⟩)
  refine ⟨k, fk (by simp), ?_⟩
  apply (D.obj k).IsSheaf.section_ext
  rintro x -
  obtain ⟨l, hl, hlU⟩ := Set.mem_iUnion₂.mp (ht.ge (Set.mem_univ ((D.map (fk (by simp))).base x)))
  refine ⟨D.map (fk (by simp)) ⁻¹ᵁ U l, le_top, hlU, ?_⟩
  dsimp
  simp only [homOfLE_leOfHom, map_zero]
  have h₁ : fk (by simp) = fk (Finset.mem_insert_of_mem (Finset.mem_image_of_mem _ hl)) ≫ f l :=
    (hk _ (by simp) (Finset.mem_image.mpr ⟨⟨l, hl⟩, by simp, by simp⟩)).symm
  have h₂ : D.map (fk (Finset.mem_insert_self _ _)) ⁻¹ᵁ U l ≤ D.map (fk (Finset.mem_insert_of_mem
      (Finset.mem_image_of_mem _ hl))) ⁻¹ᵁ D.map (f l) ⁻¹ᵁ U l := by
    rw [← Scheme.Hom.comp_preimage, ← D.map_comp, h₁]
  convert! congr((D.map (fk _)).appLE _ _ h₂ $(H l))
  · dsimp [TopCat.Presheaf.restrictOpen, TopCat.Presheaf.restrict]
    simp [Scheme.Hom.app_eq_appLE, ← ConcreteCategory.comp_apply, -CommRingCat.hom_comp,
      Scheme.Hom.appLE_comp_appLE, ← Functor.map_comp, h₁]
  · simp

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
include hc in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean#L739).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d722dad9181cfd6d7afa3fa039a957385fa07fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
