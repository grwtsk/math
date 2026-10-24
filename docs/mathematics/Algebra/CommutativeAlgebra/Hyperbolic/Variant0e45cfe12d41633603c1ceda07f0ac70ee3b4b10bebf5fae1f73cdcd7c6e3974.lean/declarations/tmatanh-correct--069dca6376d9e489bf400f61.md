# tmAtanh_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3a98098-56cf-d476-482c-fe12fdfde5f4",
  "kind": "theorem",
  "lexical_name": "tmAtanh_correct",
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
  "slug": "tmatanh-correct--069dca6376d9e489bf400f61",
  "source": {
    "blob": "c7aeee2aaf3c61bbb1db59f1c08119012d375839",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 974,
    "line": 895,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:069dca6376d9e489bf400f61f36a43e6b8ba8dab7716599f3216fb92aed4ea54",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3a98098-56cf-d476-482c-fe12fdfde5f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 895–974.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tmAtanh_correct (J : IntervalRat) (n : ℕ)
    (hJ_radius : max (|J.lo|) (|J.hi|) ≤ 99/100) :
    ∀ z : ℝ, z ∈ J → |z| < 1 → Real.atanh z ∈ (tmAtanh J n).evalSet z := by
  intro z hz hz_bound
  simp only [tmAtanh, evalSet, Set.mem_setOf_eq]
  set r := Real.atanh z - Polynomial.aeval (z - 0) (atanhTaylorPoly n) with hr_def
  refine ⟨r, ?_, ?_⟩
  · simp only [IntervalRat.mem_def, Rat.cast_neg]
    have hpoly_eq := atanhTaylorPoly_aeval_eq n z
    simp only [sub_zero] at hr_def hpoly_eq
    have hr_rewrite : r = Real.atanh z -
        ∑ k ∈ Finset.range (n + 1), (atanhTaylorCoeffs n k : ℝ) * z ^ k := by
      rw [hr_def, hpoly_eq]
    have hrem := atanh_series_remainder_bound hz_bound n
    rw [← hr_rewrite] at hrem
    have habs_le : |r| ≤ (atanhRemainderBound J n : ℝ) := by
      calc |r| ≤ |z| ^ (n + 1) / (1 - z ^ 2) := hrem
        _ ≤ (atanhRemainderBound J n : ℝ) := by
          have hz_le_radius : |z| ≤ max (|(J.lo : ℝ)|) (|(J.hi : ℝ)|) :=
            abs_le_interval_radius' hz
          have hradius_real : max (|(J.lo : ℝ)|) (|(J.hi : ℝ)|) =
              (max (|J.lo|) (|J.hi|) : ℚ) := by simp [Rat.cast_max, Rat.cast_abs]
          set radius : ℚ := max (|J.lo|) (|J.hi|) with hradius_def
          have hr_safe_eq : min radius (99/100) = radius := min_eq_left hJ_radius
          have hradius_le : (radius : ℝ) ≤ 99/100 := by
            calc (radius : ℝ) ≤ ((99/100 : ℚ) : ℝ) := by exact_mod_cast hJ_radius
              _ = 99/100 := by norm_num
          have hradius_lt_one : (radius : ℝ) < 1 := by linarith
          have hrad_nonneg : 0 ≤ (radius : ℝ) := by
            calc (0 : ℝ) ≤ |z| := abs_nonneg z
              _ ≤ max (|(J.lo : ℝ)|) (|(J.hi : ℝ)|) := hz_le_radius
              _ = (radius : ℝ) := hradius_real
          have hz_le_rad : |z| ≤ (radius : ℝ) := by rw [hradius_real] at hz_le_radius; exact hz_le_radius
          have hz_sq_le : z ^ 2 ≤ (radius : ℝ) ^ 2 := by
            have h1 : |z| ^ 2 ≤ (radius : ℝ) ^ 2 := by
              apply sq_le_sq'
              · calc -(radius : ℝ) ≤ 0 := by linarith
                  _ ≤ |z| := abs_nonneg z
              · exact hz_le_rad
            rwa [sq_abs] at h1
          have h1_minus_z_ge : 1 - z ^ 2 ≥ 1 - (radius : ℝ) ^ 2 := by linarith
          have h1_minus_z_pos : 0 < 1 - z ^ 2 := by nlinarith [sq_nonneg z, sq_abs z]
          have h1_minus_rad_pos : 0 < 1 - (radius : ℝ) ^ 2 := by nlinarith [sq_nonneg (radius : ℝ)]
          have hpow_le : |z| ^ (n + 1) ≤ (radius : ℝ) ^ (n + 1) :=
            pow_le_pow_left₀ (abs_nonneg z) hz_le_rad (n + 1)
          have hpow_nonneg : 0 ≤ |z| ^ (n + 1) := pow_nonneg (abs_nonneg z) _
          have hbound1 : |z| ^ (n + 1) / (1 - z ^ 2) ≤ (radius : ℝ) ^ (n + 1) / (1 - (radius : ℝ) ^ 2) := by
            gcongr
          have hdenom_eq : max (1 - radius ^ 2) (1/100 : ℚ) = 1 - radius ^ 2 := by
            apply max_eq_left
            have h1 : radius ^ 2 ≤ (99/100 : ℚ) ^ 2 := by
              have hr_nonneg : 0 ≤ radius := le_trans (abs_nonneg J.lo) (le_max_left _ _)
              nlinarith [sq_nonneg radius]
            have h2 : (99/100 : ℚ) ^ 2 = 9801/10000 := by norm_num
            have h3 : 1 - (9801/10000 : ℚ) = 199/10000 := by norm_num
            have h4 : (199/10000 : ℚ) ≥ 1/100 := by norm_num
            linarith
          have hbound_val : atanhRemainderBound J n = radius ^ (n + 1) / (1 - radius ^ 2) := by
            unfold atanhRemainderBound
            simp only [← hradius_def, hr_safe_eq, hdenom_eq]
          have hdenom_pos : 0 < (1 - radius ^ 2 : ℚ) := by
            have h1 : radius ^ 2 ≤ (99/100 : ℚ) ^ 2 := by
              have hr_nonneg : 0 ≤ radius := le_trans (abs_nonneg J.lo) (le_max_left _ _)
              nlinarith [sq_nonneg radius]
            have h2 : (99/100 : ℚ) ^ 2 < 1 := by norm_num
            linarith
          calc |z| ^ (n + 1) / (1 - z ^ 2)
              ≤ (radius : ℝ) ^ (n + 1) / (1 - (radius : ℝ) ^ 2) := hbound1
            _ = (atanhRemainderBound J n : ℝ) := by
                rw [hbound_val]
                simp only [Rat.cast_div, Rat.cast_pow, Rat.cast_sub, Rat.cast_one]
    constructor
    · calc -(atanhRemainderBound J n : ℝ) ≤ -|r| := by linarith [abs_nonneg r]
        _ ≤ r := neg_abs_le r
    · calc r ≤ |r| := le_abs_self r
        _ ≤ (atanhRemainderBound J n : ℝ) := habs_le
  · simp only [hr_def, sub_zero]; ring_nf

/-- sinh z ∈ (tmSinh J n).evalSet z for all z in J.
    Uses taylor_remainder_bound with f = Real.sinh. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean#L895).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7aeee2aaf3c61bbb1db59f1c08119012d375839` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
