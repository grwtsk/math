# weightedMertensDiagonal_summand_le_inv_dyadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6513f70d-7211-852e-6024-f52958e70d55",
  "kind": "theorem",
  "lexical_name": "weightedMertensDiagonal_summand_le_inv_dyadic",
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
  "slug": "weightedmertensdiagonal-summand-le-inv-dyadic--ce8f5d833610480c88635743",
  "source": {
    "blob": "00aa20b040a9182f002109f3c38484a941fb37e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 154,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce8f5d833610480c88635743ba8b7a72cd0cdc8f3fbc30c0697a5c8f4c94e68e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6513f70d-7211-852e-6024-f52958e70d55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMertensDiagonal_summand_le_inv_dyadic
    {j n : ℕ}
    (hn : n ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1))) :
    mertensPrefixSquareDiagonal n *
        (n : ℝ) ^ (-(1 : ℝ)) *
        ((n + 1 : ℕ) : ℝ) ^ (-(1 : ℝ)) ≤
      (((2 ^ j : ℕ) : ℝ))⁻¹ := by
  have hX : 1 ≤ 2 ^ j := Nat.one_le_pow j 2 (by norm_num)
  have hn1 : 1 ≤ n := hX.trans (Finset.mem_Ico.mp hn).1
  have hdiag := mertensPrefixSquareDiagonal_le_natCast n
  have hninv : 0 ≤ (n : ℝ) ^ (-(1 : ℝ)) :=
    Real.rpow_nonneg (Nat.cast_nonneg n) _
  have hsinv : 0 ≤ ((n + 1 : ℕ) : ℝ) ^ (-(1 : ℝ)) :=
    Real.rpow_nonneg (by positivity) _
  calc
    mertensPrefixSquareDiagonal n *
        (n : ℝ) ^ (-(1 : ℝ)) *
        ((n + 1 : ℕ) : ℝ) ^ (-(1 : ℝ)) ≤
      (n : ℝ) * (n : ℝ) ^ (-(1 : ℝ)) *
        ((n + 1 : ℕ) : ℝ) ^ (-(1 : ℝ)) := by
      exact mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_right hdiag hninv) hsinv
    _ = (((n + 1 : ℕ) : ℝ))⁻¹ := by
      rw [Real.rpow_neg_one, Real.rpow_neg_one]
      field_simp [show (n : ℝ) ≠ 0 by positivity]
    _ ≤ (((2 ^ j : ℕ) : ℝ))⁻¹ := by
      have hle : ((2 ^ j : ℕ) : ℝ) ≤ ((n + 1 : ℕ) : ℝ) := by
        exact_mod_cast ((Finset.mem_Ico.mp hn).1.trans (Nat.le_succ n))
      simpa only [one_div] using
        one_div_le_one_div_of_le
          (by positivity : (0 : ℝ) < ((2 ^ j : ℕ) : ℝ)) hle

/-- The complete Möbius-square diagonal costs at most one on every dyadic
block. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00aa20b040a9182f002109f3c38484a941fb37e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
