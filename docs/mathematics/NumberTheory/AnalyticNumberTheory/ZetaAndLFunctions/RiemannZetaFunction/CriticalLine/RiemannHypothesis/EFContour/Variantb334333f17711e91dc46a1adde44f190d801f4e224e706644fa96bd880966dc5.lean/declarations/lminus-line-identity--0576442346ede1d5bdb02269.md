# lminus_line_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2cf2d75db2f44cb0dd99e2160fd273caf639f807",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ab6ed65-35a2-eb30-d5c4-950c056658ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51154899-cfe8-18f5-b0cf-70418847df44",
  "kind": "theorem",
  "lexical_name": "lminus_line_identity",
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
  "slug": "lminus-line-identity--0576442346ede1d5bdb02269",
  "source": {
    "blob": "2cf2d75db2f44cb0dd99e2160fd273caf639f807",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 137,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variantb334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0576442346ede1d5bdb022698a5cd0618f54101179586a933f6c3b3dd2888f49",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variantb334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51154899-cfe8-18f5-b0cf-70418847df44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lminus_line_identity {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 5 / 4) {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k)
    (hkc : HasCompactSupport k) :
    Integrable (fun t : ℝ => (Hfn k ((c : ℂ) + t * I) + Hfn k (1 - c - t * I))
      * (Lfn ((c : ℂ) + t * I) - L2 ((c : ℂ) + t * I))) ∧
    (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, (Hfn k ((c : ℂ) + t * I) + Hfn k (1 - c - t * I))
        * (Lfn ((c : ℂ) + t * I) - L2 ((c : ℂ) + t * I)))
      = (1 / 2 : ℂ) * (Hfn k 0 + Hfn k 1) := by
  set F : ℂ → ℂ := fun s => Lfn s - L2 s with hF
  -- points of the two vertical lines are in stripReg
  have hline_mem : ∀ t : ℝ, ((c : ℂ) + t * I) ∈ stripReg := fun t =>
    ⟨by simp; linarith, by simp; linarith, fun h => by have := congrArg Complex.re h; simp at this; linarith,
      fun h => by have := congrArg Complex.re h; simp at this; linarith⟩
  have hl : Continuous fun t : ℝ => (c : ℂ) + t * I := by fun_prop
  have hFc : Continuous fun t : ℝ => F ((c : ℂ) + t * I) := by
    refine continuous_iff_continuousAt.mpr fun t => ?_
    exact ContinuousAt.comp (f := fun t : ℝ => (c : ℂ) + t * I) (x := t)
      ((Lminus_analyticAt (hline_mem t)).continuousAt) hl.continuousAt
  have hsymm : ∀ t : ℝ, F (1 - ((c : ℂ) + t * I)) = -F ((c : ℂ) + t * I) := by
    intro t
    obtain ⟨ha, hb, h0, h1⟩ := hline_mem t
    exact Lminus_one_sub (Gammaℝ_ne_zero_of_re ha h0) (Gammaℝ_one_sub_ne_zero_of_re hb h1) h0 h1
  -- line bound: explicit for |t| ≥ 2, compactness for |t| ≤ 2
  obtain ⟨B, hB⟩ : ∃ B : ℝ, ∀ t ∈ Icc (-2 : ℝ) 2, ‖F ((c : ℂ) + t * I)‖ ≤ B :=
    isCompact_Icc.exists_bound_of_continuousOn hFc.continuousOn
  have hline : ∃ M : ℝ, ∀ t : ℝ, ‖F ((c : ℂ) + t * I)‖ ≤ M * Real.log (2 + |t|) := by
    have hlog2 : 0 < Real.log 2 := Real.log_pos (by norm_num)
    refine ⟨max (|B| / Real.log 2) 12, fun t => ?_⟩
    have hl2 : Real.log 2 ≤ Real.log (2 + |t|) := Real.log_le_log (by norm_num) (by linarith [abs_nonneg t])
    rcases le_or_gt |t| 2 with ht | ht
    · have h1 := hB t (abs_le.mp ht)
      calc ‖F ((c : ℂ) + t * I)‖ ≤ |B| := h1.trans (le_abs_self B)
        _ = (|B| / Real.log 2) * Real.log 2 := by field_simp
        _ ≤ max (|B| / Real.log 2) 12 * Real.log (2 + |t|) :=
            mul_le_mul (le_max_left _ _) hl2 hlog2.le (le_trans (by positivity) (le_max_left _ _))
    · have h := norm_Lminus_le hc1 hc2 (s := (c : ℂ) + t * I) (by simp; linarith) (by simp) (by simp; linarith)
      have hl3 : Real.log (|t| + 3) ≤ 2 * Real.log (2 + |t|) := by
        rw [← Real.log_rpow (by linarith [abs_nonneg t]), Real.rpow_two]
        exact Real.log_le_log (by linarith [abs_nonneg t]) (by nlinarith [abs_nonneg t])
      have hl4 : 1 ≤ Real.log (2 + |t|) := by
        rw [← Real.log_exp 1]
        exact Real.log_le_log (Real.exp_pos 1) (by linarith [Real.exp_one_lt_d9])
      simp only [add_im, ofReal_im, mul_im, ofReal_re, I_im, I_re, zero_add, mul_one, mul_zero, add_zero] at h
      calc ‖F ((c : ℂ) + t * I)‖ ≤ Real.log (|t| + 3) + 7 := h
        _ ≤ 12 * Real.log (2 + |t|) := by linarith
        _ ≤ max (|B| / Real.log 2) 12 * Real.log (2 + |t|) :=
            mul_le_mul_of_nonneg_right (le_max_right _ _) (by linarith)
  -- heights R_j := j + 2 and the horizontal bound
  set R : ℕ → ℝ := fun j => (j : ℝ) + 2 with hRdef
  have hR : ∀ j : ℕ, (j : ℝ) + (2 : ℕ) ≤ R j ∧ R j ≤ (j : ℝ) + (2 : ℕ) + 1 := fun j => by
    simp only [hRdef, Nat.cast_ofNat]; constructor <;> linarith
  have hhor : ∀ j : ℕ, ∀ s : ℂ, (s.im = R j ∨ s.im = -R j) → 1 - c ≤ s.re → s.re ≤ c →
      ‖F s‖ ≤ 9 * (Real.log ((j : ℝ) + (2 : ℕ) + 3)) ^ 2 := by
    intro j s him hr1 hr2
    have habs : |s.im| = R j := by
      rcases him with h | h
      · rw [h, abs_of_nonneg]; simp [hRdef]; positivity
      · rw [h, abs_neg, abs_of_nonneg]; simp [hRdef]; positivity
    have h2 : 2 ≤ |s.im| := by rw [habs]; simp [hRdef]
    have h := norm_Lminus_le hc1 hc2 hr1 hr2 h2
    rw [habs] at h
    set Lg := Real.log ((j : ℝ) + (2 : ℕ) + 3) with hLg
    have hLg1 : 1 ≤ Lg := by
      rw [hLg, ← Real.log_exp 1]
      exact Real.log_le_log (Real.exp_pos 1) (by push_cast; linarith [Real.exp_one_lt_d9])
    have hl : Real.log (R j + 3) ≤ 2 * Lg := by
      rw [hLg, ← Real.log_rpow (by push_cast; positivity), Real.rpow_two]
      apply Real.log_le_log (by simp [hRdef]; positivity)
      simp only [hRdef]; push_cast; nlinarith
    calc ‖F s‖ ≤ Real.log (R j + 3) + 7 := h
      _ ≤ 2 * Lg + 7 * Lg ^ 2 := by nlinarith
      _ ≤ 9 * Lg ^ 2 := by nlinarith
  -- rectangle values (constant) and the limit
  have hE : ∀ j : ℕ, RectangleIntegral' (fun s => Hfn k s * F s) (((1 - c : ℝ) : ℂ) - R j * I) ((c : ℝ) + R j * I)
      = (1 / 2 : ℂ) * (Hfn k 0 + Hfn k 1) := fun j =>
    rect_Lminus hk hkc hc1 hc2 (R := R j) (by simp [hRdef]; positivity)
  exact full_line_of_rectangles (by linarith) (by linarith) hk hkc hFc hsymm hline (j₀ := 2) (by norm_num)
    (K := 9) (by norm_num) hR hhor hE tendsto_const_nhds

/-! ## §3. The low zeros of W and the W full-line identity -/

/-- the set of low zeros of W inside the contour strip: W(ρ) = 0, ρ ∉ {0,1}, |Im ρ| < t₀, 1−c < Re ρ < c
(REAL zeros included). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variantb334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variantb334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cf2d75db2f44cb0dd99e2160fd273caf639f807` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
