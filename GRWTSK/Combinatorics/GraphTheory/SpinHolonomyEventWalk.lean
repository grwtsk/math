/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.SpinCutEnergy
import GRWTSK.Combinatorics.GraphTheory.DirectedGraphEdgeTrace
import Mathlib.Tactic

/-!
# Ising spin gauge, typed event walks, two-sheet lifts, and signed walk sums

The event carrier is the EXISTING lossless Quiver TotalEdge: actual arrow
identity, source, target, chronology and parallel-edge distinctions survive.
The original SpinCutEnergy.spin is reused on the real Ising specialization.

The finite theorems prove:
* spin-gauge telescoping on a valid chronological event trace;
* unchanged holonomy around a closed trace;
* the exact bit-parity/two-sheet return and odd-loop spin frustration;
* the difference between finite untwisted and twisted walk inventories is
  twice their odd-holonomy weight, without discarding any selected occurrence;
* a conditional matrix-trace consumer with BOTH exact inventory equalities.

Nothing constructs a complete arithmetic event inventory, identifies the
finite walk trace with the Weil operator, or proves Möbius cancellation, RH,
Dirichlet GRH or a Chern connection. Matrix and walk inventory equality are
separate mathematical premises, NOT inferred from graph-like notation.

Finite graph and gauge telescoping are classical elementary identities.
No independent mathematical or Lean kernel review has been run.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyEventWalk

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace

variable {V : Type*} [Quiver V]
abbrev Event (V : Type*) [Quiver V] := TotalEdge V

/-! A completely tagged edge keeps its full arrow in the underlying Sigma. -/
def eventSource (e : Event V) : V := e.1
def eventTarget (e : Event V) : V := e.2.1

section MultiplicativeWalk
variable {R : Type*} [CommRing R]

/-- Original ordered occurrences are multiplied, never replaced by a set of
vertices or by a collection of unbased/unoriented cycles. -/
def walkWeight (W : Event V → R) (events : List (Event V)) : R :=
  (events.map W).prod

@[simp] theorem walkWeight_nil (W : Event V → R) :
    walkWeight W [] = 1 := by simp [walkWeight]

@[simp] theorem walkWeight_cons (W : Event V → R)
    (e : Event V) (tail : List (Event V)) :
    walkWeight W (e :: tail) = W e * walkWeight W tail := by
  simp [walkWeight]

theorem walkWeight_mul (W Z : Event V → R)
    (events : List (Event V)) :
    walkWeight (fun e => W e * Z e) events =
      walkWeight W events * walkWeight Z events := by
  induction events with
  | nil => simp
  | cons e tail ih =>
      simp only [walkWeight_cons]
      rw [ih]
      ring

/-- A vertex-dependent Z/2 spin. It coincides definitionally with the
repository's Boolean Ising spin when R is the real numbers. -/
def isingSign (σ : V → Bool) (v : V) : R :=
  if σ v then 1 else -1

@[simp] theorem isingSign_sq (σ : V → Bool) (v : V) :
    isingSign (R := R) σ v * isingSign (R := R) σ v = 1 := by
  cases h : σ v <;> simp [isingSign, h]

theorem isingSign_real_eq_sourceSpin (σ : V → Bool) (v : V) :
    isingSign (R := ℝ) σ v = spin (σ v) := by
  cases h : σ v <;> simp [isingSign, spin, h]

/-- Gauge-conjugated edge weight; the two endpoint factors must not be
applied to an unoriented edge without its original endpoints. -/
def spinGaugedEdge (W : Event V → R) (σ : V → Bool)
    (e : Event V) : R :=
  isingSign (R := R) σ e.1 * W e *
    isingSign (R := R) σ e.2.1

