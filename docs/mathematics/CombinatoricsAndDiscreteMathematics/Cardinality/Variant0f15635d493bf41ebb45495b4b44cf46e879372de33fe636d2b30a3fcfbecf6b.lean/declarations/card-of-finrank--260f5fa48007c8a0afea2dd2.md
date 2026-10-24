# card_of_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c6579d5-bada-36bf-5ad7-f4542878fc14",
  "kind": "lemma",
  "lexical_name": "card_of_finrank",
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
  "slug": "card-of-finrank--260f5fa48007c8a0afea2dd2",
  "source": {
    "blob": "aac6adaa6328cb20f828981b8e0bcc76a9a9ffaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:260f5fa48007c8a0afea2dd2221f5427dda71b193c4009da6d161eda0caa91b5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c6579d5-bada-36bf-5ad7-f4542878fc14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_of_finrank [Finite k] {n : ℕ} (h : Module.finrank k V = n) :
    Nat.card (ℙ k V) = ∑ i ∈ Finset.range n, Nat.card k ^ i := by
  wlog hf : Finite V
  · simp only [not_finite_iff_infinite] at hf
    have : Infinite (ℙ k V) := by
      rw [← not_finite_iff_infinite, not_iff_not.mpr (finite_iff_of_finite k V)]
      simpa
    have : n = 0 := by
      rw [← h]
      apply Module.finrank_of_not_finite
      contrapose! hf
      simpa using Module.finite_of_finite k
    simp [this]
  have : 1 < Nat.card k := Finite.one_lt_card
  refine Nat.mul_right_cancel (m := Nat.card k - 1) (by omega) ?_
  let e : V ≃ₗ[k] (Fin n → k) := LinearEquiv.ofFinrankEq _ _ (by simpa)
  have hc : Nat.card V = Nat.card k ^ n := by simp [Nat.card_congr e.toEquiv, Nat.card_fun]
  zify
  conv_rhs => rw [Int.natCast_sub this.le, Int.natCast_one, geom_sum_mul]
  rw [← Int.natCast_mul, ← card k V, hc]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aac6adaa6328cb20f828981b8e0bcc76a9a9ffaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
