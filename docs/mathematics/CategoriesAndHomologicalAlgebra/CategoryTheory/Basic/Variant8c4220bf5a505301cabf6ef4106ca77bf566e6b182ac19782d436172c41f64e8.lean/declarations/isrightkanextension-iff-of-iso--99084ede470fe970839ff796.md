# isRightKanExtension_iff_of_iso₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba5c3520-4a65-6b0c-89f0-f536e59dbe7c",
  "kind": "lemma",
  "lexical_name": "isRightKanExtension_iff_of_iso₂",
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
  "slug": "isrightkanextension-iff-of-iso--99084ede470fe970839ff796",
  "source": {
    "blob": "679175ed8050b5804555b167c1a5934ac953b31d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 637,
    "line": 622,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4220bf5a505301cabf6ef4106ca77bf566e6b182ac19782d436172c41f64e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99084ede470fe970839ff796ee7a9e77a2c09dc2ca601c7ccbef93f309275fee",
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

Occurrence: `result:ba5c3520-4a65-6b0c-89f0-f536e59dbe7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 622–637.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isRightKanExtension_iff_of_iso₂ {F₁' F₂' : D ⥤ H} (α₁ : L ⋙ F₁' ⟶ F₁) (α₂ : L ⋙ F₂' ⟶ F₂)
    (e : F₁ ≅ F₂) (e' : F₁' ≅ F₂') (h : whiskerLeft L e'.hom ≫ α₂ = α₁ ≫ e.hom) :
    F₁'.IsRightKanExtension α₁ ↔ F₂'.IsRightKanExtension α₂ := by
  let eq := RightExtension.isUniversalEquivOfIso₂ (RightExtension.mk _ α₁)
    (RightExtension.mk _ α₂) e e' h
  constructor
  · exact fun _ => ⟨⟨eq.1 (isUniversalOfIsRightKanExtension F₁' α₁)⟩⟩
  · exact fun _ => ⟨⟨eq.2 (isUniversalOfIsRightKanExtension F₂' α₂)⟩⟩

end

section transitivity

/-- A variant of `LeftExtension.precomp` where we precompose, and then
"whisker" the diagram by a given natural transformation `(α : F₀ ⟶ L ⋙ F₁)` -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4220bf5a505301cabf6ef4106ca77bf566e6b182ac19782d436172c41f64e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4220bf5a505301cabf6ef4106ca77bf566e6b182ac19782d436172c41f64e8.lean#L622).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679175ed8050b5804555b167c1a5934ac953b31d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
