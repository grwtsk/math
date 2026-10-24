# card_add_two_mul_card_eq_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76191def-cf62-1a9b-5c45-53cfc242e7da",
  "kind": "theorem",
  "lexical_name": "card_add_two_mul_card_eq_rank",
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
  "slug": "card-add-two-mul-card-eq-rank--50d6b8a2fcea5285fdc9c995",
  "source": {
    "blob": "450de2dcff5f661cf876af47b9f13f72c6a045e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 490,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50d6b8a2fcea5285fdc9c9959303b95d6b6b7e4f5957ad4d8ede83df7c400307",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76191def-cf62-1a9b-5c45-53cfc242e7da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_add_two_mul_card_eq_rank :
    card { w : InfinitePlace K // IsReal w } + 2 * card { w : InfinitePlace K // IsComplex w } =
      finrank ℚ K := by
  rw [← card_real_embeddings, ← card_complex_embeddings]
  rw [Fintype.card_subtype_compl, ← Embeddings.card K ℂ, Nat.add_sub_of_le]
  exact Fintype.card_subtype_le _

end NumberField.InfinitePlace

end InfinitePlace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `450de2dcff5f661cf876af47b9f13f72c6a045e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
