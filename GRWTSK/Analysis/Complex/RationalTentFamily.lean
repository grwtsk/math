/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalMellinFamily
import GRWTSK.Analysis.Complex.RationalTentQuadrature

set_option autoImplicit false

/-!
# Checked finite multiplicity-weighted tent sums

The external ordered family determines the keys, centers and positive natural
weights. Each complete tent check uses the same external center/radius geometry. Keys
are finite data identities, not proofs that the records are zeros or complete.
No deduplication by center or imaginary height occurs. No omitted tail is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.RationalTentFamily

open scoped BigOperators
open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure
open TentMellinKernel
open RationalMellinFamily (Member memberAt)

/-- The key is echoed, but the parameter and multiplicity come from the external family. -/
structure Evaluation where
  key : ℕ
  cells : ℕ
  quadrature : RationalTentQuadrature.Trace
  deriving DecidableEq

structure Trace where
  evaluations : List Evaluation
  accumulation : RationalFiniteSum.Trace
  deriving DecidableEq

def defaultEvaluation : Evaluation := ⟨0, 0, ⟨[], [], ⟨[], []⟩⟩⟩
def evaluationAt (evaluations : List Evaluation) (i : ℕ) : Evaluation :=
  evaluations.getD i defaultEvaluation

def terms (family : List Member) (evaluations : List Evaluation) : List Coordinates :=
  (List.range family.length).map (fun i =>
    mul ((memberAt family i).multiplicity, 0)
      (RationalTentQuadrature.output (evaluationAt evaluations i).cells
        (evaluationAt evaluations i).quadrature))

/-- Includes each member's tent mesh, all density-node errors and its inner weighted sum. -/
def localBudget (family : List Member) (x h : ℚ) (evaluations : List Evaluation) : ℚ :=
  ∑ i ∈ Finset.range family.length, (memberAt family i).multiplicity *
    RationalTentQuadrature.error (memberAt family i).center x h
      (evaluationAt evaluations i).cells (evaluationAt evaluations i).quadrature

def error (family : List Member) (x h : ℚ) (tr : Trace) : ℚ :=
  localBudget family x h tr.evaluations +
    RationalFiniteSum.outputRadius (terms family tr.evaluations) tr.accumulation

def output (family : List Member) (tr : Trace) : Coordinates :=
  RationalFiniteSum.valueAt tr.accumulation family.length

/-- No zero-weight shortcut: every listed member needs a complete valid tent check. -/
def Valid (family : List Member) (x h : ℚ) (tr : Trace) : Prop :=
  0 < h ∧ 1 < x - h ∧ (family.map Member.key).Nodup ∧
  tr.evaluations.length = family.length ∧
  (∀ i ∈ Finset.range family.length,
    0 < (memberAt family i).multiplicity ∧
    (evaluationAt tr.evaluations i).key = (memberAt family i).key ∧
    RationalTentQuadrature.check (memberAt family i).center x h
      (evaluationAt tr.evaluations i).cells (evaluationAt tr.evaluations i).quadrature = true) ∧
  RationalFiniteSum.check (terms family tr.evaluations) tr.accumulation = true

instance instDecidableValid (family : List Member) (x h : ℚ) (tr : Trace) :
    Decidable (Valid family x h tr) := by unfold Valid; infer_instance

def check (family : List Member) (x h : ℚ) (tr : Trace) : Bool := decide (Valid family x h tr)
def checkWithin (family : List Member) (x h : ℚ) (tr : Trace) (ε : ℚ) : Bool :=
  check family x h tr && decide (0 ≤ ε ∧ error family x h tr ≤ ε)

/-- Only the target uses analytic values; no analytic function is evaluated by check. -/
noncomputable def centerSum (family : List Member) (x h : ℚ) : ℂ :=
  ∑ i ∈ Finset.range family.length, ((memberAt family i).multiplicity : ℂ) *
    tentKernel (x : ℝ) (h : ℝ) (toComplex (memberAt family i).center)

