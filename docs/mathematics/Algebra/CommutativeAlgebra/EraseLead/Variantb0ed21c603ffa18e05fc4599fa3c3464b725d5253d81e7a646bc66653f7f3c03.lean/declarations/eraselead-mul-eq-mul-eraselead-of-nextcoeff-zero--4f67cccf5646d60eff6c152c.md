# eraseLead_mul_eq_mul_eraseLead_of_nextCoeff_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "097318f43f87cd5bab8c63e9c4b87197e695b893",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 262,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0ed21c603ffa18e05fc4599fa3c3464b725d5253d81e7a646bc66653f7f3c03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1b586e5-3cd0-38f4-09a6-79448f2fb924",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2da117d-1f35-e13a-1966-dc27daea475f",
  "kind": "lemma",
  "lexical_name": "eraseLead_mul_eq_mul_eraseLead_of_nextCoeff_zero",
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
  "slug": "eraselead-mul-eq-mul-eraselead-of-nextcoeff-zero--4f67cccf5646d60eff6c152c",
  "source": {
    "blob": "097318f43f87cd5bab8c63e9c4b87197e695b893",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 262,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variantb0ed21c603ffa18e05fc4599fa3c3464b725d5253d81e7a646bc66653f7f3c03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f67cccf5646d60eff6c152c51441a1580eec3f8f29fd9934653de658f396544",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/EraseLead/Variantb0ed21c603ffa18e05fc4599fa3c3464b725d5253d81e7a646bc66653f7f3c03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2da117d-1f35-e13a-1966-dc27daea475f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eraseLead_mul_eq_mul_eraseLead_of_nextCoeff_zero {R : Type*} [Ring R] [NoZeroDivisors R]
    [Nontrivial R] {x : R} {P : R[X]} (hx : x ≠ 0) (h : P.nextCoeff = 0) :
    ((X - C x) * P).eraseLead.eraseLead = (X - C x) * P.eraseLead := by
  -- if `P = 0` this is trivial
  by_cases hp : P = 0
  · simp [hp]
  -- can assume eraseLead P ≠ 0, otherwise it's a monomial and both sides are zero.
  by_cases he : P.eraseLead = 0
  · rw [he, mul_zero]
    by_cases he₂ : ((X - C x) * P).eraseLead = 0
    · simp [he₂]
    suffices #((X - C x) * P).support ≤ 2 by
      rw [← card_support_eq_zero]
      linarith [eraseLead_support_card_lt he₂,
        eraseLead_support_card_lt (mul_ne_zero (X_sub_C_ne_zero x) hp)]
    have h₂ : #(X - C x).support = 2 := by
      simpa [← sub_eq_add_neg] using!
        card_support_binomial one_ne_zero one_ne_zero (neg_ne_zero.mpr hx)
    have hmul := card_support_mul_le (p := X - C x) (q := P)
    rw [h₂] at hmul
    linarith [card_support_le_one_of_eraseLead_eq_zero he]
  have h₁ : ((X - C x) * P).natDegree = P.natDegree + 1 := by
    rw [natDegree_mul (X_sub_C_ne_zero x) hp, natDegree_X_sub_C, add_comm]
  -- 2 ≤ P.natDegree
  obtain ⟨dP, hdP⟩ := Nat.exists_eq_add_of_le' (two_le_natDegree_of_nextCoeff_eraseLead he h)
  -- the subleading term of (X - C η) * P is nonzero
  have h₂ : ((X - C x) * P).nextCoeff ≠ 0 := by
    simp only [nextCoeff, hdP, Nat.succ_ne_zero, ite_false, Nat.add_one_sub_one] at h
    rw [nextCoeff, h₁, add_tsub_cancel_right, hdP, coeff_X_sub_C_mul]
    simp [h, hx, ← hdP, hp]
  -- Prove equality by showing coefficients are equal
  ext n
  rcases n.lt_or_ge P.natDegree with hn | hn
  · --n < P.natDegree
    have hd₁ : n < ((X - C x) * P).eraseLead.natDegree := by
      linarith [natDegree_eraseLead_add_one h₂]
    rw [← self_sub_monomial_natDegree_leadingCoeff, coeff_sub, coeff_monomial, ite_eq_right hd₁.ne']
    rw [← self_sub_monomial_natDegree_leadingCoeff, coeff_sub, coeff_monomial,
      ite_eq_right (by lia)]
    rw [← self_sub_monomial_natDegree_leadingCoeff, mul_sub, coeff_sub,
      sub_zero, sub_zero, eq_sub_iff_add_eq, add_eq_left]
    rcases hn₂ : n
    · simpa [coeff_monomial, hp] using! fun _ ↦ by lia
    · rw [coeff_X_sub_C_mul, coeff_monomial, coeff_monomial, ite_eq_right (by lia),
        ite_eq_right (by lia), mul_zero, sub_zero]
  · --n ≥ P.natDegree, so all the coefficients are zero.
    trans 0 <;> rw [coeff_eq_zero_of_natDegree_lt]
    · grw [eraseLead_natDegree_le, eraseLead_natDegree_le]
      simpa [h₁, hdP] using! hn
    · grw [natDegree_mul (X_sub_C_ne_zero x) he, natDegree_eraseLead_le_of_nextCoeff_eq_zero h]
      simpa [add_comm, hdP] using! hn

end EraseLead

/-- An induction lemma for polynomials. It takes a natural number `N` as a parameter, that is
required to be at least as big as the `natDegree` of the polynomial.  This is useful to prove
results where you want to change each term in a polynomial to something else depending on the
`natDegree` of the polynomial itself and not on the specific `natDegree` of each term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/EraseLead/Variantb0ed21c603ffa18e05fc4599fa3c3464b725d5253d81e7a646bc66653f7f3c03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variantb0ed21c603ffa18e05fc4599fa3c3464b725d5253d81e7a646bc66653f7f3c03.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `097318f43f87cd5bab8c63e9c4b87197e695b893` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
