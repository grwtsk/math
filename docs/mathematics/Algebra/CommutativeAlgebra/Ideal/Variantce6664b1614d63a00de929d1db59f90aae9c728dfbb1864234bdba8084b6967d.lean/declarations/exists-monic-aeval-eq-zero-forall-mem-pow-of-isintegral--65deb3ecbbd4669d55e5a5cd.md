# exists_monic_aeval_eq_zero_forall_mem_pow_of_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e96e877-6eb6-c45d-1163-8ad08ff5d19a",
  "kind": "lemma",
  "lexical_name": "exists_monic_aeval_eq_zero_forall_mem_pow_of_isIntegral",
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
  "slug": "exists-monic-aeval-eq-zero-forall-mem-pow-of-isintegral--65deb3ecbbd4669d55e5a5cd",
  "source": {
    "blob": "fefa13bdd0905296a48a4a75382327345171eb8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 56,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Ideal/Variantce6664b1614d63a00de929d1db59f90aae9c728dfbb1864234bdba8084b6967d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65deb3ecbbd4669d55e5a5cd420b348d818561f3d98de60858fafa8c5f0f2505",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Ideal/Variantce6664b1614d63a00de929d1db59f90aae9c728dfbb1864234bdba8084b6967d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e96e877-6eb6-c45d-1163-8ad08ff5d19a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_monic_aeval_eq_zero_forall_mem_pow_of_isIntegral
    {I : Ideal R} {x : S}
    (hx : IsIntegral (Algebra.adjoin R { C r * X | r ∈ I }) (C x * X)) :
    ∃ p : R[X], p.Monic ∧ aeval x p = 0 ∧ ∀ i, p.coeff i ∈ I ^ (p.natDegree - i) := by
  cases subsingleton_or_nontrivial R
  · use 0; simp [Monic, Subsingleton.elim (α := R) 0 1]
  obtain ⟨p, hp, e⟩ := hx
  let q : R[X] := ∑ i ∈ Finset.range (p.natDegree + 1),
    C ((p.coeff i).1.coeff (p.natDegree - i)) * X ^ i
  have hq : q.natDegree = p.natDegree := by
    refine natDegree_eq_of_le_of_coeff_ne_zero (natDegree_sum_le_of_forall_le _ _ ?_) ?_
    · exact fun i hi ↦ (natDegree_C_mul_X_pow_le _ _).trans (by simpa [Nat.lt_succ_iff] using! hi)
    · simp [q, hp]
  refine ⟨q, ?_, ?_, ?_⟩
  · simpa [← hq] using! show q.coeff p.natDegree = 1 by simp [q, hp]
  · replace e := congr(($e).coeff p.natDegree)
    simp only [eval₂_eq_sum_range, finsetSum_coeff, coeff_zero] at e
    simp only [q, map_sum, map_mul, aeval_C, map_pow, aeval_X]
    refine (Finset.sum_congr rfl fun i hi ↦ ?_).trans e
    simp only [Finset.mem_range, Nat.lt_succ_iff] at hi
    rw [mul_pow, mul_left_comm, ← map_pow, coeff_C_mul, coeff_mul_X_pow', ite_eq_left hi, mul_comm]
    simp [Subalgebra.algebraMap_def]
  · rw [hq]
    simp [q, apply_ite, coeff_mem_pow_of_mem_adjoin_C_mul_X (p.coeff _).2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Ideal/Variantce6664b1614d63a00de929d1db59f90aae9c728dfbb1864234bdba8084b6967d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Ideal/Variantce6664b1614d63a00de929d1db59f90aae9c728dfbb1864234bdba8084b6967d.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fefa13bdd0905296a48a4a75382327345171eb8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
