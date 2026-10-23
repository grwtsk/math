/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
import Mathlib.Data.List.GetD
import Mathlib.Data.List.Range
import Lean.Elab.Tactic.Omega
import Mathlib.Data.Finset.Range

set_option autoImplicit false

/-!
# A finite rational checker for exponential squaring traces

The externally supplied exponent, bound, scale and Taylor length are checked
against the literal trace. Exact lengths reject missing or extra entries before
any defaulted accessor could be interpreted as evidence. The checker derives
local complex-norm bounds from rational squared-ball comparisons and computes
the full nonlinear output allowance. It is not an operational runner or parser.
All proof candidates remain NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ErrorBounds.RationalExpTrace

open RationalComplexEnclosure

/-- One seed followed by exactly s squarings; used lengths are checked below. -/
structure Trace where
  values : List Coordinates
  seedRadius : ℚ
  squareRadii : List ℚ
  deriving DecidableEq

/-- Defaults make the functions total; Valid requires all used entries to exist. -/
def valueAt (tr : Trace) (j : ℕ) : Coordinates := tr.values.getD j zero
def radiusAt (tr : Trace) (j : ℕ) : ℚ := tr.squareRadii.getD j 0

def seedValue (w : Coordinates) (s M : ℕ) : Coordinates :=
  taylor (divNat w (2 ^ s)) M

/-- A pure exact reference evaluator, with exactly s rational squarings. -/
def exactSquares (u : Coordinates) : ℕ → Coordinates
  | 0 => u
  | j + 1 => mul (exactSquares u j) (exactSquares u j)

def exactValue (w : Coordinates) (s M : ℕ) : Coordinates :=
  exactSquares (seedValue w s M) s

/-- A complete reference trace; no entries or errors are supplied by a caller. -/
def exactTrace (w : Coordinates) (s M : ℕ) : Trace :=
  ⟨(List.range (s + 1)).map (exactSquares (seedValue w s M)), 0,
    List.replicate s 0⟩

def seedTail (B : ℚ) (s M : ℕ) : ℚ :=
  (B / (2 ^ s : ℕ)) ^ M / (M.factorial : ℚ) * 2

/-- Exact rational counterpart of the inherited roundedRadius recurrence. -/
def propagate (e : ℚ) (r : ℕ → ℚ) : ℕ → ℚ
  | 0 => e
  | j + 1 => 2 * propagate e r j + propagate e r j ^ 2 + r j

def outputRadius (B : ℚ) (s M : ℕ) (tr : Trace) : ℚ :=
  propagate (seedTail B s M + tr.seedRadius) (radiusAt tr) s

/-- Every proposition here is finite and decidable in rational arithmetic. -/
def Valid (w : Coordinates) (B : ℚ) (s M : ℕ) (tr : Trace) : Prop :=
  w.1 ≤ 0 ∧
  inBall w B = true ∧
  (B / (2 ^ s : ℕ)) / (M + 1 : ℕ) ≤ (1 / 2 : ℚ) ∧
  tr.values.length = s + 1 ∧
  tr.squareRadii.length = s ∧
  inBall (sub (seedValue w s M) (valueAt tr 0)) tr.seedRadius = true ∧
  ∀ j ∈ Finset.range s,
    inBall (sub (valueAt tr (j + 1)) (mul (valueAt tr j) (valueAt tr j)))
      (radiusAt tr j) = true

instance instDecidableValid (w : Coordinates) (B : ℚ) (s M : ℕ) (tr : Trace) :
    Decidable (Valid w B s M tr) := by
  unfold Valid
  infer_instance

/-- No complex exponential, logarithm, square root or floating operation is called. -/
def check (w : Coordinates) (B : ℚ) (s M : ℕ) (tr : Trace) : Bool :=
  decide (Valid w B s M tr)

/-- A separately requested output precision is not inferred from Taylor admissibility. -/
def checkWithin (w : Coordinates) (B : ℚ) (s M : ℕ) (tr : Trace) (ε : ℚ) : Bool :=
  check w B s M tr && decide (0 ≤ ε ∧ outputRadius B s M tr ≤ ε)