/-- A VALID chronological trace, not an arbitrary list of unrelated edges. -/
theorem valid_walk_gauge_telescope
    (W : Event V → R) (σ : V → Bool)
    (root : V) (events : List (Event V))
    (hvalid : ValidFrom root events) :
    walkWeight (spinGaugedEdge W σ) events =
      isingSign (R := R) σ root *
        walkWeight W events *
          isingSign (R := R) σ (finish root events) := by
  induction events generalizing root with
  | nil =>
      change (1 : R) =
        isingSign (R := R) σ root * 1 *
          isingSign (R := R) σ root
      simpa only [mul_one] using
        (isingSign_sq (R := R) σ root).symm
  | cons e tail ih =>
      rcases hvalid with ⟨hsource, htail⟩
      have ht := ih e.2.1 htail
      calc
        walkWeight (spinGaugedEdge W σ) (e :: tail) =
            (isingSign (R := R) σ e.1 * W e *
              isingSign (R := R) σ e.2.1) *
              walkWeight (spinGaugedEdge W σ) tail := by
                simp [spinGaugedEdge]
        _ = (isingSign (R := R) σ e.1 * W e *
              isingSign (R := R) σ e.2.1) *
              (isingSign (R := R) σ e.2.1 * walkWeight W tail *
                isingSign (R := R) σ (finish e.2.1 tail)) := by rw [ht]
        _ = isingSign (R := R) σ root *
              walkWeight W (e :: tail) *
                isingSign (R := R) σ (finish root (e :: tail)) := by
            rw [← hsource]
            simp only [walkWeight_cons]
            change
              (isingSign (R := R) σ e.1 * W e *
                isingSign (R := R) σ e.2.1) *
                (isingSign (R := R) σ e.2.1 * walkWeight W tail *
                  isingSign (R := R) σ (finish e.2.1 tail)) =
                isingSign (R := R) σ e.1 *
                  (W e * walkWeight W tail) *
                    isingSign (R := R) σ (finish e.2.1 tail)
            calc
              _ = (isingSign (R := R) σ e.2.1 *
                    isingSign (R := R) σ e.2.1) *
                    (isingSign (R := R) σ e.1 *
                      (W e * walkWeight W tail) *
                        isingSign (R := R) σ (finish e.2.1 tail)) := by ring
              _ = _ := by
                rw [isingSign_sq]
                simp

/-- A closed event walk cannot change its holonomy by vertex spin flips. -/
theorem closed_walk_spin_gauge_invariant
    (W : Event V → R) (σ : V → Bool)
    (root : V) (events : List (Event V))
    (hvalid : ValidFrom root events)
    (hclosed : finish root events = root) :
    walkWeight (spinGaugedEdge W σ) events =
      walkWeight W events := by
  have h := valid_walk_gauge_telescope W σ root events hvalid
  rw [hclosed] at h
  calc
    walkWeight (spinGaugedEdge W σ) events =
      isingSign (R := R) σ root * walkWeight W events *
        isingSign (R := R) σ root := h
    _ = (isingSign (R := R) σ root *
          isingSign (R := R) σ root) * walkWeight W events := by ring
    _ = walkWeight W events := by rw [isingSign_sq]; simp

/-- The bit true represents the nontrivial negative real/unit phase. -/
def bitSign (R : Type*) [CommRing R] (b : Bool) : R :=
  if b then -1 else 1

@[simp] theorem bitSign_false : bitSign R false = 1 := rfl
@[simp] theorem bitSign_true : bitSign R true = -1 := rfl

theorem bitSign_xor (a b : Bool) :
    bitSign R (a.xor b) = bitSign R a * bitSign R b := by
  cases a <;> cases b <;> simp [bitSign, Bool.xor]

/-- XOR is accumulated in chronological edge order. -/
def walkParity (phase : Event V → Bool) : List (Event V) → Bool
  | [] => false
  | e :: tail => (phase e).xor (walkParity phase tail)

theorem walkWeight_phase (phase : Event V → Bool)
    (events : List (Event V)) :
    walkWeight (fun e => bitSign R (phase e)) events =
      bitSign R (walkParity phase events) := by
  induction events with
  | nil => simp [walkParity]
  | cons e tail ih =>
      rw [walkWeight_cons, ih]
      simp [walkParity, bitSign_xor]

/-- Two-sheet lift of a path: false and true are distinguished sheets.
A base-closed walk need not close in this lift. -/
def sheetFinish (phase : Event V → Bool)
    (start : Bool) (events : List (Event V)) : Bool :=
  start.xor (walkParity phase events)

