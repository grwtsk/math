# toRat_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc7ce567-d0e5-a0c4-5323-d14d972cf53a",
  "kind": "theorem",
  "lexical_name": "toRat_add",
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
  "slug": "torat-add--f2db35c7bbc3875a1995b81d",
  "source": {
    "blob": "7a11771e83344217b96835a985a05ee76e480373",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 369,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Dyadic/Variantd676515631916eeeb72958b394b43f3b7a3fb6c082610b6c2fe477ef52a7e97c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2db35c7bbc3875a1995b81dc48e38bc99742beee8253cedeb40a637f3221f9c",
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

Occurrence: `result:dc7ce567-d0e5-a0c4-5323-d14d972cf53a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toRat_add (d₁ d₂ : Dyadic) : (add d₁ d₂).toRat = d₁.toRat + d₂.toRat := by
  -- Rewrite using toRat_eq to work with mantissa * 2^exponent form
  rw [toRat_eq d₁, toRat_eq d₂]
  unfold add
  split_ifs with h
  · -- Case: d₁.exponent ≤ d₂.exponent
    rw [toRat_eq]
    simp only [shiftLeftInt, pow2Nat_eq_pow]
    -- Goal: (m₁ + m₂ * 2^shift) * 2^e₁ = m₁ * 2^e₁ + m₂ * 2^e₂
    set shift := (d₂.exponent - d₁.exponent).toNat with hshift_def
    have hshift : (shift : ℤ) = d₂.exponent - d₁.exponent := by
      rw [hshift_def, Int.toNat_of_nonneg]; omega
    -- 2^shift * 2^e₁ = 2^e₂
    have hexp : (2 : ℚ) ^ shift * 2 ^ d₁.exponent = 2 ^ d₂.exponent := by
      have h2 : (2 : ℚ) ^ shift = (2 : ℚ) ^ (shift : ℤ) := by rw [zpow_natCast]
      rw [h2, ← zpow_add₀ (two_ne_zero), hshift]
      congr 1; omega
    -- Show ↑(2^shift : ℕ) = (2 : ℚ)^shift
    have hcast : (↑(2 ^ shift : ℕ) : ℚ) = (2 : ℚ) ^ shift := by
      rw [Nat.cast_pow, Nat.cast_ofNat]
    -- Push casts inside and simplify
    simp only [Int.cast_add, Int.cast_mul, Int.cast_natCast, hcast, add_mul, mul_assoc, hexp]
  · -- Case: d₁.exponent > d₂.exponent
    rw [toRat_eq]
    simp only [shiftLeftInt, pow2Nat_eq_pow]
    set shift := (d₁.exponent - d₂.exponent).toNat with hshift_def
    have hshift : (shift : ℤ) = d₁.exponent - d₂.exponent := by
      rw [hshift_def, Int.toNat_of_nonneg]; omega
    have hexp : (2 : ℚ) ^ shift * 2 ^ d₂.exponent = 2 ^ d₁.exponent := by
      have h2 : (2 : ℚ) ^ shift = (2 : ℚ) ^ (shift : ℤ) := by rw [zpow_natCast]
      rw [h2, ← zpow_add₀ (two_ne_zero), hshift]
      congr 1; omega
    have hcast : (↑(2 ^ shift : ℕ) : ℚ) = (2 : ℚ) ^ shift := by
      rw [Nat.cast_pow, Nat.cast_ofNat]
    simp only [Int.cast_add, Int.cast_mul, Int.cast_natCast, hcast, add_mul, mul_assoc, hexp, add_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Dyadic/Variantd676515631916eeeb72958b394b43f3b7a3fb6c082610b6c2fe477ef52a7e97c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Dyadic/Variantd676515631916eeeb72958b394b43f3b7a3fb6c082610b6c2fe477ef52a7e97c.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a11771e83344217b96835a985a05ee76e480373` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
