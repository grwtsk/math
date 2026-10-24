# ideal_le_ker_glueDataObjι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca041811-8da9-c9e7-e886-43731784ba50",
  "kind": "lemma",
  "lexical_name": "ideal_le_ker_glueDataObjι",
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
  "slug": "ideal-le-ker-gluedataobj--379b6dd45abebfcbe1901378",
  "source": {
    "blob": "f9f6f205d5b57b4704bac886301b2187c990b442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 166,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant87bbb8e34cc599cfd31e56e1d1ab847bbd1278856e9a047a3c6504c6192ae99e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:379b6dd45abebfcbe19013784e4e995a2da8f72f32d5bdcc83778159d06315e6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Subscheme/Variant87bbb8e34cc599cfd31e56e1d1ab847bbd1278856e9a047a3c6504c6192ae99e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca041811-8da9-c9e7-e886-43731784ba50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ideal_le_ker_glueDataObjι (U V : X.affineOpens) :
    I.ideal V ≤ RingHom.ker (U.1.ι.app V.1 ≫ (I.glueDataObjι U).app _).hom := by
  intro x hx
  apply (I.glueDataObj U).IsSheaf.section_ext
  intro p hp
  obtain ⟨f, g, hfg, hf⟩ := exists_basicOpen_le_affine_inter U.2 V.2 (I.glueDataObjι U p).1
      ⟨(I.glueDataObjι U p).2, hp⟩
  refine ⟨(I.glueDataObjι U ⁻¹ᵁ U.1.ι ⁻¹ᵁ X.basicOpen f),
    fun x hx ↦ X.basicOpen_le g (hfg ▸ hx), hf, ?_⟩
  have := Hom.isIso_app (I.glueDataObjMap (X.affineBasicOpen_le f))
    (I.glueDataObjι U ⁻¹ᵁ U.1.ι ⁻¹ᵁ X.basicOpen f) (by rw [opensRange_glueDataObjMap])
  apply ((ConcreteCategory.isIso_iff_bijective _).mp this).1
  simp only [map_zero, ← RingHom.comp_apply,
    ← CommRingCat.hom_comp, Category.assoc]
  simp only [Scheme.Hom.app_eq_appLE, homOfLE_leOfHom, Scheme.Hom.map_appLE,
    Scheme.Hom.appLE_comp_appLE, Category.assoc, glueDataObjMap_glueDataObjι_assoc]
  rw [Scheme.Hom.appLE]
  have H : (X.homOfLE (X.basicOpen_le f) ≫ U.1.ι) ⁻¹ᵁ V.1 = ⊤ := by
    simp only [Scheme.homOfLE_ι, ← top_le_iff]
    exact fun x _ ↦ (hfg.trans_le (X.basicOpen_le g)) x.2
  simp only [Scheme.Hom.comp_app, Scheme.Opens.ι_app, Scheme.homOfLE_app, ← Functor.map_comp_assoc,
    Scheme.Hom.app_eq _ H, Scheme.Opens.toScheme_presheaf_map, ← Functor.map_comp, Category.assoc]
  simp only [CommRingCat.hom_comp, RingHom.comp_apply]
  convert RingHom.map_zero _
  rw [← RingHom.mem_ker, ker_glueDataObjι_appTop, ← Ideal.mem_comap, Ideal.comap_comap,
    ← CommRingCat.hom_comp]
  simp only [homOfLE_leOfHom, Scheme.Hom.comp_base,
    TopologicalSpace.Opens.map_comp_obj, eqToHom_op, eqToHom_unop, ← Functor.map_comp,
    Scheme.Opens.topIso_hom, Category.assoc]
  exact I.ideal_le_comap_ideal (U := X.affineBasicOpen f) (V := V)
    (hfg.trans_le (X.basicOpen_le g)) hx

/-- (Implementation) The intersections `Spec Γ(𝒪ₓ/I, U) ∩ V` useful for gluing. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Subscheme/Variant87bbb8e34cc599cfd31e56e1d1ab847bbd1278856e9a047a3c6504c6192ae99e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant87bbb8e34cc599cfd31e56e1d1ab847bbd1278856e9a047a3c6504c6192ae99e.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9f6f205d5b57b4704bac886301b2187c990b442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
