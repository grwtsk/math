import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSummability
import Mathlib.Analysis.Complex.JensenFormula

open Complex Filter Set Metric MeromorphicOn
open scoped Topology
namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSummability
noncomputable section

def poleCleared (s : ℂ) : ℂ := s * (s - 1) * completedRiemannZeta₀ s + 1

theorem poleCleared_entire : Differentiable ℂ poleCleared := by
  unfold poleCleared
  exact ((differentiable_id.mul (differentiable_id.sub_const 1)).mul
    differentiable_completedZeta₀).add_const 1

theorem poleCleared_zero : poleCleared 0 = 1 := by simp [poleCleared]

theorem poleCleared_eq_completed {s : ℂ} (h0 : s ≠ 0) (h1 : s ≠ 1) :
    poleCleared s = s * (s - 1) * completedRiemannZeta s := by
  rw [completedRiemannZeta_eq]
  unfold poleCleared
  have h1' : 1 - s ≠ 0 := sub_ne_zero.mpr h1.symm
  field_simp
  ring

theorem poleCleared_order (p : ZeroPoint) :
    analyticOrderAt poleCleared p.val = analyticOrderAt riemannZeta p.val := by
  have hp := point_nontrivial p
  have heq : poleCleared =ᶠ[𝓝 p.val]
      fun s : ℂ ↦ (s * (s-1)) * completedRiemannZeta s := by
    filter_upwards [eventually_ne_nhds hp.ne_zero, eventually_ne_nhds hp.2.2] with s h0 h1
    exact poleCleared_eq_completed h0 h1
  rw [analyticOrderAt_congr heq]
  change analyticOrderAt ((fun s : ℂ ↦ s * (s-1)) * completedRiemannZeta) p.val = _
  have ha : AnalyticAt ℂ (fun s : ℂ ↦ s * (s-1)) p.val := by fun_prop
  rw [analyticOrderAt_mul ha (ZeroObject.completed_analytic hp.ne_zero hp.2.2),
    ha.analyticOrderAt_eq_zero.mpr (mul_ne_zero hp.ne_zero (sub_ne_zero.mpr hp.2.2)),
    zero_add]
  exact (zeta_order_completed hp).symm

theorem poleCleared_order_nat (p : ZeroPoint) :
    analyticOrderNatAt poleCleared p.val = multiplicity p := by
  exact congrArg ENat.toNat (poleCleared_order p)

theorem shell_norm_lt (n : ℕ) (o : ZeroShell n) :
    ‖o.val.1.val‖ < (n : ℝ) + 2 := by
  have hb := Nat.lt_floor_add_one ‖shiftedValue o.val‖
  change ‖shiftedValue o.val‖ < (shellIndex o.val : ℝ) + 1 at hb
  rw [o.property] at hb
  have hn : ‖o.val.1.val‖ ≤ ‖shiftedValue o.val‖ + 1/2 := by
    have ht := norm_add_le (shiftedValue o.val) (1/2 : ℂ)
    have heq : shiftedValue o.val + (1/2 : ℂ) = o.val.1.val := by
      simp [shiftedValue]
    rw [heq] at ht
    norm_num at ht
    exact ht
  linarith

theorem shell_mem_closedBall (n : ℕ) (o : ZeroShell n) :
    o.val.1.val ∈ closedBall (0 : ℂ) ((n : ℝ)+2) := by
  simpa only [mem_closedBall, dist_zero_right] using (shell_norm_lt n o).le

theorem poleCleared_divisor_at_point (p : ZeroPoint) {R : ℝ}
    (hp : p.val ∈ closedBall (0 : ℂ) R) :
    divisor poleCleared (closedBall (0 : ℂ) R) p.val = (multiplicity p : ℤ) := by
  have ha : AnalyticOnNhd ℂ poleCleared (closedBall (0 : ℂ) R) :=
    fun s _ ↦ poleCleared_entire.analyticAt s
  rw [ha.divisor_apply hp, poleCleared_order p,
    ← Nat.cast_analyticOrderNatAt (zeta_order_finite (point_nontrivial p).2.2)]
  simp [ZeroObject.multiplicity]

