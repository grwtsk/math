# verify_unique_root_computable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb77cfffd986ec01707cbbb5deb70cfe0d09f56f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 572,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b18ceec8-6da9-04f9-ffea-5a655ea4000d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3dbec0f4-336e-c4c8-04a6-cf9d294a7da7",
  "kind": "theorem",
  "lexical_name": "verify_unique_root_computable",
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
  "slug": "verify-unique-root-computable--ac15b1d500f575d9fafb8f31",
  "source": {
    "blob": "bb77cfffd986ec01707cbbb5deb70cfe0d09f56f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 788,
    "line": 572,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac15b1d500f575d9fafb8f31a1760a9ba5b32ab3cb2e6f681cef603862dc469b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dbec0f4-336e-c4c8-04a6-cf9d294a7da7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–788.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_unique_root_computable (e : Expr) (hsupp : ExprSupported e)
    (hvar0 : UsesOnlyVar0 e) (I : IntervalRat) (cfg : EvalConfig)
    (hCont : ContinuousOn (fun x => Expr.eval (fun _ => x) e) (Set.Icc I.lo I.hi))
    (h_cert : checkNewtonContractsCore e I cfg = true) :
    ∃! x, x ∈ I ∧ Expr.eval (fun _ => x) e = 0 := by
  simp only [checkNewtonContractsCore] at h_cert
  split at h_cert
  · exact absurd h_cert Bool.false_ne_true
  · rename_i N hN
    simp only [Bool.and_eq_true, decide_eq_true_eq] at h_cert
    have hContract : N.lo > I.lo ∧ N.hi < I.hi := ⟨h_cert.1, h_cert.2⟩

    -- Extract structure
    obtain ⟨hdI_nonzero, hN_lo, hN_hi⟩ := newtonStepCore_extract e I N cfg hN
    let c := I.midpoint
    let fc := evalIntervalCore1 e (IntervalRat.singleton c) cfg
    let dI := derivIntervalCore e I cfg
    let hw : ℚ := (I.hi - I.lo) / 2

    -- From contraction bounds, extract Q bounds
    -- N.lo = max I.lo (c - Q.hi), N.hi = min I.hi (c - Q.lo)
    -- Contraction means: N.lo > I.lo and N.hi < I.hi
    -- So N.lo = c - Q.hi (not I.lo) and N.hi = c - Q.lo (not I.hi)
    have hbounds := contraction_newton_bounds hContract hN_lo hN_hi

    -- Q.hi < c - I.lo = hw and Q.lo > c - I.hi = -hw
    have hQ_hi_lt : (c : ℚ) - N.lo < hw := by
      rw [hbounds.1]
      have hc_minus_Ilo : c - I.lo = hw := by
        show I.midpoint - I.lo = (I.hi - I.lo) / 2
        simp only [IntervalRat.midpoint]; ring
      linarith [hContract.1]
    have hQ_lo_gt : (c : ℚ) - N.hi > -hw := by
      rw [hbounds.2]
      have hc_minus_Ihi : c - I.hi = -hw := by
        show I.midpoint - I.hi = -((I.hi - I.lo) / 2)
        simp only [IntervalRat.midpoint]; ring
      linarith [hContract.2]

    -- Use sign analysis to prove existence
    simp only [IntervalRat.containsZero, not_and_or, not_le] at hdI_nonzero

    -- Contraction + MVT logic mirrors newton_contraction_has_root
    -- Key: if f doesn't change sign, MVT bounds on the quotient contradict contraction
    have hI_nonsingleton : I.lo < I.hi := by
      have h1 : (I.lo : ℝ) < N.lo := by exact_mod_cast hContract.1
      have h2 : (N.hi : ℝ) < I.hi := by exact_mod_cast hContract.2
      have h3 : (N.lo : ℝ) ≤ N.hi := by exact_mod_cast N.le
      have h4 : I.lo < I.hi := by
        have : (I.lo : ℝ) < I.hi := by linarith
        exact_mod_cast this
      exact h4

    set f := fun x : ℝ => Expr.eval (fun _ => x) e with hf_def

    -- Case split on derivative sign
    rcases hdI_nonzero with hdI_pos | hdI_neg
    · -- Case: dI.lo > 0 (strictly increasing)
      by_cases! hlo : f I.lo ≥ 0
      · by_cases! hhi : f I.hi ≤ 0
        · -- f(lo) ≥ 0 and f(hi) ≤ 0 with f increasing is a contradiction
          -- Because f' ≥ dI.lo > 0 implies f(hi) - f(lo) > 0, so f(hi) > f(lo)
          -- Combined with f(lo) ≥ 0 ≥ f(hi), this is impossible
          exfalso
          have hIlo_in_I : (I.lo : ℝ) ∈ I := by
            simp only [IntervalRat.mem_def]
            exact ⟨le_refl _, by exact_mod_cast I.le⟩
          have hIhi_in_I : (I.hi : ℝ) ∈ I := by
            simp only [IntervalRat.mem_def]
            exact ⟨by exact_mod_cast I.le, le_refl _⟩
          have hle : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast I.le
          -- MVT: f(hi) - f(lo) ≥ dI.lo * (hi - lo) > 0
          have hmvt := mvt_lower_bound_core e hsupp I cfg hCont I.lo I.hi hIlo_in_I hIhi_in_I hle
          have hdI_lo_pos_real : (0 : ℝ) < dI.lo := by exact_mod_cast hdI_pos
          have hwidth_pos : (I.hi : ℝ) - I.lo > 0 := by
            have h : (I.lo : ℝ) < I.hi := by exact_mod_cast hI_nonsingleton
            linarith
          have hdiff_pos : (dI.lo : ℝ) * ((I.hi : ℝ) - I.lo) > 0 := mul_pos hdI_lo_pos_real hwidth_pos
          -- hmvt : evalFunc1 e ↑I.hi - evalFunc1 e ↑I.lo ≥ ↑dI.lo * (↑I.hi - ↑I.lo)
          -- hdiff_pos : (dI.lo : ℝ) * ((I.hi : ℝ) - I.lo) > 0
          -- So evalFunc1 e I.hi > evalFunc1 e I.lo
          -- hlo : 0 ≤ f I.lo = evalFunc1 e I.lo
          -- hhi : f I.hi ≤ 0 = evalFunc1 e I.hi ≤ 0
          -- This gives: 0 ≤ evalFunc1 e I.lo < evalFunc1 e I.hi ≤ 0, contradiction
          have hstrictly_increasing : evalFunc1 e I.hi > evalFunc1 e I.lo := by linarith
          linarith
        · -- f(lo) ≥ 0 and f(hi) > 0 with f increasing → f > 0 on I
          by_cases hlo_eq : f I.lo = 0
          · use I.lo
            have hIlo_in_I : (I.lo : ℝ) ∈ I := by
              simp only [IntervalRat.mem_def]
              exact ⟨le_refl _, by exact_mod_cast I.le⟩
            constructor
            · exact ⟨hIlo_in_I, hlo_eq⟩
            · intro y ⟨hy_in_I, hy_root⟩
              exact newton_step_core_at_most_one_root e hsupp hvar0 I cfg ⟨N, hN⟩ hCont y I.lo hy_in_I hIlo_in_I hy_root hlo_eq
          · -- f(lo) > 0, get contradiction via MVT
            have hlo_pos : 0 < f I.lo := lt_of_le_of_ne hlo (Ne.symm hlo_eq)
            exfalso
            -- MVT: fc.hi / dI.lo ≥ hw (half-width)
            have hMVT := mvt_fc_lower_bound_pos_increasing_core e hsupp I cfg hI_nonsingleton hdI_pos hCont hlo_pos
            -- Apply generic contraction contradiction
            exact generic_contraction_absurd_hi I c fc dI N rfl hdI_nonzero hdI_pos
              (evalIntervalCore1_correct e hsupp.toCore c (IntervalRat.singleton c) (IntervalRat.mem_singleton c) cfg (exprSupported_domainValid1 hsupp _ cfg))
              hN_lo hContract.1 hMVT
      · by_cases! hhi : f I.hi ≤ 0
        · by_cases hhi_eq : f I.hi = 0
          · use I.hi
            have hIhi_in_I : (I.hi : ℝ) ∈ I := by
              simp only [IntervalRat.mem_def]
              exact ⟨by exact_mod_cast I.le, le_refl _⟩
            constructor
            · exact ⟨hIhi_in_I, hhi_eq⟩
            · intro y ⟨hy_in_I, hy_root⟩
              exact newton_step_core_at_most_one_root e hsupp hvar0 I cfg ⟨N, hN⟩ hCont y I.hi hy_in_I hIhi_in_I hy_root hhi_eq
          · -- f(hi) < 0, get contradiction via MVT
            have hhi_neg : f I.hi < 0 := lt_of_le_of_ne hhi hhi_eq
            exfalso
            have hMVT := mvt_fc_upper_bound_pos_increasing_core e hsupp I cfg hI_nonsingleton hdI_pos hCont hhi_neg
            exact generic_contraction_absurd_lo I c fc dI N rfl hdI_nonzero hdI_pos
              (evalIntervalCore1_correct e hsupp.toCore c (IntervalRat.singleton c) (IntervalRat.mem_singleton c) cfg (exprSupported_domainValid1 hsupp _ cfg))
              hN_hi hContract.2 hMVT
        · -- f(lo) < 0 and f(hi) > 0: SIGN CHANGE! Apply IVT.
          have hle : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast I.le
          have h0_in_range : (0 : ℝ) ∈ Set.Icc (f I.lo) (f I.hi) := ⟨le_of_lt hlo, le_of_lt hhi⟩
          have hivt := intermediate_value_Icc hle hCont h0_in_range
          obtain ⟨x, hx_mem, hx_root⟩ := hivt
          use x
          constructor
          · have hx_in_I : x ∈ I := by simp only [IntervalRat.mem_def]; exact hx_mem
            exact ⟨hx_in_I, hx_root⟩
          · intro y ⟨hy_in_I, hy_root⟩
            have hx_in_I : x ∈ I := by simp only [IntervalRat.mem_def]; exact hx_mem
            exact newton_step_core_at_most_one_root e hsupp hvar0 I cfg ⟨N, hN⟩ hCont y x hy_in_I hx_in_I hy_root hx_root
    · -- Case: dI.hi < 0 (strictly decreasing) - symmetric logic
      by_cases! hlo : f I.lo ≤ 0
      · by_cases! hhi : f I.hi ≥ 0
        · -- f(lo) ≤ 0 ≤ f(hi) with f decreasing is a contradiction
          -- Because f' ≤ dI.hi < 0 implies f(hi) - f(lo) < 0, so f(hi) < f(lo)
          -- Combined with f(lo) ≤ 0 ≤ f(hi), this is impossible
          exfalso
          have hIlo_in_I : (I.lo : ℝ) ∈ I := by
            simp only [IntervalRat.mem_def]
            exact ⟨le_refl _, by exact_mod_cast I.le⟩
          have hIhi_in_I : (I.hi : ℝ) ∈ I := by
            simp only [IntervalRat.mem_def]
            exact ⟨by exact_mod_cast I.le, le_refl _⟩
          have hle : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast I.le
          -- MVT: f(hi) - f(lo) ≤ dI.hi * (hi - lo) < 0
          have hmvt := mvt_upper_bound_core e hsupp I cfg hCont I.lo I.hi hIlo_in_I hIhi_in_I hle
          have hdI_hi_neg_real : (dI.hi : ℝ) < 0 := by exact_mod_cast hdI_neg
          have hwidth_pos : (I.hi : ℝ) - I.lo > 0 := by
            have h : (I.lo : ℝ) < I.hi := by exact_mod_cast hI_nonsingleton
            linarith
          have hdiff_neg : (dI.hi : ℝ) * ((I.hi : ℝ) - I.lo) < 0 := mul_neg_of_neg_of_pos hdI_hi_neg_real hwidth_pos
          -- hmvt : evalFunc1 e ↑I.hi - evalFunc1 e ↑I.lo ≤ ↑dI.hi * (↑I.hi - ↑I.lo)
          -- hdiff_neg : (dI.hi : ℝ) * ((I.hi : ℝ) - I.lo) < 0
          -- So evalFunc1 e I.hi < evalFunc1 e I.lo
          -- hlo : f I.lo ≤ 0 = evalFunc1 e I.lo ≤ 0
          -- hhi : f I.hi ≥ 0 = evalFunc1 e I.hi ≥ 0
          -- This gives: 0 ≤ evalFunc1 e I.hi < evalFunc1 e I.lo ≤ 0, contradiction
          have hstrictly_decreasing : evalFunc1 e I.hi < evalFunc1 e I.lo := by linarith
          linarith
        · by_cases hlo_eq : f I.lo = 0
          · use I.lo
            have hIlo_in_I : (I.lo : ℝ) ∈ I := by
              simp only [IntervalRat.mem_def]
              exact ⟨le_refl _, by exact_mod_cast I.le⟩
            constructor
            · exact ⟨hIlo_in_I, hlo_eq⟩
            · intro y ⟨hy_in_I, hy_root⟩
              exact newton_step_core_at_most_one_root e hsupp hvar0 I cfg ⟨N, hN⟩ hCont y I.lo hy_in_I hIlo_in_I hy_root hlo_eq
          · -- f(lo) < 0 and f(hi) < 0 with f decreasing → contradiction via MVT
            have hlo_neg : f I.lo < 0 := lt_of_le_of_ne hlo hlo_eq
            exfalso
            have hMVT := mvt_fc_upper_bound_neg_decreasing_core e hsupp I cfg hI_nonsingleton hdI_neg hCont hlo_neg
            exact generic_contraction_absurd_hi_neg I c fc dI N rfl hdI_nonzero hdI_neg
              (evalIntervalCore1_correct e hsupp.toCore c (IntervalRat.singleton c) (IntervalRat.mem_singleton c) cfg (exprSupported_domainValid1 hsupp _ cfg))
              hN_lo hContract.1 hMVT
      · by_cases! hhi : f I.hi ≥ 0
        · by_cases hhi_eq : f I.hi = 0
          · use I.hi
            have hIhi_in_I : (I.hi : ℝ) ∈ I := by
              simp only [IntervalRat.mem_def]
              exact ⟨by exact_mod_cast I.le, le_refl _⟩
            constructor
            · exact ⟨hIhi_in_I, hhi_eq⟩
            · intro y ⟨hy_in_I, hy_root⟩
              exact newton_step_core_at_most_one_root e hsupp hvar0 I cfg ⟨N, hN⟩ hCont y I.hi hy_in_I hIhi_in_I hy_root hhi_eq
          · -- f(hi) > 0 and f(lo) > 0 with f decreasing → contradiction via MVT
            have hhi_pos : 0 < f I.hi := lt_of_le_of_ne hhi (Ne.symm hhi_eq)
            exfalso
            have hMVT := mvt_fc_lower_bound_neg_decreasing_core e hsupp I cfg hI_nonsingleton hdI_neg hCont hhi_pos
            exact generic_contraction_absurd_lo_neg I c fc dI N rfl hdI_nonzero hdI_neg
              (evalIntervalCore1_correct e hsupp.toCore c (IntervalRat.singleton c) (IntervalRat.mem_singleton c) cfg (exprSupported_domainValid1 hsupp _ cfg))
              hN_hi hContract.2 hMVT
        · -- f(lo) > 0 and f(hi) < 0: SIGN CHANGE for decreasing function!
          have hle : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast I.le
          have h0_in_range : (0 : ℝ) ∈ Set.Icc (f I.hi) (f I.lo) := ⟨le_of_lt hhi, le_of_lt hlo⟩
          have hivt := intermediate_value_Icc' hle hCont h0_in_range
          obtain ⟨x, hx_mem, hx_root⟩ := hivt
          use x
          constructor
          · have hx_in_I : x ∈ I := by simp only [IntervalRat.mem_def]; exact hx_mem
            exact ⟨hx_in_I, hx_root⟩
          · intro y ⟨hy_in_I, hy_root⟩
            have hx_in_I : x ∈ I := by simp only [IntervalRat.mem_def]; exact hx_mem
            exact newton_step_core_at_most_one_root e hsupp hvar0 I cfg ⟨N, hN⟩ hCont y x hy_in_I hx_in_I hy_root hx_root

/-! ### Sign Change Root Existence -/

/-- **Golden Theorem for Sign Change Root Existence**

    If `checkSignChange e I cfg = true`, then there exists a root in I.

    This uses the Intermediate Value Theorem: if f(lo) and f(hi) have opposite signs,
    and f is continuous on I, then f has a root in I. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb77cfffd986ec01707cbbb5deb70cfe0d09f56f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
