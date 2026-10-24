# sqrt_le_sqrtRatUpper

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
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c8bacd9-6d2e-7e9c-33c0-73b77d4aa9d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18c26f45-3cfa-4cc6-b545-43296b8ddf28",
  "kind": "theorem",
  "lexical_name": "sqrt_le_sqrtRatUpper",
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
  "slug": "sqrt-le-sqrtratupper--312340730a036fafb26bdba0",
  "source": {
    "blob": "9397c5555a168ef248c757c9211b9ab111d5301b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 301,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:312340730a036fafb26bdba0134f300eb6e5ed72bb8c2f90d5ba0b415f1f7601",
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

Occurrence: `result:18c26f45-3cfa-4cc6-b545-43296b8ddf28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_le_sqrtRatUpper {q : ℚ} (hq : 0 ≤ q) : Real.sqrt q ≤ (sqrtRatUpper q : ℝ) := by
  simp only [sqrtRatUpper]
  by_cases! hq0 : q ≤ 0
  · -- q = 0
    have heq : q = 0 := le_antisymm hq0 hq
    simp only [heq, le_refl, ↓reduceIte, Rat.cast_zero, Real.sqrt_zero]
  · -- q > 0
    simp only [not_le.mpr hq0, ↓reduceIte]
    have hden_pos : (0 : ℝ) < q.den := by exact_mod_cast q.den_pos
    have hden_nn : (0 : ℝ) ≤ q.den := le_of_lt hden_pos
    have hnum_nn : 0 ≤ q.num := Rat.num_nonneg.mpr hq
    have hnum_real_nn : (0 : ℝ) ≤ q.num.natAbs := Nat.cast_nonneg _
    have hsqrt_den_pos : 0 < Real.sqrt q.den := Real.sqrt_pos.mpr hden_pos
    have hq_eq : (q : ℝ) = (q.num.natAbs : ℝ) / q.den := by
      have habs : (q.num : ℤ) = q.num.natAbs := (Int.natAbs_of_nonneg hnum_nn).symm
      rw [Rat.cast_def, habs, Int.cast_natCast]
      simp only [Int.natAbs_natCast]
    set prod := q.num.natAbs * q.den
    set s := intSqrtNat prod
    rw [hq_eq, Real.sqrt_div hnum_real_nn]
    by_cases hperfect : s * s = prod
    · -- Perfect square case: s^2 = num * den, so sqrt(num*den) = s
      simp only [hperfect, ↓reduceIte, Rat.cast_div, Rat.cast_natCast]
      rw [div_le_div_iff₀ hsqrt_den_pos hden_pos]
      -- sqrt(num*den) = s since s^2 = num*den
      have heq_sqrt : Real.sqrt ((q.num.natAbs : ℝ) * q.den) = s := by
        have h : (s : ℝ) ^ 2 = (q.num.natAbs : ℝ) * q.den := by
          calc (s : ℝ) ^ 2 = ((s * s : ℕ) : ℝ) := by push_cast; ring
            _ = (prod : ℝ) := by exact_mod_cast hperfect
            _ = (q.num.natAbs : ℝ) * q.den := by simp only [prod, Nat.cast_mul]
        rw [← h, Real.sqrt_sq (Nat.cast_nonneg s)]
      calc Real.sqrt q.num.natAbs * q.den
          = Real.sqrt q.num.natAbs * (Real.sqrt q.den * Real.sqrt q.den) := by
              rw [Real.mul_self_sqrt hden_nn]
        _ = (Real.sqrt q.num.natAbs * Real.sqrt q.den) * Real.sqrt q.den := by ring
        _ = Real.sqrt ((q.num.natAbs : ℝ) * q.den) * Real.sqrt q.den := by
              rw [Real.sqrt_mul hnum_real_nn]
        _ = (s : ℝ) * Real.sqrt q.den := by rw [heq_sqrt]
        _ ≤ (s : ℝ) * Real.sqrt q.den := le_refl _
    · -- Non-perfect square case: prod < (s+1)^2
      simp only [hperfect, ↓reduceIte, Rat.cast_div, Rat.cast_natCast]
      rw [div_le_div_iff₀ hsqrt_den_pos hden_pos]
      have hlt : prod < (s + 1) ^ 2 := nat_lt_succ_sqrt_sq prod
      have hsqrt_le : Real.sqrt ((q.num.natAbs : ℝ) * q.den) ≤ (s + 1 : ℕ) := by
        have h1 : (q.num.natAbs : ℝ) * q.den < ((s + 1) ^ 2 : ℕ) := by
          calc (q.num.natAbs : ℝ) * q.den = (prod : ℕ) := by simp only [prod, Nat.cast_mul]
            _ < ((s + 1) ^ 2 : ℕ) := by exact_mod_cast hlt
        have h2 : (0 : ℝ) ≤ (s + 1 : ℕ) := Nat.cast_nonneg _
        have h3 : Real.sqrt ((q.num.natAbs : ℝ) * q.den) < Real.sqrt (((s + 1) ^ 2 : ℕ) : ℝ) :=
          Real.sqrt_lt_sqrt (mul_nonneg hnum_real_nn hden_nn) h1
        have h4 : Real.sqrt (((s + 1) ^ 2 : ℕ) : ℝ) = (s + 1 : ℕ) := by
          have : (((s + 1) ^ 2 : ℕ) : ℝ) = ((s + 1 : ℕ) : ℝ) ^ 2 := by push_cast; ring
          rw [this, Real.sqrt_sq h2]
        exact le_of_lt (h3.trans_eq h4)
      have hgoal : Real.sqrt q.num.natAbs * q.den ≤ ((s + 1 : ℕ) : ℝ) * Real.sqrt q.den := by
        calc Real.sqrt q.num.natAbs * q.den
            = Real.sqrt q.num.natAbs * (Real.sqrt q.den * Real.sqrt q.den) := by
                rw [Real.mul_self_sqrt hden_nn]
          _ = (Real.sqrt q.num.natAbs * Real.sqrt q.den) * Real.sqrt q.den := by ring
          _ = Real.sqrt ((q.num.natAbs : ℝ) * q.den) * Real.sqrt q.den := by
                rw [Real.sqrt_mul hnum_real_nn]
          _ ≤ ((s + 1 : ℕ) : ℝ) * Real.sqrt q.den := by
              exact mul_le_mul_of_nonneg_right hsqrt_le (le_of_lt hsqrt_den_pos)
      convert hgoal using 2
      push_cast
      ring

/-- Square root interval with conservative bounds.
    For a non-negative interval [lo, hi], sqrt is monotone so:
    sqrt([lo, hi]) ⊆ [0, max(hi, 1)]

    The lower bound is 0 (always sound for sqrt).
    The upper bound uses max(hi, 1) which satisfies sqrt(x) ≤ max(x, 1) for x ≥ 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9397c5555a168ef248c757c9211b9ab111d5301b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
