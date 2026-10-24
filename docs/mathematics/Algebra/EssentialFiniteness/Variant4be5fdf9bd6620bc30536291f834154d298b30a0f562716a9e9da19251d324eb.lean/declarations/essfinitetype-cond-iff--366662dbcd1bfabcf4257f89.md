# essFiniteType_cond_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de9a8b813eaa714eb7ed203c3f7fcead56b239f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92f365a0-1a0a-19c4-6f9e-210c391f563f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4b612b5-e51c-24d5-ed8e-9404d5f948f2",
  "kind": "lemma",
  "lexical_name": "essFiniteType_cond_iff",
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
  "slug": "essfinitetype-cond-iff--366662dbcd1bfabcf4257f89",
  "source": {
    "blob": "de9a8b813eaa714eb7ed203c3f7fcead56b239f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 65,
    "path": "GRWTSK/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:366662dbcd1bfabcf4257f89c23ea85fdfe048036d322c13fcac341bf0f2ca9f",
  "verification": {
    "reference": "docs/verification/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4b612b5-e51c-24d5-ed8e-9404d5f948f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma essFiniteType_cond_iff (σ : Finset S) :
    IsLocalization ((IsUnit.submonoid S).comap (algebraMap (adjoin R (σ : Set S)) S)) S ↔
    (∀ s : S, ∃ t ∈ Algebra.adjoin R (σ : Set S),
      IsUnit t ∧ s * t ∈ Algebra.adjoin R (σ : Set S)) := by
  constructor <;> intro hσ
  · intro s
    obtain ⟨⟨⟨x, hx⟩, ⟨t, ht⟩, ht'⟩, h⟩ := hσ.2 s
    exact ⟨t, ht, ht', h ▸ hx⟩
  · constructor
    · exact fun y ↦ y.prop
    · intro s
      obtain ⟨t, ht, ht', h⟩ := hσ s
      exact ⟨⟨⟨_, h⟩, ⟨t, ht⟩, ht'⟩, rfl⟩
    · intros x y e
      exact ⟨1, by simpa using Subtype.ext e⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de9a8b813eaa714eb7ed203c3f7fcead56b239f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
