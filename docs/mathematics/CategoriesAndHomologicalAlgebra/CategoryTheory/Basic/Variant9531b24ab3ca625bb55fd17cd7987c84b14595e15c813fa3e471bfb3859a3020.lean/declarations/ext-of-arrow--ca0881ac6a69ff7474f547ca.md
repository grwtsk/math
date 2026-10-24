# ext₂_of_arrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c26ad360015de270edede2cfd2eef795a656462e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 719,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/9531b24ab3ca625bb55fd17cd7987c84b14595e15c813fa3e471bfb3859a3020.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be6db39c-a7bf-506f-c1a1-a450a8c52e76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b87734f-263b-9914-ff22-99e9f8649f5e",
  "kind": "lemma",
  "lexical_name": "ext₂_of_arrow",
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
  "slug": "ext-of-arrow--ca0881ac6a69ff7474f547ca",
  "source": {
    "blob": "c26ad360015de270edede2cfd2eef795a656462e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 742,
    "line": 719,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9531b24ab3ca625bb55fd17cd7987c84b14595e15c813fa3e471bfb3859a3020.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca0881ac6a69ff7474f547ca7aab8bd95a854815925184b8c48d5241026ee302",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9531b24ab3ca625bb55fd17cd7987c84b14595e15c813fa3e471bfb3859a3020.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b87734f-263b-9914-ff22-99e9f8649f5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 719–742.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ext₂_of_arrow {f g : ComposableArrows C 2}
    (h₀₁ : Arrow.mk (f.map' 0 1) = Arrow.mk (g.map' 0 1))
    (h₁₂ : Arrow.mk (f.map' 1 2) = Arrow.mk (g.map' 1 2)) : f = g := by
  obtain ⟨x₀, x₁, x₂, f, f', rfl⟩ := mk₂_surjective f
  obtain ⟨y₀, y₁, y₂, g, g', rfl⟩ := mk₂_surjective g
  obtain rfl : x₀ = y₀ := congr_arg Arrow.leftFunc.obj h₀₁
  obtain rfl : x₁ = y₁ := congr_arg Arrow.rightFunc.obj h₀₁
  obtain rfl : x₂ = y₂ := congr_arg Arrow.rightFunc.obj h₁₂
  obtain rfl : f = g := by rwa [← Arrow.mk_inj]
  obtain rfl : f' = g' := by rwa [← Arrow.mk_inj]
  rfl

section

variable
  {f g : ComposableArrows C 3}
  (app₀ : f.obj' 0 ⟶ g.obj' 0) (app₁ : f.obj' 1 ⟶ g.obj' 1) (app₂ : f.obj' 2 ⟶ g.obj' 2)
  (app₃ : f.obj' 3 ⟶ g.obj' 3)
  (w₀ : f.map' 0 1 ≫ app₁ = app₀ ≫ g.map' 0 1 := by cat_disch)
  (w₁ : f.map' 1 2 ≫ app₂ = app₁ ≫ g.map' 1 2 := by cat_disch)
  (w₂ : f.map' 2 3 ≫ app₃ = app₂ ≫ g.map' 2 3 := by cat_disch)

set_option backward.privateInPublic true in
/-- Constructor for morphisms in `ComposableArrows C 3`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9531b24ab3ca625bb55fd17cd7987c84b14595e15c813fa3e471bfb3859a3020.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9531b24ab3ca625bb55fd17cd7987c84b14595e15c813fa3e471bfb3859a3020.lean#L719).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c26ad360015de270edede2cfd2eef795a656462e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
