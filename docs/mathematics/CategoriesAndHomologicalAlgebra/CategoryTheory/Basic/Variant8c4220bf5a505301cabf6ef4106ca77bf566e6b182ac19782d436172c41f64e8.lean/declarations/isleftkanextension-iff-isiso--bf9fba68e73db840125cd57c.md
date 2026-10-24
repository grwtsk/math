# isLeftKanExtension_iff_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e246dfa-7adf-724b-db6c-bec8251c2f2d",
  "kind": "lemma",
  "lexical_name": "isLeftKanExtension_iff_isIso",
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
  "slug": "isleftkanextension-iff-isiso--bf9fba68e73db840125cd57c",
  "source": {
    "blob": "679175ed8050b5804555b167c1a5934ac953b31d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 251,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4220bf5a505301cabf6ef4106ca77bf566e6b182ac19782d436172c41f64e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf9fba68e73db840125cd57c8fa181fca60d91c9b88dfdecbaa6a5f4c0f11e1a",
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

Occurrence: `result:8e246dfa-7adf-724b-db6c-bec8251c2f2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLeftKanExtension_iff_isIso {F' : D ⥤ H} {F'' : D ⥤ H} (φ : F' ⟶ F'')
    {L : C ⥤ D} {F : C ⥤ H} (α : F ⟶ L ⋙ F') (α' : F ⟶ L ⋙ F'')
    (comm : α ≫ whiskerLeft L φ = α') [F'.IsLeftKanExtension α] :
    F''.IsLeftKanExtension α' ↔ IsIso φ := by
  constructor
  · intro
    rw [F'.hom_ext_of_isLeftKanExtension α φ (leftKanExtensionUnique _ α _ α').hom
      (by simp [comm])]
    infer_instance
  · intro
    exact isLeftKanExtension_of_iso (asIso φ) α α' comm

end

/-- This property `HasRightKanExtension L F` holds when the functor `F` has a right
Kan extension along `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4220bf5a505301cabf6ef4106ca77bf566e6b182ac19782d436172c41f64e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4220bf5a505301cabf6ef4106ca77bf566e6b182ac19782d436172c41f64e8.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679175ed8050b5804555b167c1a5934ac953b31d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
