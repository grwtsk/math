# complete_distinguished_triangle_morphism₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e28435f51d41f5749433645689aec8adb76dd399",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28660c10-4b12-c7ad-1bc3-8168d51e5629",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:233103fd-2318-5e29-e2a6-c4214f7188e7",
  "kind": "lemma",
  "lexical_name": "complete_distinguished_triangle_morphism₁",
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
  "slug": "complete-distinguished-triangle-morphism--439720d9f452538b7ec87271",
  "source": {
    "blob": "e28435f51d41f5749433645689aec8adb76dd399",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 185,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:439720d9f452538b7ec87271a4fea7dcc786aaa72244e16eee037f3f3b2891a6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:233103fd-2318-5e29-e2a6-c4214f7188e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma complete_distinguished_triangle_morphism₁ (T₁ T₂ : Triangle C)
    (hT₁ : T₁ ∈ distTriang C) (hT₂ : T₂ ∈ distTriang C) (b : T₁.obj₂ ⟶ T₂.obj₂)
    (c : T₁.obj₃ ⟶ T₂.obj₃) (comm : T₁.mor₂ ≫ c = b ≫ T₂.mor₂) :
    ∃ (a : T₁.obj₁ ⟶ T₂.obj₁), T₁.mor₁ ≫ b = a ≫ T₂.mor₁ ∧
      T₁.mor₃ ≫ a⟦(1 : ℤ)⟧' = c ≫ T₂.mor₃ := by
  obtain ⟨a, ⟨ha₁, ha₂⟩⟩ := complete_distinguished_triangle_morphism _ _
    (rot_of_dist_triangle _ hT₁) (rot_of_dist_triangle _ hT₂) b c comm
  refine' ⟨(shiftFunctor C (1 : ℤ)).preimage a, ⟨_, _⟩⟩
  · apply (shiftFunctor C (1 : ℤ)).map_injective
    dsimp at ha₂
    rw [neg_comp, comp_neg, neg_inj] at ha₂
    simpa only [Functor.map_comp, Functor.image_preimage] using ha₂
  · simpa only [Functor.image_preimage] using ha₁

/-- A commutative square involving the morphisms `mor₃` of two distinguished triangles
can be extended as morphism of triangles -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e28435f51d41f5749433645689aec8adb76dd399` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
