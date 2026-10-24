# newton_contraction_has_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa4bab1d-5d16-69e2-1b9a-427bccfb3977",
  "kind": "theorem",
  "lexical_name": "newton_contraction_has_root",
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
  "slug": "newton-contraction-has-root--d02be8de55394377a4d12cd9",
  "source": {
    "blob": "61b5dd30cab0f9e3b56e1fa631f7f2dd63d23839",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 47,
    "path": "GRWTSK/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d02be8de55394377a4d12cd9e6c21b7884670f19b89bba0b0c5f42c6f298feae",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa4bab1d-5d16-69e2-1b9a-427bccfb3977`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem newton_contraction_has_root (e : Expr) (hsupp : ExprSupported e) (hvar0 : UsesOnlyVar0 e)
    (I N : IntervalRat)
    (hN : newtonStepTM e I 0 1 = some N ∨ newtonStepSimple e I 0 = some N)
    (hContract : N.lo > I.lo ∧ N.hi < I.hi)
    (hCont : ContinuousOn (fun x => Expr.eval (fun _ => x) e) (Set.Icc I.lo I.hi)) :
    ∃ x ∈ N, Expr.eval (fun _ => x) e = 0 := by
  -- N is non-empty since N.lo ≤ N.hi
  have hN_nonempty : N.lo ≤ N.hi := N.le

  -- N is contained in I
  have hN_in_I : ∀ x, x ∈ N → x ∈ I := by
    intro x hx
    simp only [IntervalRat.mem_def] at hx ⊢
    constructor
    · have h1 : (I.lo : ℝ) < N.lo := by exact_mod_cast hContract.1
      linarith [hx.1]
    · have h2 : (N.hi : ℝ) < I.hi := by exact_mod_cast hContract.2
      linarith [hx.2]

  -- N ⊆ I as sets
  have hN_sub_I : Set.Icc (N.lo : ℝ) N.hi ⊆ Set.Icc (I.lo : ℝ) I.hi := by
    intro z ⟨hzlo, hzhi⟩
    constructor
    · have h1 : (I.lo : ℝ) < N.lo := by exact_mod_cast hContract.1
      linarith
    · have h2 : (N.hi : ℝ) < I.hi := by exact_mod_cast hContract.2
      linarith

  have hCont_N : ContinuousOn (fun x => Expr.eval (fun _ => x) e) (Set.Icc N.lo N.hi) :=
    hCont.mono hN_sub_I

  -- Extract that dI doesn't contain zero
  have hdI_nonzero : ¬(derivInterval e (fun _ => I) 0).containsZero := by
    rcases hN with hTM | hSimple
    · simp only [newtonStepTM] at hTM
      cases htm : TaylorModel.fromExpr? e I 1 with
      | none => simp only [htm, Option.bind_eq_bind, Option.bind_none, reduceCtorEq] at hTM
      | some tm =>
        simp only [htm] at hTM
        by_cases h : (derivInterval e (fun _ => I) 0).containsZero
        · simp only [h, ↓reduceDIte, Option.bind_eq_bind, Option.bind_fun_none,
          reduceCtorEq] at hTM
        · exact h
    · simp only [newtonStepSimple] at hSimple
      by_cases h : (derivInterval e (fun _ => I) 0).containsZero
      · simp only [h, ↓reduceDIte, reduceCtorEq] at hSimple
      · exact h

  simp only [IntervalRat.containsZero, not_and_or, not_le] at hdI_nonzero

  -- Define convenient aliases
  set f := fun x : ℝ => Expr.eval (fun _ => x) e with hf_def
  set dI := derivInterval e (fun _ => I) 0 with hdI_def

  -- Contraction implies I is non-singleton
  have hI_nonsingleton : I.lo < I.hi := by
    have h1 : (I.lo : ℝ) < N.lo := by exact_mod_cast hContract.1
    have h2 : (N.hi : ℝ) < I.hi := by exact_mod_cast hContract.2
    have h3 : (N.lo : ℝ) ≤ N.hi := by exact_mod_cast hN_nonempty
    linarith

  rcases hdI_nonzero with hdI_pos | hdI_neg
  · -- Case: dI.lo > 0 (derivative positive, f strictly increasing)
    have hf_incr := strictMonoOn_of_deriv_pos_interval e hsupp hvar0 I hdI_pos

    by_cases! hlo : f I.lo ≥ 0
    · by_cases! hhi : f I.hi ≤ 0
      · -- f(I.lo) ≥ 0 and f(I.hi) ≤ 0 with f increasing → both equal 0
        have hle : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast I.le
        have hIlo_in_I : (I.lo : ℝ) ∈ I := by
          simp only [IntervalRat.mem_def]
          exact ⟨le_refl _, by exact_mod_cast I.le⟩
        have hIhi_in_I : (I.hi : ℝ) ∈ I := by
          simp only [IntervalRat.mem_def]
          exact ⟨by exact_mod_cast I.le, le_refl _⟩
        have hroot_lo : f I.lo = 0 := by
          by_cases heq : (I.lo : ℝ) = I.hi
          · have heq_f : f I.lo = f I.hi := by simp only [heq]
            linarith [heq_f]
          · have hlt : (I.lo : ℝ) < I.hi := lt_of_le_of_ne hle heq
            have hmono := hf_incr hIlo_in_I hIhi_in_I hlt
            linarith
        use I.lo
        constructor
        · have hpres := newton_preserves_root e hsupp hvar0 I N hN (I.lo : ℝ) hIlo_in_I hroot_lo
          exact hpres
        · exact hroot_lo
      · -- f(I.lo) ≥ 0 and f(I.hi) > 0
        by_cases hlo_eq : f I.lo = 0
        · use I.lo
          constructor
          · have hIlo_in_I : (I.lo : ℝ) ∈ I := by
              simp only [IntervalRat.mem_def]
              exact ⟨le_refl _, by exact_mod_cast I.le⟩
            exact newton_preserves_root e hsupp hvar0 I N hN (I.lo : ℝ) hIlo_in_I hlo_eq
          · exact hlo_eq
        · have hlo_pos : 0 < f I.lo := lt_of_le_of_ne hlo (Ne.symm hlo_eq)
          exfalso
          have hquot_real := newton_positive_increasing_contradicts_contraction e hsupp hvar0 I
            hI_nonsingleton hdI_pos hCont hlo_pos
          have hquot : (evalInterval1 e (IntervalRat.singleton I.midpoint)).hi /
              (derivInterval e (fun _ => I) 0).lo ≥ (I.hi - I.lo) / 2 := by
            have h : ((evalInterval1 e (IntervalRat.singleton I.midpoint)).hi : ℝ) /
                ((derivInterval e (fun _ => I) 0).lo : ℝ) ≥
                (((I.hi - I.lo) / 2 : ℚ) : ℝ) := hquot_real
            have hdI_lo_pos_rat : (0 : ℚ) < (derivInterval e (fun _ => I) 0).lo := hdI_pos
            rw [ge_iff_le]
            have hdiv_cast : ((evalInterval1 e (IntervalRat.singleton I.midpoint)).hi : ℝ) /
                ((derivInterval e (fun _ => I) 0).lo : ℝ) =
                (((evalInterval1 e (IntervalRat.singleton I.midpoint)).hi /
                (derivInterval e (fun _ => I) 0).lo : ℚ) : ℝ) := by
              push_cast; ring
            rw [hdiv_cast] at h
            exact_mod_cast h
          rcases hN with hTM | hSimple
          · -- TM case: use TM structure and generic contradiction
            obtain ⟨tm, hdI_nonzero, htm, hc_eq, hN_lo, hN_hi⟩ := newtonStepTM_structure e I N hTM
            have hfc_correct := newtonStepTM_fc_correct e I tm htm
            have hMVT := mvt_fc_lower_bound_pos_increasing e hsupp hvar0 I hdI_pos hCont hlo_pos
            exact generic_contraction_absurd_hi I I.midpoint (TaylorModel.valueAtCenterInterval tm)
              (derivInterval e (fun _ => I) 0) N rfl hdI_nonzero hdI_pos hfc_correct hN_lo hContract.1 hMVT
          · exact newtonStepSimple_contraction_absurd_hi e I N hSimple hContract hdI_pos hquot
    · by_cases! hhi : f I.hi ≤ 0
      · by_cases hhi_eq : f I.hi = 0
        · use I.hi
          constructor
          · have hIhi_in_I : (I.hi : ℝ) ∈ I := by
              simp only [IntervalRat.mem_def]
              exact ⟨by exact_mod_cast I.le, le_refl _⟩
            exact newton_preserves_root e hsupp hvar0 I N hN (I.hi : ℝ) hIhi_in_I hhi_eq
          · exact hhi_eq
        · have hhi_neg : f I.hi < 0 := lt_of_le_of_ne hhi hhi_eq
          exfalso
          have hquot_real := newton_negative_increasing_contradicts_contraction e hsupp hvar0 I
            hI_nonsingleton hdI_pos hCont hhi_neg
          have hquot : (evalInterval1 e (IntervalRat.singleton I.midpoint)).lo /
              (derivInterval e (fun _ => I) 0).lo ≤ -((I.hi - I.lo) / 2) := by
            have h : ((evalInterval1 e (IntervalRat.singleton I.midpoint)).lo : ℝ) /
                ((derivInterval e (fun _ => I) 0).lo : ℝ) ≤
                ((-(((I.hi - I.lo) / 2) : ℚ)) : ℝ) := hquot_real
            rw [le_iff_lt_or_eq]
            rw [le_iff_lt_or_eq] at h
            rcases h with hlt | heq
            · left
              have hdiv_cast : ((evalInterval1 e (IntervalRat.singleton I.midpoint)).lo : ℝ) /
                  ((derivInterval e (fun _ => I) 0).lo : ℝ) =
                  (((evalInterval1 e (IntervalRat.singleton I.midpoint)).lo /
                  (derivInterval e (fun _ => I) 0).lo : ℚ) : ℝ) := by
                push_cast; ring
              rw [hdiv_cast] at hlt
              exact_mod_cast hlt
            · right
              have hdiv_cast : ((evalInterval1 e (IntervalRat.singleton I.midpoint)).lo : ℝ) /
                  ((derivInterval e (fun _ => I) 0).lo : ℝ) =
                  (((evalInterval1 e (IntervalRat.singleton I.midpoint)).lo /
                  (derivInterval e (fun _ => I) 0).lo : ℚ) : ℝ) := by
                push_cast; ring
              rw [hdiv_cast] at heq
              exact_mod_cast heq
          rcases hN with hTM | hSimple
          · -- TM case: use TM structure and generic contradiction
            obtain ⟨tm, hdI_nonzero, htm, hc_eq, hN_lo, hN_hi⟩ := newtonStepTM_structure e I N hTM
            have hfc_correct := newtonStepTM_fc_correct e I tm htm
            have hMVT := mvt_fc_upper_bound_pos_increasing e hsupp hvar0 I hdI_pos hCont hhi_neg
            exact generic_contraction_absurd_lo I I.midpoint (TaylorModel.valueAtCenterInterval tm)
              (derivInterval e (fun _ => I) 0) N rfl hdI_nonzero hdI_pos hfc_correct hN_hi hContract.2 hMVT
          · exact newtonStepSimple_contraction_absurd_lo e I N hSimple hContract hdI_pos hquot
      · -- f(I.lo) < 0 and f(I.hi) > 0: SIGN CHANGE! Apply IVT.
        have hle : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast I.le
        have h0_in_range : (0 : ℝ) ∈ Set.Icc (f I.lo) (f I.hi) := ⟨le_of_lt hlo, le_of_lt hhi⟩
        have hivt := intermediate_value_Icc hle hCont h0_in_range
        obtain ⟨x, hx_mem, hx_root⟩ := hivt
        use x
        constructor
        · have hx_in_I : x ∈ I := by simp only [IntervalRat.mem_def]; exact hx_mem
          exact newton_preserves_root e hsupp hvar0 I N hN x hx_in_I hx_root
        · exact hx_root

  · -- Case: dI.hi < 0 (derivative negative, f strictly decreasing)
    have hf_decr := strictAntiOn_of_deriv_neg_interval e hsupp hvar0 I hdI_neg

    by_cases! hlo : f I.lo ≤ 0
    · by_cases! hhi : f I.hi ≥ 0
      · have hle : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast I.le
        by_cases heq : (I.lo : ℝ) = I.hi
        · have heq_f : f I.lo = f I.hi := by simp only [heq]
          have hroot : f I.lo = 0 := by linarith [hhi, hlo, heq_f]
          use I.lo
          constructor
          · have hIlo_in_I : (I.lo : ℝ) ∈ I := by
              simp only [IntervalRat.mem_def]
              exact ⟨le_refl _, by exact_mod_cast I.le⟩
            exact newton_preserves_root e hsupp hvar0 I N hN (I.lo : ℝ) hIlo_in_I hroot
          · exact hroot
        · have hlt : (I.lo : ℝ) < I.hi := lt_of_le_of_ne hle heq
          have hIlo_in_I : (I.lo : ℝ) ∈ I := by
            simp only [IntervalRat.mem_def]
            exact ⟨le_refl _, by exact_mod_cast I.le⟩
          have hIhi_in_I : (I.hi : ℝ) ∈ I := by
            simp only [IntervalRat.mem_def]
            exact ⟨by exact_mod_cast I.le, le_refl _⟩
          have hmono := hf_decr hIlo_in_I hIhi_in_I hlt
          linarith
      · by_cases hlo_eq : f I.lo = 0
        · use I.lo
          constructor
          · have hIlo_in_I : (I.lo : ℝ) ∈ I := by
              simp only [IntervalRat.mem_def]
              exact ⟨le_refl _, by exact_mod_cast I.le⟩
            exact newton_preserves_root e hsupp hvar0 I N hN (I.lo : ℝ) hIlo_in_I hlo_eq
          · exact hlo_eq
        · exfalso
          have hlo_neg : f I.lo < 0 := lt_of_le_of_ne hlo hlo_eq
          have hquot_real := newton_negative_decreasing_contradicts_contraction e hsupp hvar0 I
            hI_nonsingleton hdI_neg hCont hlo_neg
          -- MVT gives: fc.lo / dI.hi ≥ hw
          have hquot : (evalInterval1 e (IntervalRat.singleton I.midpoint)).lo /
              (derivInterval e (fun _ => I) 0).hi ≥ (I.hi - I.lo) / 2 := by
            have h : ((evalInterval1 e (IntervalRat.singleton I.midpoint)).lo : ℝ) /
                ((derivInterval e (fun _ => I) 0).hi : ℝ) ≥
                (((I.hi - I.lo) / 2 : ℚ) : ℝ) := hquot_real
            rw [ge_iff_le]
            have hdiv_cast : ((evalInterval1 e (IntervalRat.singleton I.midpoint)).lo : ℝ) /
                ((derivInterval e (fun _ => I) 0).hi : ℝ) =
                (((evalInterval1 e (IntervalRat.singleton I.midpoint)).lo /
                (derivInterval e (fun _ => I) 0).hi : ℚ) : ℝ) := by
              push_cast; ring
            rw [hdiv_cast] at h
            exact_mod_cast h
          rcases hN with hTM | hSimple
          · -- TM case: use TM structure and generic contradiction
            obtain ⟨tm, hdI_nonzero, htm, hc_eq, hN_lo, hN_hi⟩ := newtonStepTM_structure e I N hTM
            have hfc_correct := newtonStepTM_fc_correct e I tm htm
            have hMVT := mvt_fc_upper_bound_neg_decreasing e hsupp hvar0 I hI_nonsingleton hdI_neg hCont hlo_neg
            exact generic_contraction_absurd_hi_neg I I.midpoint (TaylorModel.valueAtCenterInterval tm)
              (derivInterval e (fun _ => I) 0) N rfl hdI_nonzero hdI_neg hfc_correct hN_lo hContract.1 hMVT
          · -- For dI < 0: Q.hi ≥ fc.lo / dI.hi ≥ hw (from quotient lemma + MVT)
            -- But contraction implies Q.hi < hw, contradiction!
            obtain ⟨hdI_nonzero, hN_lo_eq, _hN_hi_eq⟩ := newtonStepSimple_extract e I N hSimple
            let c := I.midpoint
            let fc := evalInterval1 e (IntervalRat.singleton c)
            let dI := derivInterval e (fun _ => I) 0
            let dNonzero : IntervalRat.IntervalRatNonzero := ⟨dI, hdI_nonzero⟩
            let Q := IntervalRat.mul fc (IntervalRat.invNonzero dNonzero)
            let hw : ℚ := (I.hi - I.lo) / 2
            -- From contraction: N.lo > I.lo, but N.lo = max I.lo (c - Q.hi)
            -- This means c - Q.hi > I.lo, so Q.hi < c - I.lo = hw
            have hQ_hi_lt_hw : Q.hi < hw := by
              have hmax_gt : max I.lo (c - Q.hi) > I.lo := by
                rw [← hN_lo_eq]; exact hContract.1
              have hright_gt : c - Q.hi > I.lo := by
                by_contra! h
                have : max I.lo (c - Q.hi) = I.lo := max_eq_left h
                rw [this] at hmax_gt
                exact lt_irrefl I.lo hmax_gt
              have hc_minus_Ilo : c - I.lo = hw := by
                show I.midpoint - I.lo = (I.hi - I.lo) / 2
                simp only [IntervalRat.midpoint]; ring
              linarith
            -- But quotient_hi_ge_neg says Q.hi ≥ fc.lo / dI.hi (no sign hypothesis needed!)
            have hQ_hi_ge : Q.hi ≥ fc.lo / dI.hi := quotient_hi_ge_neg hdI_neg
            -- And MVT says fc.lo / dI.hi ≥ hw
            have hQ_hi_ge_hw : Q.hi ≥ hw := le_trans hquot hQ_hi_ge
            linarith
    · by_cases! hhi : f I.hi ≥ 0
      · by_cases hhi_eq : f I.hi = 0
        · use I.hi
          constructor
          · have hIhi_in_I : (I.hi : ℝ) ∈ I := by
              simp only [IntervalRat.mem_def]
              exact ⟨by exact_mod_cast I.le, le_refl _⟩
            exact newton_preserves_root e hsupp hvar0 I N hN (I.hi : ℝ) hIhi_in_I hhi_eq
          · exact hhi_eq
        · exfalso
          have hhi_pos : 0 < f I.hi := lt_of_le_of_ne hhi (Ne.symm hhi_eq)
          have hquot_real := newton_positive_decreasing_contradicts_contraction e hsupp hvar0 I
            hI_nonsingleton hdI_neg hCont hhi_pos
          -- MVT gives: fc.hi / dI.hi ≤ -hw
          have hquot : (evalInterval1 e (IntervalRat.singleton I.midpoint)).hi /
              (derivInterval e (fun _ => I) 0).hi ≤ -((I.hi - I.lo) / 2) := by
            have h : ((evalInterval1 e (IntervalRat.singleton I.midpoint)).hi : ℝ) /
                ((derivInterval e (fun _ => I) 0).hi : ℝ) ≤
                ((-(((I.hi - I.lo) / 2) : ℚ)) : ℝ) := hquot_real
            have hdiv_cast : ((evalInterval1 e (IntervalRat.singleton I.midpoint)).hi : ℝ) /
                ((derivInterval e (fun _ => I) 0).hi : ℝ) =
                (((evalInterval1 e (IntervalRat.singleton I.midpoint)).hi /
                (derivInterval e (fun _ => I) 0).hi : ℚ) : ℝ) := by
              push_cast; ring
            rw [hdiv_cast] at h
            exact_mod_cast h
          rcases hN with hTM | hSimple
          · -- TM case: use TM structure and generic contradiction
            obtain ⟨tm, hdI_nonzero, htm, hc_eq, hN_lo, hN_hi⟩ := newtonStepTM_structure e I N hTM
            have hfc_correct := newtonStepTM_fc_correct e I tm htm
            have hMVT := mvt_fc_lower_bound_neg_decreasing e hsupp hvar0 I hI_nonsingleton hdI_neg hCont hhi_pos
            exact generic_contraction_absurd_lo_neg I I.midpoint (TaylorModel.valueAtCenterInterval tm)
              (derivInterval e (fun _ => I) 0) N rfl hdI_nonzero hdI_neg hfc_correct hN_hi hContract.2 hMVT
          · -- For dI < 0: Q.lo ≤ fc.hi / dI.hi ≤ -hw (from quotient lemma + MVT)
            -- But contraction implies Q.lo > -hw, contradiction!
            obtain ⟨hdI_nonzero, _hN_lo_eq, hN_hi_eq⟩ := newtonStepSimple_extract e I N hSimple
            let c := I.midpoint
            let fc := evalInterval1 e (IntervalRat.singleton c)
            let dI := derivInterval e (fun _ => I) 0
            let dNonzero : IntervalRat.IntervalRatNonzero := ⟨dI, hdI_nonzero⟩
            let Q := IntervalRat.mul fc (IntervalRat.invNonzero dNonzero)
            let hw : ℚ := (I.hi - I.lo) / 2
            -- From contraction: N.hi < I.hi, but N.hi = min I.hi (c - Q.lo)
            -- This means c - Q.lo < I.hi, so Q.lo > c - I.hi = -hw
            have hQ_lo_gt_neg_hw : Q.lo > -hw := by
              have hmin_lt : min I.hi (c - Q.lo) < I.hi := by
                rw [← hN_hi_eq]; exact hContract.2
              have hright_lt : c - Q.lo < I.hi := by
                by_contra! h
                have : min I.hi (c - Q.lo) = I.hi := min_eq_left h
                rw [this] at hmin_lt
                exact lt_irrefl I.hi hmin_lt
              have hc_minus_Ihi : c - I.hi = -hw := by
                show I.midpoint - I.hi = -((I.hi - I.lo) / 2)
                simp only [IntervalRat.midpoint]; ring
              linarith
            -- But quotient_lo_le_neg says Q.lo ≤ fc.hi / dI.hi (no sign hypothesis needed!)
            have hQ_lo_le : Q.lo ≤ fc.hi / dI.hi := quotient_lo_le_neg hdI_neg
            -- And MVT says fc.hi / dI.hi ≤ -hw
            have hQ_lo_le_neg_hw : Q.lo ≤ -hw := le_trans hQ_lo_le hquot
            linarith
      · -- f(I.lo) > 0 and f(I.hi) < 0: SIGN CHANGE for decreasing function!
        have hle : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast I.le
        have h0_in_range : (0 : ℝ) ∈ Set.Icc (f I.hi) (f I.lo) := ⟨le_of_lt hhi, le_of_lt hlo⟩
        have hivt := intermediate_value_Icc' hle hCont h0_in_range
        obtain ⟨x, hx_mem, hx_root⟩ := hivt
        use x
        constructor
        · have hx_in_I : x ∈ I := by simp only [IntervalRat.mem_def]; exact hx_mem
          exact newton_preserves_root e hsupp hvar0 I N hN x hx_in_I hx_root
        · exact hx_root

/-- If Newton iteration detects contraction, the root is unique in I.
    This is THE key uniqueness theorem for Newton's method. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61b5dd30cab0f9e3b56e1fa631f7f2dd63d23839` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
