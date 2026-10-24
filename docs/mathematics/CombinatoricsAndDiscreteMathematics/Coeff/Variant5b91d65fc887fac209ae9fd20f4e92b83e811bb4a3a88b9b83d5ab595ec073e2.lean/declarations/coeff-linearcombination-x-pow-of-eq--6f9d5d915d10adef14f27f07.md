# coeff_linearCombination_X_pow_of_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a54e95ab700075e4a30edcb9a6a517acb55be0c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b91d65fc887fac209ae9fd20f4e92b83e811bb4a3a88b9b83d5ab595ec073e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41fb42b8-d35b-0891-4573-e3b2368e12a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11faa4e8-fb37-62d4-2740-ecf55e0e955c",
  "kind": "lemma",
  "lexical_name": "coeff_linearCombination_X_pow_of_eq",
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
  "slug": "coeff-linearcombination-x-pow-of-eq--6f9d5d915d10adef14f27f07",
  "source": {
    "blob": "a54e95ab700075e4a30edcb9a6a517acb55be0c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coeff/Variant5b91d65fc887fac209ae9fd20f4e92b83e811bb4a3a88b9b83d5ab595ec073e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f9d5d915d10adef14f27f0774c1393adc40411427687ef4667795f50de1931f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Coeff/Variant5b91d65fc887fac209ae9fd20f4e92b83e811bb4a3a88b9b83d5ab595ec073e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11faa4e8-fb37-62d4-2740-ecf55e0e955c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma coeff_linearCombination_X_pow_of_eq (a : σ →₀ R) {n : ℕ}
    (hs : s.sum (fun _ m ↦ m) = n) :
    ((a.linearCombination R X : MvPolynomial σ R) ^ n).coeff s =
      s.multinomial * s.prod (fun r m ↦ a r ^ m) := by
  classical
  simp only [sum, linearCombination_apply, Finset.sum_pow_eq_sum_piAntidiag, coeff_sum,
    ← C_eq_coe_nat, coeff_C_mul, smul_eq_C_mul, mul_pow, Finset.prod_mul_distrib, ← map_pow,
    ← map_prod, coeff_prod_X_pow, mul_ite, mul_one, mul_zero]
  rw [Finset.sum_eq_single (s : σ → ℕ)]
  · simp_rw [eq_indicator_self_iff]
    split_ifs with hs'
    · rw [prod_of_support_subset _ hs' _ (by simp), Finsupp.multinomial_of_support_subset hs']
    · rw [Finset.subset_iff] at hs'
      simp only [Finsupp.mem_support_iff, ne_eq, not_forall, Decidable.not_not] at hs'
      obtain ⟨i, hsi, hai⟩ := hs'
      rw [← mul_prod_erase _ i _ (by simpa), hai, zero_pow hsi, zero_mul, mul_zero]
  · simp only [Finset.mem_piAntidiag, ne_eq, Finsupp.mem_support_iff, ite_eq_right_iff, and_imp]
    intro _ _ _ _ hed
    simp [Finsupp.ext_iff] at hed
    grind
  · simp_rw [ite_eq_right_iff]
    intro hs' hs''
    rw [eq_indicator_self_iff] at hs''
    exfalso
    rw [Finset.mem_piAntidiag, not_and_or] at hs'
    rcases hs' with hs' | hs'
    · apply hs'
      rw [← hs, sum_of_support_subset _ hs'' _ (by simp)]
    · grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coeff/Variant5b91d65fc887fac209ae9fd20f4e92b83e811bb4a3a88b9b83d5ab595ec073e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coeff/Variant5b91d65fc887fac209ae9fd20f4e92b83e811bb4a3a88b9b83d5ab595ec073e2.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a54e95ab700075e4a30edcb9a6a517acb55be0c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
