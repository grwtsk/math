# Complete source: GRWTSK.Analysis.ErrorBounds.RationalFiniteSum

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c2025f8615820dba06f1ba61022609088577211` · SHA-256 `19e9db23bf2d1dbc71293818462ce6db5a75d502e46bf086401725e46bd75c8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.RationalExpTrace

set_option autoImplicit false

/-!
# Rational checks of finite sum traces

The external term list determines every update, not labels in the trace.
Exact lengths and zero initialization are checked. The local ball test includes
all differences from the exact term, so a caller using rounded products must
charge them as well as rounded addition. No parser or runtime is qualified.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ErrorBounds.RationalFiniteSum

open scoped BigOperators
open RationalComplexEnclosure

structure Trace where
  values : List Coordinates
  radii : List ℚ
  deriving DecidableEq

def termAt (terms : List Coordinates) (i : ℕ) : Coordinates := terms.getD i zero
def valueAt (tr : Trace) (i : ℕ) : Coordinates := tr.values.getD i zero
def radiusAt (tr : Trace) (i : ℕ) : ℚ := tr.radii.getD i 0

/-- An exact rational reference partial sum; only the used prefix matters. -/
def partialSum (terms : List Coordinates) : ℕ → Coordinates
  | 0 => zero
  | i + 1 => add (partialSum terms i) (termAt terms i)

def outputRadius (terms : List Coordinates) (tr : Trace) : ℚ :=
  ∑ i ∈ Finset.range terms.length, radiusAt tr i

def Valid (terms : List Coordinates) (tr : Trace) : Prop :=
  tr.values.length = terms.length + 1 ∧ tr.radii.length = terms.length ∧
  valueAt tr 0 = zero ∧ ∀ i ∈ Finset.range terms.length,
    inBall (sub (valueAt tr (i + 1)) (add (valueAt tr i) (termAt terms i)))
      (radiusAt tr i) = true

instance instDecidableValid (terms : List Coordinates) (tr : Trace) :
    Decidable (Valid terms tr) := by unfold Valid; infer_instance

def check (terms : List Coordinates) (tr : Trace) : Bool := decide (Valid terms tr)

def exactTrace (terms : List Coordinates) : Trace :=
  ⟨(List.range (terms.length + 1)).map (partialSum terms), List.replicate terms.length 0⟩

theorem check_iff_valid (terms : List Coordinates) (tr : Trace) :
    check terms tr = true ↔ Valid terms tr := by simp only [check, decide_eq_true_eq]

theorem checked_lengths {terms : List Coordinates} {tr : Trace}
    (h : check terms tr = true) :
    tr.values.length = terms.length + 1 ∧ tr.radii.length = terms.length := by
  obtain ⟨hv, hr, _, _⟩ := (check_iff_valid terms tr).mp h
  exact ⟨hv, hr⟩

/-- Refinement to the literal complex finite sum, without analytic evaluation. -/
theorem toComplex_partialSum (terms : List Coordinates) (N : ℕ) :
    toComplex (partialSum terms N) = ∑ i ∈ Finset.range N, toComplex (termAt terms i) := by
  induction N with
  | zero => simp [partialSum]
  | succ N ih => simp only [partialSum, toComplex_add, ih, Finset.sum_range_succ]

/-- The Boolean tests supply every local norm premise of the inherited theorem. -/
theorem check_sound {terms : List Coordinates} {tr : Trace}
    (h : check terms tr = true) :
    ‖(∑ i ∈ Finset.range terms.length, toComplex (termAt terms i)) -
      toComplex (valueAt tr terms.length)‖ ≤ (outputRadius terms tr : ℝ) := by
  obtain ⟨_hv, _hr, h0, hs⟩ := (check_iff_valid terms tr).mp h
  have hz : toComplex (valueAt tr 0) = 0 := by rw [h0, toComplex_zero]
  have hstep : ∀ i < terms.length,
      ‖toComplex (valueAt tr (i + 1)) -
        (toComplex (valueAt tr i) + toComplex (termAt terms i))‖ ≤ (radiusAt tr i : ℝ) := by
    intro i hi
    simpa only [toComplex_sub, toComplex_add] using
      (inBall_iff _ _).mp (hs i (Finset.mem_range.mpr hi))
  have hout := ComplexTaylorEnclosure.sum_from_step_errors
    (fun i => toComplex (termAt terms i)) (fun i => toComplex (valueAt tr i))
    (fun i => (radiusAt tr i : ℝ)) hz terms.length hstep
  simpa only [outputRadius, Rat.cast_sum] using hout

theorem checked_radius_nonneg {terms : List Coordinates} {tr : Trace}
    (h : check terms tr = true) : 0 ≤ outputRadius terms tr := by
  have hn : (0 : ℝ) ≤ (outputRadius terms tr : ℝ) := (norm_nonneg _).trans (check_sound h)
  exact_mod_cast hn

theorem exactTrace_value (terms : List Coordinates) (i : ℕ) (hi : i ≤ terms.length) :
    valueAt (exactTrace terms) i = partialSum terms i := by
  unfold valueAt exactTrace
  rw [List.getD_eq_getElem _ _ (by
    simpa only [List.length_map, List.length_range] using Nat.lt_succ_of_le hi)]
  simp

theorem exactTrace_radius (terms : List Coordinates) (i : ℕ) (hi : i < terms.length) :
    radiusAt (exactTrace terms) i = 0 := by
  exact List.getD_replicate (x := (0 : ℚ)) (y := 0) (i := i) (n := terms.length) hi

/-- Constructed acceptance for every finite rational term list, including the empty one. -/
theorem exactTrace_checked (terms : List Coordinates) : check terms (exactTrace terms) = true := by
  apply (check_iff_valid terms _).mpr
  refine ⟨by simp [exactTrace], by simp [exactTrace], ?_, ?_⟩
  · rw [exactTrace_value terms 0 (Nat.zero_le _)]
    rfl
  · intro i hi
    have hi' := Finset.mem_range.mp hi
    rw [exactTrace_value terms (i + 1) (by omega), exactTrace_value terms i (by omega),
      exactTrace_radius terms i hi', partialSum]
    simp

theorem exactTrace_outputRadius (terms : List Coordinates) : outputRadius terms (exactTrace terms) = 0 := by
  unfold outputRadius
  apply Finset.sum_eq_zero
  intro i hi
  exact exactTrace_radius terms i (Finset.mem_range.mp hi)

/-- A nonzero initial value must not be hidden in a chain of exact updates. -/
theorem nonzero_initial_rejected :
    check [(1, 0)] ⟨[(1, 0), (2, 0)], [0]⟩ = false := by decide +kernel

/-- Zero terms still require one zero accumulator record; absence is not evidence. -/
theorem empty_sum_controls :
    check [] ⟨[zero], []⟩ = true ∧ check [] ⟨[], []⟩ = false := by decide +kernel

/-- The external term is complex, including its imaginary component. -/
theorem imaginary_update_rejected :
    check [(0, 1)] ⟨[zero, zero], [0]⟩ = false := by decide +kernel

end GRWTSK.Analysis.ErrorBounds.RationalFiniteSum
```
