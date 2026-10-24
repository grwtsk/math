# rank_le_rankOfDiscrBdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdacb783-b1de-6656-8a87-aa70b0dbb88d",
  "kind": "theorem",
  "lexical_name": "rank_le_rankOfDiscrBdd",
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
  "slug": "rank-le-rankofdiscrbdd--a496cd4f393efbf9545b2610",
  "source": {
    "blob": "fd1619b8c00751ca9b8cd1cc4764b4e3e7838132",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 304,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantff85f8fe911abda9b685f1d1c85491d80d07734011c13b45a3208cb7f8e1086d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a496cd4f393efbf9545b2610fab66f4f0a141d835420089c4a936c5fc2278308",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantff85f8fe911abda9b685f1d1c85491d80d07734011c13b45a3208cb7f8e1086d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdacb783-b1de-6656-8a87-aa70b0dbb88d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_le_rankOfDiscrBdd :
    finrank ℚ K ≤ rankOfDiscrBdd N := by
  have h_nz : N ≠ 0 := by
    refine fun h ↦ discr_ne_zero K ?_
    rwa [h, Nat.cast_zero, abs_nonpos_iff] at hK
  have h₂ : 1 < 3 * π / 4 := by
    rw [_root_.lt_div_iff₀ (by positivity), ← _root_.div_lt_iff₀' (by positivity), one_mul]
    linarith [Real.pi_gt_three]
  obtain h | h := lt_or_le 1 (finrank ℚ K)
  · apply le_max_of_le_right
    rw [Nat.le_floor_iff]
    · have h := le_trans (abs_discr_ge h) (Int.cast_le.mpr hK)
      contrapose! h
      rw [← Real.rpow_natCast]
      rw [Real.log_div_log] at h
      refine lt_of_le_of_lt ?_ (mul_lt_mul_of_pos_left
        (Real.rpow_lt_rpow_of_exponent_lt h₂ h) (by positivity : (0 : ℝ) < 4 / 9))
      rw [Real.rpow_logb (lt_trans zero_lt_one h₂) (ne_of_gt h₂) (by positivity), ← mul_assoc,
            ← inv_div, inv_mul_cancel₀ (by norm_num), one_mul, Int.cast_natCast]
    · refine div_nonneg (Real.log_nonneg ?_) (Real.log_nonneg (le_of_lt h₂))
      rw [mul_comm, ← mul_div_assoc, _root_.le_div_iff₀ (by positivity), one_mul,
        ← _root_.div_le_iff₀ (by positivity)]
      exact le_trans (by norm_num) (Nat.one_le_cast.mpr (Nat.one_le_iff_ne_zero.mpr h_nz))
  · exact le_max_of_le_left h

include hK in
/-- If `|discr K| ≤ N` then the Minkowski bound of `K` is less than `boundOfDiscrBdd`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantff85f8fe911abda9b685f1d1c85491d80d07734011c13b45a3208cb7f8e1086d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantff85f8fe911abda9b685f1d1c85491d80d07734011c13b45a3208cb7f8e1086d.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd1619b8c00751ca9b8cd1cc4764b4e3e7838132` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
