# δ_δ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3e0a1a237d15d4ced108ca2051c972d4f7c075c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c08155f707703ce170ea57b5ba84ce1d912ae804f7509fe055ccafc59bca47b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:887c40a1-e20f-2eb8-24fb-beb6d6343060",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a86c8412-d1fd-02a4-5454-3040b14e047e",
  "kind": "lemma",
  "lexical_name": "δ_δ",
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
  "slug": "anonymous--8327d7d919953b691cbf3e3d",
  "source": {
    "blob": "a3e0a1a237d15d4ced108ca2051c972d4f7c075c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 157,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1c08155f707703ce170ea57b5ba84ce1d912ae804f7509fe055ccafc59bca47b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8327d7d919953b691cbf3e3d6616d7b0ebbd998e30ba3b67ba2e3681d62db1a7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1c08155f707703ce170ea57b5ba84ce1d912ae804f7509fe055ccafc59bca47b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a86c8412-d1fd-02a4-5454-3040b14e047e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma δ_δ {i j k l : ι} (f : i ⟶ j) (g : j ⟶ k) (h : k ⟶ l)
    (n₀ n₁ n₂ : ℤ) (hn₁ : n₀ + 1 = n₁ := by lia) (hn₂ : n₁ + 1 = n₂ := by lia) :
    X.δ g h n₀ n₁ hn₁ ≫ X.δ f g n₁ n₂ hn₂ = 0 := by
  have eq := X.δ_naturality f g f (g ≫ h) (𝟙 _) (twoδ₂Toδ₁ g h _ rfl) n₁ n₂
  rw [Functor.map_id, comp_id] at eq
  rw [← eq, X.zero₁_assoc g h _ rfl n₀ n₁ hn₁, zero_comp]

/-- The type of morphisms between spectral objects in abelian categories. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1c08155f707703ce170ea57b5ba84ce1d912ae804f7509fe055ccafc59bca47b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1c08155f707703ce170ea57b5ba84ce1d912ae804f7509fe055ccafc59bca47b.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3e0a1a237d15d4ced108ca2051c972d4f7c075c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
