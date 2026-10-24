# IsSRGWith.matrix_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "335b84b790d194581b260b50a45576edcb3ad0dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16302860-385b-a1e2-506d-e79db233facf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e72647a2-db1c-b1ee-e817-e584b8eac01a",
  "kind": "theorem",
  "lexical_name": "IsSRGWith.matrix_eq",
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
  "slug": "issrgwith-matrix-eq--c30bb634a45b8a58614c2b89",
  "source": {
    "blob": "335b84b790d194581b260b50a45576edcb3ad0dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 205,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c30bb634a45b8a58614c2b897cca06d81a0a5b13da522eb6899f61ff48321fad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e72647a2-db1c-b1ee-e817-e584b8eac01a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSRGWith.matrix_eq {α : Type*} [Semiring α] (h : G.IsSRGWith n k ℓ μ) :
    G.adjMatrix α ^ 2 = k • (1 : Matrix V V α) + ℓ • G.adjMatrix α + μ • Gᶜ.adjMatrix α := by
  ext v w
  simp only [adjMatrix_pow_apply_eq_card_walk, Matrix.add_apply, Matrix.smul_apply,
    adjMatrix_apply, compl_adj]
  rw [@Fintype.card_congr _ _ (G.fintypeSetWalkLength v w 2) _
    (G.walkLengthTwoEquivCommonNeighbors v w)]
  obtain rfl | hn := eq_or_ne v w
  · rw [← Set.toFinset_card]
    simp [commonNeighbors, ← neighborFinset_def, h.regular v]
  · simp only [Matrix.one_apply_ne' hn.symm, ne_eq, hn]
    by_cases ha : G.Adj v w <;>
      simp only [ha, ite_true, ite_false, add_zero, zero_add, nsmul_eq_mul, smul_zero, mul_one,
        not_true_eq_false, not_false_eq_true, and_false, and_self]
    · rw [h.of_adj v w ha]
    · rw [h.of_not_adj hn ha]

end SimpleGraph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `335b84b790d194581b260b50a45576edcb3ad0dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