theorem check_iff_valid (family : List Member) (x h : ℚ) (tr : Trace) :
    check family x h tr = true ↔ Valid family x h tr := by
  simp only [check, decide_eq_true_eq]

@[simp] theorem length_terms (family : List Member) (evaluations : List Evaluation) :
    (terms family evaluations).length = family.length := by simp [terms]

theorem termAt_terms (family : List Member) (evaluations : List Evaluation)
    (i : ℕ) (hi : i < family.length) :
    RationalFiniteSum.termAt (terms family evaluations) i =
      mul ((memberAt family i).multiplicity, 0)
        (RationalTentQuadrature.output (evaluationAt evaluations i).cells
          (evaluationAt evaluations i).quadrature) := by
  unfold RationalFiniteSum.termAt terms
  rw [List.getD_eq_getElem _ _ (by simpa using hi)]
  simp

/-- Exact natural weight multiplies the full local error, not just the local value. -/
theorem weighted_member_error {family : List Member} {evaluations : List Evaluation}
    {x h : ℚ} {i : ℕ} (hi : i < family.length)
    (hcheck : RationalTentQuadrature.check (memberAt family i).center x h
      (evaluationAt evaluations i).cells (evaluationAt evaluations i).quadrature = true) :
    ‖((memberAt family i).multiplicity : ℂ) *
      tentKernel (x : ℝ) (h : ℝ) (toComplex (memberAt family i).center) -
      toComplex (RationalFiniteSum.termAt (terms family evaluations) i)‖ ≤
      (((memberAt family i).multiplicity : ℝ) *
        (RationalTentQuadrature.error (memberAt family i).center x h
          (evaluationAt evaluations i).cells (evaluationAt evaluations i).quadrature : ℝ)) := by
  rw [termAt_terms family evaluations i hi]
  have he := mul_le_mul_of_nonneg_left (RationalTentQuadrature.check_sound hcheck)
    (Nat.cast_nonneg (memberAt family i).multiplicity : (0 : ℝ) ≤ _)
  simpa only [toComplex_mul, toComplex_real, Rat.cast_natCast, ← mul_sub,
    norm_mul, Complex.norm_natCast] using he

/-- Sum only the selected exact centers; no model or divisor-completeness premise is inserted. -/
theorem centerSum_error {family : List Member} {evaluations : List Evaluation} {x h : ℚ}
    (hs : ∀ i ∈ Finset.range family.length,
      RationalTentQuadrature.check (memberAt family i).center x h
        (evaluationAt evaluations i).cells (evaluationAt evaluations i).quadrature = true) :
    ‖centerSum family x h - ∑ i ∈ Finset.range family.length,
      toComplex (RationalFiniteSum.termAt (terms family evaluations) i)‖ ≤
      (localBudget family x h evaluations : ℝ) := by
  calc
    _ = ‖∑ i ∈ Finset.range family.length,
        (((memberAt family i).multiplicity : ℂ) *
          tentKernel (x : ℝ) (h : ℝ) (toComplex (memberAt family i).center) -
          toComplex (RationalFiniteSum.termAt (terms family evaluations) i))‖ := by
      rw [centerSum, Finset.sum_sub_distrib]
    _ ≤ ∑ i ∈ Finset.range family.length,
        ‖((memberAt family i).multiplicity : ℂ) *
          tentKernel (x : ℝ) (h : ℝ) (toComplex (memberAt family i).center) -
          toComplex (RationalFiniteSum.termAt (terms family evaluations) i)‖ := norm_sum_le _ _
    _ ≤ (localBudget family x h evaluations : ℝ) := by
      simp only [localBudget, Rat.cast_sum, Rat.cast_mul, Rat.cast_natCast]
      exact Finset.sum_le_sum (fun i hi => weighted_member_error (Finset.mem_range.mp hi) (hs i hi))

