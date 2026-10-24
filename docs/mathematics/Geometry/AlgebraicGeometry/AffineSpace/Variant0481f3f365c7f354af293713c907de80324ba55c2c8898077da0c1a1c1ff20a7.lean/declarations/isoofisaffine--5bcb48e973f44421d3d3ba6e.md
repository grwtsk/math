# isoOfIsAffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc728cae0bcb3915741f31a52d8b524865edd6a32e3c488926c354bdc6937325",
  "kind": "def",
  "lexical_name": "isoOfIsAffine",
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
  "slug": "isoofisaffine--5bcb48e973f44421d3d3ba6e",
  "source": {
    "blob": "26ae68e236b2102eb2333471cf36cb0628dd49f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 170,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5bcb48e973f44421d3d3ba6e110432ddb6a6f0f8bbe5d85aabb60bdfafbb8af4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc728cae0bcb3915741f31a52d8b524865edd6a32e3c488926c354bdc6937325`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoOfIsAffine [IsAffine S] :
    𝔸(n; S) ≅ Spec <| .of <| MvPolynomial n Γ(S, ⊤) where
      hom := 𝔸(n; S).toSpecΓ ≫ Spec.map (CommRingCat.ofHom
        (eval₂Hom ((𝔸(n; S) ↘ S).appTop).hom (coord S)))
      inv := homOfVector (Spec.map (CommRingCat.ofHom C) ≫ S.isoSpec.inv)
        ((Scheme.ΓSpecIso ↧(MvPolynomial n Γ(S, ⊤))).inv ∘ MvPolynomial.X)
      hom_inv_id := by
        ext1
        · simp only [Category.assoc, homOfVector_over, Category.id_comp]
          rw [← Spec.map_comp_assoc, ← CommRingCat.ofHom_comp, eval₂Hom_comp_C,
            CommRingCat.ofHom_hom, ← Scheme.toSpecΓ_naturality_assoc]
          simp [Scheme.isoSpec]
        · simp
      inv_hom_id := by
        apply ext_of_isAffine
        simp only [Scheme.Hom.comp_base, TopologicalSpace.Opens.map_comp_obj,
          TopologicalSpace.Opens.map_top, Scheme.Hom.comp_app, Scheme.toSpecΓ_appTop,
          Scheme.ΓSpecIso_naturality, Category.assoc, Scheme.Hom.id_app, ← Iso.eq_inv_comp,
          Category.comp_id]
        ext : 1
        apply ringHom_ext'
        · change _ = (CommRingCat.ofHom C ≫ _).hom
          rw [CommRingCat.hom_comp, RingHom.comp_assoc, CommRingCat.hom_ofHom, eval₂Hom_comp_C,
            ← CommRingCat.hom_comp, ← CommRingCat.hom_ext_iff,
            ← cancel_mono (Scheme.ΓSpecIso _).hom]
          rw [← Scheme.Hom.comp_appTop, homOfVector_over, Scheme.Hom.comp_appTop]
          simp only [Category.assoc, Scheme.ΓSpecIso_naturality, CommRingCat.of_carrier,
            ← Scheme.toSpecΓ_appTop]
          rw [← Scheme.Hom.comp_appTop_assoc, Scheme.isoSpec, asIso_inv, IsIso.hom_inv_id]
          simp
        · intro i
          rw [CommRingCat.comp_apply, ConcreteCategory.hom_ofHom, coe_eval₂Hom]
          simp only [eval₂_X]
          exact homOfVector_appTop_coord _ _ _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26ae68e236b2102eb2333471cf36cb0628dd49f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
