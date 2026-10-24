/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.RationalMellinNode
import GRWTSK.Analysis.ErrorBounds.RationalFiniteSum

set_option autoImplicit false

/-!
# A rational checker for a complete uniform Mellin quadrature

External a,b,N,z determine every node and weight. Exactly N complete node
records and a checked zero-initialized sum trace are required. The total bound
includes mesh, full density-node and weighted arithmetic errors. It refers to
the original integral, not merely a sum of samples. No zeta source is defined.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.RationalMellinQuadrature

open scoped BigOperators
open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure
open IntervalMellinKernel IntervalMellinQuadrature IntervalMellinElementary

structure Sample where
  resolution : RationalMellinNode.Resolution
  trace : RationalExpTrace.Trace
  deriving DecidableEq

structure Trace where
  samples : List Sample
  accumulation : RationalFiniteSum.Trace
  deriving DecidableEq

/-- A total accessor default, never a substitute for the checked list length. -/
def defaultSample : Sample := ⟨⟨0, 0, 0, 0, 0⟩, ⟨[], 0, []⟩⟩
def sampleAt (samples : List Sample) (i : ℕ) : Sample := samples.getD i defaultSample

def cellWidth (a b : ℚ) (N : ℕ) : ℚ := (b - a) / (N : ℚ)
def node (a b : ℚ) (N i : ℕ) : ℚ := a + (i : ℚ) * cellWidth a b N

def sampleValue (samples : List Sample) (i : ℕ) : Coordinates :=
  RationalExpTrace.valueAt (sampleAt samples i).trace (sampleAt samples i).resolution.expScale

def sampleError (z : Coordinates) (a b : ℚ) (N : ℕ) (samples : List Sample) (i : ℕ) : ℚ :=
  RationalMellinNode.error z (node a b N i) (sampleAt samples i).resolution (sampleAt samples i).trace

/-- All N exact weighted terms, in their original index order. -/
def terms (a b : ℚ) (N : ℕ) (samples : List Sample) : List Coordinates :=
  (List.range N).map (fun i => mul (cellWidth a b N, 0) (sampleValue samples i))

def meshError (z : Coordinates) (a b : ℚ) (N : ℕ) : ℚ :=
  RationalMellinNode.magnitude z / 2 * ((N : ℚ) * cellWidth a b N ^ 2)

def sampleBudget (z : Coordinates) (a b : ℚ) (N : ℕ) (samples : List Sample) : ℚ :=
  ∑ i ∈ Finset.range N, cellWidth a b N * sampleError z a b N samples i

def error (z : Coordinates) (a b : ℚ) (N : ℕ) (tr : Trace) : ℚ :=
  meshError z a b N + sampleBudget z a b N tr.samples +
    RationalFiniteSum.outputRadius (terms a b N tr.samples) tr.accumulation

def output (N : ℕ) (tr : Trace) : Coordinates := RationalFiniteSum.valueAt tr.accumulation N

/-- Uniform coverage is constructed from external endpoints, not inferred from a node list. -/
def Valid (z : Coordinates) (a b : ℚ) (N : ℕ) (tr : Trace) : Prop :=
  1 < a ∧ a ≤ b ∧ 0 < N ∧ z.1 ≤ 1 ∧ tr.samples.length = N ∧
  (∀ i ∈ Finset.range N, RationalMellinNode.check z (node a b N i)
    (sampleAt tr.samples i).resolution (sampleAt tr.samples i).trace = true) ∧
  RationalFiniteSum.check (terms a b N tr.samples) tr.accumulation = true

instance instDecidableValid (z : Coordinates) (a b : ℚ) (N : ℕ) (tr : Trace) :
    Decidable (Valid z a b N tr) := by unfold Valid; infer_instance

def check (z : Coordinates) (a b : ℚ) (N : ℕ) (tr : Trace) : Bool := decide (Valid z a b N tr)
def checkWithin (z : Coordinates) (a b : ℚ) (N : ℕ) (tr : Trace) (ε : ℚ) : Bool :=
  check z a b N tr && decide (0 ≤ ε ∧ error z a b N tr ≤ ε)

