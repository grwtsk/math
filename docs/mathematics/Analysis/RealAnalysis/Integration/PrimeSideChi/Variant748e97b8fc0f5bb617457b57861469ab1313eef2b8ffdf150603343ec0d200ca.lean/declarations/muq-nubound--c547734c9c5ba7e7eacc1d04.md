# muq_nuBound

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
      "line": 1147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4bac452f-7733-4d90-af63-9b3166a4d91c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1a7ead0-d511-fcce-1983-ae5a811b01f6",
  "kind": "lemma",
  "lexical_name": "muq_nuBound",
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
  "slug": "muq-nubound--c547734c9c5ba7e7eacc1d04",
  "source": {
    "blob": "bdfbbe56c3098980c3d63ba72430b2e80671deeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1374,
    "line": 1147,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c547734c9c5ba7e7eacc1d0438ad984e9074c85336565973037cfc15c57da422",
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

Occurrence: `result:f1a7ead0-d511-fcce-1983-ae5a811b01f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1147–1374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma muq_nuBound (hΓq : GammaFactsChi κ q) (hq : 1 ≤ q) :
    ∃ C₀ T₀ : ℝ, 1 ≤ C₀ ∧ ∀ p : Setting, T₀ ≤ p.T → ∀ τ : ℝ,
      |muq κ q τ| ≤ C₀ * Zeta23.l p.T + max (Real.log (|τ| / (4 * p.T))) 0 := by
  obtain ⟨M, hM0, hM⟩ := muq_linear_bound hΓq hq
  obtain ⟨Cs, hCs⟩ := hΓq.stirling
  have hq1 : (1:ℝ) ≤ (q:ℝ) := by exact_mod_cast hq
  have hlq : (0:ℝ) ≤ Real.log q := Real.log_nonneg hq1
  refine ⟨max 1 (M + Real.log q + |Cs| + 10), 2 * π * Real.exp 1, le_max_left _ _,
    fun p hT τ => ?_⟩
  set C₀ := max 1 (M + Real.log q + |Cs| + 10) with hC₀
  have hπ : (0:ℝ) < π := Real.pi_pos
  have hπ3 := Real.pi_gt_three
  have he1 : (1:ℝ) ≤ Real.exp 1 := by linarith [Real.add_one_le_exp 1]
  have hT0 : (0:ℝ) < p.T := by nlinarith
  have hl1 : 1 ≤ Zeta23.l p.T := by
    rw [Zeta23.l, ← Real.log_exp 1]
    apply Real.log_le_log (Real.exp_pos 1)
    rw [le_div_iff₀ (by positivity)]
    nlinarith
  have hl0 : (0:ℝ) ≤ Zeta23.l p.T := by linarith
  have hC₀M : M + Real.log q + |Cs| + 10 ≤ C₀ := le_max_right _ _
  have hC₀1 : (1:ℝ) ≤ C₀ := le_max_left _ _
  have hmax0 : (0:ℝ) ≤ max (Real.log (|τ| / (4 * p.T))) 0 := le_max_right _ _
  have hlogT : Real.log p.T ≤ Zeta23.l p.T + 3 := by
    have e1 : Zeta23.l p.T = Real.log p.T - Real.log (2 * π) := by
      rw [Zeta23.l, Real.log_div (ne_of_gt hT0) (by positivity)]
    have hlog2π : (0:ℝ) ≤ Real.log (2 * π) := Real.log_nonneg (by nlinarith)
    have hlog2π' : Real.log (2 * π) ≤ 3 := by
      rw [show (3:ℝ) = Real.log (Real.exp 3) by rw [Real.log_exp]]
      apply Real.log_le_log (by positivity)
      have he3 : Real.exp 3 = Real.exp 1 * Real.exp 1 * Real.exp 1 := by
        rw [← Real.exp_add, ← Real.exp_add]
        norm_num
      have hee := Real.exp_one_gt_d9
      have hp2 : (7.3:ℝ) ≤ Real.exp 1 * Real.exp 1 := by nlinarith
      have hp3 : (19:ℝ) ≤ Real.exp 1 * Real.exp 1 * Real.exp 1 := by nlinarith
      rw [he3]
      nlinarith [Real.pi_lt_four]
    linarith
  rcases le_or_gt |τ| 1 with hτ1 | hτ1
  · -- small |τ|
    have h1 : |muq κ q τ| ≤ M + 1 := by
      have := hM τ
      linarith
    have h2 : M + 1 ≤ C₀ * Zeta23.l p.T := by
      calc M + 1 ≤ C₀ * 1 := by
            rw [mul_one]
            linarith [abs_nonneg Cs]
        _ ≤ C₀ * Zeta23.l p.T := by
            apply mul_le_mul_of_nonneg_left hl1
            linarith
    linarith
  · -- |τ| ≥ 1: Stirling
    have hτ0 : (0:ℝ) < |τ| := by linarith
    have hst := hCs τ hτ1.le
    have hCsb : Cs / τ ^ 2 ≤ |Cs| := by
      calc Cs / τ ^ 2 ≤ |Cs| / τ ^ 2 := by gcongr; exact le_abs_self _
        _ ≤ |Cs| / 1 := by
            apply div_le_div_of_nonneg_left (abs_nonneg _) one_pos
            nlinarith [sq_abs τ]
        _ = |Cs| := div_one _
    have hbase : |muq κ q τ| ≤ 1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π)) + |Cs|
        ∨ Real.log ((q:ℝ) * |τ| / (2 * π)) < 0 := by
      rcases le_or_gt 0 (Real.log ((q:ℝ) * |τ| / (2 * π))) with hpos | hneg
      · left
        have h1 := (abs_le.1 hst).2
        have h2 := (abs_le.1 hst).1
        have h3 : |muq κ q τ| ≤ |muq κ q τ - 1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π))|
            + 1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π)) := by
          have := abs_add_le (muq κ q τ - 1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π)))
            (1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π)))
          simp only [sub_add_cancel] at this
          refine this.trans ?_
          have habs : |1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π))|
              = 1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π)) := by
            rw [abs_of_nonneg (by positivity)]
          rw [habs]
        linarith [hst.trans hCsb]
      · right
        exact hneg
    have hfrac1 : 1 / (2 * π) ≤ 1 := by
      rw [div_le_one (by positivity)]
      nlinarith
    -- in the negative-log case the Stirling bound already gives |μq| ≤ |Cs|
    rcases hbase with hb | hneg
    · -- split the log
      have hlogsplit : Real.log ((q:ℝ) * |τ| / (2 * π))
          = Real.log q + Real.log |τ| - Real.log (2 * π) := by
        rw [Real.log_div (by positivity) (by positivity), Real.log_mul (by positivity)
          (ne_of_gt hτ0)]
      have hlog2π0 : (0:ℝ) ≤ Real.log (2 * π) := Real.log_nonneg (by nlinarith)
      rcases le_or_gt |τ| (4 * p.T) with hτT | hτT
      · -- middle range
        have hlogτ : Real.log |τ| ≤ Real.log 4 + Real.log p.T := by
          rw [← Real.log_mul (by norm_num) (ne_of_gt hT0)]
          exact Real.log_le_log hτ0 hτT
        have hlog4 : Real.log 4 ≤ 2 := by
          rw [show (2:ℝ) = Real.log (Real.exp 2) by rw [Real.log_exp]]
          apply Real.log_le_log (by norm_num)
          have hee := Real.exp_one_gt_d9
          have hp2 : (7.3:ℝ) ≤ Real.exp 1 * Real.exp 1 := by nlinarith
          have he2 : Real.exp 2 = Real.exp 1 * Real.exp 1 := by
            rw [← Real.exp_add]
            norm_num
          nlinarith
        have hchain : |muq κ q τ| ≤ Real.log q + (Zeta23.l p.T + 5) + |Cs| := by
          have h4 : Real.log ((q:ℝ) * |τ| / (2 * π)) ≤ Real.log q + (Zeta23.l p.T + 5) := by
            rw [hlogsplit]
            linarith
          have h5 : 1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π))
              ≤ Real.log q + (Zeta23.l p.T + 5) := by
            rcases le_or_gt 0 (Real.log ((q:ℝ) * |τ| / (2 * π))) with hpos | hneg2
            · calc 1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π))
                  ≤ 1 * Real.log ((q:ℝ) * |τ| / (2 * π)) :=
                    mul_le_mul_of_nonneg_right hfrac1 hpos
                _ = Real.log ((q:ℝ) * |τ| / (2 * π)) := one_mul _
                _ ≤ Real.log q + (Zeta23.l p.T + 5) := h4
            · have : 1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π)) ≤ 0 := by
                apply mul_nonpos_of_nonneg_of_nonpos (by positivity) hneg2.le
              nlinarith
          linarith
        have hfin : Real.log q + (Zeta23.l p.T + 5) + |Cs| ≤ C₀ * Zeta23.l p.T := by
          have h9 : M + Real.log q + |Cs| + 10 ≤ C₀ := hC₀M
          have h10 : C₀ * Zeta23.l p.T = C₀ + C₀ * (Zeta23.l p.T - 1) := by ring
          have h11 : Zeta23.l p.T - 1 ≤ C₀ * (Zeta23.l p.T - 1) :=
            le_mul_of_one_le_left (by linarith) hC₀1
          linarith
        linarith
      · -- far range
        have hlogτ : Real.log |τ| = Real.log (|τ| / (4 * p.T)) + Real.log (4 * p.T) := by
          rw [← Real.log_mul (by
            intro h0
            have := div_eq_zero_iff.1 h0
            rcases this with h | h
            · exact (ne_of_gt hτ0) h
            · nlinarith) (by positivity)]
          congr 1
          field_simp
        have hratio1 : (1:ℝ) ≤ |τ| / (4 * p.T) := by
          rw [le_div_iff₀ (by positivity)]
          linarith
        have hlogr0 : 0 ≤ Real.log (|τ| / (4 * p.T)) := Real.log_nonneg hratio1
        have hmaxeq : max (Real.log (|τ| / (4 * p.T))) 0 = Real.log (|τ| / (4 * p.T)) :=
          max_eq_left hlogr0
        have hlog4T : Real.log (4 * p.T) ≤ 2 + (Zeta23.l p.T + 3) := by
          rw [Real.log_mul (by norm_num) (ne_of_gt hT0)]
          have hlog4 : Real.log 4 ≤ 2 := by
            rw [show (2:ℝ) = Real.log (Real.exp 2) by rw [Real.log_exp]]
            apply Real.log_le_log (by norm_num)
            have hee := Real.exp_one_gt_d9
            have hp2 : (7.3:ℝ) ≤ Real.exp 1 * Real.exp 1 := by nlinarith
            have he2 : Real.exp 2 = Real.exp 1 * Real.exp 1 := by
              rw [← Real.exp_add]
              norm_num
            nlinarith
          linarith
        have h4 : Real.log ((q:ℝ) * |τ| / (2 * π))
            ≤ Real.log q + Real.log (|τ| / (4 * p.T)) + (Zeta23.l p.T + 5) := by
          rw [hlogsplit, hlogτ]
          linarith
        have h5 : 1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π))
            ≤ Real.log q + Real.log (|τ| / (4 * p.T)) + (Zeta23.l p.T + 5) := by
          rcases le_or_gt 0 (Real.log ((q:ℝ) * |τ| / (2 * π))) with hpos | hneg2
          · calc 1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π))
                ≤ 1 * Real.log ((q:ℝ) * |τ| / (2 * π)) :=
                  mul_le_mul_of_nonneg_right hfrac1 hpos
              _ = Real.log ((q:ℝ) * |τ| / (2 * π)) := one_mul _
              _ ≤ _ := h4
          · have h6 : 1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π)) ≤ 0 := by
              apply mul_nonpos_of_nonneg_of_nonpos (by positivity) hneg2.le
            nlinarith
        have hfin : Real.log q + (Zeta23.l p.T + 5) + |Cs| ≤ C₀ * Zeta23.l p.T := by
          have h9 : M + Real.log q + |Cs| + 10 ≤ C₀ := hC₀M
          have h10 : C₀ * Zeta23.l p.T = C₀ + C₀ * (Zeta23.l p.T - 1) := by ring
          have h11 : Zeta23.l p.T - 1 ≤ C₀ * (Zeta23.l p.T - 1) :=
            le_mul_of_one_le_left (by linarith) hC₀1
          linarith
        rw [hmaxeq]
        linarith
    · -- log < 0: |μq| ≤ |Cs| directly
      have h1 : |muq κ q τ| ≤ |Cs| + 1 / (2 * π) * |Real.log ((q:ℝ) * |τ| / (2 * π))| := by
        have h2 := hst.trans hCsb
        have h3 := abs_add_le (muq κ q τ - 1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π)))
          (1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π)))
        simp only [sub_add_cancel] at h3
        have h4 : |1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π))|
            = 1 / (2 * π) * |Real.log ((q:ℝ) * |τ| / (2 * π))| := by
          rw [abs_mul, abs_of_pos (by positivity : (0:ℝ) < 1 / (2 * π))]
        linarith
      -- |log| when log < 0: the argument ≥ |τ|/(2π·…)… bound |log| ≤ log 2π (argument ≥ q|τ|/2π ≥ 1/(2π))
      have harg : (1:ℝ) / (2 * π) ≤ (q:ℝ) * |τ| / (2 * π) := by
        apply div_le_div_of_nonneg_right _ (by positivity)
        nlinarith
      have h5 : |Real.log ((q:ℝ) * |τ| / (2 * π))| ≤ Real.log (2 * π) := by
        rw [abs_of_neg hneg]
        have h6 := Real.log_le_log (by positivity : (0:ℝ) < 1 / (2 * π)) harg
        rw [Real.log_div one_ne_zero (by positivity), Real.log_one] at h6
        linarith
      have hlog2π' : Real.log (2 * π) ≤ 3 := by
        rw [show (3:ℝ) = Real.log (Real.exp 3) by rw [Real.log_exp]]
        apply Real.log_le_log (by positivity)
        have he3 : Real.exp 3 = Real.exp 1 * Real.exp 1 * Real.exp 1 := by
          rw [← Real.exp_add, ← Real.exp_add]
          norm_num
        have hee := Real.exp_one_gt_d9
        have hp2 : (7.3:ℝ) ≤ Real.exp 1 * Real.exp 1 := by nlinarith
        have hp3 : (19:ℝ) ≤ Real.exp 1 * Real.exp 1 * Real.exp 1 := by nlinarith
        rw [he3]
        nlinarith [Real.pi_lt_four]
      have hchain : |muq κ q τ| ≤ |Cs| + 3 := by
        have h7 : 1 / (2 * π) * |Real.log ((q:ℝ) * |τ| / (2 * π))| ≤ 3 := by
          calc 1 / (2 * π) * |Real.log ((q:ℝ) * |τ| / (2 * π))|
              ≤ 1 * |Real.log ((q:ℝ) * |τ| / (2 * π))| :=
                mul_le_mul_of_nonneg_right hfrac1 (abs_nonneg _)
            _ = |Real.log ((q:ℝ) * |τ| / (2 * π))| := one_mul _
            _ ≤ Real.log (2 * π) := h5
            _ ≤ 3 := hlog2π'
        linarith
      have hfin : |Cs| + 3 ≤ C₀ * Zeta23.l p.T := by
        have h8 : |Cs| + 3 ≤ C₀ := by linarith
        have h10 : C₀ * 1 ≤ C₀ * Zeta23.l p.T :=
          mul_le_mul_of_nonneg_left hl1 (by linarith)
        linarith
      linarith

set_option linter.unusedVariables false in
/-- **[lem:ends] for L(s,χ)**: `tr G̃² = 𝓜 + O_q(L·l·log l·(l² + X))` (same error shape as ζ:
`B_χ = ℓ_{1,χ} + 4√X ≤ C_q(l + √X)` and the ψ-tail machinery is coefficient-independent). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean#L1147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdfbbe56c3098980c3d63ba72430b2e80671deeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
