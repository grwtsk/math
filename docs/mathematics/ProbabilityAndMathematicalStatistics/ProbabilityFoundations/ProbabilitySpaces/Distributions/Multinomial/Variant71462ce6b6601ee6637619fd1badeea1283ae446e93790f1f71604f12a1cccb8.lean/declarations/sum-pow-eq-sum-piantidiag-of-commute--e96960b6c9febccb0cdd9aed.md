# sum_pow_eq_sum_piAntidiag_of_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a625f5ae-6155-002a-4bd6-bbe95a4971bd",
  "kind": "lemma",
  "lexical_name": "sum_pow_eq_sum_piAntidiag_of_commute",
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
  "slug": "sum-pow-eq-sum-piantidiag-of-commute--e96960b6c9febccb0cdd9aed",
  "source": {
    "blob": "2a2836454d7dbbdabbb4dd186e4e838521febb27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 278,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant71462ce6b6601ee6637619fd1badeea1283ae446e93790f1f71604f12a1cccb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e96960b6c9febccb0cdd9aed8a58edfd196e343c3140293b710702bea40b5bd5",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant71462ce6b6601ee6637619fd1badeea1283ae446e93790f1f71604f12a1cccb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a625f5ae-6155-002a-4bd6-bbe95a4971bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_pow_eq_sum_piAntidiag_of_commute (s : Finset α) (f : α → R)
    (hc : (s : Set α).Pairwise (Commute on f)) (n : ℕ) :
    (∑ i ∈ s, f i) ^ n = ∑ k ∈ piAntidiag s n, multinomial s k *
      s.noncommProd (fun i ↦ f i ^ k i) (hc.mono' fun _ _ h ↦ h.pow_pow ..) := by
  induction s using Finset.cons_induction generalizing n with
  | empty => cases n <;> simp
  | cons a s has ih => ?_
  rw [Finset.sum_cons, piAntidiag_cons, sum_disjiUnion]
  simp only [sum_map, Pi.add_apply, multinomial_cons,
    Pi.add_apply, ite_true, Nat.cast_mul, noncommProd_cons,
    ite_true, sum_add_distrib, sum_ite_eq', has, ite_false, add_zero,
    addRightEmbedding_apply]
  suffices ∀ p : ℕ × ℕ, p ∈ antidiagonal n →
    ∑ g ∈ piAntidiag s p.2, ((g a + p.1 + s.sum g).choose (g a + p.1) : R) *
      multinomial s (g + fun i ↦ ite (i = a) p.1 0) *
        (f a ^ (g a + p.1) * s.noncommProd (fun i ↦ f i ^ (g i + ite (i = a) p.1 0))
          ((hc.mono (by simp)).mono' fun i j h ↦ h.pow_pow ..)) =
      ∑ g ∈ piAntidiag s p.2, n.choose p.1 * multinomial s g * (f a ^ p.1 *
        s.noncommProd (fun i ↦ f i ^ g i) ((hc.mono (by simp)).mono' fun i j h ↦ h.pow_pow ..)) by
    rw [sum_congr rfl this]
    simp only [Nat.antidiagonal_eq_map, sum_map, Function.Embedding.coeFn_mk]
    rw [(Commute.sum_right _ _ _ fun i hi ↦ hc (by simp) (by simp [hi])
      (by simpa [eq_comm] using ne_of_mem_of_not_mem hi has)).add_pow]
    simp only [ih (hc.mono (by simp)), sum_mul, mul_sum]
    refine sum_congr rfl fun i _ ↦ sum_congr rfl fun g _ ↦ ?_
    rw [← Nat.cast_comm, (Nat.commute_cast (f a ^ i) _).left_comm, mul_assoc]
  refine fun p hp ↦ sum_congr rfl fun f hf ↦ ?_
  rw [mem_piAntidiag] at hf
  rw [not_imp_comm.1 (hf.2 _) has, zero_add, hf.1]
  congr 2
  · rw [mem_antidiagonal.1 hp]
  · rw [multinomial_congr]
    intro t ht
    rw [Pi.add_apply, ite_eq_right, add_zero]
    exact ne_of_mem_of_not_mem ht has
  refine noncommProd_congr rfl (fun t ht ↦ ?_) _
  rw [ite_eq_right, add_zero]
  exact ne_of_mem_of_not_mem ht has

/-- The **multinomial theorem**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant71462ce6b6601ee6637619fd1badeea1283ae446e93790f1f71604f12a1cccb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant71462ce6b6601ee6637619fd1badeea1283ae446e93790f1f71604f12a1cccb8.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a2836454d7dbbdabbb4dd186e4e838521febb27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
