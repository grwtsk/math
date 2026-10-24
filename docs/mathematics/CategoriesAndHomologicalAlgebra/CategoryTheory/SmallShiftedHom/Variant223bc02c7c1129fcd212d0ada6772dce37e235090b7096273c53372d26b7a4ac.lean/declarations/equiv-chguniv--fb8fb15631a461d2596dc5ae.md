# equiv_chgUniv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f41032b7-cb84-11bb-f059-39d39dce8c66",
  "kind": "lemma",
  "lexical_name": "equiv_chgUniv",
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
  "slug": "equiv-chguniv--fb8fb15631a461d2596dc5ae",
  "source": {
    "blob": "a0740226a4fa4be97d74d1b9512c251878af8a75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 389,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb8fb15631a461d2596dc5ae8d24db463ea79a5a05490889c821a4bd902c622d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f41032b7-cb84-11bb-f059-39d39dce8c66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma equiv_chgUniv (L : C ⥤ D) [L.IsLocalization W] [L.CommShift M] {X Y : C} {m : M}
    [HasSmallLocalizedShiftedHom.{w} W M X Y]
    [HasSmallLocalizedShiftedHom.{w''} W M X Y]
    (e : SmallShiftedHom.{w} W X Y m) :
    equiv W L (chgUniv.{w''} e) = equiv W L e := by
  dsimp [equiv]
  congr
  apply SmallHom.equiv_chgUniv

end ChangeOfUniverse

end SmallShiftedHom

end Localization

namespace LocalizerMorphism

open Localization

variable {C₁ : Type u₁} [Category.{v₁} C₁] {C₂ : Type u₂} [Category.{v₂} C₂]
  {D₁ : Type u₁'} [Category.{v₁'} D₁] {D₂ : Type u₂'} [Category.{v₂'} D₂]
  {W₁ : MorphismProperty C₁} {W₂ : MorphismProperty C₂}
  (Φ : LocalizerMorphism W₁ W₂)
  (L₁ : C₁ ⥤ D₁) (L₂ : C₂ ⥤ D₂) [L₁.IsLocalization W₁] [L₂.IsLocalization W₂]
  {M : Type w'} [AddMonoid M] [HasShift C₁ M] [HasShift C₂ M]
  [HasShift D₁ M] [HasShift D₂ M] [L₁.CommShift M] [L₂.CommShift M]
  [Φ.functor.CommShift M]
  {X₁ Y₁ Z₁ : C₁} {X₂ Y₂ Z₂ : C₂}
  [HasSmallLocalizedShiftedHom.{w} W₁ M X₁ Y₁] [HasSmallLocalizedShiftedHom.{w''} W₂ M X₂ X₂]
  [HasSmallLocalizedShiftedHom.{w''} W₂ M X₂ Y₂] [HasSmallLocalizedShiftedHom.{w''} W₂ M Y₂ Y₂]
  (eX : Φ.functor.obj X₁ ≅ X₂) (eY : Φ.functor.obj Y₁ ≅ Y₂)
  (eZ : Φ.functor.obj Z₁ ≅ Z₂)

/-- The action of a localizer morphism `Φ` on `SmallShiftedHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0740226a4fa4be97d74d1b9512c251878af8a75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
