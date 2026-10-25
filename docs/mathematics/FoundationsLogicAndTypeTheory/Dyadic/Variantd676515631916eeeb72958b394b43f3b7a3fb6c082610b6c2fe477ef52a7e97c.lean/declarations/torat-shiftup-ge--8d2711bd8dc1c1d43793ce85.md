# toRat_shiftUp_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7bfe4fb-b55d-3572-a0f8-be0d8181859d",
  "kind": "theorem",
  "lexical_name": "toRat_shiftUp_ge",
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
  "slug": "torat-shiftup-ge--8d2711bd8dc1c1d43793ce85",
  "source": {
    "blob": "7a11771e83344217b96835a985a05ee76e480373",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 461,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Dyadic/Variantd676515631916eeeb72958b394b43f3b7a3fb6c082610b6c2fe477ef52a7e97c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d2711bd8dc1c1d43793ce8578b5e1999dc00cc381021bed73f6887ce995bf4c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Dyadic/Variantd676515631916eeeb72958b394b43f3b7a3fb6c082610b6c2fe477ef52a7e97c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7bfe4fb-b55d-3572-a0f8-be0d8181859d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toRat_shiftUp_ge (d : Dyadic) (newExp : Int) :
    d.toRat ≤ (shiftUp d newExp).toRat := by
  simp only [shiftUp]
  split_ifs with h hlowbits
  · exact le_refl _
  · -- Case: Lost bits, added 1
    push Not at h
    set diff := (newExp - d.exponent).toNat with hdiff_def
    have hdiff : (diff : ℤ) = newExp - d.exponent := by
      rw [hdiff_def, Int.toNat_of_nonneg]; omega
    have hnewExp : newExp = d.exponent + diff := by omega
    rw [toRat_eq, toRat_eq]
    simp only [shiftRightInt, pow2Nat_eq_pow, hasLowBits] at hlowbits ⊢
    -- Use int_ediv_add_one_mul_ge: m ≤ (m/b + 1) * b when m % b ≠ 0
    have hpow_int_pos : (0 : ℤ) < (2 ^ diff : ℕ) := Int.natCast_pos.mpr (Nat.one_le_two_pow)
    have hrem : d.mantissa % (2 ^ diff : ℕ) ≠ 0 := by simp only [ne_eq, decide_eq_true_eq] at hlowbits; exact hlowbits
    have hceil : d.mantissa ≤ (d.mantissa / (2 ^ diff : ℕ) + 1) * (2 ^ diff : ℕ) :=
      int_ediv_add_one_mul_ge d.mantissa (2 ^ diff : ℕ) hpow_int_pos hrem
    -- Key: 2^newExp = 2^d.exponent * 2^diff
    have hpow : (2 : ℚ) ^ newExp = 2 ^ d.exponent * (2 : ℚ) ^ diff := by
      rw [hnewExp, zpow_add₀ (two_ne_zero), zpow_natCast]
    rw [hpow]
    have hpos : (0 : ℚ) < 2 ^ d.exponent := zpow_pos (by norm_num : (0 : ℚ) < 2) _
    -- Convert hceil to ℚ: m ≤ (m/b + 1) * b
    have hq : (d.mantissa : ℚ) ≤ (↑(d.mantissa / (2 ^ diff : ℕ) + 1)) * ((2 : ℚ) ^ diff) := by
      have heq : ((2 : ℚ) ^ diff) = ((2 ^ diff : ℕ) : ℚ) := by simp
      rw [heq]
      calc (d.mantissa : ℚ) ≤ ↑((d.mantissa / (2 ^ diff : ℕ) + 1) * (2 ^ diff : ℕ)) := Int.cast_le.mpr hceil
        _ = ↑(d.mantissa / (2 ^ diff : ℕ) + 1) * ↑(2 ^ diff : ℕ) := by simp only [Int.cast_mul, Int.cast_natCast]
    -- Rearrange and apply hq
    have hrearr : (↑(d.mantissa / (2 ^ diff : ℕ) + 1) : ℚ) * (2 ^ d.exponent * (2 : ℚ) ^ diff)
                = (↑(d.mantissa / (2 ^ diff : ℕ) + 1)) * ((2 : ℚ) ^ diff) * 2 ^ d.exponent := by
      rw [mul_comm (2 ^ d.exponent) ((2 : ℚ) ^ diff), mul_assoc]
    rw [hrearr]
    calc (d.mantissa : ℚ) * 2 ^ d.exponent
        ≤ (↑(d.mantissa / (2 ^ diff : ℕ) + 1) * ((2 : ℚ) ^ diff)) * 2 ^ d.exponent :=
            mul_le_mul_of_nonneg_right hq (le_of_lt hpos)
      _ = ↑(d.mantissa / (2 ^ diff : ℕ) + 1) * (2 : ℚ) ^ diff * 2 ^ d.exponent := by rfl
  · -- Case: No lost bits, exact (equality)
    push Not at h
    set diff := (newExp - d.exponent).toNat with hdiff_def
    have hdiff : (diff : ℤ) = newExp - d.exponent := by
      rw [hdiff_def, Int.toNat_of_nonneg]; omega
    have hnewExp : newExp = d.exponent + diff := by omega
    rw [toRat_eq, toRat_eq]
    simp only [shiftRightInt, pow2Nat_eq_pow, hasLowBits] at hlowbits ⊢
    -- Use int_ediv_mul_eq: (m/b) * b = m when m % b = 0
    have hpow_int_pos : (0 : ℤ) < (2 ^ diff : ℕ) := Int.natCast_pos.mpr (Nat.one_le_two_pow)
    have hrem : d.mantissa % (2 ^ diff : ℕ) = 0 := by
      simp only [ne_eq, decide_eq_true_eq, not_not] at hlowbits; exact hlowbits
    have hexact : (d.mantissa / (2 ^ diff : ℕ)) * (2 ^ diff : ℕ) = d.mantissa :=
      int_ediv_mul_eq d.mantissa (2 ^ diff : ℕ) hpow_int_pos hrem
    -- Key: 2^newExp = 2^d.exponent * 2^diff
    have hpow : (2 : ℚ) ^ newExp = 2 ^ d.exponent * (2 : ℚ) ^ diff := by
      rw [hnewExp, zpow_add₀ (two_ne_zero), zpow_natCast]
    rw [hpow]
    -- Goal: m * 2^exp ≤ (m/b) * (2^exp * 2^diff)
    -- Since (m/b) * b = m, this is equality
    have heq : ((2 : ℚ) ^ diff) = ((2 ^ diff : ℕ) : ℚ) := by simp
    calc (d.mantissa : ℚ) * 2 ^ d.exponent
        = ↑((d.mantissa / (2 ^ diff : ℕ)) * (2 ^ diff : ℕ)) * 2 ^ d.exponent := by
            simp only [hexact]
      _ = ↑(d.mantissa / (2 ^ diff : ℕ)) * ↑(2 ^ diff : ℕ) * 2 ^ d.exponent := by
            simp only [Int.cast_mul, Int.cast_natCast]
      _ = ↑(d.mantissa / (2 ^ diff : ℕ)) * ((2 : ℚ) ^ diff * 2 ^ d.exponent) := by
            rw [← heq, mul_assoc]
      _ = ↑(d.mantissa / (2 ^ diff : ℕ)) * (2 ^ d.exponent * (2 : ℚ) ^ diff) := by
            rw [mul_comm ((2 : ℚ) ^ diff) (2 ^ d.exponent)]
      _ ≤ ↑(d.mantissa / (2 ^ diff : ℕ)) * (2 ^ d.exponent * (2 : ℚ) ^ diff) := le_refl _

/-! ### Comparison Helper Lemmas -/

/-- Helper: comparing integers reflects comparing rationals when scaled by positive factor -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Dyadic/Variantd676515631916eeeb72958b394b43f3b7a3fb6c082610b6c2fe477ef52a7e97c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Dyadic/Variantd676515631916eeeb72958b394b43f3b7a3fb6c082610b6c2fe477ef52a7e97c.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a11771e83344217b96835a985a05ee76e480373` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
