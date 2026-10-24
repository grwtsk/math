# of_specializingMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1402e1a84771dc857005db60977a95ece2808417",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8bad4e0f8c1197340b650876e11d890c7a83568a2a026a7fd84e5bb9ec01d1a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e1a2d56-254c-c459-319f-5745dbaf6878",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aac2fedd-50f3-b46b-fd33-262b532e30be",
  "kind": "lemma",
  "lexical_name": "of_specializingMap",
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
  "slug": "of-specializingmap--ad21185f5ffcdc53b220f00b",
  "source": {
    "blob": "1402e1a84771dc857005db60977a95ece2808417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 145,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant8bad4e0f8c1197340b650876e11d890c7a83568a2a026a7fd84e5bb9ec01d1a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad21185f5ffcdc53b220f00beb09d911190ee8731b893a1ebc1cdc4d3d6c2695",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant8bad4e0f8c1197340b650876e11d890c7a83568a2a026a7fd84e5bb9ec01d1a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aac2fedd-50f3-b46b-fd33-262b532e30be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_specializingMap (H : (topologically @SpecializingMap).universally f) :
    ValuativeCriterion.Existence f := by
  rintro ⟨R, K, i₁, i₂, ⟨w⟩⟩
  have : IsDomain (CommRingCat.of R) := ‹_›
  have : ValuationRing (CommRingCat.of R) := ‹_›
  let : Field (CommRingCat.of K) := ‹_›
  replace H := H (pullback.snd i₂ f) i₂ (pullback.fst i₂ f) (.of_hasPullback i₂ f)
  let lft := pullback.lift (Spec.map (CommRingCat.ofHom (algebraMap R K))) i₁ w.symm
  obtain ⟨x, h₁, h₂⟩ := @H (lft (closedPoint _)) _ (specializes_closedPoint (R := R) _)
  let e : ↧R ≅ (Spec ↧R).presheaf.stalk (pullback.fst i₂ f x) :=
    (stalkClosedPointIso ↧R).symm ≪≫
      (Spec ↧R).presheaf.stalkCongr (.of_eq h₂.symm)
  let α := e.hom ≫ (pullback.fst i₂ f).stalkMap x
  have : IsLocalHom e.hom.hom := isLocalHom_of_isIso e.hom
  have : IsLocalHom α.hom := inferInstanceAs
    (IsLocalHom (((pullback.fst i₂ f).stalkMap x).hom.comp e.hom.hom))
  let β := (pullback i₂ f).presheaf.stalkSpecializes h₁ ≫ Scheme.stalkClosedPointTo lft
  have hαβ : α ≫ β = CommRingCat.ofHom (algebraMap R K) := by
    simp only [CommRingCat.coe_of, Iso.trans_hom, Iso.symm_hom, TopCat.Presheaf.stalkCongr_hom,
      Category.assoc, α, e, β, stalkClosedPointIso_inv, StructureSheaf.toStalk]
    change (Scheme.ΓSpecIso ↧R).inv ≫ (Spec ↧R).presheaf.germ _ _ _ ≫ _ = _
    simp only [TopCat.Presheaf.germ_stalkSpecializes_assoc, Scheme.Hom.germ_stalkMap_assoc]
    -- `map_top` introduces defeq problems, according to `check_compositions`.
    -- This is probably the cause of the `erw` needed below.
    simp only [TopologicalSpace.Opens.map_top]
    rw [Scheme.germ_stalkClosedPointTo lft ⊤ trivial]
    erw [← Scheme.Hom.comp_app_assoc lft (pullback.fst i₂ f)]
    rw [pullback.lift_fst]
    simp
  have hbij := (bijective_rangeRestrict_comp_of_valuationRing (R := R) (K := K) α.hom β.hom
    (CommRingCat.hom_ext_iff.mp hαβ))
  let φ : (pullback i₂ f).presheaf.stalk x ⟶ ↧R := CommRingCat.ofHom <|
    (RingEquiv.ofBijective _ hbij).symm.toRingHom.comp β.hom.rangeRestrict
  have hαφ : α ≫ φ = 𝟙 _ := by ext x; exact (RingEquiv.ofBijective _ hbij).symm_apply_apply x
  have hαφ' : (pullback.fst i₂ f).stalkMap x ≫ φ = e.inv := by
    rw [← cancel_epi e.hom, ← Category.assoc, hαφ, e.hom_inv_id]
  have hφβ : φ ≫ CommRingCat.ofHom (algebraMap R K) = β :=
    hαβ ▸ CommRingCat.hom_ext (RingHom.ext fun x ↦ congr_arg Subtype.val
      ((RingEquiv.ofBijective _ hbij).apply_symm_apply (β.hom.rangeRestrict x)))
  refine ⟨⟨⟨Spec.map ((pullback.snd i₂ f).stalkMap x ≫ φ) ≫ X.fromSpecStalk _, ?_, ?_⟩⟩⟩
  · simp only [← Spec.map_comp_assoc, Category.assoc, hφβ]
    simp only [Spec.map_comp, Category.assoc, Scheme.SpecMap_stalkMap_fromSpecStalk,
      Scheme.SpecMap_stalkSpecializes_fromSpecStalk_assoc, β]
    -- This next line only fires as `rw`, not `simp`:
    rw [Scheme.Spec_stalkClosedPointTo_fromSpecStalk_assoc]
    simp [lft]
  · simp only [Spec.map_comp, Category.assoc, Scheme.SpecMap_stalkMap_fromSpecStalk,
      ← pullback.condition]
    rw [← Scheme.SpecMap_stalkMap_fromSpecStalk_assoc, ← Spec.map_comp_assoc, hαφ']
    simp only [Iso.trans_inv, TopCat.Presheaf.stalkCongr_inv, Iso.symm_inv, Spec.map_comp,
      Category.assoc, Scheme.SpecMap_stalkSpecializes_fromSpecStalk_assoc, e]
    rw [← Spec_stalkClosedPointIso, ← Spec.map_comp_assoc,
      Iso.inv_hom_id, Spec.map_id, Category.id_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant8bad4e0f8c1197340b650876e11d890c7a83568a2a026a7fd84e5bb9ec01d1a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant8bad4e0f8c1197340b650876e11d890c7a83568a2a026a7fd84e5bb9ec01d1a5.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1402e1a84771dc857005db60977a95ece2808417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
