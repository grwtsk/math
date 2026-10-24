# abs_sin_mul_norm_geom_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdfbbe56c3098980c3d63ba72430b2e80671deeb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 392,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a7f6727-e1db-3bc4-ccf5-33052762f2b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:708df886-d60c-b3c0-754b-aaf4ccfd31f1",
  "kind": "lemma",
  "lexical_name": "abs_sin_mul_norm_geom_le",
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
  "slug": "abs-sin-mul-norm-geom-le--72cab0f1bb15296555b2c865",
  "source": {
    "blob": "bdfbbe56c3098980c3d63ba72430b2e80671deeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 392,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72cab0f1bb15296555b2c865d27e2b94fb69b508550f397c05e900e19876b96d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:708df886-d60c-b3c0-754b-aaf4ccfd31f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_sin_mul_norm_geom_le (θ : ℝ) (d : ℕ) :
    |Real.sin (θ / 2)| * ‖∑ k ∈ Finset.range d, Complex.exp (((k : ℝ) * θ : ℝ) * Complex.I)‖
      ≤ 1 := by
  rcases eq_or_ne (Real.sin (θ / 2)) 0 with hs | hs
  · rw [hs, abs_zero, zero_mul]
    norm_num
  set w : ℂ := Complex.exp ((θ : ℝ) * Complex.I) with hw
  have hsum : ∑ k ∈ Finset.range d, Complex.exp (((k : ℝ) * θ : ℝ) * Complex.I)
      = ∑ k ∈ Finset.range d, w ^ k := by
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [hw, ← Complex.exp_nat_mul]
    congr 1
    push_cast
    ring
  have hw1 : w ≠ 1 := by
    intro hww
    rw [hw, Complex.exp_eq_one_iff] at hww
    obtain ⟨n, hn⟩ := hww
    have hθ : θ = n * (2 * π) := by
      have h2 := congrArg Complex.im hn
      simpa [Complex.mul_im, Complex.I_re, Complex.I_im] using h2
    apply hs
    rw [hθ, show (n : ℝ) * (2 * π) / 2 = n * π by ring]
    exact Real.sin_int_mul_pi n
  have hnormw : ‖w - 1‖ = 2 * |Real.sin (θ / 2)| := by
    rw [hw, Complex.exp_mul_I]
    have hre : (Complex.cos ↑θ + Complex.sin ↑θ * Complex.I - 1).re = Real.cos θ - 1 := by
      simp [Complex.sub_re, Complex.add_re, Complex.mul_re, Complex.I_re, Complex.I_im,
        Complex.one_re, Complex.cos_ofReal_re, Complex.sin_ofReal_im, Complex.sin_ofReal_re]
    have him : (Complex.cos ↑θ + Complex.sin ↑θ * Complex.I - 1).im = Real.sin θ := by
      simp [Complex.sub_im, Complex.add_im, Complex.mul_im, Complex.I_re, Complex.I_im,
        Complex.one_im, Complex.cos_ofReal_im, Complex.sin_ofReal_re, Complex.sin_ofReal_im]
    rw [show ‖Complex.cos ↑θ + Complex.sin ↑θ * Complex.I - 1‖
        = Real.sqrt ((Real.cos θ - 1) ^ 2 + Real.sin θ ^ 2) by
      rw [← hre, ← him]
      rw [Complex.norm_eq_sqrt_sq_add_sq]]
    have e : (Real.cos θ - 1) ^ 2 + Real.sin θ ^ 2 = (2 * Real.sin (θ / 2)) ^ 2 := by
      have h1 : Real.cos (2 * (θ / 2)) = 2 * Real.cos (θ / 2) ^ 2 - 1 := Real.cos_two_mul (θ / 2)
      have h2 : Real.sin (θ / 2) ^ 2 + Real.cos (θ / 2) ^ 2 = 1 := Real.sin_sq_add_cos_sq (θ / 2)
      have h3 : 2 * (θ / 2) = θ := by ring
      rw [h3] at h1
      have hpyth := Real.sin_sq_add_cos_sq θ
      nlinarith
    rw [e, Real.sqrt_sq_eq_abs, abs_mul, abs_two]
  have hnormw0 : (0:ℝ) < ‖w - 1‖ := by
    rw [hnormw]
    have := abs_pos.2 hs
    positivity
  rw [hsum, geom_sum_eq hw1, norm_div]
  have hwd : ‖w ^ d - 1‖ ≤ 2 := by
    calc ‖w ^ d - 1‖ ≤ ‖w ^ d‖ + ‖(1:ℂ)‖ := norm_sub_le _ _
      _ = ‖w‖ ^ d + 1 := by rw [norm_pow, norm_one]
      _ = 1 + 1 := by
          rw [hw, Complex.norm_exp_ofReal_mul_I, one_pow]
      _ = 2 := by norm_num
  rw [hnormw]
  rw [mul_div_assoc']
  rw [div_le_one (by rw [← hnormw]; exact hnormw0)]
  calc |Real.sin (θ / 2)| * ‖w ^ d - 1‖ ≤ |Real.sin (θ / 2)| * 2 :=
        mul_le_mul_of_nonneg_left hwd (abs_nonneg _)
    _ = 2 * |Real.sin (θ / 2)| := by ring

/-- Mirror of Aphi_mul_sum_cos_le for the complex kernel: A_φ(y)·‖Σ_{k<d} e^{−iτ_k y}‖ ≤ L²/(2 log 2). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdfbbe56c3098980c3d63ba72430b2e80671deeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
