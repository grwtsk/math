# sum_smul_minpolyDiv_eq_X_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ccba9dbe9550b3bd6ca53f6964df49092f383449",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79576ce3-89f1-ae7a-23b5-f6377ff29d91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73a3bbe2-4b75-a17f-87d4-b0bac6844a06",
  "kind": "lemma",
  "lexical_name": "sum_smul_minpolyDiv_eq_X_pow",
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
  "slug": "sum-smul-minpolydiv-eq-x-pow--6a53c1baed6ae9cf1ef14159",
  "source": {
    "blob": "ccba9dbe9550b3bd6ca53f6964df49092f383449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 194,
    "path": "GRWTSK/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a53c1baed6ae9cf1ef1415960c704a854f14d940f0e1ee405b09b1c9fc0f00f",
  "verification": {
    "reference": "docs/verification/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73a3bbe2-4b75-a17f-87d4-b0bac6844a06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_smul_minpolyDiv_eq_X_pow (E) [Field E] [Algebra K E] [IsAlgClosed E]
    [FiniteDimensional K L] [Algebra.IsSeparable K L]
    {x : L} (hxL : K[x] = ⊤) {r : ℕ} (hr : r < finrank K L) :
    ∑ σ : L →ₐ[K] E, ((x ^ r / aeval x (derivative <| minpoly K x)) •
      minpolyDiv K x).map σ = (X ^ r : E[X]) := by
  classical
  rw [← sub_eq_zero]
  have : Function.Injective (fun σ : L →ₐ[K] E ↦ σ x) := fun _ _ h =>
    AlgHom.ext_of_adjoin_eq_top hxL (fun _ hx ↦ hx ▸ h)
  apply Polynomial.eq_zero_of_natDegree_lt_card_of_eval_eq_zero _ this
  · intro σ
    simp only [Polynomial.map_smul, map_div₀, map_pow, RingHom.coe_coe, eval_sub, eval_finsetSum,
      eval_smul, eval_map, eval₂_minpolyDiv_self, this.eq_iff, smul_eq_mul, mul_ite, mul_zero,
      Finset.sum_ite_eq', Finset.mem_univ, ite_true, eval_X_pow]
    rw [sub_eq_zero, div_mul_cancel₀]
    rw [ne_eq, map_eq_zero_iff σ σ.toRingHom.injective]
    exact (IsSeparable.isSeparable _ _).aeval_derivative_ne_zero (minpoly.aeval _ _)
  · refine (Polynomial.natDegree_sub_le _ _).trans_lt
      (max_lt ((Polynomial.natDegree_sum_le _ _).trans_lt ?_) ?_)
    · simp only [Polynomial.map_smul,
        map_div₀, map_pow, RingHom.coe_coe, Function.comp_apply,
        Finset.mem_univ, forall_true_left, Finset.fold_max_lt, AlgHom.card]
      refine ⟨finrank_pos, ?_⟩
      intro σ
      exact ((Polynomial.natDegree_smul_le _ _).trans natDegree_map_le).trans_lt
        ((natDegree_minpolyDiv_lt (Algebra.IsIntegral.isIntegral x)).trans_le
          (minpoly.natDegree_le _))
    · rwa [natDegree_pow, natDegree_X, mul_one, AlgHom.card]

end PowerBasis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccba9dbe9550b3bd6ca53f6964df49092f383449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