theorem check_iff_valid (z : Coordinates) (a b : ℚ) (N : ℕ) (tr : Trace) :
    check z a b N tr = true ↔ Valid z a b N tr := by simp only [check, decide_eq_true_eq]

@[simp] theorem length_terms (a b : ℚ) (N : ℕ) (samples : List Sample) :
    (terms a b N samples).length = N := by simp [terms]

@[simp] theorem cast_node (a b : ℚ) (N i : ℕ) :
    (node a b N i : ℝ) = uniformNodes (a : ℝ) (b : ℝ) N i := by
  simp [node, cellWidth, uniformNodes]

/-- Exact endpoints and the common nonnegative weight are not user-provided metadata. -/
theorem node_endpoints (a b : ℚ) (N : ℕ) (hN : 0 < N) :
    node a b N 0 = a ∧ node a b N N = b := by
  constructor
  · simp [node]
  · have hN0 : (N : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hN)
    unfold node cellWidth
    field_simp [hN0]
    ring

theorem cellWidth_nonneg {a b : ℚ} (hab : a ≤ b) (N : ℕ) : 0 ≤ cellWidth a b N :=
  div_nonneg (sub_nonneg.mpr hab) (Nat.cast_nonneg N)

/-- The actual left-cell discretization allowance, now a rational formula. -/
theorem meshError_eq {a b : ℚ} (z : Coordinates) (N : ℕ) (hN : 0 < N) :
    meshError z a b N = RationalMellinNode.magnitude z * (b - a) ^ 2 / (2 * (N : ℚ)) := by
  have hN0 : (N : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hN)
  unfold meshError cellWidth
  field_simp [hN0]

theorem cast_meshError (z : Coordinates) (a b : ℚ) (N : ℕ) :
    (meshError z a b N : ℝ) = arithmeticMeshBound (uniformNodes (a : ℝ) b N) N (toComplex z) := by
  simp [meshError, arithmeticMeshBound, uniformNodes_step, cellWidth,
    RationalMellinNode.cast_magnitude, nsmul_eq_mul]

theorem termAt_terms (a b : ℚ) (N : ℕ) (samples : List Sample) (i : ℕ) (hi : i < N) :
    RationalFiniteSum.termAt (terms a b N samples) i =
      mul (cellWidth a b N, 0) (sampleValue samples i) := by
  unfold RationalFiniteSum.termAt terms
  rw [List.getD_eq_getElem _ _ (by simpa using hi)]
  simp

theorem terms_interpretation (a b : ℚ) (N : ℕ) (samples : List Sample) :
    (∑ i ∈ Finset.range N, toComplex (RationalFiniteSum.termAt (terms a b N samples) i)) =
      ∑ i ∈ Finset.range N,
        (uniformNodes (a : ℝ) b N (i + 1) - uniformNodes (a : ℝ) b N i) •
          toComplex (sampleValue samples i) := by
  apply Finset.sum_congr rfl
  intro i hi
  rw [termAt_terms a b N samples i (Finset.mem_range.mp hi)]
  simp [toComplex_mul, toComplex_real, uniformNodes_step, cellWidth, Complex.real_smul]

theorem cast_sampleBudget (z : Coordinates) (a b : ℚ) (N : ℕ) (samples : List Sample) :
    (sampleBudget z a b N samples : ℝ) = ∑ i ∈ Finset.range N,
      (uniformNodes (a : ℝ) b N (i + 1) - uniformNodes (a : ℝ) b N i) *
        (sampleError z a b N samples i : ℝ) := by
  simp only [sampleBudget, Rat.cast_sum, Rat.cast_mul, uniformNodes_step]
  simp [cellWidth]

