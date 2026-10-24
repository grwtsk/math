# intervalMul_sound_scaled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9176389-19f0-3a2a-9d65-abc66c964ea7",
  "kind": "theorem",
  "lexical_name": "intervalMul_sound_scaled",
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
  "slug": "intervalmul-sound-scaled--218f2dad6c98b723bf1bfe01",
  "source": {
    "blob": "4a0c77078e33a0c6e76ef7e317303eaf7214c045",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 374,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:218f2dad6c98b723bf1bfe01e151c7fae346bd4038ec306fe919a0dcaec82406",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9176389-19f0-3a2a-9d65-abc66c964ea7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intervalMul_sound_scaled (l1 h1 l2 h2 : Int) (x y : ℝ) (exp : Int)
    (hx_lo : intVal l1 exp ≤ x) (hx_hi : x ≤ intVal h1 exp)
    (hy_lo : intVal l2 exp ≤ y) (hy_hi : y ≤ intVal h2 exp) :
    let (lo, hi) := IntervalMatrix.intervalMul l1 h1 l2 h2
    intVal lo (exp + exp) ≤ x * y ∧ x * y ≤ intVal hi (exp + exp) := by
  -- Unfold intVal in hypotheses
  unfold intVal at hx_lo hx_hi hy_lo hy_hi

  -- Key: scale factor 2^exp is positive
  have hpow_pos : (0 : ℝ) < (2 : ℝ) ^ exp := zpow_pos (by norm_num : (0 : ℝ) < 2) exp
  have hpow_ne : (2 : ℝ) ^ exp ≠ 0 := ne_of_gt hpow_pos

  -- Define scaled versions: x' = x / 2^exp, y' = y / 2^exp
  set scale := (2 : ℝ) ^ exp
  set x' := x / scale
  set y' := y / scale

  -- Bounds on x' and y' (unscaled)
  -- le_div_iff₀: a ≤ b / c ↔ a * c ≤ b
  -- div_le_iff₀: a / b ≤ c ↔ a ≤ c * b
  have hx'_lo : (l1 : ℝ) ≤ x' := by
    rw [le_div_iff₀ hpow_pos]
    exact hx_lo
  have hx'_hi : x' ≤ h1 := by
    rw [div_le_iff₀ hpow_pos]
    exact hx_hi
  have hy'_lo : (l2 : ℝ) ≤ y' := by
    rw [le_div_iff₀ hpow_pos]
    exact hy_lo
  have hy'_hi : y' ≤ h2 := by
    rw [div_le_iff₀ hpow_pos]
    exact hy_hi

  -- Apply unscaled soundness to x', y'
  have hsound := intervalMul_sound l1 h1 l2 h2 x' y' hx'_lo hx'_hi hy'_lo hy'_hi

  -- Scale back: x * y = x' * y' * (2^exp)^2 = x' * y' * 2^(exp+exp)
  have heq : x * y = x' * y' * (scale * scale) := by
    have h1 : x' * scale = x := div_mul_cancel₀ x hpow_ne
    have h2 : y' * scale = y := div_mul_cancel₀ y hpow_ne
    calc x * y = (x' * scale) * (y' * scale) := by rw [h1, h2]
      _ = x' * y' * (scale * scale) := by ring
  have hscale_sq : scale * scale = (2 : ℝ) ^ (exp + exp) := by
    rw [← zpow_add₀ (by norm_num : (2 : ℝ) ≠ 0)]

  -- Get lo and hi from intervalMul
  set result := IntervalMatrix.intervalMul l1 h1 l2 h2
  have hlo : (result.1 : ℝ) ≤ x' * y' := hsound.1
  have hhi : x' * y' ≤ result.2 := hsound.2

  constructor
  · -- Lower bound
    rw [intVal, heq, hscale_sq]
    exact mul_le_mul_of_nonneg_right hlo (zpow_nonneg (by norm_num) _)
  · -- Upper bound
    rw [intVal, heq, hscale_sq]
    exact mul_le_mul_of_nonneg_right hhi (zpow_nonneg (by norm_num) _)

/-- **Soundness of Matrix Transpose**

  If A_real ∈ A_interval, then A_realᵀ ∈ A_intervalᵀ.
  The exponent is preserved. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a0c77078e33a0c6e76ef7e317303eaf7214c045` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