theorem check_iff_valid (w : Coordinates) (B : ℚ) (s M : ℕ) (tr : Trace) :
    check w B s M tr = true ↔ Valid w B s M tr := by
  simp only [check, decide_eq_true_eq]

theorem checked_lengths {w : Coordinates} {B : ℚ} {s M : ℕ} {tr : Trace}
    (h : check w B s M tr = true) :
    tr.values.length = s + 1 ∧ tr.squareRadii.length = s := by
  obtain ⟨_, _, _, hv, hr, _, _⟩ := (check_iff_valid w B s M tr).mp h
  exact ⟨hv, hr⟩

theorem toComplex_seedValue (w : Coordinates) (s M : ℕ) :
    toComplex (seedValue w s M) =
      ComplexTaylorEnclosure.taylorValue (toComplex w / (2 ^ s : ℕ)) M := by
  simp only [seedValue, toComplex_taylor, toComplex_divNat]

/-- The computable reference output refines the existing analytic expression. -/
theorem toComplex_exactSquares (u : Coordinates) (s : ℕ) :
    toComplex (exactSquares u s) = ComplexExpScaling.squaredValue (toComplex u) s := by
  induction s with
  | zero => simp [exactSquares]
  | succ s ih =>
    rw [exactSquares, toComplex_mul, ih, ComplexExpScaling.squaredValue_succ, pow_two]

theorem toComplex_exactValue (w : Coordinates) (s M : ℕ) :
    toComplex (exactValue w s M) = ComplexExpScaling.scaledTaylor (toComplex w) s M := by
  simp only [exactValue, toComplex_exactSquares, toComplex_seedValue,
    ComplexExpScaling.scaledTaylor]

theorem exactTrace_value (w : Coordinates) (s M j : ℕ) (hj : j ≤ s) :
    valueAt (exactTrace w s M) j = exactSquares (seedValue w s M) j := by
  unfold valueAt exactTrace
  rw [List.getD_eq_getElem _ _ (by
    simpa only [List.length_map, List.length_range] using Nat.lt_succ_of_le hj)]
  simp

theorem exactTrace_radius (w : Coordinates) (s M j : ℕ) (hj : j < s) :
    radiusAt (exactTrace w s M) j = 0 := by
  exact List.getD_replicate (x := (0 : ℚ)) (y := 0) (i := j) (n := s) hj

