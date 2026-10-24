# exists_etale_isCompl_of_quasiFiniteAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2abac08e-507c-e885-9939-c7e8ddd20722",
  "kind": "theorem",
  "lexical_name": "exists_etale_isCompl_of_quasiFiniteAt",
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
  "slug": "exists-etale-iscompl-of-quasifiniteat--78a18804b203b867e3e200a8",
  "source": {
    "blob": "7f3bd6ad2dda371d0d02b07cc727d4afeb8fccbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 57,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variantbb225f2b8c2255def91b59c305e9919221dfbb744d57232d9598eb851b10307b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78a18804b203b867e3e200a83586bc122a5a3a88abc28bf69bd3015bed7a9d7d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variantbb225f2b8c2255def91b59c305e9919221dfbb744d57232d9598eb851b10307b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2abac08e-507c-e885-9939-c7e8ddd20722`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_etale_isCompl_of_quasiFiniteAt [IsSeparated f]
    {x : X} {s : S} (h : f x = s) (hx : f.QuasiFiniteAt x) :
    ∃ (U : Scheme) (g : U ⟶ S), Etale g ∧ s ∈ Set.range g ∧
    ∃ (V W : (pullback f g).Opens) (v : V), IsCompl V W ∧ IsFinite (V.ι ≫ pullback.snd f g) ∧
      pullback.fst f g v.1 = x := by
  obtain ⟨_, ⟨U, hU, rfl⟩, hxU, -⟩ := S.isBasis_affineOpens.exists_subset_of_mem_open
    (Set.mem_univ (f x)) isOpen_univ
  obtain ⟨_, ⟨V, hV, rfl⟩, hxV, hUV : V ≤ f ⁻¹ᵁ U⟩ :=
    X.isBasis_affineOpens.exists_subset_of_mem_open hxU (f ⁻¹ᵁ U).2
  have : (f.appLE U V hUV).hom.FiniteType := f.finiteType_appLE hU hV hUV
  algebraize [(f.appLE U V hUV).hom]
  have : (hV.primeIdealOf ⟨x, hxV⟩).asIdeal.LiesOver (hU.primeIdealOf ⟨f x, hxU⟩).asIdeal := by
    suffices hU.primeIdealOf ⟨f x, hxU⟩ = Spec.map (f.appLE U V hUV) (hV.primeIdealOf ⟨x, hxV⟩) from
      ⟨congr(($this).1)⟩
    apply hU.isoSpec.inv.homeomorph.injective
    apply Subtype.ext
    simp only [IsAffineOpen.primeIdealOf, Scheme.Hom.homeomorph_apply,
      ← Scheme.Hom.comp_apply, ← Scheme.Opens.ι_apply, IsAffineOpen.isoSpec_hom]
    simp
  have : Algebra.QuasiFiniteAt Γ(S, U) (hV.primeIdealOf ⟨x, hxV⟩).asIdeal :=
    hx.quasiFiniteAt hV hU hUV hxV
  obtain ⟨R, _, _, _, P, _, _, e, _, P', _, _, hP', heP', -, _, -⟩ :=
    Algebra.exists_etale_isIdempotentElem_forall_liesOver_eq
    (hU.primeIdealOf ⟨f x, hxU⟩).asIdeal (hV.primeIdealOf ⟨x, hxV⟩).asIdeal
  have : (algebraMap R (Localization.Away e)).Finite := RingHom.finite_algebraMap.mpr ‹_›
  let φ : Γ(S, U) ⟶ ↧R := CommRingCat.ofHom <| algebraMap Γ(S, U) R
  have hφ : φ.hom.Etale := RingHom.etale_algebraMap.mpr ‹_›
  have : Etale (Spec.map φ) := HasRingHomProperty.Spec_iff.mpr hφ
  let e₁ : Spec ↧(R ⊗ Γ(X, V)) ≅ pullback (Spec.map (f.appLE U V hUV)) (Spec.map φ) :=
    (pullbackSpecIso _ _ _).symm ≪≫ pullbackSymmetry _ _
  have he₁ : e₁.hom ≫ pullback.fst _ _ =
      Spec.map (CommRingCat.ofHom Algebra.TensorProduct.includeRight.toRingHom) := by
    dsimp [e₁, RingHom.algebraMap_toAlgebra]
    rw [Category.assoc, pullbackSymmetry_hom_comp_fst]
    exact pullbackSpecIso_inv_snd ..
  let g : Spec ↧(R ⊗[Γ(S, U)] Γ(X, V)) ⟶ pullback f (Spec.map φ ≫ hU.fromSpec) :=
    e₁.hom ≫ pullback.map _ _ _ _ hV.fromSpec (𝟙 _) hU.fromSpec
      (IsAffineOpen.SpecMap_appLE_fromSpec ..) (by simp)
  let W₁ := g ''ᵁ PrimeSpectrum.basicOpen e
  have : IsFinite (W₁.ι ≫ pullback.snd f _) := by
    let ι : Spec ↧(Localization.Away e) ⟶ pullback f (Spec.map φ ≫ hU.fromSpec) :=
      Spec.map (CommRingCat.ofHom <| algebraMap _ _) ≫ g
    have : ι.opensRange = W₁ := by
      simp only [Scheme.Hom.opensRange_comp, ι, W₁]
      congr 1
      exact TopologicalSpace.Opens.ext <| PrimeSpectrum.localization_away_comap_range _ _
    rw [← this, ← MorphismProperty.cancel_left_of_respectsIso @IsFinite
      (Scheme.Hom.isoOpensRange _).hom]
    have H : (pullbackSpecIso _ R _).inv ≫ pullback.fst _ (Spec.map (f.appLE U V hUV)) = _ :=
      pullbackSpecIso_inv_fst ..
    simpa [Scheme.Hom.isoOpensRange, ι, g, e₁, RingHom.algebraMap_toAlgebra, φ, H,
      ← Spec.map_comp, IsFinite.SpecMap_iff]
  have : IsFinite W₁.ι := .of_comp _ (pullback.snd f _)
  let W₂ : (pullback f (Spec.map φ ≫ hU.fromSpec)).Opens :=
    ⟨W₁ᶜ, by simpa using W₁.ι.isClosedMap.isClosed_range⟩
  refine ⟨Spec ↧R, Spec.map φ ≫ hU.fromSpec, inferInstance,
    ⟨⟨P, ‹_›⟩, ?_⟩, W₁, W₂, ⟨g ⟨P', ‹_›⟩, ?_⟩, ?_, ‹_›, ?_⟩
  · dsimp [Spec.map_apply]
    convert! hU.fromSpec_primeIdealOf ⟨f x, hxU⟩
    · exact PrimeSpectrum.ext (Ideal.over_def _ _).symm
    · simp [h]
  · exact ⟨⟨P', ‹_›⟩, heP', rfl⟩
  · simp [isCompl_iff, disjoint_iff, codisjoint_iff, W₂, SetLike.ext'_iff]
  · trans hV.fromSpec ⟨P'.comap Algebra.TensorProduct.includeRight.toRingHom, inferInstance⟩
    · simp [← Scheme.Hom.comp_apply, -Scheme.Hom.comp_base, g, reassoc_of% he₁]; rfl
    convert! hV.fromSpec_primeIdealOf ⟨x, hxV⟩

variable {X Y S : Scheme.{u}} (f : X ⟶ Y)

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variantbb225f2b8c2255def91b59c305e9919221dfbb744d57232d9598eb851b10307b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variantbb225f2b8c2255def91b59c305e9919221dfbb744d57232d9598eb851b10307b.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f3bd6ad2dda371d0d02b07cc727d4afeb8fccbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
