# bijective_colimitTypePrecomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:875c925b-4674-62c5-690b-c7cf1a318644",
  "kind": "lemma",
  "lexical_name": "bijective_colimitTypePrecomp",
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
  "slug": "bijective-colimittypeprecomp--91ff8369a9b5ccdbfa44f317",
  "source": {
    "blob": "67828c6ebe8e02fe0c128ce4ecc7b4345ac96517",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Type/Variant2cfb2938713ba2de928d2436dcb8be24b88b088e7eb5d4e83e318f44e4206a3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91ff8369a9b5ccdbfa44f317a38e8692c34288d4deba6afd5d37404dee445053",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Type/Variant2cfb2938713ba2de928d2436dcb8be24b88b088e7eb5d4e83e318f44e4206a3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:875c925b-4674-62c5-690b-c7cf1a318644`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bijective_colimitTypePrecomp (F : C ⥤ D) (P : D ⥤ Type w) [F.Final] :
    Function.Bijective (F.colimitTypePrecomp (P := P)) := by
  refine ⟨?_, fun x ↦ ?_⟩
  · have h (Y : D) : ∃ (a : P.obj Y → (F ⋙ P).ColimitType), ∀ (j : StructuredArrow Y F),
        (F ⋙ P).ιColimitType j.right ∘ P.map j.hom = a := by
      apply constant_of_preserves_morphisms'
      intro Z₁ Z₂ f
      ext x
      dsimp
      rw [← (F ⋙ P).ιColimitType_map f.right, comp_map]
      simp [← comp_apply, ← Functor.map_comp]
    choose φ hφ using h
    let c : P.CoconeTypes :=
      { pt := (F ⋙ P).ColimitType
        ι Y := φ Y
        ι_naturality {Y₁ Y₂} f := by
          ext
          have X : StructuredArrow Y₂ F := Classical.arbitrary _
          rw [← hφ Y₂ X, ← hφ Y₁ ((StructuredArrow.map f).obj X)]
          simp }
    refine Function.RightInverse.injective (g := (P.descColimitType c)) (fun x ↦ ?_)
    obtain ⟨X, x, rfl⟩ := (F ⋙ P).ιColimitType_jointly_surjective x
    simp [c, ← hφ (F.obj X) (StructuredArrow.mk (𝟙 _))]
  · obtain ⟨X, x, rfl⟩ := P.ιColimitType_jointly_surjective x
    let Y : StructuredArrow X F := Classical.arbitrary _
    exact ⟨(F ⋙ P).ιColimitType Y.right (P.map Y.hom x), by simp⟩

end Functor

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Type/Variant2cfb2938713ba2de928d2436dcb8be24b88b088e7eb5d4e83e318f44e4206a3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Type/Variant2cfb2938713ba2de928d2436dcb8be24b88b088e7eb5d4e83e318f44e4206a3f.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67828c6ebe8e02fe0c128ce4ecc7b4345ac96517` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
