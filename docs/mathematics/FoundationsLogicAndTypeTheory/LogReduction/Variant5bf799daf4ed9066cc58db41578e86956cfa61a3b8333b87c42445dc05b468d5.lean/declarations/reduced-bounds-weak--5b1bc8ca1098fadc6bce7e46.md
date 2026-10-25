# reduced_bounds_weak

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bed2ed88-90d1-d3bb-f1ce-2d541af4a1d1",
  "kind": "theorem",
  "lexical_name": "reduced_bounds_weak",
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
  "slug": "reduced-bounds-weak--5b1bc8ca1098fadc6bce7e46",
  "source": {
    "blob": "8b23b47202252cf516fed49ea7109fd6d2127279",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b1bc8ca1098fadc6bce7e46ade406d5e915c2fda71add514d82bec725a1cda2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bed2ed88-90d1-d3bb-f1ce-2d541af4a1d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduced_bounds_weak {q : ℚ} (hq : 0 < q) :
    let m := reduceMantissa q
    1 / 4 ≤ m ∧ m ≤ 4 := by
  simp only [reduceMantissa, reductionExponent, not_le.mpr hq, ↓reduceIte]
  set n := q.num.natAbs.log2 with hn_def
  set d := q.den.log2 with hd_def
  have hnum_pos : q.num > 0 := Rat.num_pos.mpr hq
  have hnum_ne : q.num.natAbs ≠ 0 := Int.natAbs_ne_zero.mpr (ne_of_gt hnum_pos)
  have hden_pos := q.den_pos
  have hden_ne : q.den ≠ 0 := ne_of_gt hden_pos
  have h_num_lo : (2 : ℕ) ^ n ≤ q.num.natAbs := Nat.log2_self_le hnum_ne
  have h_num_hi : q.num.natAbs < 2 ^ (n + 1) := (Nat.log2_lt hnum_ne).mp (Nat.lt_succ_self _)
  have h_den_lo : (2 : ℕ) ^ d ≤ q.den := Nat.log2_self_le hden_ne
  have h_den_hi : q.den < 2 ^ (d + 1) := (Nat.log2_lt hden_ne).mp (Nat.lt_succ_self _)
  have h2_ne : (2 : ℚ) ≠ 0 := by norm_num
  have hden_pos_q : (0 : ℚ) < q.den := by exact_mod_cast hden_pos
  have hnum_pos_q : (0 : ℚ) < q.num.natAbs := by exact_mod_cast Nat.pos_of_ne_zero hnum_ne
  have hq_eq : q = q.num / q.den := (Rat.num_div_den q).symm
  have hnum_eq : (q.num : ℚ) = q.num.natAbs := by simp only [Nat.cast_natAbs, abs_of_pos hnum_pos]
  have hexp : (-(↑n - ↑d) : ℤ) = (d : ℤ) - (n : ℤ) := by ring
  rw [hexp]
  have hpow_diff : (2 : ℚ) ^ ((d : ℤ) - (n : ℤ)) = 2 ^ d / 2 ^ n := by
    rw [zpow_sub₀ h2_ne, zpow_natCast, zpow_natCast]
  rw [hpow_diff, hq_eq, hnum_eq]
  have h_num_lo_q : (2 : ℚ) ^ n ≤ q.num.natAbs := by exact_mod_cast h_num_lo
  have h_num_hi_q : (q.num.natAbs : ℚ) < 2 ^ (n + 1) := by exact_mod_cast h_num_hi
  have h_den_lo_q : (2 : ℚ) ^ d ≤ q.den := by exact_mod_cast h_den_lo
  have h_den_hi_q : (q.den : ℚ) < 2 ^ (d + 1) := by exact_mod_cast h_den_hi
  constructor
  · -- Lower bound: 1/4 ≤ m
    have h_simp : (q.num.natAbs : ℚ) / q.den * (2 ^ d / 2 ^ n) =
                  (q.num.natAbs * 2 ^ d) / (q.den * 2 ^ n) := by field_simp
    rw [h_simp, one_div, le_div_iff₀ (by positivity : (0 : ℚ) < q.den * 2 ^ n)]
    have key : (q.den : ℚ) * 2 ^ n / 4 < q.num.natAbs * 2 ^ d := by
      have h1 : (q.den : ℚ) * 2 ^ n / 4 < 2 ^ (d + 1) * 2 ^ n / 4 := by
        apply div_lt_div_of_pos_right _ (by norm_num : (0 : ℚ) < 4)
        exact mul_lt_mul_of_pos_right h_den_hi_q (by positivity)
      have h2 : (2 : ℚ) ^ (d + 1) * 2 ^ n / 4 = 2 ^ d * 2 ^ n / 2 := by rw [pow_succ]; ring
      have h3 : (2 : ℚ) ^ d * 2 ^ n / 2 ≤ 2 ^ n * 2 ^ d := by
        rw [mul_comm (2 ^ d : ℚ) (2 ^ n)]; apply div_le_self (by positivity) (by norm_num)
      have h4 : (2 : ℚ) ^ n * 2 ^ d ≤ q.num.natAbs * 2 ^ d := by
        apply mul_le_mul_of_nonneg_right h_num_lo_q (by positivity)
      linarith
    linarith
  · -- Upper bound: m ≤ 4
    have h_simp : (q.num.natAbs : ℚ) / q.den * (2 ^ d / 2 ^ n) =
                  (q.num.natAbs * 2 ^ d) / (q.den * 2 ^ n) := by field_simp
    rw [h_simp, div_le_iff₀ (by positivity : (0 : ℚ) < q.den * 2 ^ n)]
    have h1 : (q.num.natAbs : ℚ) * 2 ^ d < 2 ^ (n + 1) * 2 ^ d := by
      apply mul_lt_mul_of_pos_right h_num_hi_q (by positivity)
    have h2 : (2 : ℚ) ^ (n + 1) * 2 ^ d = 2 * (2 ^ n * 2 ^ d) := by rw [pow_succ]; ring
    have h3 : (2 : ℚ) * (2 ^ n * 2 ^ d) ≤ 4 * (2 ^ n * 2 ^ d) := by
      have hp : (0 : ℚ) ≤ 2 ^ n * 2 ^ d := by positivity
      linarith
    have h4 : (4 : ℚ) * (2 ^ n * 2 ^ d) ≤ 4 * (q.den * 2 ^ n) := by
      have : (2 : ℚ) ^ n * 2 ^ d ≤ q.den * 2 ^ n := by
        calc (2 : ℚ) ^ n * 2 ^ d = 2 ^ d * 2 ^ n := by ring
          _ ≤ q.den * 2 ^ n := by apply mul_le_mul_of_nonneg_right h_den_lo_q (by positivity)
      linarith
    calc (q.num.natAbs : ℚ) * 2 ^ d ≤ 2 ^ (n + 1) * 2 ^ d := le_of_lt h1
      _ = 2 * (2 ^ n * 2 ^ d) := h2
      _ ≤ 4 * (2 ^ n * 2 ^ d) := h3
      _ ≤ 4 * (q.den * 2 ^ n) := h4

/-- Tighter bounds: 1/2 ≤ m ≤ 2 for most q > 0 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b23b47202252cf516fed49ea7109fd6d2127279` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
