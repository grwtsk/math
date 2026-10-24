# bijective_sectionsPrecomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0558f770fe22ee9bd8177e2cad1ee4aad14a63c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0b85eeb053754ad1d98d99dcafea86c58acbed9b1c4775fd0068a201a890155.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2397b37-e366-f0ad-8f05-8ab70d0a7d51",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c09e438c-e3e9-7e9c-b8c6-4d88d29a3a83",
  "kind": "lemma",
  "lexical_name": "bijective_sectionsPrecomp",
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
  "slug": "bijective-sectionsprecomp--d82777be422913541772a1d1",
  "source": {
    "blob": "0558f770fe22ee9bd8177e2cad1ee4aad14a63c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Type/Variantb0b85eeb053754ad1d98d99dcafea86c58acbed9b1c4775fd0068a201a890155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d82777be422913541772a1d1823e82b6fd523aa9a2c451850ce5c2018c87c20e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Type/Variantb0b85eeb053754ad1d98d99dcafea86c58acbed9b1c4775fd0068a201a890155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c09e438c-e3e9-7e9c-b8c6-4d88d29a3a83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bijective_sectionsPrecomp (F : C ⥤ D) (P : D ⥤ Type w) [F.Initial] :
    Function.Bijective (F.sectionsPrecomp (P := P)) := by
  refine ⟨fun s₁ s₂ h ↦ ?_, fun t ↦ ?_⟩
  · ext Y
    let X : CostructuredArrow F Y := Classical.arbitrary _
    have := congr_fun (congr_arg Subtype.val h) X.left
    have h₁ := s₁.property X.hom
    have h₂ := s₂.property X.hom
    dsimp at this h₁ h₂
    rw [← h₁, this, h₂]
  · have h (Y : D) : ∃ (a : P.obj Y),
        ∀ (j : CostructuredArrow F Y), P.map j.hom (t.val j.left) = a := by
      apply constant_of_preserves_morphisms'
      intro Z₁ Z₂ φ
      dsimp
      rw [← t.property φ.left]
      dsimp
      rw [← comp_apply, ← Functor.map_comp, CostructuredArrow.w]
    choose val hval using h
    refine ⟨⟨val, fun {Y₁ Y₂} f ↦ ?_⟩, ?_⟩
    · let X : CostructuredArrow F Y₁ := Classical.arbitrary _
      simp [← hval Y₁ X, ← hval Y₂ ((CostructuredArrow.map f).obj X)]
    · ext X : 2
      simpa using (hval (F.obj X) (CostructuredArrow.mk (𝟙 _))).symm

/-- Given `P : D ⥤ Type w` and `F : C ⥤ D`, this is the obvious map
`(F ⋙ P).ColimitType → P.ColimitType`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Type/Variantb0b85eeb053754ad1d98d99dcafea86c58acbed9b1c4775fd0068a201a890155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Type/Variantb0b85eeb053754ad1d98d99dcafea86c58acbed9b1c4775fd0068a201a890155.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0558f770fe22ee9bd8177e2cad1ee4aad14a63c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
