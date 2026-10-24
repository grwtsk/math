# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc6714a4a47c0c4cd0f26fc40527b2171b91901ca2fdd7c1666518520cbf4f9c",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ffbba403901fcbc72081d30c",
  "source": {
    "blob": "c01295b1dc3a498f42a51e28c160231afd3a4311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 439,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ffbba403901fcbc72081d30cfc0f3e3d8b80ab8127b8150b512a29c684301e50",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc6714a4a47c0c4cd0f26fc40527b2171b91901ca2fdd7c1666518520cbf4f9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : Category (Localization W) where
  Hom X Y := Localization.Hom W X Y
  id _ := Localization.Hom.mk (ofHom W (𝟙 _))
  comp f g := f.comp g
  comp_id := by
    rintro (X Y : C) f
    obtain ⟨z, rfl⟩ := Hom.mk_surjective f
    change (Hom.mk z).comp (Hom.mk (ofHom W (𝟙 Y))) = Hom.mk z
    rw [Hom.comp_eq, comp_eq z (ofHom W (𝟙 Y)) (ofInv z.s z.hs) (by simp)]
    dsimp [comp₀]
    simp only [comp_id, id_comp]
  id_comp := by
    rintro (X Y : C) f
    obtain ⟨z, rfl⟩ := Hom.mk_surjective f
    change (Hom.mk (ofHom W (𝟙 X))).comp (Hom.mk z) = Hom.mk z
    rw [Hom.comp_eq, comp_eq (ofHom W (𝟙 X)) z (ofHom W z.f) (by simp)]
    dsimp
    simp only [comp₀, id_comp, comp_id]
  assoc := by
    rintro (X₁ X₂ X₃ X₄ : C) f₁ f₂ f₃
    obtain ⟨z₁, rfl⟩ := Hom.mk_surjective f₁
    obtain ⟨z₂, rfl⟩ := Hom.mk_surjective f₂
    obtain ⟨z₃, rfl⟩ := Hom.mk_surjective f₃
    change ((Hom.mk z₁).comp (Hom.mk z₂)).comp (Hom.mk z₃) =
      (Hom.mk z₁).comp ((Hom.mk z₂).comp (Hom.mk z₃))
    rw [Hom.comp_eq z₁ z₂, Hom.comp_eq z₂ z₃]
    obtain ⟨z₁₂, fac₁₂⟩ := exists_leftFraction (RightFraction.mk z₁.s z₁.hs z₂.f)
    obtain ⟨z₂₃, fac₂₃⟩ := exists_leftFraction (RightFraction.mk z₂.s z₂.hs z₃.f)
    obtain ⟨z', fac⟩ := exists_leftFraction (RightFraction.mk z₁₂.s z₁₂.hs z₂₃.f)
    dsimp at fac₁₂ fac₂₃ fac
    rw [comp_eq z₁ z₂ z₁₂ fac₁₂, comp_eq z₂ z₃ z₂₃ fac₂₃, comp₀, comp₀,
      Hom.comp_eq, Hom.comp_eq,
      comp_eq _ z₃ (mk z'.f (z₂₃.s ≫ z'.s) (W.comp_mem _ _ z₂₃.hs z'.hs))
        (by dsimp; rw [assoc, reassoc_of% fac₂₃, fac]),
      comp_eq z₁ _ (mk (z₁₂.f ≫ z'.f) z'.s z'.hs)
        (by dsimp; rw [assoc, ← reassoc_of% fac₁₂, fac])]
    simp

variable (W) in
/-- The localization functor to the constructed localized category for a morphism property
that has left calculus of fractions. -/
@[simps obj]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c01295b1dc3a498f42a51e28c160231afd3a4311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
