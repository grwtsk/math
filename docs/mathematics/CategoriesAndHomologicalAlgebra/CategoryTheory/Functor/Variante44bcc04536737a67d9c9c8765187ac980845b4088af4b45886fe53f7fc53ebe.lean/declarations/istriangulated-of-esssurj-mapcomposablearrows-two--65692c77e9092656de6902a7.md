# isTriangulated_of_essSurj_mapComposableArrows_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf51ae4fe7ed4c486653a298be21989e62b5f267",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 303,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e44bcc04536737a67d9c9c8765187ac980845b4088af4b45886fe53f7fc53ebe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd3441ed-c29f-4b96-fd68-cf8f5be6a506",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ae9a6ed-eac1-363e-81a9-8d1c02cb0345",
  "kind": "lemma",
  "lexical_name": "isTriangulated_of_essSurj_mapComposableArrows_two",
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
  "slug": "istriangulated-of-esssurj-mapcomposablearrows-two--65692c77e9092656de6902a7",
  "source": {
    "blob": "bf51ae4fe7ed4c486653a298be21989e62b5f267",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 303,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variante44bcc04536737a67d9c9c8765187ac980845b4088af4b45886fe53f7fc53ebe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65692c77e9092656de6902a7b57d0d94e00ad2083f53442ea18af5441e3ac7ff",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variante44bcc04536737a67d9c9c8765187ac980845b4088af4b45886fe53f7fc53ebe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ae9a6ed-eac1-363e-81a9-8d1c02cb0345`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTriangulated_of_essSurj_mapComposableArrows_two
    (F : C ⥤ D) [F.CommShift ℤ] [F.IsTriangulated]
    [(F.mapComposableArrows 2).EssSurj] [IsTriangulated C] :
    IsTriangulated D := by
  apply IsTriangulated.mk
  intro Y₁ Y₂ Y₃ Z₁₂ Z₂₃ Z₁₃ u₁₂ u₂₃ u₁₃ comm v₁₂ w₁₂ h₁₂ v₂₃ w₂₃ h₂₃ v₁₃ w₁₃ h₁₃
  obtain ⟨α, ⟨e⟩⟩ : ∃ (α : ComposableArrows C 2),
      Nonempty ((F.mapComposableArrows 2).obj α ≅ ComposableArrows.mk₂ u₁₂ u₂₃) :=
    ⟨_, ⟨Functor.objObjPreimageIso _ _⟩⟩
  obtain ⟨X₁, X₂, X₃, f, g, rfl⟩ := ComposableArrows.mk₂_surjective α
  obtain ⟨_, _, _, h₁₂'⟩ := distinguished_cocone_triangle f
  obtain ⟨_, _, _, h₂₃'⟩ := distinguished_cocone_triangle g
  obtain ⟨_, _, _, h₁₃'⟩ := distinguished_cocone_triangle (f ≫ g)
  exact ⟨Octahedron.ofIso (e₁ := (e.app 0).symm) (e₂ := (e.app 1).symm) (e₃ := (e.app 2).symm)
    (comm₁₂ := ComposableArrows.naturality' e.inv 0 1)
    (comm₂₃ := ComposableArrows.naturality' e.inv 1 2)
    (H := (someOctahedron rfl h₁₂' h₂₃' h₁₃').map F) ..⟩

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variante44bcc04536737a67d9c9c8765187ac980845b4088af4b45886fe53f7fc53ebe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variante44bcc04536737a67d9c9c8765187ac980845b4088af4b45886fe53f7fc53ebe.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf51ae4fe7ed4c486653a298be21989e62b5f267` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
