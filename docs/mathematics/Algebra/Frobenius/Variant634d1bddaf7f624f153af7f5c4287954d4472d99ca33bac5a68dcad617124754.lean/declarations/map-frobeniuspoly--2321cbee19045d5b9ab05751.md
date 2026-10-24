# map_frobeniusPoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:095f45ab-eae0-a666-f6eb-e6d3549dbe69",
  "kind": "theorem",
  "lexical_name": "map_frobeniusPoly",
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
  "slug": "map-frobeniuspoly--2321cbee19045d5b9ab05751",
  "source": {
    "blob": "6ea93b0c41b922140d168b0ec6fff4e801ba9761",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 153,
    "path": "GRWTSK/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2321cbee19045d5b9ab05751080a6bdde2cee55ea940df31440cead2fd329fb8",
  "verification": {
    "reference": "docs/verification/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:095f45ab-eae0-a666-f6eb-e6d3549dbe69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_frobeniusPoly (n : ℕ) :
    MvPolynomial.map (Int.castRingHom ℚ) (frobeniusPoly p n) = frobeniusPolyRat p n := by
  rw [frobeniusPoly, RingHom.map_add, RingHom.map_mul, RingHom.map_pow, map_C, map_X, eq_intCast,
    Int.cast_ofNat, frobeniusPolyRat]
  refine Nat.strong_induction_on n ?_; clear n
  intro n IH
  rw [xInTermsOfW_eq]
  simp only [AlgHom.map_sum, AlgHom.map_sub, AlgHom.map_mul, AlgHom.map_pow, bind₁_C_right]
  have h1 : (p : ℚ) ^ n * ⅟ (p : ℚ) ^ n = 1 := by rw [← mul_pow, mul_invOf_self, one_pow]
  rw [bind₁_X_right, Function.comp_apply, wittPolynomial_eq_sum_C_mul_X_pow, sum_range_succ,
    sum_range_succ, tsub_self, add_tsub_cancel_left, pow_zero, pow_one, pow_one, sub_mul, add_mul,
    add_mul, mul_right_comm, mul_right_comm (C ((p : ℚ) ^ (n + 1))), ← C_mul, ← C_mul, pow_succ,
    mul_assoc (p : ℚ) ((p : ℚ) ^ n), h1, mul_one, C_1, one_mul, add_comm _ (X n ^ p), add_assoc,
    ← add_sub, add_right_inj, frobeniusPolyAux_eq, RingHom.map_sub, map_X, mul_sub, sub_eq_add_neg,
    add_comm _ (C (p : ℚ) * X (n + 1)), ← add_sub, show (Int.castRingHom ℚ) ↑p = (p : ℚ) from rfl,
    add_right_inj, neg_eq_iff_eq_neg, neg_sub, eq_comm]
  simp only [map_sum, mul_sum, sum_mul, ← sum_sub_distrib]
  apply sum_congr rfl
  intro i hi
  rw [mem_range] at hi
  rw [← IH i hi]
  clear IH
  rw [add_comm (X i ^ p), add_pow, sum_range_succ', pow_zero, tsub_zero, Nat.choose_zero_right,
    one_mul, Nat.cast_one, mul_one, mul_add, add_mul, Nat.succ_sub (le_of_lt hi),
    Nat.succ_eq_add_one (n - i), pow_succ, pow_mul, add_sub_cancel, mul_sum, sum_mul]
  apply sum_congr rfl
  intro j hj
  rw [mem_range] at hj
  rw [RingHom.map_mul, RingHom.map_mul, RingHom.map_pow, RingHom.map_pow, RingHom.map_pow,
    RingHom.map_pow, RingHom.map_pow, map_C, map_X, mul_pow]
  rw [mul_comm (C (p : ℚ) ^ i), mul_comm _ ((X i ^ p) ^ _),
    show (Int.castRingHom ℚ) ↑p = (p : ℚ) from rfl, mul_comm (C (p : ℚ) ^ (j + 1)),
    mul_comm (C (p : ℚ))]
  simp only [mul_assoc]
  apply congr_arg
  apply congr_arg
  rw [← C_eq_coe_nat]
  simp only [← RingHom.map_pow, ← C_mul]
  rw [C_inj]
  simp only [invOf_eq_inv, eq_intCast, inv_pow, Int.cast_ofNat, Nat.cast_mul, Int.cast_mul]
  rw [Rat.coe_nat_div _ _ (map_frobeniusPoly.key₁ p (n - i) j hj)]
  simp only [Nat.cast_pow, pow_add, pow_one]
  suffices
    (((p ^ (n - i)).choose (j + 1): ℚ) * (p : ℚ) ^ (j - v p ⟨j + 1, j.succ_pos⟩) * ↑p * (p ^ n : ℚ))
      = (p : ℚ) ^ j * p * ↑((p ^ (n - i)).choose (j + 1) * p ^ i) *
        (p : ℚ) ^ (n - i - v p ⟨j + 1, j.succ_pos⟩) by
    have aux : ∀ k : ℕ, (p : ℚ)^ k ≠ 0 := by
      intro; apply pow_ne_zero; exact_mod_cast hp.1.ne_zero
    simpa [aux, -one_div, field_simps] using this.symm
  rw [mul_comm _ (p : ℚ), mul_assoc, Nat.cast_pow, mul_assoc, ← pow_add,
    map_frobeniusPoly.key₂ p hi.le hj, Nat.cast_mul, Nat.cast_pow]
  ring
#align witt_vector.map_frobenius_poly WittVector.map_frobeniusPoly

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ea93b0c41b922140d168b0ec6fff4e801ba9761` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
