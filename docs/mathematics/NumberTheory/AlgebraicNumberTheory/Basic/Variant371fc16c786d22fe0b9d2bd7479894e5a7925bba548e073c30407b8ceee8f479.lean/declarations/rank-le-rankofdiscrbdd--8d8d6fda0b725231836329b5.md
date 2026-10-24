# rank_le_rankOfDiscrBdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f83fb5fba5dee44f0ade06ada565799589a4e1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 343,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ddbd587-a465-f164-39fe-86eba1d4df30",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b3384e3-3394-e00e-78a8-222d79500efd",
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
  "slug": "rank-le-rankofdiscrbdd--8d8d6fda0b725231836329b5",
  "source": {
    "blob": "5f83fb5fba5dee44f0ade06ada565799589a4e1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 343,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d8d6fda0b725231836329b5bffac6dd5312916d978c44d8745f2e66b77fbe44",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b3384e3-3394-e00e-78a8-222d79500efd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–369.

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
  obtain h | h := lt_or_ge 1 (finrank ℚ K)
  · apply le_max_of_le_right
    rw [Nat.le_floor_iff]
    · have h := le_trans (abs_discr_ge h) (Int.cast_le.mpr hK)
      contrapose! h
      rw [← Real.rpow_natCast]
      rw [Real.log_div_log] at h
      refine lt_of_le_of_lt ?_ (mul_lt_mul_of_pos_left
        (Real.rpow_lt_rpow_of_exponent_lt h₂ h) (by positivity : (0 : ℝ) < 4 / 9))
      rw [Real.rpow_logb (lt_trans zero_lt_one h₂) (ne_of_gt h₂) (by positivity), ← mul_assoc,
            ← inv_div, inv_mul_cancel₀ (by simp), one_mul, Int.cast_natCast]
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

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f83fb5fba5dee44f0ade06ada565799589a4e1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