/-- Nonvacuity for every admissible input: the constructed exact trace is accepted. -/
theorem exactTrace_checked {w : Coordinates} {B : ℚ} (hre : w.1 ≤ 0)
    (hB : inBall w B = true) (s M : ℕ)
    (hg : (B / (2 ^ s : ℕ)) / (M + 1 : ℕ) ≤ (1 / 2 : ℚ)) :
    check w B s M (exactTrace w s M) = true := by
  apply (check_iff_valid w B s M _).mpr
  refine ⟨hre, hB, hg, by simp [exactTrace], by simp [exactTrace], ?_, ?_⟩
  · rw [exactTrace_value w s M 0 (Nat.zero_le s)]
    simp [exactSquares, exactTrace]
  · intro j hj
    have hj' := Finset.mem_range.mp hj
    rw [exactTrace_value w s M (j + 1) (by omega),
      exactTrace_value w s M j (by omega), exactTrace_radius w s M j hj']
    simp [exactSquares]

theorem cast_seedTail (B : ℚ) (s M : ℕ) :
    (seedTail B s M : ℝ) =
      ComplexTaylorEnclosure.taylorTail ((B : ℝ) / (2 ^ s : ℕ)) M := by
  simp [seedTail, ComplexTaylorEnclosure.taylorTail]

theorem cast_propagate (e : ℚ) (r : ℕ → ℚ) (s : ℕ) :
    (propagate e r s : ℝ) =
      ComplexExpScaling.roundedRadius (e : ℝ) (fun j => (r j : ℝ)) s := by
  induction s with
  | zero => rfl
  | succ s ih => simp [propagate, ComplexExpScaling.roundedRadius, ih]

/-- Success binds to the actual exponential of the external input, not of a trace label.
The analytic theorem and exact rational-to-complex refinement remain subject to replay. -/
theorem check_sound {w : Coordinates} {B : ℚ} {s M : ℕ} {tr : Trace}
    (h : check w B s M tr = true) :
    ‖Complex.exp (toComplex w) - toComplex (valueAt tr s)‖ ≤
      (outputRadius B s M tr : ℝ) := by
  obtain ⟨hre, hB, hguard, _hlen, _hrlen, hseed, hstep⟩ :=
    (check_iff_valid w B s M tr).mp h
  have hb := (inBall_iff w B).mp hB
  have hre' : (toComplex w).re ≤ 0 := by
    change (w.1 : ℝ) ≤ 0
    exact_mod_cast hre
  have hg : ((B : ℝ) / (2 ^ s : ℕ)) / (M + 1 : ℕ) ≤ (1 / 2 : ℝ) := by
    have hg' := (Rat.cast_le (K := ℝ)).mpr hguard
    push_cast at hg'
    simpa only [Nat.cast_pow, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat] using hg'
  have hs : ‖ComplexTaylorEnclosure.taylorValue (toComplex w / (2 ^ s : ℕ)) M -
      toComplex (valueAt tr 0)‖ ≤ (tr.seedRadius : ℝ) := by
    simpa only [toComplex_sub, toComplex_seedValue] using
      (inBall_iff _ _).mp hseed
  have hj : ∀ j < s, ‖toComplex (valueAt tr (j + 1)) -
      toComplex (valueAt tr j) ^ 2‖ ≤ (radiusAt tr j : ℝ) := by
    intro j hj
    have hb' := (inBall_iff _ _).mp (hstep j (Finset.mem_range.mpr hj))
    simpa only [toComplex_sub, toComplex_mul, pow_two] using hb'
  have hout := ComplexExpScaling.scaled_exp_trace_error hb hre' s M hg
    (fun j => toComplex (valueAt tr j)) (tr.seedRadius : ℝ)
    (fun j => (radiusAt tr j : ℝ)) hs hj
  simpa only [outputRadius, cast_propagate, Rat.cast_add, cast_seedTail] using hout

theorem checked_radius_nonneg {w : Coordinates} {B : ℚ} {s M : ℕ} {tr : Trace}
    (h : check w B s M tr = true) : 0 ≤ outputRadius B s M tr := by
  have hr : (0 : ℝ) ≤ outputRadius B s M tr := (norm_nonneg _).trans (check_sound h)
  exact_mod_cast hr

/-- The checked exact reference evaluator inherits the analytic error theorem. -/
theorem exactValue_error {w : Coordinates} {B : ℚ} (hre : w.1 ≤ 0)
    (hB : inBall w B = true) (s M : ℕ)
    (hg : (B / (2 ^ s : ℕ)) / (M + 1 : ℕ) ≤ (1 / 2 : ℚ)) :
    ‖Complex.exp (toComplex w) - toComplex (exactValue w s M)‖ ≤
      (outputRadius B s M (exactTrace w s M) : ℝ) := by
  simpa only [exactTrace_value w s M s le_rfl, exactValue] using
    check_sound (exactTrace_checked hre hB s M hg)

/-- Output precision is checked as well as source and arithmetic consistency. -/
theorem checkWithin_sound {w : Coordinates} {B ε : ℚ} {s M : ℕ} {tr : Trace}
    (h : checkWithin w B s M tr ε = true) :
    ‖Complex.exp (toComplex w) - toComplex (valueAt tr s)‖ ≤ (ε : ℝ) := by
  have h' : check w B s M tr = true ∧
      (0 ≤ ε ∧ outputRadius B s M tr ≤ ε) := by
    simpa only [checkWithin, Bool.and_eq_true, decide_eq_true_eq] using h
  exact (check_sound h'.1).trans (by exact_mod_cast h'.2.2)

/-- A missing seed or local step cannot be repaired by a zero default. -/
theorem missing_values_rejected {w : Coordinates} {B : ℚ} {s M : ℕ} {tr : Trace}
    (hlen : tr.values.length ≠ s + 1) : check w B s M tr = false := by
  cases h : check w B s M tr with
  | false => rfl
  | true => exact False.elim (hlen (checked_lengths h).1)

theorem missing_radii_rejected {w : Coordinates} {B : ℚ} {s M : ℕ} {tr : Trace}
    (hlen : tr.squareRadii.length ≠ s) : check w B s M tr = false := by
  cases h : check w B s M tr with
  | false => rfl
  | true => exact False.elim (hlen (checked_lengths h).2)

/-- Nonzero exponential example: T_3(-1/2)=5/8 and one square gives 25/64. -/
def negativeOneTrace : Trace := ⟨[(5 / 8, 0), (25 / 64, 0)], 0, [0]⟩

theorem negative_one_checked : checkWithin (-1, 0) 1 1 3 negativeOneTrace (1 / 10) = true := by
  decide +kernel
/-- This is an actual analytic consequence of the literal finite checker, not a zeta example. -/
theorem negative_one_enclosure :
    ‖Complex.exp (-1 : ℂ) - (25 / 64 : ℂ)‖ ≤ (1 / 10 : ℝ) := by
  have h := checkWithin_sound negative_one_checked
  simpa [negativeOneTrace, valueAt] using h

/-- Same trace, wrong exponent: a source mismatch is not a rounding allowance. -/
theorem wrong_input_rejected : check (0, 0) 1 1 3 negativeOneTrace = false := by decide +kernel

/-- The exact seed must be checked, even when every subsequent square is consistent. -/
theorem wrong_seed_rejected :
    check (-1, 0) 1 1 3 ⟨[(1, 0), (1, 0)], 0, [0]⟩ = false := by decide +kernel

/-- A dishonest last square cannot pass on the strength of a valid seed. -/
theorem wrong_square_rejected :
    check (-1, 0) 1 1 3 ⟨[(5 / 8, 0), (1, 0)], 0, [0]⟩ = false := by decide +kernel

/-- An early rational perturbation is charged again by the later square. -/
theorem rounded_trace_control :
    checkWithin (0, 0) 0 2 1 ⟨[(1, 0), (11 / 10, 0), (121 / 100, 0)], 0, [1 / 10, 0]⟩
      (1 / 4) = true ∧
    checkWithin (0, 0) 0 2 1 ⟨[(1, 0), (11 / 10, 0), (121 / 100, 0)], 0, [1 / 10, 0]⟩
      (1 / 10) = false := by decide +kernel

/-- An inadmissible Taylor ratio and an understated input norm are separately rejected. -/
theorem input_guards_rejected :
    check (-1, 0) 1 0 0 ⟨[(0, 0)], 0, []⟩ = false ∧
    check (-1, 0) (1 / 2) 1 3 negativeOneTrace = false := by decide +kernel

/-- A zero-term approximation can have a valid coarse radius, but is not exact. -/
theorem coarse_is_not_precise :
    check (0, 0) 0 0 0 ⟨[(0, 0)], 0, []⟩ = true ∧
    checkWithin (0, 0) 0 0 0 ⟨[(0, 0)], 0, []⟩ 0 = false := by decide +kernel

/-- Nonnegative radii and exact list lengths are part of the checked data contract. -/
theorem malformed_trace_rejected :
    check (0, 0) 0 1 1 ⟨[(1, 0)], 0, [0]⟩ = false ∧
    check (0, 0) 0 1 1 ⟨[(1, 0), (1, 0)], 0, []⟩ = false ∧
    check (0, 0) 0 1 1 ⟨[(1, 0), (1, 0)], -1, [0]⟩ = false := by decide +kernel

end GRWTSK.Analysis.ErrorBounds.RationalExpTrace
