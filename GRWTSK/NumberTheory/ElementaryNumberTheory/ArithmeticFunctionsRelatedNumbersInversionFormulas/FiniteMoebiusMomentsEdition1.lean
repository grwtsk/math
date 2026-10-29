import FormalResearch.RiemannHypothesis.Conversation.CenteredVaughan
import FormalResearch.RiemannHypothesis.Conversation.WeightedHodge
import Mathlib.NumberTheory.Harmonic.EulerMascheroni

/-!
# Actual finite Mobius moments and the exact two-point unit-jet correction

Batch 18's M0(U) and M1(U) are the literal finite Mobius reciprocal and
logarithmic moments. For every integer q>=2 the recorded correction on {1,q}
has those exact two prescribed moments and is unique on that support. Its
finite allocation routes the whole source mode into the low child at kappa=1.
The recorded scalar 1-2*gamma is nonzero by Mathlib's rigorous gamma bound.
The analytic Dirichlet-germ identification and a signed port estimate remain
separate; finite jet routing is not a bound on the high child.

Human unit-jet direction: grwtsk contributors. Local finite correction and Lean
consumer: OpenAI Codex. Mathlib Mobius and David Loeffler's Euler-Mascheroni
formalization retain their names, authorship and upstream source identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.UnitJetCorrection

open scoped BigOperators ArithmeticFunction.Moebius
noncomputable section

def momentZero (U : ℕ) : ℝ := ∑ d ∈ Finset.Icc 1 U, (μ : ArithmeticFunction ℝ) d / d
def momentOne (U : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U, (μ : ArithmeticFunction ℝ) d * Real.log d / d
def atOne (U : ℕ) (kappa : ℝ) (q : ℕ) : ℝ :=
  momentZero U - (momentOne U + kappa) / Real.log q
def atQ (U : ℕ) (kappa : ℝ) (q : ℕ) : ℝ := q * (momentOne U + kappa) / Real.log q
def recordedSourceValue : ℝ := 1 - 2 * Real.eulerMascheroniConstant

theorem log_q_pos {q : ℕ} (hq : 2 ≤ q) : 0 < Real.log q :=
  Real.log_pos (by exact_mod_cast (by omega : 1 < q))

theorem exact_two_moments (U : ℕ) (kappa : ℝ) {q : ℕ} (hq : 2 ≤ q) :
    atOne U kappa q + atQ U kappa q / q = momentZero U ∧
      atOne U kappa q * Real.log 1 + atQ U kappa q * Real.log q / q =
        momentOne U + kappa := by
  have hq0 : (q : ℝ) ≠ 0 := by exact_mod_cast (by omega : q ≠ 0)
  have hlog := (log_q_pos hq).ne'
  unfold atOne atQ
  constructor
  · field_simp [hq0, hlog]
    ring
  · rw [Real.log_one, mul_zero, zero_add]
    field_simp [hq0, hlog]

theorem two_point_correction_unique (U : ℕ) (kappa : ℝ) {q : ℕ} (hq : 2 ≤ q)
    {rOne rQ : ℝ} (hzero : rOne + rQ / q = momentZero U)
    (hone : rQ * Real.log q / q = momentOne U + kappa) :
    rOne = atOne U kappa q ∧ rQ = atQ U kappa q := by
  have hq0 : (q : ℝ) ≠ 0 := by exact_mod_cast (by omega : q ≠ 0)
  have hlog := (log_q_pos hq).ne'
  have hrQ : rQ = atQ U kappa q := by
    unfold atQ
    apply (eq_div_iff hlog).mpr
    field_simp [hq0] at hone
    nlinarith
  constructor
  · unfold atOne
    rw [hrQ] at hzero
    unfold atQ at hzero
    field_simp [hq0, hlog] at hzero ⊢
    nlinarith
  · exact hrQ

theorem allocated_low_value (U : ℕ) (kappa : ℝ) {q : ℕ} (hq : 2 ≤ q) :
    -momentOne U + (atQ U kappa q * Real.log q / q) = kappa := by
  have h := (exact_two_moments U kappa hq).2
  simp only [Real.log_one, mul_zero, zero_add] at h
  linarith

theorem exact_child_allocation (kappa c : ℝ) : kappa * c + (1 - kappa) * c = c := by ring

theorem unit_jet_high_child_zero (c : ℝ) : (1 : ℝ) * c = c ∧ (1 - 1 : ℝ) * c = 0 := by simp

theorem recorded_source_value_negative : recordedSourceValue < 0 := by
  unfold recordedSourceValue
  linarith [Real.one_half_lt_eulerMascheroniConstant]

theorem recorded_source_children_cannot_both_vanish (kappa : ℝ) :
    ¬ (kappa * recordedSourceValue = 0 ∧ (1 - kappa) * recordedSourceValue = 0) := by
  rintro ⟨hlow, hhigh⟩
  have h := exact_child_allocation kappa recordedSourceValue
  rw [hlow, hhigh, zero_add] at h
  exact recorded_source_value_negative.ne h.symm

end
end GRWTSK.RiemannHypothesis.Conversation.UnitJetCorrection