/-- Node soundness feeds the existing integral error theorem on its exact interval. -/
theorem quadrature_samples_error {z : Coordinates} {a b : ℚ} {N : ℕ} (samples : List Sample)
    (ha : 1 < a) (hab : a ≤ b) (hN : 0 < N) (hz : z.1 ≤ 1)
    (hs : ∀ i ∈ Finset.range N, RationalMellinNode.check z (node a b N i)
      (sampleAt samples i).resolution (sampleAt samples i).trace = true) :
    ‖kernel (a : ℝ) (b : ℝ) (toComplex z) -
      ∑ i ∈ Finset.range N, toComplex (RationalFiniteSum.termAt (terms a b N samples) i)‖ ≤
      (meshError z a b N : ℝ) + (sampleBudget z a b N samples : ℝ) := by
  have hab' : (a : ℝ) ≤ b := by exact_mod_cast hab
  have ha' : (1 : ℝ) < a := by exact_mod_cast ha
  have hz' : (toComplex z).re ≤ 2 := by
    have hz1 : (z.1 : ℝ) ≤ 1 := by exact_mod_cast hz
    change (z.1 : ℝ) ≤ 2
    linarith
  have hv : ∀ i < N,
      ‖density (toComplex z) (uniformNodes (a : ℝ) b N i) - toComplex (sampleValue samples i)‖ ≤
        (sampleError z a b N samples i : ℝ) := by
    intro i hi
    simpa only [sampleValue, sampleError, cast_node] using
      RationalMellinNode.check_sound (hs i (Finset.mem_range.mpr hi))
  have hq := kernel_sample_error (uniformNodes (a : ℝ) b N) N
    (uniformNodes_monotone hab' N) (by simpa using ha') hz'
    (fun i => toComplex (sampleValue samples i))
    (fun i => (sampleError z a b N samples i : ℝ)) hv
  have hm := partitionError_le_arithmeticMeshBound (uniformNodes (a : ℝ) b N) N (toComplex z)
  rw [terms_interpretation, cast_meshError, cast_sampleBudget]
  simpa only [uniformNodes_zero, uniformNodes_end (a : ℝ) (b : ℝ) N hN] using
    hq.trans (add_le_add hm (le_refl _))

/-- Mesh + every density-node error + every weighted arithmetic error. No integral premise. -/
theorem check_sound {z : Coordinates} {a b : ℚ} {N : ℕ} {tr : Trace}
    (h : check z a b N tr = true) :
    ‖kernel (a : ℝ) (b : ℝ) (toComplex z) - toComplex (output N tr)‖ ≤ (error z a b N tr : ℝ) := by
  obtain ⟨ha, hab, hN, hz, _hlen, hs, hacc⟩ := (check_iff_valid z a b N tr).mp h
  have hq := quadrature_samples_error tr.samples ha hab hN hz hs
  have ht := RationalFiniteSum.check_sound hacc
  simp only [length_terms] at ht
  let Q : ℂ := ∑ i ∈ Finset.range N, toComplex (RationalFiniteSum.termAt (terms a b N tr.samples) i)
  calc
    _ = ‖(kernel (a : ℝ) (b : ℝ) (toComplex z) - Q) + (Q - toComplex (output N tr))‖ := by
      congr 1; abel
    _ ≤ ‖kernel (a : ℝ) (b : ℝ) (toComplex z) - Q‖ + ‖Q - toComplex (output N tr)‖ := norm_add_le _ _
    _ ≤ (error z a b N tr : ℝ) := by
      simpa only [error, Rat.cast_add, output] using add_le_add hq ht

theorem checkWithin_sound {z : Coordinates} {a b ε : ℚ} {N : ℕ} {tr : Trace}
    (h : checkWithin z a b N tr ε = true) :
    ‖kernel (a : ℝ) (b : ℝ) (toComplex z) - toComplex (output N tr)‖ ≤ (ε : ℝ) := by
  have hp : check z a b N tr = true ∧ (0 ≤ ε ∧ error z a b N tr ≤ ε) := by
    simpa only [checkWithin, Bool.and_eq_true, decide_eq_true_eq] using h
  exact (check_sound hp.1).trans (by exact_mod_cast hp.2.2)

/-- Checks of a prefix or final record alone cannot satisfy the full shape obligation. -/
theorem checked_lengths {z : Coordinates} {a b : ℚ} {N : ℕ} {tr : Trace}
    (h : check z a b N tr = true) :
    tr.samples.length = N ∧ tr.accumulation.values.length = N + 1 ∧ tr.accumulation.radii.length = N := by
  obtain ⟨_, _, _, _, hlen, _, hacc⟩ := (check_iff_valid z a b N tr).mp h
  exact ⟨hlen, by simpa only [length_terms] using RationalFiniteSum.checked_lengths hacc⟩

