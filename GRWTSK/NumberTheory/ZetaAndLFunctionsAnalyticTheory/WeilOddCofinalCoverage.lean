/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddStageCertificate

/-!
# Cofinal coverage for certificates of the same literal source

A later dyadic stage covers an earlier support and has a smaller defect.
The source window-agreement and physical-shift identities imply that its
bound restricts to every earlier stage. Consequently any unbounded set of
accepted stages suffices; neither consecutive stages nor an initial prefix
is mathematically necessary. This does not infer larger-support bounds
from a smaller-support certificate and does not establish unboundedness of
successful certificates. Countercheck: a singleton accepted stage only
covers its earlier stages, not the required universal family.

The limit/root criterion itself is reused, not reproved or renamed.
Baseline c5648c5a280d1cbdf4f98b594a450aaa5e4969c9.
AI-assisted manual source. Elaboration, kernel replay, transitive axiom
audit and independent mathematical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddCofinalCoverage

open OddLiteralWindow OddLiteralCofinal OddStageCertificate

private theorem dyadic_le_one (n : ℕ) : (1 / 2 : ℝ) ^ n ≤ 1 := by
  induction n with
  | zero => simp
  | succ n hn =>
    rw [pow_succ]
    nlinarith [pow_nonneg (by norm_num : (0 : ℝ) ≤ 1 / 2) n]

private theorem dyadic_antitone {j k : ℕ} (hjk : j ≤ k) :
    (1 / 2 : ℝ) ^ k ≤ (1 / 2 : ℝ) ^ j := by
  have heq : j + (k - j) = k := Nat.add_sub_of_le hjk
  calc
    (1 / 2 : ℝ) ^ k = (1 / 2 : ℝ) ^ j * (1 / 2 : ℝ) ^ (k - j) := by
      rw [← pow_add, heq]
    _ ≤ (1 / 2 : ℝ) ^ j :=
      mul_le_of_le_one_right (pow_nonneg (by norm_num) j) (dyadic_le_one (k - j))

/-- Restriction goes from a later, stronger stage to an earlier one. -/
theorem stageLower_of_later {j k : ℕ} (hjk : j ≤ k) (hk : StageLower k) :
    StageLower j := by
  intro f hf hm ho hs he
  have hT : (j : ℝ) + 1 ≤ (k : ℝ) + 1 := by exact_mod_cast Nat.add_le_add_right hjk 1
  have hs' : ∀ᵐ t : ℝ, t ∉ Icc (-((k : ℝ) + 1)) ((k : ℝ) + 1) → f t = 0 := by
    filter_upwards [hs] with t ht hout
    exact ht (fun hin => hout ⟨(neg_le_neg hT).trans hin.1, hin.2.trans hT⟩)
  have h := hk hf hm ho hs' he
  rw [shiftedOddWeilEnergy_eq_unshifted_sub_mass,
    ← shiftedOddWeilEnergy_eq_of_le 0 hs hT] at h
  rw [shiftedOddWeilEnergy_eq_unshifted_sub_mass]
  have hmass : 0 ≤ ∫ t : ℝ, ‖f t‖ ^ 2 := integral_nonneg (fun _ => sq_nonneg _)
  have hprice := mul_le_mul_of_nonneg_right (dyadic_antitone hjk) hmass
  linarith

/-- Explicit cofinal coverage, independent of the sign supplied at its indices. -/
def Covers (index : ℕ → ℕ) : Prop := ∀ j : ℕ, ∃ n : ℕ, j ≤ index n

theorem all_stages_of_cofinal (index : ℕ → ℕ) (hcover : Covers index)
    (hstage : ∀ n, StageLower (index n)) : ∀ j, StageLower j := by
  intro j
  obtain ⟨n, hn⟩ := hcover j
  exact stageLower_of_later hn (hstage n)

theorem all_stages_of_accepted_packets (index : ℕ → ℕ) (hcover : Covers index)
    (p : ∀ n, Packet (index n)) (haccepted : ∀ n, (p n).Accepted) :
    ∀ j, StageLower j :=
  all_stages_of_cofinal index hcover (fun n => (p n).stageLower (haccepted n))

/-- An eventual suffix of literal stages also supplies every stage. -/
theorem all_stages_of_suffix (start : ℕ) (h : ∀ j, start ≤ j → StageLower j) :
    ∀ j, StageLower j := by
  intro j
  exact stageLower_of_later (le_max_right start j) (h (max start j) (le_max_left start j))

end GRWTSK.NumberTheory.WeilQuadraticForm.OddCofinalCoverage
