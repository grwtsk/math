# isFiltered_structuredArrow_of_isFiltered_of_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "efc890983657a740e8a426453ff473cdca8c23e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3629f659-211e-c0fd-7557-030d358980bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad148664-d38f-cd16-3fc4-6e02517681ea",
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
  "slug": "isfiltered-structuredarrow-of-isfiltered-of-exists--e7fe2d409cef0cc2afcde658",
  "source": {
    "blob": "efc890983657a740e8a426453ff473cdca8c23e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 63,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7fe2d409cef0cc2afcde65847272593945cb7faab628893d35e182a90415c6a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad148664-d38f-cd16-3fc4-6e02517681ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFiltered_structuredArrow_of_isFiltered_of_exists [IsFilteredOrEmpty C] (d : D)
    (h₁ : ∃ c, Nonempty (d ⟶ F.obj c)) (h₂ : ∀ {c : C} (s s' : d ⟶ F.obj c),
      ∃ (c' : C) (t : c ⟶ c'), s ≫ F.map t = s' ≫ F.map t) :
    IsFiltered (StructuredArrow d F) := by
  have : Nonempty (StructuredArrow d F) := by
    obtain ⟨c, ⟨f⟩⟩ := h₁
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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efc890983657a740e8a426453ff473cdca8c23e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