/-- This is a floor on this checker's allowance, not on the actual approximation error. -/
theorem checked_mesh_charge_le {z : Coordinates} {a b ε : ℚ} {N : ℕ} {tr : Trace}
    (h : checkWithin z a b N tr ε = true) : meshError z a b N ≤ ε := by
  have hp : check z a b N tr = true ∧ (0 ≤ ε ∧ error z a b N tr ≤ ε) := by
    simpa only [checkWithin, Bool.and_eq_true, decide_eq_true_eq] using h
  obtain ⟨_, hab, _, _, _, hs, hacc⟩ := (check_iff_valid z a b N tr).mp hp.1
  have hsb : 0 ≤ sampleBudget z a b N tr.samples := by
    apply Finset.sum_nonneg
    intro i hi
    have hn := (norm_nonneg _).trans (RationalMellinNode.check_sound (hs i hi))
    have he : 0 ≤ sampleError z a b N tr.samples i := by exact_mod_cast hn
    exact mul_nonneg (cellWidth_nonneg hab N) he
  have har := RationalFiniteSum.checked_radius_nonneg hacc
  have he := hp.2.2
  unfold error at he
  linarith

/-- A complete reference record derived from a resolution at each exact node. -/
def referenceSamples (z : Coordinates) (a b : ℚ) (N : ℕ)
    (p : ℕ → RationalMellinNode.Resolution) : List Sample :=
  (List.range N).map (fun i => ⟨p i, RationalMellinNode.exactTrace z (node a b N i) (p i)⟩)

def referenceTrace (z : Coordinates) (a b : ℚ) (N : ℕ)
    (p : ℕ → RationalMellinNode.Resolution) : Trace :=
  let samples := referenceSamples z a b N p
  ⟨samples, RationalFiniteSum.exactTrace (terms a b N samples)⟩

theorem referenceSampleAt (z : Coordinates) (a b : ℚ) (N : ℕ)
    (p : ℕ → RationalMellinNode.Resolution) (i : ℕ) (hi : i < N) :
    sampleAt (referenceSamples z a b N p) i =
      ⟨p i, RationalMellinNode.exactTrace z (node a b N i) (p i)⟩ := by
  unfold sampleAt referenceSamples
  rw [List.getD_eq_getElem _ _ (by simpa using hi)]
  simp

/-- Nonvacuity on every admissible uniform mesh; no accepted witness is assumed. -/
theorem reference_checked {z : Coordinates} {a b : ℚ} {N : ℕ}
    (ha : 1 < a) (hab : a ≤ b) (hN : 0 < N) (hz : z.1 ≤ 1)
    (p : ℕ → RationalMellinNode.Resolution)
    (hl : ∀ i < N, RationalLogEnclosure.validScale (node a b N i)
      (p i).logScale (p i).logTwoCells (p i).mantissaCells = true)
    (hg : ∀ i < N, (RationalMellinNode.exponentBound z (node a b N i) (p i) /
      (2 ^ (p i).expScale : ℕ)) / ((p i).terms + 1 : ℕ) ≤ (1 / 2 : ℚ)) :
    check z a b N (referenceTrace z a b N p) = true := by
  apply (check_iff_valid z a b N _).mpr
  refine ⟨ha, hab, hN, hz, by simp [referenceTrace, referenceSamples], ?_, ?_⟩
  · intro i hi
    change RationalMellinNode.check z (node a b N i)
      (sampleAt (referenceSamples z a b N p) i).resolution
      (sampleAt (referenceSamples z a b N p) i).trace = true
    rw [referenceSampleAt z a b N p i (Finset.mem_range.mp hi)]
    exact RationalMellinNode.exactTrace_checked hz (hl i (Finset.mem_range.mp hi))
      (hg i (Finset.mem_range.mp hi))
  · exact RationalFiniteSum.exactTrace_checked _

end GRWTSK.Analysis.ComplexAnalysis.RationalMellinQuadrature
