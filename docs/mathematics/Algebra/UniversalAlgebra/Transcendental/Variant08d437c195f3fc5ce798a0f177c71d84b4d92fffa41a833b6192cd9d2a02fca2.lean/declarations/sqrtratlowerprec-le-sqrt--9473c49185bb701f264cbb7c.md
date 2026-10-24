# sqrtRatLowerPrec_le_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c2d10db-5be7-ffc2-8cce-03d1f73e1345",
  "kind": "theorem",
  "lexical_name": "sqrtRatLowerPrec_le_sqrt",
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
  "slug": "sqrtratlowerprec-le-sqrt--9473c49185bb701f264cbb7c",
  "source": {
    "blob": "169edbfcc39677131ff0f1c11bc6349f9be14724",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 408,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9473c49185bb701f264cbb7cac443ae794b17bc8909af98cd3ae008e20e19e91",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c2d10db-5be7-ffc2-8cce-03d1f73e1345`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrtRatLowerPrec_le_sqrt {q : ℚ} (hq : 0 ≤ q) (k : Nat) :
    (sqrtRatLowerPrec q k : ℝ) ≤ Real.sqrt q := by
  simp only [sqrtRatLowerPrec]
  by_cases! hq0 : q ≤ 0
  · have heq : q = 0 := le_antisymm hq0 hq
    simp only [heq, le_refl, ↓reduceIte, Rat.cast_zero, Real.sqrt_zero]
  · simp only [not_le.mpr hq0, ↓reduceIte]
    -- Setup: let num = q.num.natAbs, den = q.den, scaledNum = num * 4^k
    -- We compute s = floor(sqrt(scaledNum * den)) and return s / (den * 2^k)
    -- Goal: s / (den * 2^k) ≤ sqrt(q) = sqrt(num/den)
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

    -- s^2 ≤ prod, so s ≤ sqrt(prod)
    have hsq : s ^ 2 ≤ prod := nat_sqrt_sq_le prod
    have hs_le_sqrt : (s : ℝ) ≤ Real.sqrt prod := by
      have h1 : (s : ℝ) ^ 2 ≤ prod := by exact_mod_cast hsq
      have h2 := Real.sqrt_sq (Nat.cast_nonneg s)
      calc (s : ℝ) = Real.sqrt ((s : ℝ) ^ 2) := h2.symm
        _ ≤ Real.sqrt prod := Real.sqrt_le_sqrt h1

    -- sqrt(prod) = sqrt(num * 4^k * den) = sqrt(num * den) * 2^k
    have h4k_eq : (2 : ℝ) ^ (2 * k) = ((2 : ℝ) ^ k) ^ 2 := by ring
    have hsqrt_prod : Real.sqrt (prod : ℕ) = Real.sqrt (num * den) * 2 ^ k := by
      calc Real.sqrt (prod : ℕ) = Real.sqrt ((scaledNum * den : ℕ) : ℝ) := by simp only [prod]
        _ = Real.sqrt ((num * 2 ^ (2 * k) * den : ℕ) : ℝ) := by simp only [scaledNum]
        _ = Real.sqrt ((num : ℝ) * 2 ^ (2 * k) * den) := by push_cast; ring_nf
        _ = Real.sqrt ((num : ℝ) * den * (2 ^ k) ^ 2) := by rw [h4k_eq]; ring_nf
        _ = Real.sqrt ((num : ℝ) * den) * Real.sqrt ((2 ^ k) ^ 2) := by
            rw [Real.sqrt_mul (mul_nonneg hnum_real_nn hden_nn)]
        _ = Real.sqrt ((num : ℝ) * den) * 2 ^ k := by rw [Real.sqrt_sq h2k_nn]

    -- q = num/den, so sqrt(q) = sqrt(num)/sqrt(den) = sqrt(num*den)/den
    have hq_eq : (q : ℝ) = (num : ℝ) / den := by
      have habs : (q.num : ℤ) = num := (Int.natAbs_of_nonneg hnum_nn).symm
      rw [Rat.cast_def, habs, Int.cast_natCast]

    -- Final calculation
    simp only [Rat.cast_div, Rat.cast_natCast, Rat.cast_mul, Rat.cast_pow, Rat.cast_ofNat]
    rw [hq_eq, Real.sqrt_div hnum_real_nn]
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
    calc (s : ℝ) / (den * 2 ^ k)
        ≤ Real.sqrt prod / (den * 2 ^ k) :=
          div_le_div_of_nonneg_right hs_le_sqrt (le_of_lt hden2k_pos)
      _ = (Real.sqrt (num * den) * 2 ^ k) / (den * 2 ^ k) := by rw [hsqrt_prod]
      _ = Real.sqrt (num * den) / den := by rw [mul_div_mul_right _ _ (ne_of_gt h2k_pos)]
      _ = Real.sqrt num / Real.sqrt den := hsqrt_conv

/-- Soundness of sqrtRatUpperPrec: Real.sqrt q ≤ sqrtRatUpperPrec q k for q ≥ 0 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `169edbfcc39677131ff0f1c11bc6349f9be14724` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