/-- The checked final sum has an additional arithmetic channel beyond the member tent integrals. -/
theorem check_sound {family : List Member} {x h : ℚ} {tr : Trace}
    (hcheck : check family x h tr = true) :
    ‖centerSum family x h - toComplex (output family tr)‖ ≤ (error family x h tr : ℝ) := by
  obtain ⟨_, _, _, _, hs, hacc⟩ := (check_iff_valid family x h tr).mp hcheck
  have hf := centerSum_error (fun i hi => (hs i hi).2.2)
  have hh := RationalFiniteSum.check_sound hacc
  simp only [length_terms] at hh
  let Q : ℂ := ∑ i ∈ Finset.range family.length,
    toComplex (RationalFiniteSum.termAt (terms family tr.evaluations) i)
  calc
    _ = ‖(centerSum family x h - Q) + (Q - toComplex (output family tr))‖ := by
      congr 1; abel
    _ ≤ ‖centerSum family x h - Q‖ + ‖Q - toComplex (output family tr)‖ := norm_add_le _ _
    _ ≤ (error family x h tr : ℝ) := by
      simpa only [error, Rat.cast_add, output] using add_le_add hf hh

theorem checkWithin_sound {family : List Member} {x h ε : ℚ} {tr : Trace}
    (hcheck : checkWithin family x h tr ε = true) :
    ‖centerSum family x h - toComplex (output family tr)‖ ≤ (ε : ℝ) := by
  have hp : check family x h tr = true ∧ (0 ≤ ε ∧ error family x h tr ≤ ε) := by
    simpa only [checkWithin, Bool.and_eq_true, decide_eq_true_eq] using hcheck
  exact (check_sound hp.1).trans (by exact_mod_cast hp.2.2)

theorem checked_shape {family : List Member} {x h : ℚ} {tr : Trace}
    (hcheck : check family x h tr = true) :
    (family.map Member.key).Nodup ∧ tr.evaluations.length = family.length ∧
    tr.accumulation.values.length = family.length + 1 ∧
    tr.accumulation.radii.length = family.length := by
  obtain ⟨_, _, hk, hl, _, hh⟩ := (check_iff_valid family x h tr).mp hcheck
  exact ⟨hk, hl, by simpa only [length_terms] using RationalFiniteSum.checked_lengths hh⟩

theorem checked_radius_nonneg {family : List Member} {x h : ℚ} {tr : Trace}
    (hcheck : check family x h tr = true) : 0 ≤ error family x h tr := by
  have hn := (norm_nonneg _).trans (check_sound hcheck)
  exact_mod_cast hn

/-- A family tolerance must cover all charged local errors, even if signed values cancel. -/
theorem checked_local_charge_le {family : List Member} {x h ε : ℚ} {tr : Trace}
    (hcheck : checkWithin family x h tr ε = true) : localBudget family x h tr.evaluations ≤ ε := by
  have hp : check family x h tr = true ∧ (0 ≤ ε ∧ error family x h tr ≤ ε) := by
    simpa only [checkWithin, Bool.and_eq_true, decide_eq_true_eq] using hcheck
  obtain ⟨_, _, _, _, _, hh⟩ := (check_iff_valid family x h tr).mp hp.1
  have hn := RationalFiniteSum.checked_radius_nonneg hh
  have hb := hp.2.2
  unfold error at hb
  linarith

/-- Construct all outer prefix sums from the literal externally weighted outputs. -/
def withExactAccumulation (family : List Member) (evaluations : List Evaluation) : Trace :=
  ⟨evaluations, RationalFiniteSum.exactTrace (terms family evaluations)⟩

