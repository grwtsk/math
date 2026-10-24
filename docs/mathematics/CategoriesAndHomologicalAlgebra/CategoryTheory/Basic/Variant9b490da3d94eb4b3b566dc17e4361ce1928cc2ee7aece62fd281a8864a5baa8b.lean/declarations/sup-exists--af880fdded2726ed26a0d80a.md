# sup_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d64fe23ec63c9fa62f9bbcec439ec5a474f2af51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b490da3d94eb4b3b566dc17e4361ce1928cc2ee7aece62fd281a8864a5baa8b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:263e3552-ceed-e4fc-875b-16a8adfbc0f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4fd511d4-8c7c-0a54-5e0a-689c58778b18",
  "kind": "theorem",
  "lexical_name": "sup_exists",
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
  "slug": "sup-exists--af880fdded2726ed26a0d80a",
  "source": {
    "blob": "d64fe23ec63c9fa62f9bbcec439ec5a474f2af51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 242,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b490da3d94eb4b3b566dc17e4361ce1928cc2ee7aece62fd281a8864a5baa8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af880fdded2726ed26a0d80af7780224ca0c0ef0a5818f4ad2e48b868cb34dde",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b490da3d94eb4b3b566dc17e4361ce1928cc2ee7aece62fd281a8864a5baa8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fd511d4-8c7c-0a54-5e0a-689c58778b18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_exists :
    ∃ (S : C) (T : ∀ {X : C}, X ∈ O → (X ⟶ S)),
      ∀ {X Y : C} (mX : X ∈ O) (mY : Y ∈ O) {f : X ⟶ Y},
        (⟨X, Y, mX, mY, f⟩ : Σ' (X Y : C) (_ : X ∈ O) (_ : Y ∈ O), X ⟶ Y) ∈ H →
          f ≫ T mY = T mX := by
  classical
  induction H using Finset.induction with
  | empty =>
    obtain ⟨S, f⟩ := sup_objs_exists O
    exact ⟨S, fun mX => (f mX).some, by rintro - - - - - ⟨⟩⟩
  | insert h' H' nmf h'' =>
    obtain ⟨X, Y, mX, mY, f⟩ := h'
    obtain ⟨S', T', w'⟩ := h''
    refine ⟨coeq (f ≫ T' mY) (T' mX), fun mZ => T' mZ ≫ coeqHom (f ≫ T' mY) (T' mX), ?_⟩
    intro X' Y' mX' mY' f' mf'
    rw [← Category.assoc]
    by_cases h : X = X' ∧ Y = Y'
    · rcases h with ⟨rfl, rfl⟩
      grind [coeq_condition]
    · rw [@w' _ _ mX' mY' f' _]
      apply Finset.mem_of_mem_insert_of_ne mf'
      contrapose h
      obtain ⟨rfl, h⟩ := h
      trivial

/-- An arbitrary choice of object "to the right"
of a finite collection of objects `O` and morphisms `H`,
making all the triangles commute.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b490da3d94eb4b3b566dc17e4361ce1928cc2ee7aece62fd281a8864a5baa8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b490da3d94eb4b3b566dc17e4361ce1928cc2ee7aece62fd281a8864a5baa8b.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d64fe23ec63c9fa62f9bbcec439ec5a474f2af51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
