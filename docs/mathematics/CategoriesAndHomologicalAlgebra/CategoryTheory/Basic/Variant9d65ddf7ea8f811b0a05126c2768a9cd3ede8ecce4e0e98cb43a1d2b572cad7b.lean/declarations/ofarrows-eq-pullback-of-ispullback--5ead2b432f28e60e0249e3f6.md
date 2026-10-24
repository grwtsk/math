# ofArrows_eq_pullback_of_isPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a51f45ce713bc7c13905af1b24c0c3eadb3ca06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 517,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d65ddf7ea8f811b0a05126c2768a9cd3ede8ecce4e0e98cb43a1d2b572cad7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3abd97c-6311-259f-8692-04ac5399eff5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85307cac-c33c-c94c-0ebd-7a730a58368e",
  "kind": "lemma",
  "lexical_name": "ofArrows_eq_pullback_of_isPullback",
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
  "slug": "ofarrows-eq-pullback-of-ispullback--5ead2b432f28e60e0249e3f6",
  "source": {
    "blob": "6a51f45ce713bc7c13905af1b24c0c3eadb3ca06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 517,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9d65ddf7ea8f811b0a05126c2768a9cd3ede8ecce4e0e98cb43a1d2b572cad7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ead2b432f28e60e0249e3f6a010d91b2825882dd3af03f356a530e3f3b4d29f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9d65ddf7ea8f811b0a05126c2768a9cd3ede8ecce4e0e98cb43a1d2b572cad7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85307cac-c33c-c94c-0ebd-7a730a58368e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofArrows_eq_pullback_of_isPullback {ι : Type*} {S : C} {X : ι → C} (f : (i : ι) → X i ⟶ S)
    {Y : C} {g : Y ⟶ S} {P : ι → C} {p₁ : (i : ι) → P i ⟶ Y} {p₂ : (i : ι) → P i ⟶ X i}
    (h : ∀ (i : ι), IsPullback (p₁ i) (p₂ i) g (f i)) :
    Sieve.ofArrows P p₁ = Sieve.pullback g (Sieve.ofArrows X f) := by
  refine le_antisymm ?_ ?_
  · rw [Sieve.ofArrows, Sieve.generate_le_iff]
    rintro - - ⟨i⟩
    use X i, p₂ i, f i, ⟨i⟩
    exact (h i).w.symm
  · rintro W u ⟨Z, v, s, ⟨i⟩, heq⟩
    use P i, (h i).lift u v heq.symm, p₁ i, ⟨i⟩
    simp


end Sieve

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9d65ddf7ea8f811b0a05126c2768a9cd3ede8ecce4e0e98cb43a1d2b572cad7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9d65ddf7ea8f811b0a05126c2768a9cd3ede8ecce4e0e98cb43a1d2b572cad7b.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a51f45ce713bc7c13905af1b24c0c3eadb3ca06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
