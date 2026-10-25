# map_fst_eq_and_of_prod_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fea032c-54fd-99c9-f6ed-598d1a7bf715",
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
  "slug": "map-fst-eq-and-of-prod-eq--9b4e7360bbf7537cfbd153af",
  "source": {
    "blob": "03f7120ea7479e251be0d2edd29f8ca027b9d6cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 691,
    "line": 673,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantdb44068e106cad15d3480d8e75885c7004c13ea70182f145fd4dea6d1c6f9df5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b4e7360bbf7537cfbd153afcd498f57b8b01fffddd00d6a991ec32bc56b1934",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantdb44068e106cad15d3480d8e75885c7004c13ea70182f145fd4dea6d1c6f9df5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fea032c-54fd-99c9-f6ed-598d1a7bf715`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 673–691.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantdb44068e106cad15d3480d8e75885c7004c13ea70182f145fd4dea6d1c6f9df5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantdb44068e106cad15d3480d8e75885c7004c13ea70182f145fd4dea6d1c6f9df5.lean#L673).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03f7120ea7479e251be0d2edd29f8ca027b9d6cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
