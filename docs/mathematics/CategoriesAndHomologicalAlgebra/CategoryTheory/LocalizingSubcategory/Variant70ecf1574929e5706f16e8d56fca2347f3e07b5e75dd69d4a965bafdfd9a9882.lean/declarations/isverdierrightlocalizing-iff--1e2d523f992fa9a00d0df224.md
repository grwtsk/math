# isVerdierRightLocalizing_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a615e6a12a50a7150c4611b1a585d5c408236b5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70ecf1574929e5706f16e8d56fca2347f3e07b5e75dd69d4a965bafdfd9a9882.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40813394-3290-0fa0-8931-93d8a6a0ca96",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad6cf20e-2ba6-d327-a061-d578e5a13d0f",
  "kind": "lemma",
  "lexical_name": "isVerdierRightLocalizing_iff",
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
  "slug": "isverdierrightlocalizing-iff--1e2d523f992fa9a00d0df224",
  "source": {
    "blob": "a615e6a12a50a7150c4611b1a585d5c408236b5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 101,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variant70ecf1574929e5706f16e8d56fca2347f3e07b5e75dd69d4a965bafdfd9a9882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e2d523f992fa9a00d0df224a04d77967f85b3a9f35a1c6098b7f984fd473798",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variant70ecf1574929e5706f16e8d56fca2347f3e07b5e75dd69d4a965bafdfd9a9882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad6cf20e-2ba6-d327-a061-d578e5a13d0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isVerdierRightLocalizing_iff [A.IsTriangulated] [B.IsTriangulated]
    [B.IsClosedUnderIsomorphisms] :
    A.IsVerdierRightLocalizing B ↔
      ∀ ⦃X Y : C⦄ (s : X ⟶ Y) (_ : A X) (_ : B.trW s),
        ∃ (Z : C) (s' : X ⟶ Z) (b : Y ⟶ Z), A Z ∧ (A ⊓ B).trW s' ∧ s ≫ b = s' := by
  refine ⟨fun _ X Y s hX hs ↦ ?_, fun hA ↦ ⟨fun {X Y} f hX hY ↦ ?_⟩⟩
  · rw [ObjectProperty.trW_iff'] at hs
    obtain ⟨W, a, b, hT, hW⟩ := hs
    obtain ⟨W', c, d, h₁, h₂, fac⟩ := IsVerdierRightLocalizing.fac a hW hX
    obtain ⟨U, hU, e, f, hT'⟩ := A.distinguished_cocone_triangle d h₁ hX
    obtain ⟨g, hg, _⟩ := Pretriangulated.complete_distinguished_triangle_morphism _ _ hT hT'
      c (𝟙 _) (by cat_disch)
    refine ⟨U, e, g, hU, ?_, by cat_disch⟩
    rw [ObjectProperty.trW_iff']
    exact ⟨_, _, _, hT', h₁, h₂⟩
  · obtain ⟨Z, s, b, hT⟩ := Pretriangulated.distinguished_cocone_triangle f
    have hs : B.trW s := by
      rw [trW_iff']
      exact ⟨_, _, _, hT, hX⟩
    obtain ⟨W, s', g, hW, hs', fac⟩ := hA s hY hs
    obtain ⟨U, hU, a, c, hT'⟩ := A.distinguished_cocone_triangle₁ s' hY hW
    obtain ⟨t, ht, ht'⟩ :=
      complete_distinguished_triangle_morphism₁ _ _ hT hT' (𝟙 Y) g (by cat_disch)
    exact ⟨U, t, a, hU, (B.trW_iff_of_distinguished' _ hT').1 (trW_monotone (by simp) _ hs'),
      by cat_disch⟩

variable {A B} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variant70ecf1574929e5706f16e8d56fca2347f3e07b5e75dd69d4a965bafdfd9a9882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variant70ecf1574929e5706f16e8d56fca2347f3e07b5e75dd69d4a965bafdfd9a9882.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a615e6a12a50a7150c4611b1a585d5c408236b5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
