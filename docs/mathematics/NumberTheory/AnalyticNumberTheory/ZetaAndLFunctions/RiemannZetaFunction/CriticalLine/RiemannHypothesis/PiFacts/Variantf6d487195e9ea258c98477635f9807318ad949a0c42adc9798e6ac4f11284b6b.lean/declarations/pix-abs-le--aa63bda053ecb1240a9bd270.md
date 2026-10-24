# PiX_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d800d7bc-4867-fd19-3861-a3ccc8fcd955",
  "kind": "theorem",
  "lexical_name": "PiX_abs_le",
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
  "slug": "pix-abs-le--aa63bda053ecb1240a9bd270",
  "source": {
    "blob": "d4e4c9320e85216a41ab3e9bf0ef0c37956f31eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantf6d487195e9ea258c98477635f9807318ad949a0c42adc9798e6ac4f11284b6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa63bda053ecb1240a9bd2700550d4760ef8f3d442b74464aac63e623dff8960",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantf6d487195e9ea258c98477635f9807318ad949a0c42adc9798e6ac4f11284b6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d800d7bc-4867-fd19-3861-a3ccc8fcd955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PiX_abs_le {X : ℝ} (hX : 1 ≤ X) (τ : ℝ) :
    |PiX X τ| ≤ 3 * Real.sqrt X / (1 + |τ|) := by
  have hX0 : (0 : ℝ) < X := lt_of_lt_of_le one_pos hX
  have hπ : (3 : ℝ) < Real.pi := Real.pi_gt_three
  have hπ0 : (0 : ℝ) < Real.pi := by linarith
  have hu : (0 : ℝ) < 1 + |τ| := by positivity
  have hu1 : (1 : ℝ) ≤ 1 + |τ| := by
    have := abs_nonneg τ
    linarith
  have hv : (0 : ℝ) < 1 / 4 + τ ^ 2 := by positivity
  have hq : (1 + |τ|) ^ 2 ≤ 5 * (1 / 4 + τ ^ 2) := by
    nlinarith [sq_nonneg (2 * |τ| - 1 / 2), sq_abs τ, abs_nonneg τ]
  have hsX : (1 : ℝ) ≤ Real.sqrt X := by
    rw [show (1 : ℝ) = Real.sqrt 1 from Real.sqrt_one.symm]
    exact Real.sqrt_le_sqrt hX
  have hsX0 : (0 : ℝ) < Real.sqrt X := by linarith
  have hsqrt5 : Real.sqrt 5 ≤ 9 / 4 := by
    rw [Real.sqrt_le_left (by norm_num : (0 : ℝ) ≤ 9 / 4)]
    norm_num
  have hsqrt5nn : (0 : ℝ) ≤ Real.sqrt 5 := Real.sqrt_nonneg 5
  set s : ℂ := 1 / 2 + Complex.I * (τ : ℂ) with hs
  have hsre : s.re = 1 / 2 := by simp [hs]
  have hsim : s.im = τ := by simp [hs]
  have hnormsq : ‖s‖ ^ 2 = 1 / 4 + τ ^ 2 := by
    rw [Complex.sq_norm, Complex.normSq_apply, hsre, hsim]
    ring
  have hspos : (0 : ℝ) < ‖s‖ := by
    nlinarith [norm_nonneg s, hnormsq, hv]
  -- the archimedean piece
  have hW : ‖(X : ℂ) ^ s - 1‖ ≤ 2 * Real.sqrt X := by
    have hcpow : ‖(X : ℂ) ^ s‖ = Real.sqrt X := by
      rw [Complex.norm_cpow_eq_rpow_re_of_pos hX0, hsre, Real.sqrt_eq_rpow]
    calc ‖(X : ℂ) ^ s - 1‖ ≤ ‖(X : ℂ) ^ s‖ + ‖(1 : ℂ)‖ := norm_sub_le _ _
      _ = Real.sqrt X + 1 := by rw [hcpow, norm_one]
      _ ≤ 2 * Real.sqrt X := by linarith
  have husqrt : 1 + |τ| ≤ Real.sqrt 5 * ‖s‖ := by
    have hsq : (1 + |τ|) ^ 2 ≤ (Real.sqrt 5 * ‖s‖) ^ 2 := by
      rw [mul_pow, Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 5), hnormsq]
      exact hq
    nlinarith [hsq, hu.le, mul_nonneg hsqrt5nn hspos.le]
  -- unfold PiX into the two pieces
  have hPiX : PiX X τ = 1 / (2 * Real.pi * (1 / 4 + τ ^ 2))
      + (1 / Real.pi) * (((X : ℂ) ^ s - 1) / s).re := by
    simp only [PiX, hs]
  -- bound each piece times (1 + |τ|)
  have hAu : |1 / (2 * Real.pi * (1 / 4 + τ ^ 2))| * (1 + |τ|) ≤ 5 / (2 * Real.pi) := by
    rw [abs_of_nonneg (by positivity), div_mul_eq_mul_div, one_mul,
      div_le_div_iff₀ (by positivity) (by positivity)]
    have hu5v : 1 + |τ| ≤ 5 * (1 / 4 + τ ^ 2) := by nlinarith [hq, hu1]
    nlinarith [mul_nonneg hπ0.le (sub_nonneg.mpr hu5v)]
  have hBu : |(1 / Real.pi) * (((X : ℂ) ^ s - 1) / s).re| * (1 + |τ|)
      ≤ 2 * Real.sqrt 5 * Real.sqrt X / Real.pi := by
    have hrew : |(((X : ℂ) ^ s - 1) / s).re| ≤ ‖(X : ℂ) ^ s - 1‖ / ‖s‖ := by
      calc |(((X : ℂ) ^ s - 1) / s).re| ≤ ‖((X : ℂ) ^ s - 1) / s‖ :=
            Complex.abs_re_le_norm _
        _ = ‖(X : ℂ) ^ s - 1‖ / ‖s‖ := norm_div _ _
    have hcore : |(((X : ℂ) ^ s - 1) / s).re| * (1 + |τ|)
        ≤ 2 * Real.sqrt X * Real.sqrt 5 := by
      calc |(((X : ℂ) ^ s - 1) / s).re| * (1 + |τ|)
          ≤ (‖(X : ℂ) ^ s - 1‖ / ‖s‖) * (1 + |τ|) :=
            mul_le_mul_of_nonneg_right hrew hu.le
        _ ≤ (‖(X : ℂ) ^ s - 1‖ / ‖s‖) * (Real.sqrt 5 * ‖s‖) := by
            have hfrac : (0 : ℝ) ≤ ‖(X : ℂ) ^ s - 1‖ / ‖s‖ := by positivity
            exact mul_le_mul_of_nonneg_left husqrt hfrac
        _ = ‖(X : ℂ) ^ s - 1‖ * Real.sqrt 5 := by
            field_simp
        _ ≤ (2 * Real.sqrt X) * Real.sqrt 5 :=
            mul_le_mul_of_nonneg_right hW hsqrt5nn
        _ = 2 * Real.sqrt X * Real.sqrt 5 := by ring
    rw [abs_mul, abs_of_nonneg (by positivity : (0 : ℝ) ≤ 1 / Real.pi), mul_assoc]
    calc 1 / Real.pi * (|(((X : ℂ) ^ s - 1) / s).re| * (1 + |τ|))
        ≤ 1 / Real.pi * (2 * Real.sqrt X * Real.sqrt 5) :=
          mul_le_mul_of_nonneg_left hcore (by positivity)
      _ = 2 * Real.sqrt 5 * Real.sqrt X / Real.pi := by ring
  -- numeric endgame: 5/(2π) + 2√5√X/π ≤ 3√X
  have hconst : 5 / (2 * Real.pi) + 2 * Real.sqrt 5 * Real.sqrt X / Real.pi
      ≤ 3 * Real.sqrt X := by
    have hinv : Real.pi * Real.pi⁻¹ = 1 := mul_inv_cancel₀ hπ0.ne'
    have hinvpos : (0 : ℝ) < Real.pi⁻¹ := by positivity
    have hinv3 : Real.pi⁻¹ ≤ 1 / 3 := by
      rw [le_div_iff₀ (by norm_num : (0 : ℝ) < 3)]
      nlinarith [hinv, hπ]
    rw [div_eq_mul_inv, div_eq_mul_inv]
    have e2 : (2 * Real.pi)⁻¹ = 2⁻¹ * Real.pi⁻¹ := by
      rw [mul_inv]
    rw [e2]
    nlinarith [hsqrt5, hsX, hinv3, hinvpos, hsX0,
      mul_nonneg hinvpos.le hsX0.le, mul_le_mul_of_nonneg_right hinv3 hsX0.le]
  -- assemble
  rw [le_div_iff₀ hu, hPiX]
  calc |1 / (2 * Real.pi * (1 / 4 + τ ^ 2))
        + 1 / Real.pi * (((X : ℂ) ^ s - 1) / s).re| * (1 + |τ|)
      ≤ (|1 / (2 * Real.pi * (1 / 4 + τ ^ 2))|
        + |1 / Real.pi * (((X : ℂ) ^ s - 1) / s).re|) * (1 + |τ|) :=
        mul_le_mul_of_nonneg_right (abs_add_le _ _) hu.le
    _ = |1 / (2 * Real.pi * (1 / 4 + τ ^ 2))| * (1 + |τ|)
        + |1 / Real.pi * (((X : ℂ) ^ s - 1) / s).re| * (1 + |τ|) := by ring
    _ ≤ 5 / (2 * Real.pi) + 2 * Real.sqrt 5 * Real.sqrt X / Real.pi := add_le_add hAu hBu
    _ ≤ 3 * Real.sqrt X := hconst

/-- The paper's [eq:PiPfacts] Π_X-bound in the ∃X₀ packaging used by the
prime side (X₀ = 1 works). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantf6d487195e9ea258c98477635f9807318ad949a0c42adc9798e6ac4f11284b6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantf6d487195e9ea258c98477635f9807318ad949a0c42adc9798e6ac4f11284b6b.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e4c9320e85216a41ab3e9bf0ef0c37956f31eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
