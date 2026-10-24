# arrowMk_iterationFunctor_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1195e2fedb7775de7816e55c422065dd64ef1ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d5797b13f0ba0af1bb0f17e7cae39a6e7ad2d5fd0e5b52284594a4abf88b3f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83f1ae00-5fb5-151e-b561-94f80f63e52b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a22fd5a8-ffe3-b849-5008-1a91235b0b33",
  "kind": "lemma",
  "lexical_name": "arrowMk_iterationFunctor_map",
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
  "slug": "arrowmk-iterationfunctor-map--30bc1016d1135278f27366e1",
  "source": {
    "blob": "c1195e2fedb7775de7816e55c422065dd64ef1ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 70,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant5d5797b13f0ba0af1bb0f17e7cae39a6e7ad2d5fd0e5b52284594a4abf88b3f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30bc1016d1135278f27366e173a9f97ab0fd1f8cbd10defb6c4d9cf5083f5919",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant5d5797b13f0ba0af1bb0f17e7cae39a6e7ad2d5fd0e5b52284594a4abf88b3f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a22fd5a8-ffe3-b849-5008-1a91235b0b33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma arrowMk_iterationFunctor_map (i₁ i₂ : J) (h₁₂ : i₁ ≤ i₂)
    {j : J} (iter : Φ.Iteration j) (hj : i₂ ≤ j) :
    Arrow.mk ((Φ.iterationFunctor J).map (homOfLE h₁₂)) =
      Arrow.mk (iter.F.map (homOfLE h₁₂ : ⟨i₁, h₁₂.trans hj⟩ ⟶ ⟨i₂, hj⟩)) := by
  dsimp [iterationFunctor]
  rw [Iteration.arrow_mk_mapObj]
  exact Arrow.ext (Iteration.congr_obj _ _ _ _ _)
    (Iteration.congr_obj _ _ _ _ _) (Iteration.congr_map _ _ _ _ _)

variable (J)

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant5d5797b13f0ba0af1bb0f17e7cae39a6e7ad2d5fd0e5b52284594a4abf88b3f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variant5d5797b13f0ba0af1bb0f17e7cae39a6e7ad2d5fd0e5b52284594a4abf88b3f9.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1195e2fedb7775de7816e55c422065dd64ef1ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
