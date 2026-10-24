# liftr_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17ed4e364a2fb6984086b1c44df55c025c11692a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a9b4f244a9da2842daf2c584f6b78bebe5fc928131bdfec7b21d0c2dc3bafe9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c1cd3c1-be80-1ded-225c-5f80b9e5b5f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:123ef00e-d39f-2371-1a0e-3fb7e8a8477c",
  "kind": "theorem",
  "lexical_name": "liftr_iff",
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
  "slug": "liftr-iff--907c6bf51ab2e231f7f9cde9",
  "source": {
    "blob": "17ed4e364a2fb6984086b1c44df55c025c11692a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 121,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a9b4f244a9da2842daf2c584f6b78bebe5fc928131bdfec7b21d0c2dc3bafe9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:907c6bf51ab2e231f7f9cde93ea09d24b9f147db80af716ec00943b9dcb34bb0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a9b4f244a9da2842daf2c584f6b78bebe5fc928131bdfec7b21d0c2dc3bafe9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:123ef00e-d39f-2371-1a0e-3fb7e8a8477c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftr_iff {α : Type u} (r : α → α → Prop) (x y : F α) :
    Liftr r x y ↔ ∃ a f₀ f₁, x = abs (.mk a f₀) ∧ y = abs (.mk a f₁) ∧ ∀ i, r (f₀ i) (f₁ i) := by
  constructor
  · rintro ⟨u, rfl, rfl⟩
    cases h : repr u with | mk a f
    refine ⟨a, fun i => (f i).1.1, fun i => (f i).1.2, ?_, ?_, fun i => (f i).2⟩
    · rw [← abs_repr u, h, ← abs_map]
      rfl
    · rw [← abs_repr u, h, ← abs_map]
      rfl
  · rintro ⟨a, f₀, f₁, rfl, rfl, h⟩
    refine ⟨abs (.mk a fun i => ⟨(f₀ i, f₁ i), h i⟩), ?_, ?_⟩
    · rw [← abs_map]
      rfl
    · rw [← abs_map]
      rfl

end

/-
Think of trees in the `W` type corresponding to `P` as representatives of elements of the
least fixed point of `F`, and assign a canonical representative to each equivalence class
of trees.
-/
/-- does recursion on `q.P.W` using `g : F α → α` rather than `g : P α → α` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a9b4f244a9da2842daf2c584f6b78bebe5fc928131bdfec7b21d0c2dc3bafe9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a9b4f244a9da2842daf2c584f6b78bebe5fc928131bdfec7b21d0c2dc3bafe9.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17ed4e364a2fb6984086b1c44df55c025c11692a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