theorem withExactAccumulation_checked {family : List Member} {evaluations : List Evaluation}
    {x h : ℚ} (hh : 0 < h) (ha : 1 < x - h) (hk : (family.map Member.key).Nodup)
    (hl : evaluations.length = family.length)
    (hs : ∀ i ∈ Finset.range family.length,
      0 < (memberAt family i).multiplicity ∧
      (evaluationAt evaluations i).key = (memberAt family i).key ∧
      RationalTentQuadrature.check (memberAt family i).center x h
        (evaluationAt evaluations i).cells (evaluationAt evaluations i).quadrature = true) :
    check family x h (withExactAccumulation family evaluations) = true := by
  exact (check_iff_valid family x h _).mpr
    ⟨hh, ha, hk, hl, hs, RationalFiniteSum.exactTrace_checked _⟩

/-- Construct both halves of every member from that member's own resolutions. -/
def referenceEvaluations (family : List Member) (x h : ℚ) (cells : ℕ → ℕ)
    (p : ℕ → Bool → ℕ → RationalMellinNode.Resolution) : List Evaluation :=
  (List.range family.length).map (fun i =>
    ⟨(memberAt family i).key, cells i,
      RationalTentQuadrature.referenceTrace (memberAt family i).center x h (cells i)
        (p i false) (p i true)⟩)

def referenceTrace (family : List Member) (x h : ℚ) (cells : ℕ → ℕ)
    (p : ℕ → Bool → ℕ → RationalMellinNode.Resolution) : Trace :=
  withExactAccumulation family (referenceEvaluations family x h cells p)

theorem referenceEvaluationAt (family : List Member) (x h : ℚ) (cells : ℕ → ℕ)
    (p : ℕ → Bool → ℕ → RationalMellinNode.Resolution) (i : ℕ) (hi : i < family.length) :
    evaluationAt (referenceEvaluations family x h cells p) i =
      ⟨(memberAt family i).key, cells i,
        RationalTentQuadrature.referenceTrace (memberAt family i).center x h (cells i)
          (p i false) (p i true)⟩ := by
  unfold evaluationAt referenceEvaluations
  rw [List.getD_eq_getElem _ _ (by simpa using hi)]
  simp

/-- Nonvacuity from the actual half-cell log and Taylor guards, not a success oracle. -/
theorem reference_checked {family : List Member} {x h : ℚ}
    (hh : 0 < h) (ha : 1 < x - h) (hk : (family.map Member.key).Nodup)
    (cells : ℕ → ℕ) (p : ℕ → Bool → ℕ → RationalMellinNode.Resolution)
    (hm : ∀ i < family.length, 0 < (memberAt family i).multiplicity)
    (hN : ∀ i < family.length, 0 < cells i)
    (hz : ∀ i < family.length, (memberAt family i).center.1 ≤ 1)
    (hl : ∀ i < family.length, ∀ right j, j < cells i →
      RationalLogEnclosure.validScale (RationalTentQuadrature.node x h (cells i) j right)
        (p i right j).logScale (p i right j).logTwoCells (p i right j).mantissaCells = true)
    (hg : ∀ i < family.length, ∀ right j, j < cells i →
      (RationalMellinNode.exponentBound (memberAt family i).center
        (RationalTentQuadrature.node x h (cells i) j right) (p i right j) /
        (2 ^ (p i right j).expScale : ℕ)) / ((p i right j).terms + 1 : ℕ) ≤ (1 / 2 : ℚ)) :
    check family x h (referenceTrace family x h cells p) = true := by
  apply withExactAccumulation_checked hh ha hk (by simp [referenceEvaluations])
  intro i hi
  have hi' := Finset.mem_range.mp hi
  rw [referenceEvaluationAt family x h cells p i hi']
  exact ⟨hm i hi', rfl,
    RationalTentQuadrature.reference_checked hh ha (hN i hi') (hz i hi')
      (p i) (hl i hi') (hg i hi')⟩

@[simp] theorem empty_centerSum (x h : ℚ) : centerSum [] x h = 0 := by simp [centerSum]

end GRWTSK.Analysis.Complex.RationalTentFamily
