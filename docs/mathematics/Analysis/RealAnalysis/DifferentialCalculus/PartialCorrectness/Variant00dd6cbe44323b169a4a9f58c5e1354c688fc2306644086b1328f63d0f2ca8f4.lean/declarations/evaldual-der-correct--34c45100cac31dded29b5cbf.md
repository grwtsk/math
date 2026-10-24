# evalDual?_der_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6d9c394-7eee-9081-2ff3-929da4dbfec5",
  "kind": "theorem",
  "lexical_name": "evalDual?_der_correct",
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
  "slug": "evaldual-der-correct--34c45100cac31dded29b5cbf",
  "source": {
    "blob": "dae94a66788cd7cac8eab43666b00a4d89b309c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 836,
    "line": 415,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34c45100cac31dded29b5cbf6f730cbc00208ec07931f5113ce338d65ad29c04",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6d9c394-7eee-9081-2ff3-929da4dbfec5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–836.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalDual?_der_correct (e : Expr) (hsupp : ExprSupportedWithInv e)
    (I : IntervalRat) (D : DualInterval) (x : ℝ) (hx : x ∈ I)
    (hsome : evalDual?1 e I = some D) :
    deriv (evalFunc1 e) x ∈ D.der := by
  induction hsupp generalizing D with
  | const q =>
    simp only [evalDual?1, evalDual?, Option.some.injEq] at hsome
    rw [← hsome]
    simp only [evalFunc1_const, deriv_const, DualInterval.const]
    convert IntervalRat.mem_singleton 0 using 1
    norm_cast
  | var _ =>
    simp only [evalDual?1, evalDual?, Option.some.injEq] at hsome
    rw [← hsome]
    simp only [evalFunc1_var, deriv_id, DualInterval.varActive]
    convert IntervalRat.mem_singleton 1 using 1
    norm_cast
  | @add e₁ e₂ h₁ h₂ ih₁ ih₂ =>
    unfold evalDual?1 evalDual? at hsome
    cases heq₁ : evalDual? e₁ _ with
    | none => rw [heq₁] at hsome; exact absurd hsome (by simp)
    | some d₁ =>
      cases heq₂ : evalDual? e₂ _ with
      | none => rw [heq₁, heq₂] at hsome; exact absurd hsome (by simp)
      | some d₂ =>
        rw [heq₁, heq₂, Option.some.injEq] at hsome
        rw [← hsome]
        simp only [DualInterval.add]
        have hd₁ := evalFunc1_differentiableAt_of_evalDual? e₁ h₁ I d₁ x hx heq₁
        have hd₂ := evalFunc1_differentiableAt_of_evalDual? e₂ h₂ I d₂ x hx heq₂
        simp only [evalFunc1_add_pi, deriv_add hd₁ hd₂]
        exact IntervalRat.mem_add (ih₁ d₁ heq₁) (ih₂ d₂ heq₂)
  | @mul e₁ e₂ h₁ h₂ ih₁ ih₂ =>
    unfold evalDual?1 evalDual? at hsome
    cases heq₁ : evalDual? e₁ _ with
    | none => rw [heq₁] at hsome; exact absurd hsome (by simp)
    | some d₁ =>
      cases heq₂ : evalDual? e₂ _ with
      | none => rw [heq₁, heq₂] at hsome; exact absurd hsome (by simp)
      | some d₂ =>
        rw [heq₁, heq₂, Option.some.injEq] at hsome
        rw [← hsome]
        simp only [DualInterval.mul]
        have hd₁ := evalFunc1_differentiableAt_of_evalDual? e₁ h₁ I d₁ x hx heq₁
        have hd₂ := evalFunc1_differentiableAt_of_evalDual? e₂ h₂ I d₂ x hx heq₂
        simp only [evalFunc1_mul_pi, deriv_mul hd₁ hd₂]
        have hval₁ := evalDual?1_val_correct e₁ h₁ I d₁ x hx heq₁
        have hval₂ := evalDual?1_val_correct e₂ h₂ I d₂ x hx heq₂
        exact IntervalRat.mem_add (IntervalRat.mem_mul (ih₁ d₁ heq₁) hval₂)
                                  (IntervalRat.mem_mul hval₁ (ih₂ d₂ heq₂))
  | @neg e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      rw [heq, Option.some.injEq] at hsome
      rw [← hsome]
      simp only [DualInterval.neg, evalFunc1_neg_pi, deriv.neg]
      exact IntervalRat.mem_neg (ih d heq)
  | @inv e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      rw [heq] at hsome
      simp only [DualInterval.inv?] at hsome
      split at hsome
      · exact absurd hsome (by simp)
      · next hnotzero =>
        simp only [Option.some.injEq] at hsome
        rw [← hsome]
        -- d(1/f) = -f'/f² = -f' * (1/f)²
        have hval := evalDual?1_val_correct e' hs I d x hx heq
        have hval' : evalFunc1 e' x ∈ d.val := hval
        have hne : evalFunc1 e' x ≠ 0 := by
          intro heq_zero
          rw [heq_zero] at hval'
          simp only [IntervalRat.mem_def] at hval'
          simp only [IntervalRat.containsZero, not_and, not_le] at hnotzero
          rcases le_or_gt d.val.lo 0 with hlo | hlo
          · have hhi_nonneg : (0 : ℚ) ≤ d.val.hi := by
              have h : (0 : ℝ) ≤ d.val.hi := hval'.2
              exact_mod_cast h
            exact absurd (hnotzero hlo) (not_lt.mpr hhi_nonneg)
          · have hlo_pos : (0 : ℝ) < d.val.lo := by exact_mod_cast hlo
            exact absurd hval'.1 (not_le.mpr hlo_pos)
        have hd := evalFunc1_differentiableAt_of_evalDual? e' hs I d x hx heq
        -- deriv (1/f) = deriv(f⁻¹ ∘ f) = -(f')/(f²) using chain rule
        -- We use: deriv (fun y => y⁻¹) (f x) * deriv f x = -(f x)⁻² * f'(x)
        rw [evalFunc1_inv]
        -- The goal is: deriv (fun t => (evalFunc1 e' t)⁻¹) x ∈ ...
        -- First show this equals the composition derivative
        have heq_fun : (fun t => (evalFunc1 e' t)⁻¹) = (fun y => y⁻¹) ∘ evalFunc1 e' := rfl
        rw [heq_fun, deriv_comp x (hasDerivAt_inv hne).differentiableAt hd]
        simp only [hasDerivAt_inv hne |>.deriv]
        -- Now goal is: -(evalFunc1 e' x ^ 2)⁻¹ * deriv (evalFunc1 e') x ∈ ...
        -- Which equals: -(deriv f * (1/f)²)
        have hder := ih d heq
        -- Construct the nonzero interval
        let I_nz : IntervalRat.IntervalRatNonzero := ⟨d.val, hnotzero⟩
        have hinv := IntervalRat.mem_invNonzero (I := I_nz) hval' hne
        have hinv_sq := IntervalRat.mem_mul hinv hinv
        have hprod := IntervalRat.mem_mul hder hinv_sq
        have hneg := IntervalRat.mem_neg hprod
        -- hneg : -(deriv (evalFunc1 e') x * ((evalFunc1 e' x)⁻¹ * (evalFunc1 e' x)⁻¹)) ∈ ...
        -- goal : -(evalFunc1 e' x ^ 2)⁻¹ * deriv (evalFunc1 e') x ∈ ...
        -- These are equal: -(a ^ 2)⁻¹ * b = -(b * (a⁻¹ * a⁻¹))
        have heq_val : -(evalFunc1 e' x ^ 2)⁻¹ * deriv (evalFunc1 e') x =
                       -(deriv (evalFunc1 e') x * ((evalFunc1 e' x)⁻¹ * (evalFunc1 e' x)⁻¹)) := by
          have h1 : (evalFunc1 e' x ^ 2)⁻¹ = (evalFunc1 e' x)⁻¹ * (evalFunc1 e' x)⁻¹ := by
            rw [sq, mul_inv]
          rw [h1]
          ring
        rw [heq_val]
        exact hneg
  | @sin e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      rw [heq, Option.some.injEq] at hsome
      rw [← hsome]
      simp only [DualInterval.sin]
      have hd := evalFunc1_differentiableAt_of_evalDual? e' hs I d x hx heq
      rw [evalFunc1_sin, deriv_sin hd]
      exact IntervalRat.mem_mul (cos_mem_cosInterval_of_any _ _) (ih d heq)
  | @cos e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      rw [heq, Option.some.injEq] at hsome
      rw [← hsome]
      simp only [DualInterval.cos]
      have hd := evalFunc1_differentiableAt_of_evalDual? e' hs I d x hx heq
      rw [evalFunc1_cos, deriv_cos hd]
      exact IntervalRat.mem_mul (neg_sin_mem_neg_sinInterval _ _) (ih d heq)
  | @exp e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      rw [heq, Option.some.injEq] at hsome
      rw [← hsome]
      simp only [DualInterval.exp]
      have hd := evalFunc1_differentiableAt_of_evalDual? e' hs I d x hx heq
      rw [evalFunc1_exp, deriv_exp hd]
      have hval := evalDual?1_val_correct e' hs I d x hx heq
      have hexp := IntervalRat.mem_expInterval hval
      exact IntervalRat.mem_mul hexp (ih d heq)
  | @log e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      rw [heq] at hsome
      simp only [DualInterval.log?] at hsome
      split at hsome
      · next hpos =>
        simp only [Option.some.injEq] at hsome
        rw [← hsome]
        -- d(log f)/dx = f'/f
        have hval := evalDual?1_val_correct e' hs I d x hx heq
        have hval' : evalFunc1 e' x ∈ d.val := hval
        have hpos_x : 0 < evalFunc1 e' x := by
          simp only [IntervalRat.mem_def] at hval'
          simp only [IntervalRat.isPositive] at hpos
          have hlo_pos : (0 : ℝ) < d.val.lo := by exact_mod_cast hpos
          exact lt_of_lt_of_le hlo_pos hval'.1
        have hne_x : evalFunc1 e' x ≠ 0 := ne_of_gt hpos_x
        have hd := evalFunc1_differentiableAt_of_evalDual? e' hs I d x hx heq
        rw [evalFunc1_log]
        have heq_fun : (fun t => Real.log (evalFunc1 e' t)) = Real.log ∘ evalFunc1 e' := rfl
        rw [heq_fun, deriv_comp x (Real.differentiableAt_log hne_x) hd]
        simp only [Real.deriv_log (evalFunc1 e' x)]
        -- Goal: (evalFunc1 e' x)⁻¹ * deriv (evalFunc1 e') x ∈ ...
        -- From DualInterval.log?: der' := d.der * invNonzero d.val
        have hder := ih d heq
        -- Build the nonzero interval from the positive interval
        have hnotzero : ¬IntervalRat.containsZero d.val := by
          simp only [IntervalRat.containsZero, IntervalRat.isPositive] at hpos ⊢
          intro ⟨hle, _⟩
          exact absurd hpos (not_lt.mpr hle)
        let I_nz : IntervalRat.IntervalRatNonzero := ⟨d.val, hnotzero⟩
        have hinv := IntervalRat.mem_invNonzero (I := I_nz) hval' hne_x
        -- Need to show: (evalFunc1 e' x)⁻¹ * deriv (evalFunc1 e') x ∈ d.der * invNonzero d.val
        -- But mem_mul expects the arguments in different order, so use commutativity
        have hmul := IntervalRat.mem_mul hder hinv
        convert hmul using 1
        ring
      · exact absurd hsome (by simp)
  | @atan e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      rw [heq, Option.some.injEq] at hsome
      rw [← hsome]
      simp only [DualInterval.atan]
      have hd := evalFunc1_differentiableAt_of_evalDual? e' hs I d x hx heq
      rw [evalFunc1_atan]
      -- deriv (arctan ∘ f) x = (1 / (1 + f(x)²)) * f'(x)
      have heq_deriv := HasDerivAt.arctan (hd.hasDerivAt)
      rw [heq_deriv.deriv, mul_comm]
      -- The factor 1/(1+f(x)²) is in unitInterval
      have hfactor := DualInterval.arctan_deriv_factor_mem_unitInterval (evalFunc1 e' x)
      exact IntervalRat.mem_mul (ih d heq) hfactor
  | @arsinh e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      rw [heq, Option.some.injEq] at hsome
      rw [← hsome]
      simp only [DualInterval.arsinh]
      have hd := evalFunc1_differentiableAt_of_evalDual? e' hs I d x hx heq
      rw [evalFunc1_arsinh]
      -- deriv (arsinh ∘ f) x = (√(1 + f(x)²))⁻¹ • f'(x)
      have heq_deriv := HasDerivAt.arsinh (hd.hasDerivAt)
      rw [heq_deriv.deriv, smul_eq_mul, mul_comm]
      -- The factor 1/√(1+f(x)²) is in unitInterval
      have hfactor := DualInterval.arsinh_deriv_factor_mem_unitInterval (evalFunc1 e' x)
      exact IntervalRat.mem_mul (ih d heq) hfactor
  | @atanh _ _ _ =>
    -- evalDual? returns none for atanh, so hsome is a contradiction
    simp only [evalDual?1, evalDual?] at hsome
    contradiction
  | @sinc e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      rw [heq, Option.some.injEq] at hsome
      rw [← hsome]
      simp only [DualInterval.sinc]
      -- The derivative of sinc ∘ f is sinc'(f(x)) * f'(x)
      -- sinc'(y) ∈ [-1, 1] for all y, and f'(x) ∈ d.der
      have hd_inner := evalFunc1_differentiableAt_of_evalDual? e' hs I d x hx heq
      have heq_comp : (fun t => Real.sinc (evalFunc1 e' t)) = Real.sinc ∘ evalFunc1 e' := rfl
      rw [evalFunc1_sinc, heq_comp, deriv_comp x Real.differentiable_sinc.differentiableAt hd_inner]
      -- deriv sinc (evalFunc1 e' x) * deriv (evalFunc1 e') x ∈ sincDerivBound * d.der
      have hsinc_bound : deriv Real.sinc (evalFunc1 e' x) ∈ DualInterval.sincDerivBound := by
        simp only [DualInterval.sincDerivBound, IntervalRat.mem_def, Rat.cast_neg, Rat.cast_one]
        exact Real.deriv_sinc_mem_Icc (evalFunc1 e' x)
      have hder := ih d heq
      exact IntervalRat.mem_mul hsinc_bound hder
  | @erf e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      rw [heq, Option.some.injEq] at hsome
      rw [← hsome]
      simp only [DualInterval.erf]
      -- The derivative of erf ∘ f is (2/√π) * exp(-f(x)²) * f'(x)
      have hd_inner := evalFunc1_differentiableAt_of_evalDual? e' hs I d x hx heq
      have herf_diff : Differentiable ℝ Real.erf := by
        unfold Real.erf
        apply Differentiable.const_mul
        intro y
        have hcont : Continuous (fun t => Real.exp (-(t^2))) :=
          Real.continuous_exp.comp (continuous_neg.comp (continuous_pow 2))
        exact (hcont.integral_hasStrictDerivAt 0 y).hasStrictFDerivAt.differentiableAt
      have heq_comp : (fun t => Real.erf (evalFunc1 e' t)) = Real.erf ∘ evalFunc1 e' := rfl
      rw [evalFunc1_erf, heq_comp, deriv_comp x herf_diff.differentiableAt hd_inner]
      -- deriv erf y = (2/√π) * exp(-y²) by FTC
      have hderiv_erf : ∀ y, deriv Real.erf y = (2 / Real.sqrt Real.pi) * Real.exp (-(y^2)) := by
        intro y
        unfold Real.erf
        rw [deriv_const_mul]
        · have hcont : Continuous (fun t => Real.exp (-(t^2))) :=
            Real.continuous_exp.comp (continuous_neg.comp (continuous_pow 2))
          rw [(hcont.integral_hasStrictDerivAt 0 y).hasDerivAt.deriv]
        · have hcont : Continuous (fun t => Real.exp (-(t^2))) :=
            Real.continuous_exp.comp (continuous_neg.comp (continuous_pow 2))
          exact (hcont.integral_hasStrictDerivAt 0 y).hasStrictFDerivAt.differentiableAt
      rw [hderiv_erf]
      -- Now goal: (2/√π) * exp(-(f(x))²) * f'(x) ∈ two_div_sqrt_pi * expInterval(-val²) * der
      -- Factor: (2/√π) ∈ two_div_sqrt_pi
      -- 2/√π ≈ 1.1284, two_div_sqrt_pi = [1.128, 1.129]
      have hfactor : 2 / Real.sqrt Real.pi ∈ DualInterval.two_div_sqrt_pi := by
        simp only [DualInterval.two_div_sqrt_pi, IntervalRat.mem_def]
        -- From π bounds: 3.1415 < π < 3.1416 (Real.pi_gt_d4, Real.pi_lt_d4)
        -- So √π is between √3.1415 ≈ 1.7724 and √3.1416 ≈ 1.7724
        -- Thus 2/√π is between 2/1.7725 ≈ 1.1283 and 2/1.7723 ≈ 1.1285
        have hpi_lo : (3.1415 : ℝ) < Real.pi := Real.pi_gt_d4
        have hpi_hi : Real.pi < (3.1416 : ℝ) := Real.pi_lt_d4
        have hsqrt_lo : (1.7724 : ℝ) < Real.sqrt Real.pi := by
          have h1 : (1.7724 : ℝ) ^ 2 < Real.pi := by
            have : (1.7724 : ℝ) ^ 2 = 3.14140176 := by ring
            linarith
          have h2 : (0 : ℝ) ≤ 1.7724 := by norm_num
          have h3 : (0 : ℝ) ≤ 1.7724 ^ 2 := by positivity
          calc (1.7724 : ℝ) = Real.sqrt (1.7724 ^ 2) := (Real.sqrt_sq h2).symm
            _ < Real.sqrt Real.pi := Real.sqrt_lt_sqrt h3 h1
        have hsqrt_hi : Real.sqrt Real.pi < (1.7725 : ℝ) := by
          have h1 : Real.pi < (1.7725 : ℝ) ^ 2 := by
            have : (1.7725 : ℝ) ^ 2 = 3.14175625 := by ring
            linarith
          have hpi_pos : (0 : ℝ) < Real.pi := Real.pi_pos
          rw [← Real.sqrt_sq (le_of_lt (by norm_num : (0 : ℝ) < 1.7725))]
          exact Real.sqrt_lt_sqrt (le_of_lt hpi_pos) h1
        constructor
        · -- Goal: ↑(1128 / 1000) ≤ 2 / √π
          have h1 : ((1128 / 1000 : ℚ) : ℝ) < 2 / 1.7725 := by norm_num
          have h2 : (2 : ℝ) / 1.7725 < 2 / Real.sqrt Real.pi := by
            apply div_lt_div_of_pos_left (by norm_num : (0 : ℝ) < 2)
            · exact Real.sqrt_pos.mpr Real.pi_pos
            · exact hsqrt_hi
          exact le_of_lt (lt_trans h1 h2)
        · -- Goal: 2 / √π ≤ ↑(1129 / 1000)
          have h1 : 2 / Real.sqrt Real.pi < (2 : ℝ) / 1.7724 := by
            apply div_lt_div_of_pos_left (by norm_num : (0 : ℝ) < 2)
            · norm_num
            · exact hsqrt_lo
          have h2 : (2 : ℝ) / 1.7724 < ((1129 / 1000 : ℚ) : ℝ) := by norm_num
          exact le_of_lt (lt_trans h1 h2)
      -- exp(-(f(x))²) ∈ expInterval(-val²)
      have hval := evalDual?1_val_correct e' hs I d x hx heq
      have hval_sq := IntervalRat.mem_mul hval hval
      have hneg_val_sq := IntervalRat.mem_neg hval_sq
      have hexp := IntervalRat.mem_expInterval hneg_val_sq
      -- f'(x) ∈ d.der
      have hder := ih d heq
      -- Combine: (2/√π) * exp(-f(x)²) ∈ two_div_sqrt_pi * expInterval(-val²)
      have hprod1 := IntervalRat.mem_mul hfactor hexp
      -- Full product: ((2/√π) * exp(-f(x)²)) * f'(x) ∈ (two_div_sqrt_pi * expInterval(-val²)) * der
      have hprod2 := IntervalRat.mem_mul hprod1 hder
      convert hprod2 using 1
      ring_nf
  | @sqrt e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      rw [heq] at hsome
      simp only [DualInterval.sqrt?] at hsome
      split at hsome
      · next hpos =>
        simp only [Option.some.injEq] at hsome
        rw [← hsome]
        -- d(sqrt f)/dx = f'/(2*sqrt(f))
        have hval := evalDual?1_val_correct e' hs I d x hx heq
        have hval' : evalFunc1 e' x ∈ d.val := hval
        have hpos_x : 0 < evalFunc1 e' x := by
          simp only [IntervalRat.mem_def] at hval'
          simp only [IntervalRat.isPositive] at hpos
          have hlo_pos : (0 : ℝ) < d.val.lo := by exact_mod_cast hpos
          exact lt_of_lt_of_le hlo_pos hval'.1
        have hne_x : evalFunc1 e' x ≠ 0 := ne_of_gt hpos_x
        have hd := evalFunc1_differentiableAt_of_evalDual? e' hs I d x hx heq
        rw [evalFunc1_sqrt]
        have heq_fun : (fun t => Real.sqrt (evalFunc1 e' t)) = Real.sqrt ∘ evalFunc1 e' := rfl
        rw [heq_fun, deriv_comp x (Real.hasDerivAt_sqrt hne_x).differentiableAt hd]
        rw [(Real.hasDerivAt_sqrt hne_x).deriv]
        -- Goal: deriv (evalFunc1 e') x / (2 * √(evalFunc1 e' x)) ∈ d.der * sqrtDerivCoefBound
        have hder := ih d heq
        -- Show 1/(2*sqrt(f(x))) is in sqrtDerivCoefBound
        have hlo_le_val : (d.val.lo : ℝ) ≤ evalFunc1 e' x := by
          simp only [IntervalRat.mem_def] at hval'
          exact hval'.1
        have hlo_pos_real : (0 : ℝ) < (d.val.lo : ℚ) := by
          simp only [IntervalRat.isPositive] at hpos
          exact_mod_cast hpos
        -- Use our sqrtDerivCoef_bound theorem
        have hcoef_bound := DualInterval.sqrtDerivCoef_bound hlo_pos_real hlo_le_val
        -- The coefficient 1/(2*sqrt(f(x))) is positive and bounded
        have hcoef_pos : 0 ≤ 1 / (2 * Real.sqrt (evalFunc1 e' x)) := by
          apply div_nonneg (by norm_num)
          apply mul_nonneg (by norm_num)
          exact le_of_lt (Real.sqrt_pos.mpr hpos_x)
        have hcoef_mem : 1 / (2 * Real.sqrt (evalFunc1 e' x)) ∈ DualInterval.sqrtDerivCoefBound d.val.lo hpos := by
          simp only [DualInterval.sqrtDerivCoefBound, IntervalRat.mem_def]
          split
          · -- d.val.lo ≤ 1
            next hle_one =>
            constructor
            · simp only [Rat.cast_zero]
              exact hcoef_pos
            · -- Show 1/(2*sqrt(f(x))) ≤ 1/(2*lo)
              have hle_real : (d.val.lo : ℝ) ≤ 1 := by exact_mod_cast hle_one
              have h1 : max (1 / (2 * (d.val.lo : ℝ))) (1 / 2) = 1 / (2 * (d.val.lo : ℝ)) := by
                apply max_eq_left
                -- 1/2 ≤ 1/(2*lo) when lo ≤ 1
                apply div_le_div_of_nonneg_left (by norm_num) (by positivity)
                calc 2 * (d.val.lo : ℝ) ≤ 2 * 1 := by nlinarith
                  _ = 2 := by ring
              calc 1 / (2 * Real.sqrt (evalFunc1 e' x))
                  ≤ max (1 / (2 * (d.val.lo : ℝ))) (1 / 2) := hcoef_bound
                _ = 1 / (2 * (d.val.lo : ℝ)) := h1
                _ = ↑(1 / (2 * d.val.lo)) := by push_cast; ring
          · -- d.val.lo > 1
            next hgt_one =>
            push Not at hgt_one
            constructor
            · simp only [Rat.cast_zero]
              exact hcoef_pos
            · -- Show 1/(2*sqrt(f(x))) ≤ 1/2
              have hgt_real : 1 < (d.val.lo : ℝ) := by exact_mod_cast hgt_one
              have h1 : max (1 / (2 * (d.val.lo : ℝ))) (1 / 2) = 1 / 2 := by
                apply max_eq_right
                -- 1/(2*lo) ≤ 1/2 when lo > 1
                apply div_le_div_of_nonneg_left (by norm_num) (by norm_num : (0:ℝ) < 2)
                calc (2 : ℝ) = 2 * 1 := by ring
                  _ ≤ 2 * d.val.lo := by nlinarith
              calc 1 / (2 * Real.sqrt (evalFunc1 e' x))
                  ≤ max (1 / (2 * (d.val.lo : ℝ))) (1 / 2) := hcoef_bound
                _ = 1 / 2 := h1
                _ = ↑(1 / 2 : ℚ) := by norm_num
        -- Combine: f'(x)/(2*sqrt(f(x))) = f'(x) * (1/(2*sqrt(f(x)))) ∈ d.der * sqrtDerivCoefBound
        have hmul := IntervalRat.mem_mul hder hcoef_mem
        convert hmul using 1
        field_simp [ne_of_gt (Real.sqrt_pos.mpr hpos_x)]
      · exact absurd hsome (by simp)
  | namedConst c =>
    simp only [evalDual?1, evalDual?, Option.some.injEq] at hsome
    rw [← hsome]
    simp only [evalFunc1_namedConst, deriv_const, DualInterval.ofMathConst]
    convert IntervalRat.mem_singleton 0 using 1
    norm_cast

/-- Combined correctness theorem for evalDual?1 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dae94a66788cd7cac8eab43666b00a4d89b309c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