theorem odd_walk_changes_sheet (phase : Event V → Bool)
    (events : List (Event V))
    (hodd : walkParity phase events = true) :
    sheetFinish phase false events = true := by
  simp [sheetFinish, hodd]

theorem traversing_twice_restores_sheet (phase : Event V → Bool)
    (start : Bool) (events : List (Event V)) :
    sheetFinish phase (sheetFinish phase start events) events = start := by
  cases hs : start <;> cases hp : walkParity phase events <;>
    simp [sheetFinish, hs, hp]

end MultiplicativeWalk

section RealSignedInventories

/-- Full weighted event edge; every occurrence has its own real coefficient. -/
def signedEventEdge (W : Event V → ℝ) (phase : Event V → Bool)
    (e : Event V) : ℝ := W e * bitSign ℝ (phase e)

theorem signedWalk_eq_parity (W : Event V → ℝ)
    (phase : Event V → Bool) (events : List (Event V)) :
    walkWeight (signedEventEdge W phase) events =
      walkWeight W events * bitSign ℝ (walkParity phase events) := by
  rw [show signedEventEdge W phase =
      (fun e => W e * bitSign ℝ (phase e)) from rfl]
  rw [walkWeight_mul, walkWeight_phase]

/-- Ordinary finite event inventory, with repeated and parallel arrows
counted only when explicitly present in the supplied Finset. -/
def finiteWalkSum (walks : Finset (List (Event V)))
    (W : Event V → ℝ) : ℝ :=
  ∑ events ∈ walks, walkWeight W events

def oddWalkSum (walks : Finset (List (Event V)))
    (W : Event V → ℝ) (phase : Event V → Bool) : ℝ :=
  ∑ events ∈ walks,
    if walkParity phase events = true then walkWeight W events else 0

/-- The complete signed/untwisted difference counts EXACTLY the odd
holonomy walks, with an unhidden factor two. No probabilistic hypothesis. -/
theorem finiteWalkSum_sub_signed
    (walks : Finset (List (Event V)))
    (W : Event V → ℝ) (phase : Event V → Bool) :
    finiteWalkSum walks W -
      finiteWalkSum walks (signedEventEdge W phase) =
        2 * oddWalkSum walks W phase := by
  have hterm (p : List (Event V)) :
      walkWeight W p - walkWeight (signedEventEdge W phase) p =
        2 * (if walkParity phase p = true then walkWeight W p else 0) := by
    rw [signedWalk_eq_parity]
    cases hp : walkParity phase p <;>
      simp [hp, bitSign] <;> ring
  calc
    finiteWalkSum walks W -
        finiteWalkSum walks (signedEventEdge W phase) =
      ∑ p ∈ walks,
        (walkWeight W p - walkWeight (signedEventEdge W phase) p) := by
          simp [finiteWalkSum, Finset.sum_sub_distrib]
    _ = ∑ p ∈ walks,
          2 * (if walkParity phase p = true then walkWeight W p else 0) := by
          apply Finset.sum_congr rfl
          intro p hp
          exact hterm p
    _ = 2 * oddWalkSum walks W phase := by
          simp [oddWalkSum, Finset.mul_sum]

theorem walkWeight_nonneg (W : Event V → ℝ) (hw : ∀ e, 0 ≤ W e) :
    ∀ events : List (Event V), 0 ≤ walkWeight W events
  | [] => by simp
  | e :: tail => by
      rw [walkWeight_cons]
      exact mul_nonneg (hw e) (walkWeight_nonneg W hw tail)

theorem oddWalkSum_nonneg
    (walks : Finset (List (Event V)))
    (W : Event V → ℝ) (phase : Event V → Bool)
    (hw : ∀ e, 0 ≤ W e) :
    0 ≤ oddWalkSum walks W phase := by
  unfold oddWalkSum
  apply Finset.sum_nonneg
  intro p hp
  by_cases h : walkParity phase p = true
  · simpa [h] using walkWeight_nonneg W hw p
  · simp [h]

