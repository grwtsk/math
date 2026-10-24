# of_coprod_inl_with_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61e45d3b910dac2738ec3e862399af488af805a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 718,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b32f7fc1502ee947afce1f686d9ae434d5a92f833a21414f237215bc2da2f7f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a225c67-ae84-ff7a-9561-cbcf176dc6e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0f805a7-21e0-c369-6279-3eb69fb5df8f",
  "kind": "lemma",
  "lexical_name": "of_coprod_inl_with_id",
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
  "slug": "of-coprod-inl-with-id--9220fbfee20381e59408e763",
  "source": {
    "blob": "61e45d3b910dac2738ec3e862399af488af805a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 733,
    "line": 718,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb32f7fc1502ee947afce1f686d9ae434d5a92f833a21414f237215bc2da2f7f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9220fbfee20381e59408e76327a466133650d38b7f7979dc3334371f5f330708",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb32f7fc1502ee947afce1f686d9ae434d5a92f833a21414f237215bc2da2f7f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0f805a7-21e0-c369-6279-3eb69fb5df8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 718–733.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_coprod_inl_with_id {A B : C} (f : A ⟶ B) (X : C) [HasBinaryCoproduct A X]
    [HasBinaryCoproduct B X] :
    IsPushout coprod.inl f (coprod.map f (𝟙 X)) coprod.inl where
  w := by simp
  isColimit' := ⟨PushoutCocone.isColimitAux' _ (fun s ↦ by
    refine ⟨coprod.desc s.inr (coprod.inr ≫ s.inl), ?_, ?_, ?_⟩
    · ext
      · simp [PushoutCocone.condition]
      · simp
    · simp
    · intro m h₁ h₂
      dsimp at m h₁ h₂ ⊢
      ext
      · simpa using h₂
      · simp [← h₁])⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb32f7fc1502ee947afce1f686d9ae434d5a92f833a21414f237215bc2da2f7f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb32f7fc1502ee947afce1f686d9ae434d5a92f833a21414f237215bc2da2f7f3.lean#L718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61e45d3b910dac2738ec3e862399af488af805a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
