/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.TentMellinQuadrature
import GRWTSK.Analysis.Complex.RationalMellinQuadrature

set_option autoImplicit false

/-!
# Rational checks for the literal normalized tent transform

There are N cells in each half, and 2N density samples at constructed midpoints.
The exact integrated tent masses determine every weighted term. Input z is not
shifted to z+1. Logarithm, seed, squaring and final arithmetic errors remain.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No zero inventory or prime certificate.
-/

namespace GRWTSK.Analysis.Complex.RationalTentQuadrature

open scoped BigOperators
open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure
open TentMellinKernel

structure Trace where
  leftSamples : List RationalMellinQuadrature.Sample
  rightSamples : List RationalMellinQuadrature.Sample
  accumulation : RationalFiniteSum.Trace
  deriving DecidableEq

def node (x h : ℚ) (N i : ℕ) (right : Bool) : ℚ :=
  (if right then x else x - h) + ((i : ℚ) + 1 / 2) * (h / (N : ℚ))

def mass (h : ℚ) (N i : ℕ) (right : Bool) : ℚ :=
  h / (N : ℚ) * (if right then 1 - ((i : ℚ) + 1 / 2) / (N : ℚ)
    else ((i : ℚ) + 1 / 2) / (N : ℚ))

def samples (tr : Trace) (right : Bool) : List RationalMellinQuadrature.Sample :=
  if right then tr.rightSamples else tr.leftSamples

def sampleValue (tr : Trace) (i : ℕ) (right : Bool) : Coordinates :=
  RationalMellinQuadrature.sampleValue (samples tr right) i

def sampleError (z : Coordinates) (x h : ℚ) (N : ℕ) (tr : Trace) (i : ℕ) (right : Bool) : ℚ :=
  let s := RationalMellinQuadrature.sampleAt (samples tr right) i
  RationalMellinNode.error z (node x h N i right) s.resolution s.trace

/-- Left half, then right half; the trace does not supply weights or coordinates. -/
def terms (h : ℚ) (N : ℕ) (tr : Trace) : List Coordinates :=
  (List.range (N + N)).map (fun j => if j < N then
    mul (mass h N j false, 0) (sampleValue tr j false) else
    mul (mass h N (j - N) true, 0) (sampleValue tr (j - N) true))

def meshError (z : Coordinates) (h : ℚ) (N : ℕ) : ℚ :=
  RationalMellinNode.magnitude z * h ^ 2 / (2 * (N : ℚ))

def nodeBudget (z : Coordinates) (x h : ℚ) (N : ℕ) (tr : Trace) : ℚ :=
  (∑ i ∈ Finset.range N, mass h N i false * sampleError z x h N tr i false) +
    ∑ i ∈ Finset.range N, mass h N i true * sampleError z x h N tr i true

def error (z : Coordinates) (x h : ℚ) (N : ℕ) (tr : Trace) : ℚ :=
  meshError z h N + nodeBudget z x h N tr +
    RationalFiniteSum.outputRadius (terms h N tr) tr.accumulation

def output (N : ℕ) (tr : Trace) : Coordinates :=
  RationalFiniteSum.valueAt tr.accumulation (N + N)

def Valid (z : Coordinates) (x h : ℚ) (N : ℕ) (tr : Trace) : Prop :=
  0 < h ∧ 1 < x - h ∧ 0 < N ∧ z.1 ≤ 1 ∧
  tr.leftSamples.length = N ∧ tr.rightSamples.length = N ∧
  (∀ right : Bool, ∀ i ∈ Finset.range N,
    let s := RationalMellinQuadrature.sampleAt (samples tr right) i
    RationalMellinNode.check z (node x h N i right) s.resolution s.trace = true) ∧
  RationalFiniteSum.check (terms h N tr) tr.accumulation = true

instance instDecidableValid (z : Coordinates) (x h : ℚ) (N : ℕ) (tr : Trace) :
    Decidable (Valid z x h N tr) := by unfold Valid; infer_instance

