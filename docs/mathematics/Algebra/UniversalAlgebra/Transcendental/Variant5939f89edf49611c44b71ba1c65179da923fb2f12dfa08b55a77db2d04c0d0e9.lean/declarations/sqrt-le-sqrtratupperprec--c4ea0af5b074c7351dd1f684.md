# sqrt_le_sqrtRatUpperPrec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9397c5555a168ef248c757c9211b9ab111d5301b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 470,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2048c72-f88c-2651-fc8c-7760b0a9ec39",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae8466f1-839c-8a73-43d4-79b267bb94a9",
  "kind": "theorem",
  "lexical_name": "sqrt_le_sqrtRatUpperPrec",
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
  "slug": "sqrt-le-sqrtratupperprec--c4ea0af5b074c7351dd1f684",
  "source": {
    "blob": "9397c5555a168ef248c757c9211b9ab111d5301b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 470,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4ea0af5b074c7351dd1f684d409e6bdedf3789c3bf19f5e937ff5820caf0832",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae8466f1-839c-8a73-43d4-79b267bb94a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_le_sqrtRatUpperPrec {q : ℚ} (hq : 0 ≤ q) (k : Nat) :
    Real.sqrt q ≤ (sqrtRatUpperPrec q k : ℝ) := by
  simp only [sqrtRatUpperPrec]
  by_cases! hq0 : q ≤ 0
  · have heq : q = 0 := le_antisymm hq0 hq
    simp only [heq, le_refl, ↓reduceIte, Rat.cast_zero, Real.sqrt_zero]
  · simp only [not_le.mpr hq0, ↓reduceIte]
    have hden_pos : (0 : ℝ) < q.den := by exact_mod_cast q.den_pos
    have hden_nn : (0 : ℝ) ≤ q.den := le_of_lt hden_pos
    have hnum_nn : 0 ≤ q.num := Rat.num_nonneg.mpr hq
    have hnum_real_nn : (0 : ℝ) ≤ q.num.natAbs := Nat.cast_nonneg _
    have h2k_pos : (0 : ℝ) < 2 ^ k := pow_pos (by norm_num : (0 : ℝ) < 2) k
    have h2k_nn : (0 : ℝ) ≤ 2 ^ k := le_of_lt h2k_pos
    have hden2k_pos : (0 : ℝ) < q.den * 2 ^ k := mul_pos hden_pos h2k_pos

    set num := q.num.natAbs
    set den := q.den
    set scaledNum := num * 2 ^ (2 * k)
    set prod := scaledNum * den
    set s := intSqrtNat prod

    -- sqrt(prod) ≤ result (either s or s+1)
    have h4k_eq : (2 : ℝ) ^ (2 * k) = ((2 : ℝ) ^ k) ^ 2 := by ring
    have hsqrt_prod : Real.sqrt (prod : ℕ) = Real.sqrt (num * den) * 2 ^ k := by
      calc Real.sqrt (prod : ℕ) = Real.sqrt ((scaledNum * den : ℕ) : ℝ) := by simp only [prod]
        _ = Real.sqrt ((num * 2 ^ (2 * k) * den : ℕ) : ℝ) := by simp only [scaledNum]
        _ = Real.sqrt ((num : ℝ) * 2 ^ (2 * k) * den) := by push_cast; ring_nf
        _ = Real.sqrt ((num : ℝ) * den * (2 ^ k) ^ 2) := by rw [h4k_eq]; ring_nf
        _ = Real.sqrt ((num : ℝ) * den) * Real.sqrt ((2 ^ k) ^ 2) := by
            rw [Real.sqrt_mul (mul_nonneg hnum_real_nn hden_nn)]
        _ = Real.sqrt ((num : ℝ) * den) * 2 ^ k := by rw [Real.sqrt_sq h2k_nn]

    have hq_eq : (q : ℝ) = (num : ℝ) / den := by
      have habs : (q.num : ℤ) = num := (Int.natAbs_of_nonneg hnum_nn).symm
      rw [Rat.cast_def, habs, Int.cast_natCast]

    have hsqrt_den_pos : 0 < Real.sqrt den := Real.sqrt_pos.mpr hden_pos
    -- Key helper: sqrt(num * den) / den = sqrt(num) / sqrt(den)
    have hsqrt_conv : Real.sqrt (num * den) / den = Real.sqrt num / Real.sqrt den := by
      have hden_sqrt_mul : Real.sqrt den * Real.sqrt den = den := Real.mul_self_sqrt hden_nn
      calc Real.sqrt (num * den) / den
          = Real.sqrt num * Real.sqrt den / den := by rw [Real.sqrt_mul hnum_real_nn]
        _ = Real.sqrt num * Real.sqrt den / (Real.sqrt den * Real.sqrt den) := by rw [hden_sqrt_mul]
        _ = Real.sqrt num * (Real.sqrt den / (Real.sqrt den * Real.sqrt den)) := by rw [mul_div_assoc]
        _ = Real.sqrt num * (Real.sqrt den / Real.sqrt den / Real.sqrt den) := by rw [div_mul_eq_div_div]
        _ = Real.sqrt num * (1 / Real.sqrt den) := by rw [div_self (ne_of_gt hsqrt_den_pos)]
        _ = Real.sqrt num / Real.sqrt den := by rw [mul_one_div]

    by_cases hperfect : s * s = prod
    · -- Perfect square: result = s, and sqrt(prod) = s
      simp only [hperfect, ↓reduceIte, Rat.cast_div, Rat.cast_natCast, Rat.cast_mul,
                 Rat.cast_pow, Rat.cast_ofNat]
      have hsqrt_eq_s : Real.sqrt (prod : ℕ) = s := by
        have h : (s : ℝ) ^ 2 = prod := by
          calc (s : ℝ) ^ 2 = ((s * s : ℕ) : ℝ) := by push_cast; ring
            _ = prod := by exact_mod_cast hperfect
        rw [← h, Real.sqrt_sq (Nat.cast_nonneg s)]
      rw [hq_eq, Real.sqrt_div hnum_real_nn]
      calc Real.sqrt num / Real.sqrt den
          = Real.sqrt (num * den) / den := hsqrt_conv.symm
        _ = (Real.sqrt (num * den) * 2 ^ k) / (den * 2 ^ k) := by
            rw [mul_div_mul_right _ _ (ne_of_gt h2k_pos)]
        _ = Real.sqrt prod / (den * 2 ^ k) := by rw [hsqrt_prod]
        _ ≤ (s : ℝ) / (den * 2 ^ k) := by rw [hsqrt_eq_s]
    · -- Non-perfect square: result = s + 1, and sqrt(prod) < s + 1
      simp only [hperfect, ↓reduceIte, Rat.cast_div, Rat.cast_natCast, Rat.cast_mul,
                 Rat.cast_pow, Rat.cast_ofNat]
      have hlt : prod < (s + 1) ^ 2 := nat_lt_succ_sqrt_sq prod
      have hsqrt_lt : Real.sqrt (prod : ℕ) < (s + 1 : ℕ) := by
        have h1 : (prod : ℝ) < ((s + 1) ^ 2 : ℕ) := by exact_mod_cast hlt
        have h2 : (0 : ℝ) ≤ (s + 1 : ℕ) := Nat.cast_nonneg _
        have h3 : Real.sqrt (prod : ℕ) < Real.sqrt (((s + 1) ^ 2 : ℕ) : ℝ) :=
          Real.sqrt_lt_sqrt (Nat.cast_nonneg _) h1
        have h4 : Real.sqrt (((s + 1) ^ 2 : ℕ) : ℝ) = (s + 1 : ℕ) := by
          have : (((s + 1) ^ 2 : ℕ) : ℝ) = ((s + 1 : ℕ) : ℝ) ^ 2 := by push_cast; ring
          rw [this, Real.sqrt_sq h2]
        exact h3.trans_eq h4
      rw [hq_eq, Real.sqrt_div hnum_real_nn]
      calc Real.sqrt num / Real.sqrt den
          = Real.sqrt (num * den) / den := hsqrt_conv.symm
        _ = (Real.sqrt (num * den) * 2 ^ k) / (den * 2 ^ k) := by
            rw [mul_div_mul_right _ _ (ne_of_gt h2k_pos)]
        _ = Real.sqrt prod / (den * 2 ^ k) := by rw [hsqrt_prod]
        _ ≤ (s + 1 : ℕ) / (den * 2 ^ k) :=
            div_le_div_of_nonneg_right (le_of_lt hsqrt_lt) (le_of_lt hden2k_pos)

/-- High-precision square root interval.
    For a non-negative interval [lo, hi] with lo ≥ 0:
    - Lower bound: sqrtRatLowerPrec(lo)
    - Upper bound: sqrtRatUpperPrec(hi)

    Uses scaling to achieve ~6 decimal digits of precision. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9397c5555a168ef248c757c9211b9ab111d5301b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
