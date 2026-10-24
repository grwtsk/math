# ker_ideal_of_isPullback_of_isOpenImmersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71041d48-1a24-696c-aaf7-6b14a0a58756",
  "kind": "lemma",
  "lexical_name": "ker_ideal_of_isPullback_of_isOpenImmersion",
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
  "slug": "ker-ideal-of-ispullback-of-isopenimmersion--a1295d72f462172e711a888f",
  "source": {
    "blob": "f0917130fca86cf11a93191f469396b67259022b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 730,
    "line": 711,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant3b6226030e9e1358d11c7322c869d1c6f6570ab311f225c942b00dfbb30db6f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1295d72f462172e711a888f8ca38d0ad98177c70669a06a3dc2818d96d34514",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant3b6226030e9e1358d11c7322c869d1c6f6570ab311f225c942b00dfbb30db6f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71041d48-1a24-696c-aaf7-6b14a0a58756`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 711–730.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ker_ideal_of_isPullback_of_isOpenImmersion {X Y U V : Scheme.{u}}
    (f : X ⟶ Y) (f' : U ⟶ V) (iU : U ⟶ X) (iV : V ⟶ Y) [IsOpenImmersion iV]
    [QuasiCompact f] (H : IsPullback f' iU iV f) (W) :
    f'.ker.ideal W =
      (f.ker.ideal ⟨iV ''ᵁ W, W.2.image_of_isOpenImmersion _⟩).comap (iV.appIso W).inv.hom := by
  have : QuasiCompact f' := MorphismProperty.of_isPullback H.flip inferInstance
  have : IsOpenImmersion iU := MorphismProperty.of_isPullback H inferInstance
  ext x
  have : iU ''ᵁ f' ⁻¹ᵁ W = f ⁻¹ᵁ iV ''ᵁ W :=
    IsOpenImmersion.image_preimage_eq_preimage_image_of_isPullback H W
  let e : Γ(X, f ⁻¹ᵁ iV ''ᵁ W) ≅ Γ(U, f' ⁻¹ᵁ W) :=
    X.presheaf.mapIso (eqToIso this).op ≪≫ iU.appIso _
  have : (iV.appIso W).inv ≫ f.app _ = f'.app W ≫ e.inv := by
    rw [Iso.inv_comp_eq, ← Category.assoc, Iso.eq_comp_inv]
    simp only [Scheme.Hom.app_eq_appLE, Iso.trans_hom, Functor.mapIso_hom, Iso.op_hom, eqToIso.hom,
      eqToHom_op, Scheme.Hom.appIso_hom', Scheme.Hom.map_appLE, e, Scheme.appLE_comp_appLE, H.w]
  simp only [Scheme.Hom.ker_apply, RingHom.mem_ker, Ideal.mem_comap, ← RingHom.comp_apply,
    ← CommRingCat.hom_comp, Scheme.Hom.appIso_inv_app, this]
  simpa using (map_eq_zero_iff _ (ConcreteCategory.bijective_of_isIso e.inv).1).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant3b6226030e9e1358d11c7322c869d1c6f6570ab311f225c942b00dfbb30db6f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant3b6226030e9e1358d11c7322c869d1c6f6570ab311f225c942b00dfbb30db6f1.lean#L711).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0917130fca86cf11a93191f469396b67259022b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