def check (z : Coordinates) (x h : ℚ) (N : ℕ) (tr : Trace) : Bool :=
  decide (Valid z x h N tr)

def checkWithin (z : Coordinates) (x h : ℚ) (N : ℕ) (tr : Trace) (ε : ℚ) : Bool :=
  check z x h N tr && decide (0 ≤ ε ∧ error z x h N tr ≤ ε)

theorem check_iff_valid (z : Coordinates) (x h : ℚ) (N : ℕ) (tr : Trace) :
    check z x h N tr = true ↔ Valid z x h N tr := by
  simp only [check, decide_eq_true_eq]

@[simp] theorem cast_node (x h : ℚ) (N i : ℕ) (right : Bool) :
    (node x h N i right : ℝ) = TentMellinQuadrature.halfNode x h N i right := by
  cases right <;> simp [node, TentMellinQuadrature.halfNode]

@[simp] theorem cast_mass (h : ℚ) (N i : ℕ) (right : Bool) :
    (mass h N i right : ℝ) = TentMellinQuadrature.halfMass h N i right := by
  cases right <;> simp [mass, TentMellinQuadrature.halfMass]

theorem mass_nonneg {h : ℚ} (hh : 0 ≤ h) {N i : ℕ} (hi : i < N) (right : Bool) :
    0 ≤ mass h N i right := by
  have hh' : (0 : ℝ) ≤ h := by exact_mod_cast hh
  have hn := TentMellinQuadrature.halfMass_nonneg hh' hi right
  rw [← cast_mass] at hn
  exact_mod_cast hn

/-- Exact total weight is the radius, even when N changes. -/
theorem total_mass (h : ℚ) (N : ℕ) (hN : 0 < N) :
    (∑ i ∈ Finset.range N, mass h N i false) +
      (∑ i ∈ Finset.range N, mass h N i true) = h := by
  have hm := TentMellinQuadrature.total_mass (h : ℝ) N hN
  simpa only [← cast_mass, ← Rat.cast_sum, ← Rat.cast_add, Rat.cast_inj] using hm

@[simp] theorem length_terms (h : ℚ) (N : ℕ) (tr : Trace) :
    (terms h N tr).length = N + N := by simp [terms]

theorem termAt_left (h : ℚ) (N : ℕ) (tr : Trace) (i : ℕ) (hi : i < N) :
    RationalFiniteSum.termAt (terms h N tr) i =
      mul (mass h N i false, 0) (sampleValue tr i false) := by
  unfold RationalFiniteSum.termAt terms
  rw [List.getD_eq_getElem _ _ (by simp; omega)]
  simp [hi]

theorem termAt_right (h : ℚ) (N : ℕ) (tr : Trace) (i : ℕ) (hi : i < N) :
    RationalFiniteSum.termAt (terms h N tr) (N + i) =
      mul (mass h N i true, 0) (sampleValue tr i true) := by
  unfold RationalFiniteSum.termAt terms
  rw [List.getD_eq_getElem _ _ (by simp; omega)]
  simp [show ¬ N + i < N by omega]

theorem terms_interpretation (h : ℚ) (N : ℕ) (tr : Trace) :
    (∑ i ∈ Finset.range (N + N), toComplex (RationalFiniteSum.termAt (terms h N tr) i)) =
      (∑ i ∈ Finset.range N, TentMellinQuadrature.halfMass (h : ℝ) N i false •
        toComplex (sampleValue tr i false)) +
      ∑ i ∈ Finset.range N, TentMellinQuadrature.halfMass (h : ℝ) N i true •
        toComplex (sampleValue tr i true) := by
  rw [Finset.sum_range_add]
  congr 1
  · apply Finset.sum_congr rfl
    intro i hi
    rw [termAt_left h N tr i (Finset.mem_range.mp hi)]
    simp only [toComplex_mul, toComplex_real, Complex.real_smul, ← cast_mass,
      Complex.ofReal_ratCast]
  · apply Finset.sum_congr rfl
    intro i hi
    simpa only [Nat.add_comm, toComplex_mul, toComplex_real, Complex.real_smul,
      ← cast_mass, Complex.ofReal_ratCast] using
      congrArg toComplex (termAt_right h N tr i (Finset.mem_range.mp hi))