/-- The finite divisor counts every actual shell occurrence with its original slot. -/
theorem shell_card_le_divisor (n : ℕ) :
    (Nat.card (ZeroShell n) : ℤ) ≤
      ∑ᶠ z, divisor poleCleared (closedBall (0 : ℂ) ((n : ℝ)+2)) z := by
  classical
  let D := divisor poleCleared (closedBall (0 : ℂ) ((n : ℝ)+2))
  let P := {z : ℂ // z ∈ D.support}
  have hpfinite : Finite P :=
    (D.finiteSupport (isCompact_closedBall (0 : ℂ) ((n : ℝ)+2))).to_subtype
  let _ : Fintype P := Fintype.ofFinite P
  let T := Σ p : P, Fin ((D p.val).toNat)
  have horder (o : ZeroShell n) :
      D o.val.1.val = (multiplicity o.val.1 : ℤ) :=
    poleCleared_divisor_at_point o.val.1 (shell_mem_closedBall n o)
  have hmem (o : ZeroShell n) : o.val.1.val ∈ D.support := by
    change D o.val.1.val ≠ 0
    rw [horder o]
    exact_mod_cast (multiplicity_positive o.val.1).ne'
  let f : ZeroShell n → T := fun o ↦
    ⟨⟨o.val.1.val, hmem o⟩, ⟨o.val.2.val, by simpa only [horder o, Int.toNat_natCast] using o.val.2.isLt⟩⟩
  have hf : Function.Injective f := by
    intro p q h
    apply Subtype.ext
    have heq : p.val.1 = q.val.1 := by
      apply Subtype.ext
      exact congrArg (fun t : T ↦ t.1.val) h
    apply Sigma.ext heq
    apply (Fin.heq_ext_iff (congrArg ZeroObject.multiplicity heq)).mpr
    exact congrArg (fun t : T ↦ t.2.val) h
  have hcard := Nat.card_le_card_of_injective f hf
  have hnonneg : ∀ z, 0 ≤ D z :=
    (show AnalyticOnNhd ℂ poleCleared (closedBall (0 : ℂ) ((n : ℝ)+2)) from
      fun z _ ↦ poleCleared_entire.analyticAt z).divisor_nonneg
  calc
    (Nat.card (ZeroShell n) : ℤ) ≤ (Nat.card T : ℤ) := by exact_mod_cast hcard
    _ = ∑ p : P, D p.val := by
      simp only [T, Nat.card_eq_fintype_card, Fintype.card_sigma, Fintype.card_fin, Nat.cast_sum]
      exact Finset.sum_congr rfl (fun p _ ↦ Int.toNat_of_nonneg (hnonneg p.val))
    _ = ∑ᶠ z, D z := by
      rw [← finsum_mem_support (fun z ↦ D z), ← finsum_set_coe_eq_finsum_mem]
      exact (finsum_eq_sum_of_fintype (fun p : P ↦ D p.val)).symm

/-- Real-cast form matching Mathlib's Jensen zero-count estimate. -/
theorem shell_card_le_divisor_real (n : ℕ) :
    (Nat.card (ZeroShell n) : ℝ) ≤
      ((∑ᶠ z, divisor poleCleared (closedBall (0 : ℂ) ((n : ℝ)+2)) z : ℤ) : ℝ) := by
  exact_mod_cast shell_card_le_divisor n


/-- A single quantitative growth obligation. This is a proposition, never an axiom. -/
def GlobalGrowthObligation : Prop :=
  ∃ A : ℝ, 0 < A ∧ ∀ r : ℝ, 1 ≤ r → ∀ z ∈ sphere (0 : ℂ) (2 * r),
    ‖poleCleared z‖ ≤ Real.exp (A * r ^ 4)

/-- The source-admission statement preserves the actual function and zero order. -/
def PoleClearingObligation : Prop :=
  Differentiable ℂ poleCleared ∧ poleCleared 0 = 1 ∧
    ∀ p : ZeroPoint, analyticOrderAt poleCleared p.val = analyticOrderAt riemannZeta p.val

theorem pole_clearing : PoleClearingObligation :=
  ⟨poleCleared_entire, poleCleared_zero, poleCleared_order⟩

/-- Exact occurrence cardinality, with the unchanged analytic multiplicity convention. -/
def ShellTransportObligation : Prop := ∀ n : ℕ,
  (Nat.card (ZeroShell n) : ℝ) ≤
    ((∑ᶠ z, divisor poleCleared (closedBall (0 : ℂ) ((n : ℝ)+2)) z : ℤ) : ℝ)

theorem shell_transport : ShellTransportObligation := shell_card_le_divisor_real

/-- A versioned target alias, definitionally the original Checkpoint-1 statement. -/
def QuarticCountObligation : Prop := QuarticShellCountObligation

/-- The dependent replay target is unchanged and is not automatically discharged. -/
def ZeroSummabilityReplayObligation : Prop := ZeroSideTargets.ZeroSummabilityObligation

theorem jensen_count_bound {r M : ℝ} (hr : 0 < r) (hM : 1 ≤ M)
    (bound : ∀ z ∈ sphere (0 : ℂ) (2 * r), ‖poleCleared z‖ ≤ M) :
    ((∑ᶠ z, divisor poleCleared (closedBall 0 |r|) z : ℤ) : ℝ) ≤
      Real.log M / Real.log 2 := by
  have hr2 : 0 < (2 : ℝ) * r := by positivity
  have analytic : AnalyticOnNhd ℂ poleCleared (closedBall 0 |2 * r|) :=
    fun z _ => poleCleared_entire.analyticAt z
  have h := AnalyticOnNhd.sum_divisor_le (c := (0 : ℂ)) (r := r) (R := 2 * r)
    (M := M) (f := poleCleared) (by simpa only [abs_of_pos hr])
    (by rw [abs_of_pos hr, abs_of_pos hr2]; linarith)
    hM analytic (by simp [poleCleared_zero])
    (by simpa only [abs_of_pos hr2] using bound)
  simpa only [poleCleared_zero, norm_one, div_one,
    mul_div_cancel_right₀ (2 : ℝ) hr.ne'] using h

/-- Jensen and exact multiplicity transport reduce the original count to one growth input. -/
theorem quartic_count_of_global_growth (h : GlobalGrowthObligation) :
    QuarticCountObligation := by
  obtain ⟨A, hA, hbound⟩ := h
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num)
  refine ⟨16 * A / Real.log 2, by positivity, ?_⟩
  intro n
  have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  have hr : 0 < (n : ℝ) + 2 := by positivity
  have hM : 1 ≤ Real.exp (A * ((n : ℝ)+2)^4) :=
    Real.one_le_exp (by positivity)
  have hj := jensen_count_bound hr hM (hbound ((n : ℝ)+2) (by linarith))
  rw [Real.log_exp, abs_of_pos hr] at hj
  have hp : ((n : ℝ)+2)^4 ≤ 16 * ((n : ℝ)+1)^4 := by
    calc
      ((n : ℝ)+2)^4 ≤ (2*((n : ℝ)+1))^4 :=
        pow_le_pow_left₀ (by positivity) (by linarith) 4
      _ = 16*((n : ℝ)+1)^4 := by ring
  calc
    (Nat.card (ZeroShell n) : ℝ) ≤ A * ((n : ℝ)+2)^4 / Real.log 2 :=
      (shell_card_le_divisor_real n).trans hj
    _ ≤ A * (16 * ((n : ℝ)+1)^4) / Real.log 2 :=
      div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hp hA.le) hlog.le
    _ = (16 * A / Real.log 2) * ((n : ℝ)+1)^4 := by ring

#print axioms pole_clearing
#print axioms shell_transport
#print axioms quartic_count_of_global_growth
end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount
