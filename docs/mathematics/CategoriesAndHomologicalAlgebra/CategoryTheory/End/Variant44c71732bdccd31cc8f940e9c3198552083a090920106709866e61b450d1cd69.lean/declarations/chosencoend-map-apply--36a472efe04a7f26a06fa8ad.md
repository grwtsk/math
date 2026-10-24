# chosenCoend.map_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94479bbc-940d-c3d8-bae8-f941ba5a50d7",
  "kind": "lemma",
  "lexical_name": "chosenCoend.map_apply",
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
  "slug": "chosencoend-map-apply--36a472efe04a7f26a06fa8ad",
  "source": {
    "blob": "3b862bbc21cdf96eae1411b7d9702a9b1c38a7de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 108,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36a472efe04a7f26a06fa8ade3532b4ac670fdfecfdb16a565bcc49f86348148",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94479bbc-940d-c3d8-bae8-f941ba5a50d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma chosenCoend.map_apply {G : Jᵒᵖ ⥤ J ⥤ Type max w u} (f : F ⟶ G) (x : chosenCoend F) :
    dsimp% chosenCoend.map f x =
      Quot.lift (fun ⟨j, y⟩ ↦ Quot.mk _ ⟨j, (f.app _).app _ y⟩) (fun _ _ ↦ by
        rintro ⟨g, y⟩
        apply Quot.sound
        rw [Types.coendRel_iff]
        refine ⟨g, (f.app _).app _ y, ?_, ?_⟩
        · simp only [← NatTrans.comp_app_apply, f.naturality]
        · simp [← NatTrans.naturality_apply]) x :=
  rfl

namespace Types

variable {J : Type u} [Category.{v} J] (F : Jᵒᵖ ⥤ J ⥤ Type max w u)

/-- The end of a bifunctor valued in `Type`, defined as the subtype of compatible families. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b862bbc21cdf96eae1411b7d9702a9b1c38a7de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