/-- Every sample is checked at its derived midpoint, with the original z. -/
theorem samples_error {z : Coordinates} {x h : ℚ} {N : ℕ} {tr : Trace}
    (hc : check z x h N tr = true) :
    ‖tentKernel (x : ℝ) (h : ℝ) (toComplex z) -
      ∑ i ∈ Finset.range (N + N), toComplex (RationalFiniteSum.termAt (terms h N tr) i)‖ ≤
      (meshError z h N : ℝ) + (nodeBudget z x h N tr : ℝ) := by
  obtain ⟨hh, ha, hN, hz, _, _, hs, _⟩ := (check_iff_valid z x h N tr).mp hc
  have hh' : (0 : ℝ) < h := by exact_mod_cast hh
  have ha' : (1 : ℝ) < (x : ℝ) - h := by exact_mod_cast ha
  have hz' : (toComplex z).re ≤ 2 := by
    have : (z.1 : ℝ) ≤ 1 := by exact_mod_cast hz
    change (z.1 : ℝ) ≤ 2
    linarith
  have hv (right : Bool) (i : ℕ) (hi : i < N) :
      ‖IntervalMellinKernel.density (toComplex z) (TentMellinQuadrature.halfNode x h N i right) -
        toComplex (sampleValue tr i right)‖ ≤ (sampleError z x h N tr i right : ℝ) := by
    simpa only [sampleValue, RationalMellinQuadrature.sampleValue, sampleError, cast_node] using
      RationalMellinNode.check_sound (hs right i (Finset.mem_range.mpr hi))
  rw [terms_interpretation]
  have ht := TentMellinQuadrature.tent_samples_error (x : ℝ) (h : ℝ) hh' ha' N hN hz'
    (fun i => toComplex (sampleValue tr i false)) (fun i => toComplex (sampleValue tr i true))
    (fun i => (sampleError z x h N tr i false : ℝ))
    (fun i => (sampleError z x h N tr i true : ℝ)) (hv false) (hv true)
  simpa only [meshError, nodeBudget, Rat.cast_add, Rat.cast_mul, Rat.cast_div, Rat.cast_pow,
    Rat.cast_natCast, Rat.cast_ofNat, Rat.cast_sum, cast_mass, RationalMellinNode.cast_magnitude] using ht

/-- The literal tent integral, not the unweighted interval, is the conclusion. -/
theorem check_sound {z : Coordinates} {x h : ℚ} {N : ℕ} {tr : Trace}
    (hc : check z x h N tr = true) :
    ‖tentKernel (x : ℝ) (h : ℝ) (toComplex z) - toComplex (output N tr)‖ ≤
      (error z x h N tr : ℝ) := by
  obtain ⟨_, _, _, _, _, _, _, hs⟩ := (check_iff_valid z x h N tr).mp hc
  have ht := RationalFiniteSum.check_sound hs
  simp only [length_terms] at ht
  have hq := samples_error hc
  let Q : ℂ := ∑ i ∈ Finset.range (N + N), toComplex (RationalFiniteSum.termAt (terms h N tr) i)
  calc
    _ = ‖(tentKernel (x : ℝ) (h : ℝ) (toComplex z) - Q) +
      (Q - toComplex (output N tr))‖ := by congr 1; abel
    _ ≤ _ := norm_add_le _ _
    _ ≤ (error z x h N tr : ℝ) := by
      simpa only [error, output, Rat.cast_add] using add_le_add hq ht

