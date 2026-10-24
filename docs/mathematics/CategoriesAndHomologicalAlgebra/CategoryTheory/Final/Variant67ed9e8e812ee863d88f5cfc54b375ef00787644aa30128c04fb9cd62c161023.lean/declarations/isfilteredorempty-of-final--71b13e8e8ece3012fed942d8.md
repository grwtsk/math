# IsFilteredOrEmpty.of_final

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
      "line": 999,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67ed9e8e812ee863d88f5cfc54b375ef00787644aa30128c04fb9cd62c161023.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c5ae219-92f8-c587-3d69-0eb7e96c4099",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da08ad3e-7f9d-b463-df15-7c115a3e1cd7",
  "kind": "theorem",
  "lexical_name": "IsFilteredOrEmpty.of_final",
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
  "slug": "isfilteredorempty-of-final--71b13e8e8ece3012fed942d8",
  "source": {
    "blob": "74a11bcbbb7a57c65121d2298588da40b6e9e79e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1025,
    "line": 999,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant67ed9e8e812ee863d88f5cfc54b375ef00787644aa30128c04fb9cd62c161023.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71b13e8e8ece3012fed942d8fa2f647681be9cd1ecf066c30d35e04d64938ad7",
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

Occurrence: `result:da08ad3e-7f9d-b463-df15-7c115a3e1cd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 999–1025.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsFilteredOrEmpty.of_final (F : C ⥤ D) [Final F] [IsFilteredOrEmpty C] :
    IsFilteredOrEmpty D where
  cocone_objs X Y := ⟨F.obj (IsFiltered.max (Final.lift F X) (Final.lift F Y)),
    Final.homToLift F X ≫ F.map (IsFiltered.leftToMax _ _),
    ⟨Final.homToLift F Y ≫ F.map (IsFiltered.rightToMax _ _), trivial⟩⟩
  cocone_maps {X Y} f g := by
    let P : StructuredArrow X F → Prop := fun h => ∃ (Z : C) (q₁ : h.right ⟶ Z)
      (q₂ : Final.lift F Y ⟶ Z), h.hom ≫ F.map q₁ = f ≫ Final.homToLift F Y ≫ F.map q₂
    rsuffices ⟨Z, q₁, q₂, h⟩ : Nonempty (P (StructuredArrow.mk (g ≫ Final.homToLift F Y)))
    · refine ⟨F.obj (IsFiltered.coeq q₁ q₂),
        Final.homToLift F Y ≫ F.map (q₁ ≫ IsFiltered.coeqHom q₁ q₂), ?_⟩
      conv_lhs => rw [IsFiltered.coeq_condition]
      simp only [F.map_comp, ← reassoc_of% h, StructuredArrow.mk_hom_eq_self, Category.assoc]
    have h₀ : P (StructuredArrow.mk (f ≫ Final.homToLift F Y)) := ⟨_, 𝟙 _, 𝟙 _, by simp⟩
    refine isPreconnected_induction P ?_ ?_ h₀ _
    · rintro U V h ⟨Z, q₁, q₂, hq⟩
      obtain ⟨W, q₃, q₄, hq'⟩ := IsFiltered.span q₁ h.right
      refine ⟨W, q₄, q₂ ≫ q₃, ?_⟩
      rw [F.map_comp, ← reassoc_of% hq, ← F.map_comp, hq', F.map_comp, StructuredArrow.w_assoc]
    · rintro U V h ⟨Z, q₁, q₂, hq⟩
      exact ⟨Z, h.right ≫ q₁, q₂, by simp only [F.map_comp, StructuredArrow.w_assoc, hq]⟩

/-- Final functors preserve filteredness.

This can be seen as a generalization of `IsFiltered.of_right_adjoint` (which states that right
adjoints preserve filteredness), as right adjoints are always final, see `final_of_adjunction`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant67ed9e8e812ee863d88f5cfc54b375ef00787644aa30128c04fb9cd62c161023.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant67ed9e8e812ee863d88f5cfc54b375ef00787644aa30128c04fb9cd62c161023.lean#L999).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74a11bcbbb7a57c65121d2298588da40b6e9e79e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
