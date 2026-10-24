# isRightKanExtension_iff_precomp_equivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9fc0cef-4dc1-260d-a66e-4dac88202d73",
  "kind": "lemma",
  "lexical_name": "isRightKanExtension_iff_precomp_equivalence",
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
  "slug": "isrightkanextension-iff-precomp-equivalence--95e10d9b448bc9737ca899ee",
  "source": {
    "blob": "679175ed8050b5804555b167c1a5934ac953b31d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 843,
    "line": 821,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4220bf5a505301cabf6ef4106ca77bf566e6b182ac19782d436172c41f64e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95e10d9b448bc9737ca899eecdae6dc7a89e21850a9efd40dc6d5e882d8c4291",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4220bf5a505301cabf6ef4106ca77bf566e6b182ac19782d436172c41f64e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9fc0cef-4dc1-260d-a66e-4dac88202d73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 821–843.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isRightKanExtension_iff_precomp_equivalence
    {F₁' : D ⥤ H} {L₁ : C ⥤ D} {F₁ : C ⥤ H} (α₁ : L₁ ⋙ F₁' ⟶ F₁)
    {F₂' : D' ⥤ H} {L₂ : C' ⥤ D'} {F₂ : C' ⥤ H} (α₂ : L₂ ⋙ F₂' ⟶ F₂)
    {G : C ⥤ C'} {G' : D ⥤ D'} [G.IsEquivalence] [G'.IsEquivalence]
    (iso : G ⋙ L₂ ≅ L₁ ⋙ G') (e : F₁ ≅ G ⋙ F₂) (e' : G' ⋙ F₂' ≅ F₁')
    (h : α₁ = whiskerLeft L₁ e'.inv ≫ (associator _ _ _).inv ≫ whiskerRight iso.inv _ ≫
      (associator _ _ _).hom ≫ whiskerLeft G α₂ ≫ e.inv := by cat_disch) :
    F₂'.IsRightKanExtension α₂ ↔ F₁'.IsRightKanExtension α₁ := by
  simp only [isRightKanExtension_iff]
  let Φ : L₂.RightExtension F₂ ⥤ L₁.RightExtension F₁ :=
    CostructuredArrow.map₂ (F := (whiskeringLeft _ _ _).obj G')
      (G := (whiskeringLeft _ _ _).obj G)
      ((whiskeringLeft C D' H).mapIso iso).inv e.inv
  exact Equiv.nonempty_congr ((IsTerminal.isTerminalIffObj Φ _).trans
    (IsTerminal.equivOfIso (CostructuredArrow.isoMk e'.symm).symm))

section Colimit

variable (F' : D ⥤ H) {L : C ⥤ D} {F : C ⥤ H} (α : F ⟶ L ⋙ F') [F'.IsLeftKanExtension α]

/-- Construct a cocone for a left Kan extension `F' : D ⥤ H` of `F : C ⥤ H` along a functor
`L : C ⥤ D` given a cocone for `F`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4220bf5a505301cabf6ef4106ca77bf566e6b182ac19782d436172c41f64e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4220bf5a505301cabf6ef4106ca77bf566e6b182ac19782d436172c41f64e8.lean#L821).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679175ed8050b5804555b167c1a5934ac953b31d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