theorem checkWithin_sound {z : Coordinates} {x h ε : ℚ} {N : ℕ} {tr : Trace}
    (hc : checkWithin z x h N tr ε = true) :
    ‖tentKernel (x : ℝ) (h : ℝ) (toComplex z) - toComplex (output N tr)‖ ≤ (ε : ℝ) := by
  have hp : check z x h N tr = true ∧ (0 ≤ ε ∧ error z x h N tr ≤ ε) := by
    simpa only [checkWithin, Bool.and_eq_true, decide_eq_true_eq] using hc
  exact (check_sound hp.1).trans (by exact_mod_cast hp.2.2)

theorem checked_lengths {z : Coordinates} {x h : ℚ} {N : ℕ} {tr : Trace}
    (hc : check z x h N tr = true) :
    tr.leftSamples.length = N ∧ tr.rightSamples.length = N ∧
      tr.accumulation.values.length = N + N + 1 ∧ tr.accumulation.radii.length = N + N := by
  obtain ⟨_, _, _, _, hL, hR, _, hs⟩ := (check_iff_valid z x h N tr).mp hc
  exact ⟨hL, hR, by simpa only [length_terms] using RationalFiniteSum.checked_lengths hs⟩

/-- Construct all exact midpoint node traces and the exact weighted prefix sum. -/
def referenceSamples (z : Coordinates) (x h : ℚ) (N : ℕ) (right : Bool)
    (p : ℕ → RationalMellinNode.Resolution) : List RationalMellinQuadrature.Sample :=
  (List.range N).map (fun i => ⟨p i, RationalMellinNode.exactTrace z (node x h N i right) (p i)⟩)

def referenceTrace (z : Coordinates) (x h : ℚ) (N : ℕ)
    (pL pR : ℕ → RationalMellinNode.Resolution) : Trace :=
  let tr : Trace := ⟨referenceSamples z x h N false pL, referenceSamples z x h N true pR,
    ⟨[], []⟩⟩
  { tr with accumulation := RationalFiniteSum.exactTrace (terms h N tr) }

theorem reference_sample (z : Coordinates) (x h : ℚ) (N : ℕ) (right : Bool)
    (p : ℕ → RationalMellinNode.Resolution) (i : ℕ) (hi : i < N) :
    RationalMellinQuadrature.sampleAt (referenceSamples z x h N right p) i =
      ⟨p i, RationalMellinNode.exactTrace z (node x h N i right) (p i)⟩ := by
  unfold RationalMellinQuadrature.sampleAt referenceSamples
  rw [List.getD_eq_getElem _ _ (by simpa using hi)]
  simp

/-- Constructed acceptance at every admitted midpoint resolution; no success oracle. -/
theorem reference_checked {z : Coordinates} {x h : ℚ} {N : ℕ}
    (hh : 0 < h) (ha : 1 < x - h) (hN : 0 < N) (hz : z.1 ≤ 1)
    (p : Bool → ℕ → RationalMellinNode.Resolution)
    (hl : ∀ right i, i < N → RationalLogEnclosure.validScale (node x h N i right)
      (p right i).logScale (p right i).logTwoCells (p right i).mantissaCells = true)
    (hg : ∀ right i, i < N → (RationalMellinNode.exponentBound z (node x h N i right) (p right i) /
      (2 ^ (p right i).expScale : ℕ)) / ((p right i).terms + 1 : ℕ) ≤ (1 / 2 : ℚ)) :
    check z x h N (referenceTrace z x h N (p false) (p true)) = true := by
  apply (check_iff_valid z x h N _).mpr
  refine ⟨hh, ha, hN, hz, by simp [referenceTrace, referenceSamples],
    by simp [referenceTrace, referenceSamples], ?_, ?_⟩
  · intro right i hi
    have hi' := Finset.mem_range.mp hi
    cases right <;>
      simp only [referenceTrace, samples, Bool.false_eq_true, if_false, if_true] <;>
      rw [reference_sample z x h N _ _ i hi'] <;>
      exact RationalMellinNode.exactTrace_checked hz (hl _ _ hi') (hg _ _ hi')
  · exact RationalFiniteSum.exactTrace_checked _

end GRWTSK.Analysis.Complex.RationalTentQuadrature
