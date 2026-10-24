# sqrtRatLower_le_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41f27d3f-7682-0723-79f8-38e318826385",
  "kind": "theorem",
  "lexical_name": "sqrtRatLower_le_sqrt",
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
  "slug": "sqrtratlower-le-sqrt--dceb4bb95b8443449f291d1d",
  "source": {
    "blob": "169edbfcc39677131ff0f1c11bc6349f9be14724",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 265,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dceb4bb95b8443449f291d1d1f4231bd8101af73d3448893fc9d34b72e74858c",
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

Occurrence: `result:41f27d3f-7682-0723-79f8-38e318826385`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrtRatLower_le_sqrt {q : ℚ} (hq : 0 ≤ q) : (sqrtRatLower q : ℝ) ≤ Real.sqrt q := by
  simp only [sqrtRatLower]
  by_cases! hq0 : q ≤ 0
  · -- q = 0
    have heq : q = 0 := le_antisymm hq0 hq
    simp only [heq, le_refl, ↓reduceIte, Rat.cast_zero, Real.sqrt_zero]
  · -- q > 0
    simp only [not_le.mpr hq0, ↓reduceIte]
    -- Key insight: sqrtRatLower returns s/den where s = floor(sqrt(num*den))
    -- We want to show s/den ≤ sqrt(q) = sqrt(num/den)
    -- This follows because s^2 ≤ num*den, so s ≤ sqrt(num*den), hence s/den ≤ sqrt(num*den)/den = sqrt(num/den)
    have hden_pos : (0 : ℝ) < q.den := by exact_mod_cast q.den_pos
    have hden_nn : (0 : ℝ) ≤ q.den := le_of_lt hden_pos
    have hsqrt_den_pos : 0 < Real.sqrt q.den := Real.sqrt_pos.mpr hden_pos
    have hnum_nn : 0 ≤ q.num := Rat.num_nonneg.mpr hq
    have hnum_real_nn : (0 : ℝ) ≤ q.num.natAbs := Nat.cast_nonneg _
    -- s^2 ≤ num * den
    have hsq : (intSqrtNat (q.num.natAbs * q.den))^2 ≤ q.num.natAbs * q.den := nat_sqrt_sq_le _
    -- s ≤ sqrt(num * den)
    have hs_le : (intSqrtNat (q.num.natAbs * q.den) : ℝ) ≤ Real.sqrt (q.num.natAbs * q.den) := by
      have h1 : ((intSqrtNat (q.num.natAbs * q.den) : ℕ) : ℝ) ^ 2 ≤ (q.num.natAbs * q.den : ℕ) := by
        exact_mod_cast hsq
      have h2 := Real.sqrt_sq (Nat.cast_nonneg (intSqrtNat (q.num.natAbs * q.den)))
      calc (intSqrtNat (q.num.natAbs * q.den) : ℝ)
          = Real.sqrt ((intSqrtNat (q.num.natAbs * q.den) : ℝ) ^ 2) := h2.symm
        _ ≤ Real.sqrt ((q.num.natAbs * q.den : ℕ) : ℝ) := Real.sqrt_le_sqrt h1
        _ = Real.sqrt ((q.num.natAbs : ℝ) * q.den) := by rw [Nat.cast_mul]
    -- q = num/den and sqrt(q) = sqrt(num)/sqrt(den) = sqrt(num*den)/den (after scaling)
    have hq_eq : (q : ℝ) = (q.num.natAbs : ℝ) / q.den := by
      have habs : (q.num : ℤ) = q.num.natAbs := (Int.natAbs_of_nonneg hnum_nn).symm
      rw [Rat.cast_def, habs, Int.cast_natCast]
      simp only [Int.natAbs_natCast]
    simp only [Rat.cast_div, Rat.cast_natCast]
    rw [hq_eq, Real.sqrt_div hnum_real_nn, div_le_div_iff₀ hden_pos hsqrt_den_pos]
    -- Goal: s * sqrt(den) ≤ sqrt(num) * den
    calc (intSqrtNat (q.num.natAbs * q.den) : ℝ) * Real.sqrt q.den
        ≤ Real.sqrt (q.num.natAbs * q.den) * Real.sqrt q.den := by
            apply mul_le_mul_of_nonneg_right hs_le (le_of_lt hsqrt_den_pos)
      _ = Real.sqrt (q.num.natAbs) * Real.sqrt q.den * Real.sqrt q.den := by
            rw [Real.sqrt_mul hnum_real_nn]
      _ = Real.sqrt (q.num.natAbs) * (Real.sqrt q.den * Real.sqrt q.den) := by ring
      _ = Real.sqrt (q.num.natAbs) * q.den := by rw [Real.mul_self_sqrt hden_nn]

/-- Soundness of sqrtRatUpper: Real.sqrt q ≤ sqrtRatUpper q for q ≥ 0 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `169edbfcc39677131ff0f1c11bc6349f9be14724` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
