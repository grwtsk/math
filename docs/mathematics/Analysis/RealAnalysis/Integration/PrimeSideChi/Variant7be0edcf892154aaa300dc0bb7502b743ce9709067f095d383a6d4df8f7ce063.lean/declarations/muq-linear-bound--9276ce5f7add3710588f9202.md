# muq_linear_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e122b7ae-d50b-61ee-f619-7db7ff1306d3",
  "kind": "lemma",
  "lexical_name": "muq_linear_bound",
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
  "slug": "muq-linear-bound--9276ce5f7add3710588f9202",
  "source": {
    "blob": "b7f058ea3d12e02b6f34456557fc66c69d693d9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 248,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9276ce5f7add3710588f92026573d3f2ef83da56efd77e7718acce72c542eb93",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e122b7ae-d50b-61ee-f619-7db7ff1306d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma muq_linear_bound (hΓq : GammaFactsChi κ q) (hq : 1 ≤ q) :
    ∃ M : ℝ, 0 ≤ M ∧ ∀ τ, |muq κ q τ| ≤ M + |τ| := by
  obtain ⟨C, hC⟩ := hΓq.stirling
  obtain ⟨M₁, hM₁⟩ := isCompact_Icc.exists_bound_of_continuousOn
    (hΓq.smooth.continuous.continuousOn (s := Set.Icc (-1 : ℝ) 1))
  have hq1 : (1:ℝ) ≤ (q:ℝ) := by exact_mod_cast hq
  have hlq : (0:ℝ) ≤ Real.log q := Real.log_nonneg hq1
  refine ⟨max M₁ (1 + Real.log q + |C|), le_max_of_le_right (by positivity), fun τ => ?_⟩
  rcases le_or_gt 1 |τ| with h1 | h1
  · have hst := hC τ h1
    have hq0 : (0:ℝ) < q := lt_of_lt_of_le zero_lt_one hq1
    have hx : 0 < (q:ℝ) * |τ| / (2 * π) := by positivity
    have hπ3 := Real.pi_gt_three
    have hlog : |Real.log ((q:ℝ) * |τ| / (2 * π))| ≤ Real.log q + |τ| + 2 * π := by
      rw [abs_le]
      constructor
      · have h2 := Real.log_le_sub_one_of_pos (inv_pos.2 hx)
        rw [Real.log_inv] at h2
        have h3 : ((q:ℝ) * |τ| / (2 * π))⁻¹ ≤ 2 * π := by
          rw [inv_div, div_le_iff₀ (by positivity : (0:ℝ) < (q:ℝ) * |τ|)]
          nlinarith [mul_le_mul hq1 h1 zero_le_one (le_trans zero_le_one hq1), Real.pi_pos]
        nlinarith
      · have h2 : Real.log ((q:ℝ) * |τ| / (2 * π)) ≤ Real.log ((q:ℝ) * |τ|) := by
          apply Real.log_le_log hx
          rw [div_le_iff₀ (by positivity)]
          nlinarith [mul_nonneg (le_trans zero_le_one hq1) (abs_nonneg τ), Real.pi_gt_three]
        have h3 : Real.log ((q:ℝ) * |τ|) = Real.log q + Real.log |τ| :=
          Real.log_mul (by positivity) (by positivity)
        have h4 : Real.log |τ| ≤ |τ| - 1 := by
          have := Real.log_le_sub_one_of_pos (lt_of_lt_of_le zero_lt_one h1)
          linarith
        nlinarith
    have hCτ : C / τ ^ 2 ≤ |C| := by
      calc C / τ ^ 2 ≤ |C| / τ ^ 2 := by gcongr; exact le_abs_self _
        _ ≤ |C| / 1 := by
            apply div_le_div_of_nonneg_left (abs_nonneg _) one_pos
            nlinarith [sq_abs τ]
        _ = |C| := div_one _
    have h2 : |1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π))| ≤ Real.log q + 1 + |τ| := by
      rw [abs_mul, abs_of_pos (by positivity : (0:ℝ) < 1 / (2 * π))]
      have h2π1 : (1:ℝ) ≤ 2 * π := by nlinarith
      have e1 : 1 / (2 * π) * |Real.log ((q:ℝ) * |τ| / (2 * π))|
          ≤ 1 / (2 * π) * (Real.log q + |τ| + 2 * π) :=
        mul_le_mul_of_nonneg_left hlog (by positivity)
      have e2 : 1 / (2 * π) * (Real.log q + |τ| + 2 * π)
          = (Real.log q + |τ|) / (2 * π) + 1 := by field_simp
      have e3 : (Real.log q + |τ|) / (2 * π) ≤ Real.log q + |τ| := by
        apply div_le_self (by positivity)
        exact h2π1
      linarith
    calc |muq κ q τ|
        = |(muq κ q τ - 1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π)))
            + 1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π))| := by ring_nf
      _ ≤ |muq κ q τ - 1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π))|
            + |1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π))| := abs_add_le _ _
      _ ≤ |C| + (Real.log q + 1 + |τ|) := add_le_add (hst.trans hCτ) h2
      _ ≤ max M₁ (1 + Real.log q + |C|) + |τ| := by
          linarith [le_max_right M₁ (1 + Real.log q + |C|)]
  · have := hM₁ τ ⟨by linarith [neg_abs_le τ], by linarith [le_abs_self τ]⟩
    simp only [Real.norm_eq_abs] at this
    linarith [le_max_left M₁ (1 + Real.log q + |C|), abs_nonneg τ]

/-- Increment bound (mirror of mu_increment_bound, unified K(|r| + r²)/t shape). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7f058ea3d12e02b6f34456557fc66c69d693d9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
