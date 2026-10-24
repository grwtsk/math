# final_of_final_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74a11bcbbb7a57c65121d2298588da40b6e9e79e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 880,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67ed9e8e812ee863d88f5cfc54b375ef00787644aa30128c04fb9cd62c161023.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7da3e3d0-b37a-c478-4580-874dadc51c49",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c188330a-7599-3ae9-463e-a98e8eaca006",
  "kind": "theorem",
  "lexical_name": "final_of_final_comp",
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
  "slug": "final-of-final-comp--37e79745314ba93eb3c9388f",
  "source": {
    "blob": "74a11bcbbb7a57c65121d2298588da40b6e9e79e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 897,
    "line": 880,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant67ed9e8e812ee863d88f5cfc54b375ef00787644aa30128c04fb9cd62c161023.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37e79745314ba93eb3c9388f582bce997174de774e5e54a46a79d5752dbcc40b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant67ed9e8e812ee863d88f5cfc54b375ef00787644aa30128c04fb9cd62c161023.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c188330a-7599-3ae9-463e-a98e8eaca006`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 880–897.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem final_of_final_comp [hF : Final F] [hFG : Final (F ⋙ G)] : Final G := by
  let s₁ : C ≌ AsSmall.{max u₁ v₁ u₂ v₂ u₃ v₃} C := AsSmall.equiv
  let s₂ : D ≌ AsSmall.{max u₁ v₁ u₂ v₂ u₃ v₃} D := AsSmall.equiv
  let s₃ : E ≌ AsSmall.{max u₁ v₁ u₂ v₂ u₃ v₃} E := AsSmall.equiv
  let _i : s₁.inverse ⋙ (F ⋙ G) ⋙ s₃.functor ≅
      (s₁.inverse ⋙ F ⋙ s₂.functor) ⋙ (s₂.inverse ⋙ G ⋙ s₃.functor) :=
    isoWhiskerLeft (s₁.inverse ⋙ F) (isoWhiskerRight s₂.unitIso (G ⋙ s₃.functor))
  rw [final_iff_comp_equivalence G s₃.functor, final_iff_equivalence_comp s₂.inverse,
    final_iff_isIso_colimit_pre]
  rw [final_iff_comp_equivalence F s₂.functor, final_iff_equivalence_comp s₁.inverse,
    final_iff_isIso_colimit_pre] at hF
  rw [final_iff_comp_equivalence (F ⋙ G) s₃.functor, final_iff_equivalence_comp s₁.inverse,
    final_natIso_iff _i, final_iff_isIso_colimit_pre] at hFG
  intro H
  replace hFG := hFG H
  rw [← colimit.pre_pre] at hFG
  exact IsIso.of_isIso_comp_left (colimit.pre _ (s₁.inverse ⋙ F ⋙ s₂.functor)) _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant67ed9e8e812ee863d88f5cfc54b375ef00787644aa30128c04fb9cd62c161023.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant67ed9e8e812ee863d88f5cfc54b375ef00787644aa30128c04fb9cd62c161023.lean#L880).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74a11bcbbb7a57c65121d2298588da40b6e9e79e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
