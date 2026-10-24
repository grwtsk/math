# existsUnique_section

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30872ff792de98589d5b2f6b53fbd772b422f62c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96ea4cb5-be7e-c123-51f4-da6a09a84b2c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:243c1816-f650-e74e-9e5c-7291997cc0b1",
  "kind": "lemma",
  "lexical_name": "existsUnique_section",
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
  "slug": "existsunique-section--a57f012d8a7913cefe2209f6",
  "source": {
    "blob": "30872ff792de98589d5b2f6b53fbd772b422f62c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 124,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a57f012d8a7913cefe2209f6c6fe02cb2530ee5401f74f67028c572e3f1fb77f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:243c1816-f650-e74e-9e5c-7291997cc0b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma existsUnique_section (hx : x.IsCompatible) (hY : J.CoversTop Y) (hF : IsSheaf J F) :
    ∃! (s : F.sections), ∀ (i : I), s.1 (Opposite.op (Y i)) = x i := by
  have H := (isSheaf_iff_isSheaf_of_type _ _).1 hF
  apply existsUnique_of_exists_of_unique
  · let s := fun (X : C) => (H _ (hY X)).amalgamate _
      (hx.familyOfElements_isCompatible X)
    have hs : ∀ {X : C} (i : I) (f : X ⟶ Y i), s X = F.map f.op (x i) := fun {X} i f => by
      have h := Presieve.IsSheafFor.valid_glue (H _ (hY X))
          (hx.familyOfElements_isCompatible _) (𝟙 _) ⟨i, ⟨f⟩⟩
      simp only [op_id, F.map_id, types_id_apply] at h
      exact h.trans (hx.familyOfElements_apply _ _ _)
    have hs' : ∀ {W X : C} (a : W ⟶ X) (i : I) (_ : W ⟶ Y i), F.map a.op (s X) = s W := by
      intro W X a i b
      rw [hs i b]
      exact (Presieve.IsSheafFor.valid_glue (H _ (hY X))
        (hx.familyOfElements_isCompatible _) a ⟨i, ⟨b⟩⟩).trans (familyOfElements_apply hx _ _ _)
    refine ⟨⟨fun X => s X.unop, ?_⟩, fun i => (hs i (𝟙 (Y i))).trans (by simp)⟩
    rintro ⟨Y₁⟩ ⟨Y₂⟩ ⟨f : Y₂ ⟶ Y₁⟩
    change F.map f.op (s Y₁) = s Y₂
    apply (Presieve.isSeparated_of_isSheaf J F H _ (hY Y₂)).ext
    rintro Z φ ⟨i, ⟨g⟩⟩
    rw [hs' φ i g, ← hs' (φ ≫ f) i g, op_comp, F.map_comp]
    rfl
  · intro y₁ y₂ hy₁ hy₂
    exact hY.sections_ext ⟨F, hF⟩ (fun i => by rw [hy₁, hy₂])

@[deprecated (since := "2024-12-17")] alias exists_unique_section := existsUnique_section

variable (hx : x.IsCompatible) (hY : J.CoversTop Y) (hF : IsSheaf J F)

/-- The section of a sheaf of types which lifts a compatible family of elements indexed
by objects which cover the terminal object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30872ff792de98589d5b2f6b53fbd772b422f62c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
