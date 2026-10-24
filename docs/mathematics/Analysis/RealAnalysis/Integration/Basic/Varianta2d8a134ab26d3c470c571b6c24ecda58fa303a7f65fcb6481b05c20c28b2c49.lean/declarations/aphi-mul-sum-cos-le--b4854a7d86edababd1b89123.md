# Aphi_mul_sum_cos_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58e8a86c-fb3d-7f58-ab7d-60def602dd2a",
  "kind": "lemma",
  "lexical_name": "Aphi_mul_sum_cos_le",
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
  "slug": "aphi-mul-sum-cos-le--b4854a7d86edababd1b89123",
  "source": {
    "blob": "7f5598539f46f75f1cb8a084bcef17c567c1e3c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 886,
    "line": 832,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4854a7d86edababd1b89123a2dbb80c79dc8bedae5e821de12aae0053904205",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58e8a86c-fb3d-7f58-ab7d-60def602dd2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 832–886.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Aphi_mul_sum_cos_le (hF : LocalHypsCore cϱ p F) {y : ℝ} (hy : Real.log 2 ≤ y) :
    |F.Aphi y * ∑ k ∈ Finset.range p.d, Real.cos (p.tau k * y)| ≤ p.L ^ 2 / (2 * Real.log 2) := by
  have hL := hF.L_pos
  have hlog2 : 0 < Real.log 2 := Real.log_pos one_lt_two
  have hlog2' : Real.log 2 ≤ 1 := by
    have := Real.log_le_sub_one_of_pos (zero_lt_two' ℝ); linarith
  have hA0 := hF.Aphi_nonneg y
  have hRHS : 0 ≤ p.L ^ 2 / (2 * Real.log 2) := by positivity
  have hyabs : |y| = y := abs_of_nonneg (hlog2.le.trans hy)
  rcases le_or_gt p.L y with hyL | hyL
  · -- y ≥ L: A_φ(y) = 0
    have : F.Aphi y = 0 := le_antisymm ((hF.Aphi_le y).trans (by simp [hyabs, hyL])) hA0
    simp [this, hRHS]
  · -- log 2 ≤ y < L
    set m := min y (p.L - y) with hm
    have hy0 : 0 < y := hlog2.trans_le hy
    have hm0 : 0 < m := lt_min hy0 (by linarith)
    -- the sum is Σ cos(α + kθ) with α = Ty, θ = hy, θ/2 = πy/L
    have hsum : ∑ k ∈ Finset.range p.d, Real.cos (p.tau k * y)
        = ∑ k ∈ Finset.range p.d, Real.cos (p.T * y + k * (p.h * y)) := by
      refine Finset.sum_congr rfl fun k _ => ?_
      simp only [Setting.tau]; push_cast; ring_nf
    have hθ : p.h * y / 2 = π * y / p.L := by simp only [Setting.h]; field_simp
    have hdir := abs_sin_mul_abs_sum_cos_le (p.T * y) (p.h * y) p.d
    rw [← hsum, hθ] at hdir
    have hsin : 2 * m / p.L ≤ Real.sin (π * y / p.L) := two_min_div_le_sin hL hy0.le hyL.le
    have hsin0 : 0 < 2 * m / p.L := by positivity
    rw [abs_of_pos (hsin0.trans_le hsin)] at hdir
    -- |Σ| ≤ L/(2m)
    set S := |∑ k ∈ Finset.range p.d, Real.cos (p.tau k * y)| with hS
    have hS0 : 0 ≤ S := abs_nonneg _
    have hS1 : 2 * m / p.L * S ≤ 1 := (mul_le_mul_of_nonneg_right hsin hS0).trans hdir
    have hS2 : 2 * m * S ≤ p.L := by
      have := mul_le_mul_of_nonneg_left hS1 hL.le
      rw [mul_one, ← mul_assoc, mul_div_cancel₀ _ hL.ne'] at this; linarith
    -- |A| ≤ L − y
    have hA1 : F.Aphi y ≤ p.L - y := (hF.Aphi_le y).trans (by simp [hyabs, hyL.le])
    -- key: (L − y)·log 2 ≤ L·m
    have key : (p.L - y) * Real.log 2 ≤ p.L * m := by
      rcases le_total y (p.L - y) with h | h
      · rw [hm, min_eq_left h]; nlinarith
      · rw [hm, min_eq_right h]; nlinarith
    rw [abs_mul, abs_of_nonneg hA0]
    -- A·S ≤ (L−y)·S ≤ (L−y)·L/(2m) ≤ L²/(2 log 2)
    rw [le_div_iff₀ (by positivity)]
    calc F.Aphi y * S * (2 * Real.log 2) ≤ (p.L - y) * S * (2 * Real.log 2) := by gcongr
      _ = ((p.L - y) * Real.log 2) * (2 * S) := by ring
      _ ≤ (p.L * m) * (2 * S) := by gcongr
      _ = p.L * (2 * m * S) := by ring
      _ ≤ p.L * p.L := by gcongr
      _ = p.L ^ 2 := (sq _).symm

/-- Unit-step Riemann sums of a monotone function (Mathlib) rescaled to step `h` and combined:
for `μ` monotone and `≥ 0` on `[T−h, ∞)`, `0 < h ≤ T`, `d = ⌊T/h⌋` (§5.2:
`h Σ_{k=0}^{d−1} μ(τ_k) = ∫_T^{2T} μ + O(h μ(2T))`, `recall T < T + dh ≤ 2T < T + (d+1)h`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean#L832).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f5598539f46f75f1cb8a084bcef17c567c1e3c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