/-- In a finite fully enumerated walk inventory, twisted returns can only
decrease the ordinary real sum if every edge weight is nonnegative. -/
theorem signed_walk_sum_le_plain
    (walks : Finset (List (Event V)))
    (W : Event V → ℝ) (phase : Event V → Bool)
    (hw : ∀ e, 0 ≤ W e) :
    finiteWalkSum walks (signedEventEdge W phase) ≤
      finiteWalkSum walks W := by
  have h := finiteWalkSum_sub_signed walks W phase
  have hnon := oddWalkSum_nonneg walks W phase hw
  linarith

/-- The source inventory equality on BOTH sides is an essential premise:
this theorem cannot make an arbitrary finite walk list equal a matrix power. -/
theorem matrix_trace_difference_of_complete_walk_inventory
    {V : Type*} [Fintype V] [DecidableEq V] [Quiver V]
    (plain twisted : Matrix V V ℝ) (k : ℕ)
    (walks : Finset (List (Event V)))
    (W : Event V → ℝ) (phase : Event V → Bool)
    (hplain : (plain ^ k).trace = finiteWalkSum walks W)
    (htwisted : (twisted ^ k).trace =
      finiteWalkSum walks (signedEventEdge W phase)) :
    (plain ^ k).trace - (twisted ^ k).trace =
      2 * oddWalkSum walks W phase := by
  rw [hplain, htwisted]
  exact finiteWalkSum_sub_signed walks W phase

end RealSignedInventories

section FrustratedLoops

/-- Every individual gauged Ising/bit edge is either +1 or -1. -/
theorem spin_gauged_bit_edge_cases
    (σ : V → Bool) (phase : Event V → Bool) (e : Event V) :
    spinGaugedEdge (fun f => bitSign ℝ (phase f)) σ e = 1 ∨
      spinGaugedEdge (fun f => bitSign ℝ (phase f)) σ e = -1 := by
  cases hs : σ e.1 <;> cases ht : σ e.2.1 <;>
    cases hp : phase e <;>
      simp [spinGaugedEdge, isingSign, bitSign, hs, ht, hp]

theorem walkWeight_one_of_every_edge_one (W : Event V → ℝ)
    (events : List (Event V))
    (hall : ∀ e ∈ events, W e = 1) :
    walkWeight W events = 1 := by
  induction events with
  | nil => simp
  | cons e tail ih =>
      have he : W e = 1 := hall e (by simp)
      have htail : ∀ f ∈ tail, W f = 1 := by
        intro f hf
        exact hall f (by simp [hf])
      rw [walkWeight_cons, he, ih htail]
      simp

/-- An odd-flux closed walk has a genuinely frustrated event for EVERY
vertex spin assignment; the event is a real original tagged arrow. -/
theorem odd_closed_walk_has_frustrated_event
    (σ : V → Bool) (phase : Event V → Bool)
    (root : V) (events : List (Event V))
    (hvalid : ValidFrom root events)
    (hclosed : finish root events = root)
    (hodd : walkParity phase events = true) :
    ∃ e ∈ events,
      spinGaugedEdge (fun f => bitSign ℝ (phase f)) σ e = -1 := by
  let W : Event V → ℝ :=
    spinGaugedEdge (fun f => bitSign ℝ (phase f)) σ
  have hneg : walkWeight W events = -1 := by
    change walkWeight
      (spinGaugedEdge (fun f => bitSign ℝ (phase f)) σ) events = -1
    rw [closed_walk_spin_gauge_invariant
      (fun f => bitSign ℝ (phase f)) σ root events hvalid hclosed]
    rw [walkWeight_phase, hodd]
    rfl
  by_contra hno
  have hall : ∀ e ∈ events, W e = 1 := by
    intro e he
    rcases spin_gauged_bit_edge_cases σ phase e with hone | hminus
    · exact hone
    · exact False.elim (hno ⟨e, he, hminus⟩)
  have hunit := walkWeight_one_of_every_edge_one W events hall
  rw [hunit] at hneg
  norm_num at hneg

end FrustratedLoops

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyEventWalk
