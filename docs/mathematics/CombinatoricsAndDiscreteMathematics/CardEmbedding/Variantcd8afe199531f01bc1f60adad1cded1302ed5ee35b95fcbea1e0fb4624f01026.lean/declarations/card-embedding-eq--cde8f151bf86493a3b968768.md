# card_embedding_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e01d7215-0fff-e4c8-5990-ab274f6c728f",
  "kind": "theorem",
  "lexical_name": "card_embedding_eq",
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
  "slug": "card-embedding-eq--cde8f151bf86493a3b968768",
  "source": {
    "blob": "49d37d98385fc218c0414b265760519e1274bd2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 44,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variantcd8afe199531f01bc1f60adad1cded1302ed5ee35b95fcbea1e0fb4624f01026.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cde8f151bf86493a3b9687686db4de51ea52e5b7856b1eac6ff6c54a3111ce6c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variantcd8afe199531f01bc1f60adad1cded1302ed5ee35b95fcbea1e0fb4624f01026.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e01d7215-0fff-e4c8-5990-ab274f6c728f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_embedding_eq {α β : Type*} [Fintype α] [Fintype β] [emb : Fintype (α ↪ β)] :
    ‖α ↪ β‖ = ‖β‖.descFactorial ‖α‖ := by
  rw [Subsingleton.elim emb Embedding.fintype]
  refine Fintype.induction_empty_option (P := fun t ↦ ‖t ↪ β‖ = ‖β‖.descFactorial ‖t‖)
        (fun α₁ α₂ h₂ e ih ↦ ?_) (?_) (fun γ h ih ↦ ?_) α <;> dsimp only at * <;> clear! α
  · letI := Fintype.ofEquiv _ e.symm
    rw [← card_congr (Equiv.embeddingCongr e (Equiv.refl β)), ih, card_congr e]
  · rw [card_pempty, Nat.descFactorial_zero, card_eq_one_iff]
    exact ⟨Embedding.ofIsEmpty, fun x ↦ DFunLike.ext _ _ isEmptyElim⟩
  · classical
    rw [card_option, Nat.descFactorial_succ, card_congr (Embedding.optionEmbeddingEquiv γ β),
        card_sigma, ← ih]
    simp only [Fintype.card_compl_set, Fintype.card_range, Finset.sum_const, Finset.card_univ,
      Nat.nsmul_eq_mul, mul_comm]

/-- The cardinality of embeddings from an infinite type to a finite type is zero.
This is a re-statement of the pigeonhole principle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variantcd8afe199531f01bc1f60adad1cded1302ed5ee35b95fcbea1e0fb4624f01026.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variantcd8afe199531f01bc1f60adad1cded1302ed5ee35b95fcbea1e0fb4624f01026.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49d37d98385fc218c0414b265760519e1274bd2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
