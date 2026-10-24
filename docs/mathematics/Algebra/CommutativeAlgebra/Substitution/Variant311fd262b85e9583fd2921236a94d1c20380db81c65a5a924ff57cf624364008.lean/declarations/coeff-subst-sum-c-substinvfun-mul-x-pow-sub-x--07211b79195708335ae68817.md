# coeff_subst_sum_C_substInvFun_mul_X_pow_sub_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2880766-35c8-7eb9-696d-af86402360df",
  "kind": "lemma",
  "lexical_name": "coeff_subst_sum_C_substInvFun_mul_X_pow_sub_X",
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
  "slug": "coeff-subst-sum-c-substinvfun-mul-x-pow-sub-x--07211b79195708335ae68817",
  "source": {
    "blob": "45f721163f2ad90e817abbd9b70c3b08de0f53bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 468,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variant311fd262b85e9583fd2921236a94d1c20380db81c65a5a924ff57cf624364008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07211b79195708335ae68817db83b462200526ae4625054bd96cf672bbc8e3c2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Substitution/Variant311fd262b85e9583fd2921236a94d1c20380db81c65a5a924ff57cf624364008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2880766-35c8-7eb9-696d-af86402360df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeff_subst_sum_C_substInvFun_mul_X_pow_sub_X (n : ℕ) :
    coeff n (P.subst (∑ i : Fin (n + 1), C (substInvFun P i.1) * X ^ i.1) - X) = 0 := by
  obtain (_ | _ | n) := n
  · rw [map_sub, coeff_subst']
    · simp +contextual [finsum_eq_single (a := 0), substInvFun, zero_pow_eq, hP]
    · simp [substInvFun, HasSubst]
  · rw [map_sub, coeff_subst']
    · rw [finsum_eq_single (a := 1)]
      · simp [substInvFun]
      · rintro (_ | _ | _) _ <;> simp_all [substInvFun, mul_pow, coeff_mul_X_pow']
    · simp [HasSubst, X, substInvFun]
  · rw [Fin.sum_univ_castSucc]
    simp only [Fin.val_castSucc, Fin.val_last, map_sub, substInvFun]
    generalize hB : ∑ i : Fin (n + 2), C (substInvFun P i) * X ^ i.1 = B
    have hB' : B.constantCoeff = 0 := by simp [← hB, zero_pow_eq, substInvFun]
    simp only [neg_mul, map_neg, map_mul, coeff_X, Nat.add_eq_right, Nat.add_eq_zero_iff,
      one_ne_zero, and_false, ↓reduceIte, sub_zero]
    rw [coeff_subst']
    · simp only [smul_eq_mul, ← map_mul]
      generalize hk : ⅟(P.coeff 1) * coeff (n + 1 + 1) (subst B P) = k
      trans ∑ᶠ d, P.coeff d * (coeff (n + 1 + 1) (B ^ d) - if d = 1 then k else 0)
      · refine finsum_congr fun i ↦ ?_
        · congr 1
          obtain (_ | _ | i) := i
          · simp
          · simp [← sub_eq_add_neg]
          · simp only [add_assoc, Nat.reduceAdd]
            rw [add_comm B, add_pow, map_sum, Finset.sum_eq_single (a := 0)]
            · simp
            · rintro (_ | _ | j) hj hj'
              · simp at hj'
              · simp [mul_comm (C k), hB', mul_assoc, coeff_X_pow_mul']
              · rw [← neg_mul, mul_pow, ← pow_mul, mul_comm (_ ^ _)]
                simp [mul_assoc, coeff_X_pow_mul']
            · simp
      · simp_rw [mul_sub]
        rw [finsum_sub_distrib]
        · simp only [mul_ite, mul_zero]
          nth_rw 2 [finsum_eq_single (a := 1)]
          · simp only [↓reduceIte, ← hk, mul_invOf_cancel_left', sub_eq_zero]
            rw [coeff_subst']
            · rfl
            · simp [HasSubst, ← PowerSeries.constantCoeff.eq_def, hB']
          · simp +contextual
        · refine .subset (Set.finite_Iio (n + 3)) fun i ↦ ?_
          obtain ⟨B, rfl⟩ : X ∣ B := by rwa [X_dvd_iff]
          simp +contextual [mul_pow, coeff_X_pow_mul', Nat.lt_succ_iff]
        · exact .subset (Set.finite_singleton 1) (fun _ ↦ by simp +contextual)
    · simp [HasSubst, ← PowerSeries.constantCoeff.eq_def, hB']

include hP in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Substitution/Variant311fd262b85e9583fd2921236a94d1c20380db81c65a5a924ff57cf624364008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variant311fd262b85e9583fd2921236a94d1c20380db81c65a5a924ff57cf624364008.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45f721163f2ad90e817abbd9b70c3b08de0f53bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
