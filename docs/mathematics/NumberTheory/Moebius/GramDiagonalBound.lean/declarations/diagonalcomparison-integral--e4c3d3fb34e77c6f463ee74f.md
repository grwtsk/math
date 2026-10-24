# diagonalComparison_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fde4ae6-30e6-a316-ee10-1c636cb11f40",
  "kind": "theorem",
  "lexical_name": "diagonalComparison_integral",
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
  "slug": "diagonalcomparison-integral--e4c3d3fb34e77c6f463ee74f",
  "source": {
    "blob": "73170183bfc55c49aa578ffbe940a2f84637ef02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 141,
    "path": "GRWTSK/NumberTheory/Moebius/GramDiagonalBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4c3d3fb34e77c6f463ee74f74aa2d2b3537009250faa83a7ec9d9b14577f992",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/GramDiagonalBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fde4ae6-30e6-a316-ee10-1c636cb11f40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonalComparison_integral {u : ℝ} (hu : 0 ≤ u) :
    (∫ x in (0 : ℝ)..Real.exp u, diagonalComparison u x) =
      4 * u - 8 + 8 * Real.exp (-u / 2) := by
  have hEu : 1 ≤ Real.exp u := by simpa using Real.exp_le_exp.mpr hu
  have hsmall : (∫ x in (0 : ℝ)..1, diagonalComparison u x) =
      4 * (1 - Real.exp (-u / 2)) ^ 2 := by
    calc
      _ = ∫ _x in (0 : ℝ)..1, 4 * (1 - Real.exp (-u / 2)) ^ 2 := by
        apply intervalIntegral.integral_congr
        intro x hx
        rw [uIcc_of_le (by norm_num : (0 : ℝ) ≤ 1)] at hx
        exact diagonalComparison_eq_below_one hx.2
      _ = _ := by simp
  have hInv : IntervalIntegrable (fun x : ℝ => x⁻¹) volume 1 (Real.exp u) := by
    apply ContinuousOn.intervalIntegrable_of_Icc hEu
    exact continuousOn_id.inv₀ (fun x hx => (by linarith [hx.1] : 0 < x).ne')
  have hSqrtInv : IntervalIntegrable (fun x : ℝ => (Real.sqrt x)⁻¹) volume 1 (Real.exp u) := by
    apply ContinuousOn.intervalIntegrable_of_Icc hEu
    exact Real.continuous_sqrt.continuousOn.inv₀
      (fun x hx => (Real.sqrt_pos.mpr (by linarith [hx.1] : 0 < x)).ne')
  have hlarge : (∫ x in (1 : ℝ)..Real.exp u, diagonalComparison u x) =
      4 * u - 8 * Real.exp (-u / 2) * (2 * (Real.exp (u / 2) - 1)) +
        4 * Real.exp (-u / 2) ^ 2 * (Real.exp u - 1) := by
    calc
      _ = ∫ x in (1 : ℝ)..Real.exp u,
          4 * x⁻¹ - (8 * Real.exp (-u / 2)) * (Real.sqrt x)⁻¹ +
            4 * Real.exp (-u / 2) ^ 2 := by
        apply intervalIntegral.integral_congr
        intro x hx
        rw [uIcc_of_le hEu] at hx
        rw [diagonalComparison_eq_above_one hx.1]
        have hi : (Real.sqrt x)⁻¹ ^ 2 = x⁻¹ := by
          rw [inv_pow, Real.sq_sqrt (by linarith [hx.1])]
        calc
          _ = 4 * ((Real.sqrt x)⁻¹ ^ 2) -
              (8 * Real.exp (-u / 2)) * (Real.sqrt x)⁻¹ +
                4 * Real.exp (-u / 2) ^ 2 := by ring
          _ = _ := by rw [hi]
      _ = _ := by
        rw [intervalIntegral.integral_add
          ((hInv.const_mul 4).sub (hSqrtInv.const_mul (8 * Real.exp (-u / 2))))
          (continuous_const.intervalIntegrable _ _),
          intervalIntegral.integral_sub (hInv.const_mul 4)
            (hSqrtInv.const_mul (8 * Real.exp (-u / 2))),
          intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
          integral_inv_of_pos (by norm_num) (Real.exp_pos u),
          diagonal_inverse_sqrt_integral hu, intervalIntegral.integral_const]
        simp [Real.log_exp, smul_eq_mul]
        ring
  have hc : Real.exp (-u / 2) * Real.exp (u / 2) = 1 := by
    rw [← Real.exp_add, show -u / 2 + u / 2 = 0 by ring, Real.exp_zero]
  have hc2 : Real.exp (-u / 2) ^ 2 * Real.exp u = 1 := by
    rw [pow_two, ← Real.exp_add, ← Real.exp_add,
      show -u / 2 + -u / 2 + u = 0 by ring, Real.exp_zero]
  rw [← intervalIntegral.integral_add_adjacent_intervals
    ((diagonalComparison_continuous u).intervalIntegrable 0 1)
    ((diagonalComparison_continuous u).intervalIntegrable 1 (Real.exp u)), hsmall, hlarge]
  nlinarith

/-- Inactive members of the final closed inventory have exactly zero response. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/GramDiagonalBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/GramDiagonalBound.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73170183bfc55c49aa578ffbe940a2f84637ef02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
