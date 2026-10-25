# toRat_shiftDown_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8155d886cc441e2f488dc02954233f9c0e659c04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 412,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daac7a49a7783ab06068f69999beb20c3e4bb3b863dea2d4647e46cd67b07dbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ecf84c9-a879-455e-a6c5-e0f1fafd7b46",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5021916a-8adf-0437-0944-40f936a6ac3c",
  "kind": "theorem",
  "lexical_name": "toRat_shiftDown_le",
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
  "slug": "torat-shiftdown-le--bcd97cd0a7e8e1987da1d6ee",
  "source": {
    "blob": "8155d886cc441e2f488dc02954233f9c0e659c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 412,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Dyadic/Variantdaac7a49a7783ab06068f69999beb20c3e4bb3b863dea2d4647e46cd67b07dbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcd97cd0a7e8e1987da1d6ee027c829df14a69a79dc4931f5bccc4c834279ca9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Dyadic/Variantdaac7a49a7783ab06068f69999beb20c3e4bb3b863dea2d4647e46cd67b07dbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5021916a-8adf-0437-0944-40f936a6ac3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toRat_shiftDown_le (d : Dyadic) (newExp : Int) :
    (shiftDown d newExp).toRat ≤ d.toRat := by
  simp only [shiftDown]
  split_ifs with h
  · exact le_refl _
  · -- newExp > d.exponent
    push Not at h
    set diff := (newExp - d.exponent).toNat with hdiff_def
    have hdiff : (diff : ℤ) = newExp - d.exponent := by
      rw [hdiff_def, Int.toNat_of_nonneg]; omega
    have hnewExp : newExp = d.exponent + diff := by omega
    rw [toRat_eq, toRat_eq]
    simp only [shiftRightInt, pow2Nat_eq_pow]
    -- Use int_ediv_mul_le: (m / b) * b ≤ m
    have hpow_int_pos : (0 : ℤ) < (2 ^ diff : ℕ) := Int.natCast_pos.mpr (Nat.one_le_two_pow)
    have hdiv : d.mantissa / (2 ^ diff : ℕ) * (2 ^ diff : ℕ) ≤ d.mantissa :=
      int_ediv_mul_le d.mantissa (2 ^ diff : ℕ) hpow_int_pos
    -- Key: 2^newExp = 2^d.exponent * 2^diff
    have hpow : (2 : ℚ) ^ newExp = 2 ^ d.exponent * (2 : ℚ) ^ diff := by
      rw [hnewExp, zpow_add₀ (two_ne_zero), zpow_natCast]
    rw [hpow]
    -- Goal: (m / 2^diff) * (2^d.exp * 2^diff) ≤ m * 2^d.exp
    have hpos : (0 : ℚ) < 2 ^ d.exponent := zpow_pos (by norm_num : (0 : ℚ) < 2) _
    have hpow2_pos : (0 : ℚ) < (2 : ℚ) ^ diff := pow_pos (by norm_num : (0 : ℚ) < 2) _
    -- Convert hdiv to ℚ: (m / 2^diff) * 2^diff ≤ m
    have hq : (↑(d.mantissa / (2 ^ diff : ℕ)) : ℚ) * ((2 : ℚ) ^ diff) ≤ d.mantissa := by
      have heq : ((2 : ℚ) ^ diff) = ((2 ^ diff : ℕ) : ℚ) := by simp
      rw [heq]
      -- Goal: (m/b : ℤ) * (b : ℕ) ≤ m in ℚ
      -- hdiv: (m/b) * b ≤ m in ℤ
      calc (↑(d.mantissa / (2 ^ diff : ℕ)) : ℚ) * ↑(2 ^ diff : ℕ)
          = ↑(d.mantissa / (2 ^ diff : ℕ) * (2 ^ diff : ℕ)) := by simp only [Int.cast_mul, Int.cast_natCast]
        _ ≤ ↑d.mantissa := Int.cast_le.mpr hdiv
    -- Rearrange: (m/b) * (c * b) = (m/b) * b * c and apply hq
    have hrearr : (↑(d.mantissa / (2 ^ diff : ℕ)) : ℚ) * (2 ^ d.exponent * (2 : ℚ) ^ diff)
                = (↑(d.mantissa / (2 ^ diff : ℕ))) * ((2 : ℚ) ^ diff) * 2 ^ d.exponent := by
      rw [mul_comm (2 ^ d.exponent) ((2 : ℚ) ^ diff), mul_assoc]
    rw [hrearr]
    exact mul_le_mul_of_nonneg_right hq (le_of_lt hpos)

/-- shiftUp produces a value ≥ the original -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Dyadic/Variantdaac7a49a7783ab06068f69999beb20c3e4bb3b863dea2d4647e46cd67b07dbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Dyadic/Variantdaac7a49a7783ab06068f69999beb20c3e4bb3b863dea2d4647e46cd67b07dbe.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8155d886cc441e2f488dc02954233f9c0e659c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
