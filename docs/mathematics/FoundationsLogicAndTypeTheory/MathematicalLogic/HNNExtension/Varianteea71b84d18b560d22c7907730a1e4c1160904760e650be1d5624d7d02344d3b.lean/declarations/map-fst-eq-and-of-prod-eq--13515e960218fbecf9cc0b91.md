# map_fst_eq_and_of_prod_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "caf84a812ad79352b5951af0d067db389bb80433",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 669,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad084d6e-f2f2-f956-72cb-1c978441803d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc1900ca-e750-4912-345f-0c23b53ed9cc",
  "kind": "theorem",
  "lexical_name": "map_fst_eq_and_of_prod_eq",
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
  "slug": "map-fst-eq-and-of-prod-eq--13515e960218fbecf9cc0b91",
  "source": {
    "blob": "caf84a812ad79352b5951af0d067db389bb80433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 687,
    "line": 669,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13515e960218fbecf9cc0b91b42f4c2d20bb0a60d4f07a0baec364aca8f7f610",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc1900ca-e750-4912-345f-0c23b53ed9cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 669–687.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_fst_eq_and_of_prod_eq {w₁ w₂ : ReducedWord G A B}
    (hprod : w₁.prod φ = w₂.prod φ) :
    w₁.toList.map Prod.fst = w₂.toList.map Prod.fst ∧
     ∀ u ∈ w₁.toList.head?.map Prod.fst,
      w₁.head⁻¹ * w₂.head ∈ toSubgroup A B (-u) := by
  rcases TransversalPair.nonempty G A B with ⟨d⟩
  rcases exists_normalWord_prod_eq φ d w₁ with ⟨w₁', hw₁'1, hw₁'2, hw₁'3⟩
  rcases exists_normalWord_prod_eq φ d w₂ with ⟨w₂', hw₂'1, hw₂'2, hw₂'3⟩
  have : w₁' = w₂' :=
    NormalWord.prod_injective φ d (by dsimp only; rw [hw₁'1, hw₂'1, hprod])
  subst this
  refine ⟨by rw [← hw₁'2, hw₂'2], ?_⟩
  simp only [← leftCoset_eq_iff] at *
  intro u hu
  rw [← hw₁'3 _ hu, ← hw₂'3 _]
  rwa [← List.head?_map, ← hw₂'2, hw₁'2, List.head?_map]

/-- **Britton's Lemma**. Any reduced word whose product is an element of `G`, has no
occurrences of `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean#L669).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caf84a812ad79352b5951af0d067db389bb80433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
