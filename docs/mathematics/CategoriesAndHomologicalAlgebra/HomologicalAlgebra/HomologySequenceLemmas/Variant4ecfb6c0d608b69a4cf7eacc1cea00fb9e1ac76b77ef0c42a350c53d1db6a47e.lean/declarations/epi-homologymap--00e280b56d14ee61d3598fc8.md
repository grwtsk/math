# epi_homologyMap_τ₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26d1411fed80d22f590edd6abd66e9961da1faf0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6fa1c5db-4b45-d1a9-d1d7-eec336554eef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:866234dc-e86f-36b9-56e5-b0ba042aa8f1",
  "kind": "lemma",
  "lexical_name": "epi_homologyMap_τ₃",
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
  "slug": "epi-homologymap--00e280b56d14ee61d3598fc8",
  "source": {
    "blob": "26d1411fed80d22f590edd6abd66e9961da1faf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 128,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00e280b56d14ee61d3598fc854ee8e048c16666153e518e34e769b9fb683ec36",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:866234dc-e86f-36b9-56e5-b0ba042aa8f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma epi_homologyMap_τ₃ (i : ι)
    (h₁ : Epi (homologyMap φ.τ₂ i))
    (h₂ : ∀ j, c.Rel i j → Epi (homologyMap φ.τ₁ j))
    (h₃ : ∀ j, c.Rel i j → Mono (homologyMap φ.τ₂ j)) :
    Epi (homologyMap φ.τ₃ i) := by
  by_cases hi : ∃ j, c.Rel i j
  · obtain ⟨j, hij⟩ := hi
    apply epi_of_epi_of_epi_of_mono
      ((δ₀Functor ⋙ δlastFunctor).map (mapComposableArrows₅ φ hS₁ hS₂ i j hij))
    · exact (composableArrows₅_exact hS₁ i j hij).δ₀.δlast
    · exact (composableArrows₅_exact hS₂ i j hij).δ₀.δlast
    · exact h₁
    · exact h₂ j hij
    · exact h₃ j hij
  · have := hS₂.epi_g
    have eq := (homologyFunctor C _ i).congr_map φ.comm₂₃
    dsimp at eq
    simp only [homologyMap_comp] at eq
    have := epi_homologyMap_of_epi_of_not_rel S₂.g i (by simpa using hi)
    exact epi_of_epi_fac eq.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequenceLemmas/Variant4ecfb6c0d608b69a4cf7eacc1cea00fb9e1ac76b77ef0c42a350c53d1db6a47e.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26d1411fed80d22f590edd6abd66e9961da1faf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
