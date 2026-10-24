# isFiltered_structuredArrow_of_isFiltered_of_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04d4843c-c092-f3c3-21c2-5e80fa48232c",
  "kind": "theorem",
  "lexical_name": "isFiltered_structuredArrow_of_isFiltered_of_exists",
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
  "slug": "isfiltered-structuredarrow-of-isfiltered-of-exists--d566d715761edaff4212d8e2",
  "source": {
    "blob": "3d4252f7c42e003d21e3a296f36a9ebba69691b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant159a1b594023dbe13f3281eca2e01e4723cd211da9020a0ba5c682bd33eb1210.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d566d715761edaff4212d8e253aea3a56900dda67bcc8a72bc73cc0900fcc6ba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant159a1b594023dbe13f3281eca2e01e4723cd211da9020a0ba5c682bd33eb1210.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04d4843c-c092-f3c3-21c2-5e80fa48232c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFiltered_structuredArrow_of_isFiltered_of_exists [IsFilteredOrEmpty C]
    (h₁ : ∀ d, ∃ c, Nonempty (d ⟶ F.obj c)) (h₂ : ∀ {d : D} {c : C} (s s' : d ⟶ F.obj c),
      ∃ (c' : C) (t : c ⟶ c'), s ≫ F.map t = s' ≫ F.map t) (d : D) :
    IsFiltered (StructuredArrow d F) := by
  have : Nonempty (StructuredArrow d F) := by
    obtain ⟨c, ⟨f⟩⟩ := h₁ d
    exact ⟨.mk f⟩
  suffices IsFilteredOrEmpty (StructuredArrow d F) from IsFiltered.mk
  refine ⟨fun f g => ?_, fun f g η μ => ?_⟩
  · obtain ⟨c, ⟨t, ht⟩⟩ := h₂ (f.hom ≫ F.map (IsFiltered.leftToMax f.right g.right))
        (g.hom ≫ F.map (IsFiltered.rightToMax f.right g.right))
    refine ⟨.mk (f.hom ≫ F.map (IsFiltered.leftToMax f.right g.right ≫ t)), ?_, ?_, trivial⟩
    · exact StructuredArrow.homMk (IsFiltered.leftToMax _ _ ≫ t) rfl
    · exact StructuredArrow.homMk (IsFiltered.rightToMax _ _ ≫ t) (by simpa using ht.symm)
  · refine ⟨.mk (f.hom ≫ F.map (η.right ≫ IsFiltered.coeqHom η.right μ.right)),
      StructuredArrow.homMk (IsFiltered.coeqHom η.right μ.right) (by simp), ?_⟩
    simpa using IsFiltered.coeq_condition _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant159a1b594023dbe13f3281eca2e01e4723cd211da9020a0ba5c682bd33eb1210.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant159a1b594023dbe13f3281eca2e01e4723cd211da9020a0ba5c682bd33eb1210.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d4252f7c42e003d21e3a296f36a9ebba69691b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
