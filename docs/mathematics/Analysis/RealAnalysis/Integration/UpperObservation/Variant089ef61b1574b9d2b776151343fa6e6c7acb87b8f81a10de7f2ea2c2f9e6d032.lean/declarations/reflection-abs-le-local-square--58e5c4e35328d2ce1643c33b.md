# reflection_abs_le_local_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecc1b3b9-f817-a979-1e75-0bdeaaf265ba",
  "kind": "theorem",
  "lexical_name": "reflection_abs_le_local_square",
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
  "slug": "reflection-abs-le-local-square--58e5c4e35328d2ce1643c33b",
  "source": {
    "blob": "3d2cec1e309de74de028b495c9b5e185250e2040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 226,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperObservation/Variant089ef61b1574b9d2b776151343fa6e6c7acb87b8f81a10de7f2ea2c2f9e6d032.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58e5c4e35328d2ce1643c33b2c4006de6290fb590eecf8129ce9980224d4b6b4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperObservation/Variant089ef61b1574b9d2b776151343fa6e6c7acb87b8f81a10de7f2ea2c2f9e6d032.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecc1b3b9-f817-a979-1e75-0bdeaaf265ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflection_abs_le_local_square (f : ℝ → ℝ) (b c : ℝ)
    (hf : Continuous f) (hcf : HasCompactSupport f)
    (hzero : ∀ x, b ≤ x → f x = 0) (hbc : b ≤ c) :
    |∫ x : ℝ, f x * f (c - x)| ≤ ∫ x : ℝ in Set.Icc 0 b, (f x) ^ 2 := by
  let B : ℝ → ℝ := (Set.Icc 0 b).indicator (fun x ↦ (f x) ^ 2)
  have hsq : Integrable (fun x ↦ (f x) ^ 2) := by
    simp_rw [pow_two]
    exact (hf.mul hf).integrable_of_hasCompactSupport hcf.mul_right
  have hB : Integrable B := hsq.indicator measurableSet_Icc
  have hp : Integrable (fun x ↦ f x * f (c - x)) :=
    (hf.mul (hf.comp (continuous_const.sub continuous_id))).integrable_of_hasCompactSupport
      hcf.mul_right
  have hBpos (x : ℝ) : 0 ≤ B x := by
    dsimp [B]
    by_cases hx : x ∈ Set.Icc (0 : ℝ) b
    · rw [Set.indicator_of_mem hx]
      exact sq_nonneg _
    · rw [Set.indicator_of_notMem hx]
  have hbound (x : ℝ) : |f x * f (c - x)| ≤ (B x + B (c - x)) / 2 := by
    by_cases hx0 : f x = 0
    · simp only [hx0, zero_mul, abs_zero]
      exact div_nonneg (add_nonneg (hBpos _) (hBpos _)) (by norm_num)
    by_cases hy0 : f (c - x) = 0
    · simp only [hy0, mul_zero, abs_zero]
      exact div_nonneg (add_nonneg (hBpos _) (hBpos _)) (by norm_num)
    have hxlt : x < b := by
      by_contra hx
      exact hx0 (hzero x (le_of_not_gt hx))
    have hylt : c - x < b := by
      by_contra hy
      exact hy0 (hzero (c - x) (le_of_not_gt hy))
    have hxmem : x ∈ Set.Icc (0 : ℝ) b := ⟨by linarith, hxlt.le⟩
    have hymem : c - x ∈ Set.Icc (0 : ℝ) b := ⟨by linarith, hylt.le⟩
    simp only [B, Set.indicator_of_mem hxmem, Set.indicator_of_mem hymem, abs_mul]
    nlinarith [sq_nonneg (|f x| - |f (c - x)|), sq_abs (f x), sq_abs (f (c - x))]
  calc
    _ ≤ ∫ x : ℝ, |f x * f (c - x)| := abs_integral_le_integral_abs
    _ ≤ ∫ x : ℝ, (B x + B (c - x)) / 2 :=
      integral_mono hp.abs ((hB.add (hB.comp_sub_left c)).div_const 2) hbound
    _ = ∫ x : ℝ, B x := by
      rw [integral_div, integral_add hB (hB.comp_sub_left c),
        integral_sub_left_eq_self B volume c]
      ring
    _ = _ := integral_indicator measurableSet_Icc

/-- Every upper reflection channel is bounded by the same short local norm, not by positivity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperObservation/Variant089ef61b1574b9d2b776151343fa6e6c7acb87b8f81a10de7f2ea2c2f9e6d032.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperObservation/Variant089ef61b1574b9d2b776151343fa6e6c7acb87b8f81a10de7f2ea2c2f9e6d032.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d2cec1e309de74de028b495c9b5e185250e2040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
