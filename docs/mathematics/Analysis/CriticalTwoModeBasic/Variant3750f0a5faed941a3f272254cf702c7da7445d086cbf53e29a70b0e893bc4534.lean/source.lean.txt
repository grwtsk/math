import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.NumberTheory.Real.Irrational
import Mathlib.Topology.Order.Compact

/-!
# Literal bounded two-frequency path and strict compact record deficit

This is the actual G_alpha(t)=cos(t)+cos(alpha*t) from Batch 12, retaining
the fixed frequencies and positive starting time. Irrationality rules out
attaining two at positive time; compactness supplies a strictly positive
finite-horizon deficit. These facts alone do not supply its quantitative
Diophantine lower bound, the tail supremum, or native p-energy divergence.
Human source and native-clock direction: grwtsk contributors. Local bounded
path and compact-prefix consumer: OpenAI Codex. Pinned Mathlib trigonometric,
irrationality and compactness infrastructure retains upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeBasic
open Set
noncomputable section

def twoMode (α t : ℝ) : ℝ := Real.cos t + Real.cos (α * t)

theorem literal_two_mode_abs_le_two (α t : ℝ) : |twoMode α t| ≤ 2 := by
  unfold twoMode
  exact (abs_add_le _ _).trans (by linarith [Real.abs_cos_le_one t, Real.abs_cos_le_one (α*t)])

theorem literal_two_mode_continuous (α : ℝ) : Continuous (twoMode α) := by
  unfold twoMode
  fun_prop

theorem literal_two_mode_smooth (α : ℝ) (k : WithTop ℕ∞) : ContDiff ℝ k (twoMode α) := by
  unfold twoMode
  fun_prop

theorem literal_two_mode_lt_two {α t : ℝ} (hα : Irrational α) (ht : 0 < t) :
    twoMode α t < 2 := by
  have hle : twoMode α t ≤ 2 := (le_abs_self _).trans (literal_two_mode_abs_le_two α t)
  apply lt_of_le_of_ne hle
  intro he
  have hc1 : Real.cos t = 1 := by
    unfold twoMode at he
    linarith [Real.cos_le_one t, Real.cos_le_one (α*t)]
  have hc2 : Real.cos (α*t) = 1 := by
    unfold twoMode at he
    linarith [Real.cos_le_one t, Real.cos_le_one (α*t)]
  obtain ⟨m, hm⟩ := (Real.cos_eq_one_iff t).mp hc1
  obtain ⟨n, hn⟩ := (Real.cos_eq_one_iff (α*t)).mp hc2
  have hm0 : m ≠ 0 := by
    intro h
    simp [h] at hm
    linarith
  have heq : α * (m : ℝ) = (n : ℝ) := by
    apply mul_right_cancel₀ (by positivity : (2 * Real.pi : ℝ) ≠ 0)
    calc
      α * (m : ℝ) * (2 * Real.pi) = α * t := by rw [← hm]; ring
      _ = (n : ℝ) * (2 * Real.pi) := hn.symm
  exact (hα.mul_intCast hm0).ne_int n heq

theorem literal_two_mode_integer_period_value (α : ℝ) (q : ℤ) :
    twoMode α ((q : ℝ) * (2 * Real.pi)) =
      1 + Real.cos (α * ((q : ℝ) * (2 * Real.pi))) := by
  unfold twoMode
  rw [(Real.cos_eq_one_iff _).mpr ⟨q, rfl⟩]

theorem literal_compact_prefix_has_positive_deficit {α t₀ T : ℝ}
    (hα : Irrational α) (ht₀ : 0 < t₀) (hT : t₀ ≤ T) :
    ∃ δ : ℝ, 0 < δ ∧ ∀ t : ℝ, t ∈ Icc t₀ T → twoMode α t ≤ 2 - δ := by
  obtain ⟨s, hs, hmax⟩ := isCompact_Icc.exists_isMaxOn (nonempty_Icc.mpr hT)
    (literal_two_mode_continuous α).continuousOn
  have hlt := literal_two_mode_lt_two hα (ht₀.trans_le hs.1)
  refine ⟨2 - twoMode α s, by linarith, ?_⟩
  intro t ht
  have h := hmax ht
  change twoMode α t ≤ twoMode α s at h
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeBasic
