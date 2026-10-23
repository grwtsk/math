/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalMellinQuadrature

set_option autoImplicit false

/-!
# Checked finite multiplicity-weighted Mellin sums

The external ordered family determines the keys, centers and positive natural
weights. Each complete interval check uses the same external endpoints. Keys
are finite data identities, not proofs that the records are zeros or complete.
No deduplication by center or imaginary height occurs. No omitted tail is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.RationalMellinFamily

open scoped BigOperators
open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure
open IntervalMellinKernel

/-- An external finite record; analytic source identification is a separate theorem. -/
structure Member where
  key : ℕ
  center : Coordinates
  multiplicity : ℕ
  deriving DecidableEq

/-- The key is echoed, but the parameter and multiplicity come from the external family. -/
structure Evaluation where
  key : ℕ
  cells : ℕ
  quadrature : RationalMellinQuadrature.Trace
  deriving DecidableEq

structure Trace where
  evaluations : List Evaluation
  accumulation : RationalFiniteSum.Trace
  deriving DecidableEq

def defaultMember : Member := ⟨0, zero, 0⟩
def defaultEvaluation : Evaluation := ⟨0, 0, ⟨[], ⟨[], []⟩⟩⟩
def memberAt (family : List Member) (i : ℕ) : Member := family.getD i defaultMember
def evaluationAt (evaluations : List Evaluation) (i : ℕ) : Evaluation :=
  evaluations.getD i defaultEvaluation

def terms (family : List Member) (evaluations : List Evaluation) : List Coordinates :=
  (List.range family.length).map (fun i =>
    mul ((memberAt family i).multiplicity, 0)
      (RationalMellinQuadrature.output (evaluationAt evaluations i).cells
        (evaluationAt evaluations i).quadrature))

/-- Includes each member's mesh, all density-node errors and its inner weighted sum. -/
def localBudget (family : List Member) (a b : ℚ) (evaluations : List Evaluation) : ℚ :=
  ∑ i ∈ Finset.range family.length, (memberAt family i).multiplicity *
    RationalMellinQuadrature.error (memberAt family i).center a b
      (evaluationAt evaluations i).cells (evaluationAt evaluations i).quadrature

def error (family : List Member) (a b : ℚ) (tr : Trace) : ℚ :=
  localBudget family a b tr.evaluations +
    RationalFiniteSum.outputRadius (terms family tr.evaluations) tr.accumulation

def output (family : List Member) (tr : Trace) : Coordinates :=
  RationalFiniteSum.valueAt tr.accumulation family.length

/-- No zero-weight shortcut: every listed member needs a complete valid interval check. -/
def Valid (family : List Member) (a b : ℚ) (tr : Trace) : Prop :=
  1 < a ∧ a ≤ b ∧ (family.map Member.key).Nodup ∧
  tr.evaluations.length = family.length ∧
  (∀ i ∈ Finset.range family.length,
    0 < (memberAt family i).multiplicity ∧
    (evaluationAt tr.evaluations i).key = (memberAt family i).key ∧
    RationalMellinQuadrature.check (memberAt family i).center a b
      (evaluationAt tr.evaluations i).cells (evaluationAt tr.evaluations i).quadrature = true) ∧
  RationalFiniteSum.check (terms family tr.evaluations) tr.accumulation = true

instance instDecidableValid (family : List Member) (a b : ℚ) (tr : Trace) :
    Decidable (Valid family a b tr) := by unfold Valid; infer_instance

def check (family : List Member) (a b : ℚ) (tr : Trace) : Bool := decide (Valid family a b tr)
def checkWithin (family : List Member) (a b : ℚ) (tr : Trace) (ε : ℚ) : Bool :=
  check family a b tr && decide (0 ≤ ε ∧ error family a b tr ≤ ε)

/-- Only the target uses analytic values; no analytic function is evaluated by check. -/
noncomputable def centerSum (family : List Member) (a b : ℚ) : ℂ :=
  ∑ i ∈ Finset.range family.length, ((memberAt family i).multiplicity : ℂ) *
    kernel (a : ℝ) (b : ℝ) (toComplex (memberAt family i).center)

theorem check_iff_valid (family : List Member) (a b : ℚ) (tr : Trace) :
    check family a b tr = true ↔ Valid family a b tr := by
  simp only [check, decide_eq_true_eq]

@[simp] theorem length_terms (family : List Member) (evaluations : List Evaluation) :
    (terms family evaluations).length = family.length := by simp [terms]

theorem termAt_terms (family : List Member) (evaluations : List Evaluation)
    (i : ℕ) (hi : i < family.length) :
    RationalFiniteSum.termAt (terms family evaluations) i =
      mul ((memberAt family i).multiplicity, 0)
        (RationalMellinQuadrature.output (evaluationAt evaluations i).cells
          (evaluationAt evaluations i).quadrature) := by
  unfold RationalFiniteSum.termAt terms
  rw [List.getD_eq_getElem _ _ (by simpa using hi)]
  simp

/-- Exact natural weight multiplies the full local error, not just the local value. -/
theorem weighted_member_error {family : List Member} {evaluations : List Evaluation}
    {a b : ℚ} {i : ℕ} (hi : i < family.length)
    (h : RationalMellinQuadrature.check (memberAt family i).center a b
      (evaluationAt evaluations i).cells (evaluationAt evaluations i).quadrature = true) :
    ‖((memberAt family i).multiplicity : ℂ) *
      kernel (a : ℝ) (b : ℝ) (toComplex (memberAt family i).center) -
      toComplex (RationalFiniteSum.termAt (terms family evaluations) i)‖ ≤
      (((memberAt family i).multiplicity : ℝ) *
        (RationalMellinQuadrature.error (memberAt family i).center a b
          (evaluationAt evaluations i).cells (evaluationAt evaluations i).quadrature : ℝ)) := by
  rw [termAt_terms family evaluations i hi]
  have he := mul_le_mul_of_nonneg_left (RationalMellinQuadrature.check_sound h)
    (Nat.cast_nonneg (memberAt family i).multiplicity : (0 : ℝ) ≤ _)
  simpa only [toComplex_mul, toComplex_real, Rat.cast_natCast, ← mul_sub,
    norm_mul, Complex.norm_natCast] using he

/-- Sum only the selected exact centers; no model or divisor-completeness premise is inserted. -/
theorem centerSum_error {family : List Member} {evaluations : List Evaluation} {a b : ℚ}
    (hs : ∀ i ∈ Finset.range family.length,
      RationalMellinQuadrature.check (memberAt family i).center a b
        (evaluationAt evaluations i).cells (evaluationAt evaluations i).quadrature = true) :
    ‖centerSum family a b - ∑ i ∈ Finset.range family.length,
      toComplex (RationalFiniteSum.termAt (terms family evaluations) i)‖ ≤
      (localBudget family a b evaluations : ℝ) := by
  calc
    _ = ‖∑ i ∈ Finset.range family.length,
        (((memberAt family i).multiplicity : ℂ) *
          kernel (a : ℝ) (b : ℝ) (toComplex (memberAt family i).center) -
          toComplex (RationalFiniteSum.termAt (terms family evaluations) i))‖ := by
      rw [centerSum, Finset.sum_sub_distrib]
    _ ≤ ∑ i ∈ Finset.range family.length,
        ‖((memberAt family i).multiplicity : ℂ) *
          kernel (a : ℝ) (b : ℝ) (toComplex (memberAt family i).center) -
          toComplex (RationalFiniteSum.termAt (terms family evaluations) i)‖ := norm_sum_le _ _
    _ ≤ (localBudget family a b evaluations : ℝ) := by
      simp only [localBudget, Rat.cast_sum, Rat.cast_mul, Rat.cast_natCast]
      exact Finset.sum_le_sum (fun i hi => weighted_member_error (Finset.mem_range.mp hi) (hs i hi))

/-- The checked final sum has an additional arithmetic channel beyond the member intervals. -/
theorem check_sound {family : List Member} {a b : ℚ} {tr : Trace}
    (h : check family a b tr = true) :
    ‖centerSum family a b - toComplex (output family tr)‖ ≤ (error family a b tr : ℝ) := by
  obtain ⟨_, _, _, _, hs, hacc⟩ := (check_iff_valid family a b tr).mp h
  have hf := centerSum_error (fun i hi => (hs i hi).2.2)
  have ha := RationalFiniteSum.check_sound hacc
  simp only [length_terms] at ha
  let Q : ℂ := ∑ i ∈ Finset.range family.length,
    toComplex (RationalFiniteSum.termAt (terms family tr.evaluations) i)
  calc
    _ = ‖(centerSum family a b - Q) + (Q - toComplex (output family tr))‖ := by
      congr 1; abel
    _ ≤ ‖centerSum family a b - Q‖ + ‖Q - toComplex (output family tr)‖ := norm_add_le _ _
    _ ≤ (error family a b tr : ℝ) := by
      simpa only [error, Rat.cast_add, output] using add_le_add hf ha

theorem checkWithin_sound {family : List Member} {a b ε : ℚ} {tr : Trace}
    (h : checkWithin family a b tr ε = true) :
    ‖centerSum family a b - toComplex (output family tr)‖ ≤ (ε : ℝ) := by
  have hp : check family a b tr = true ∧ (0 ≤ ε ∧ error family a b tr ≤ ε) := by
    simpa only [checkWithin, Bool.and_eq_true, decide_eq_true_eq] using h
  exact (check_sound hp.1).trans (by exact_mod_cast hp.2.2)

theorem checked_shape {family : List Member} {a b : ℚ} {tr : Trace}
    (h : check family a b tr = true) :
    (family.map Member.key).Nodup ∧ tr.evaluations.length = family.length ∧
    tr.accumulation.values.length = family.length + 1 ∧
    tr.accumulation.radii.length = family.length := by
  obtain ⟨_, _, hk, hl, _, ha⟩ := (check_iff_valid family a b tr).mp h
  exact ⟨hk, hl, by simpa only [length_terms] using RationalFiniteSum.checked_lengths ha⟩

theorem checked_radius_nonneg {family : List Member} {a b : ℚ} {tr : Trace}
    (h : check family a b tr = true) : 0 ≤ error family a b tr := by
  have hn := (norm_nonneg _).trans (check_sound h)
  exact_mod_cast hn

/-- A family tolerance must cover all charged local errors, even if signed values cancel. -/
theorem checked_local_charge_le {family : List Member} {a b ε : ℚ} {tr : Trace}
    (h : checkWithin family a b tr ε = true) : localBudget family a b tr.evaluations ≤ ε := by
  have hp : check family a b tr = true ∧ (0 ≤ ε ∧ error family a b tr ≤ ε) := by
    simpa only [checkWithin, Bool.and_eq_true, decide_eq_true_eq] using h
  obtain ⟨_, _, _, _, _, ha⟩ := (check_iff_valid family a b tr).mp hp.1
  have hn := RationalFiniteSum.checked_radius_nonneg ha
  have hb := hp.2.2
  unfold error at hb
  linarith

/-- Construct all outer prefix sums from the literal externally weighted outputs. -/
def withExactAccumulation (family : List Member) (evaluations : List Evaluation) : Trace :=
  ⟨evaluations, RationalFiniteSum.exactTrace (terms family evaluations)⟩

theorem withExactAccumulation_checked {family : List Member} {evaluations : List Evaluation}
    {a b : ℚ} (ha : 1 < a) (hab : a ≤ b) (hk : (family.map Member.key).Nodup)
    (hl : evaluations.length = family.length)
    (hs : ∀ i ∈ Finset.range family.length,
      0 < (memberAt family i).multiplicity ∧
      (evaluationAt evaluations i).key = (memberAt family i).key ∧
      RationalMellinQuadrature.check (memberAt family i).center a b
        (evaluationAt evaluations i).cells (evaluationAt evaluations i).quadrature = true) :
    check family a b (withExactAccumulation family evaluations) = true := by
  exact (check_iff_valid family a b _).mpr
    ⟨ha, hab, hk, hl, hs, RationalFiniteSum.exactTrace_checked _⟩

/-- Construct every member interval from its own cell count and per-node resolutions. -/
def referenceEvaluations (family : List Member) (a b : ℚ) (cells : ℕ → ℕ)
    (p : ℕ → ℕ → RationalMellinNode.Resolution) : List Evaluation :=
  (List.range family.length).map (fun i =>
    ⟨(memberAt family i).key, cells i,
      RationalMellinQuadrature.referenceTrace (memberAt family i).center a b (cells i) (p i)⟩)

def referenceTrace (family : List Member) (a b : ℚ) (cells : ℕ → ℕ)
    (p : ℕ → ℕ → RationalMellinNode.Resolution) : Trace :=
  withExactAccumulation family (referenceEvaluations family a b cells p)

theorem referenceEvaluationAt (family : List Member) (a b : ℚ) (cells : ℕ → ℕ)
    (p : ℕ → ℕ → RationalMellinNode.Resolution) (i : ℕ) (hi : i < family.length) :
    evaluationAt (referenceEvaluations family a b cells p) i =
      ⟨(memberAt family i).key, cells i,
        RationalMellinQuadrature.referenceTrace (memberAt family i).center a b (cells i) (p i)⟩ := by
  unfold evaluationAt referenceEvaluations
  rw [List.getD_eq_getElem _ _ (by simpa using hi)]
  simp

/-- General nonvacuity from actual scale/Taylor guards, not an assumed accepted family. -/
theorem reference_checked {family : List Member} {a b : ℚ}
    (ha : 1 < a) (hab : a ≤ b) (hk : (family.map Member.key).Nodup)
    (cells : ℕ → ℕ) (p : ℕ → ℕ → RationalMellinNode.Resolution)
    (hm : ∀ i < family.length, 0 < (memberAt family i).multiplicity)
    (hN : ∀ i < family.length, 0 < cells i)
    (hz : ∀ i < family.length, (memberAt family i).center.1 ≤ 1)
    (hl : ∀ i < family.length, ∀ j < cells i,
      RationalLogEnclosure.validScale (RationalMellinQuadrature.node a b (cells i) j)
        (p i j).logScale (p i j).logTwoCells (p i j).mantissaCells = true)
    (hg : ∀ i < family.length, ∀ j < cells i,
      (RationalMellinNode.exponentBound (memberAt family i).center
        (RationalMellinQuadrature.node a b (cells i) j) (p i j) /
        (2 ^ (p i j).expScale : ℕ)) / ((p i j).terms + 1 : ℕ) ≤ (1 / 2 : ℚ)) :
    check family a b (referenceTrace family a b cells p) = true := by
  apply withExactAccumulation_checked ha hab hk (by simp [referenceEvaluations])
  intro i hi
  have hi' := Finset.mem_range.mp hi
  rw [referenceEvaluationAt family a b cells p i hi']
  exact ⟨hm i hi', rfl,
    RationalMellinQuadrature.reference_checked ha hab (hN i hi') (hz i hi')
      (p i) (hl i hi') (hg i hi')⟩

/-- Coordinate uncertainty is an additional, derived included-family charge.
It is not tested by the rational center evaluator and supplies no omitted tail. -/
theorem check_enclosed_sound {family : List Member} {a b : ℚ} {tr : Trace}
    (h : check family a b tr = true) (ρ : ℕ → ℂ) (r β : ℕ → ℝ)
    (hρ : ∀ i ∈ Finset.range family.length, (ρ i).re ≤ β i)
    (hc : ∀ i ∈ Finset.range family.length, (toComplex (memberAt family i).center).re ≤ β i)
    (hr : ∀ i ∈ Finset.range family.length,
      ‖ρ i - toComplex (memberAt family i).center‖ ≤ r i) :
    ‖(∑ i ∈ Finset.range family.length, ((memberAt family i).multiplicity : ℂ) *
      kernel (a : ℝ) (b : ℝ) (ρ i)) - toComplex (output family tr)‖ ≤
      (∑ i ∈ Finset.range family.length, ((memberAt family i).multiplicity : ℝ) *
        (sensitivity (a : ℝ) (b : ℝ) (β i) * r i)) + (error family a b tr : ℝ) := by
  obtain ⟨ha, hab, _, _, _, _⟩ := (check_iff_valid family a b tr).mp h
  have he := finite_enclosure_error (Finset.range family.length)
    (fun i => (memberAt family i).multiplicity) ρ
    (fun i => toComplex (memberAt family i).center) r β (a := (a : ℝ)) (b := (b : ℝ))
    (by exact_mod_cast ha) (by exact_mod_cast hab) hρ hc hr
  have hv := check_sound h
  calc
    _ = ‖((∑ i ∈ Finset.range family.length, ((memberAt family i).multiplicity : ℂ) *
        kernel (a : ℝ) (b : ℝ) (ρ i)) - centerSum family a b) +
        (centerSum family a b - toComplex (output family tr))‖ := by congr 1; abel
    _ ≤ ‖(∑ i ∈ Finset.range family.length, ((memberAt family i).multiplicity : ℂ) *
        kernel (a : ℝ) (b : ℝ) (ρ i)) - centerSum family a b‖ +
        ‖centerSum family a b - toComplex (output family tr)‖ := norm_add_le _ _
    _ ≤ _ := add_le_add he hv

@[simp] theorem empty_centerSum (a b : ℚ) : centerSum [] a b = 0 := by simp [centerSum]

end GRWTSK.Analysis.Complex.RationalMellinFamily
