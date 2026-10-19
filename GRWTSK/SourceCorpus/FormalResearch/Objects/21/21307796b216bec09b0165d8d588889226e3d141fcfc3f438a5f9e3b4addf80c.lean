module

public meta import Surface.Core.Classification
public import Surface.Core.CyclicHolonomy
import Mathlib.Tactic

/-!
# Input-indexed words of fiber automorphisms

This module separates an externally indexed stream of invertible linear maps
from the geometric transport supplied by `CyclicFiberHop.StepSystem`.  An
input sequence chooses a finite-cover phase at each natural-number index, and
the selected map is appended to a chronological transport word.

The order is deliberate: `streamTransport ... N` applies input step `0`
first, then step `1`, and so on through step `N - 1`.  In Lean's
`LinearEquiv.trans` notation this means the accumulated prefix occurs on the
left and the newly selected map on the right.

Despite the optional compatibility alias `braidedStream`, an arbitrary map
`CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3` is only a family of elements of
`GL(Fiber3)`.  It is not by itself a braid-group representation.  Likewise,
an arbitrary input word is not geometric monodromy: that term is reserved for
transport along a closed base path.  A stream acquires such an interpretation
only after additional endpoint/adjacency data prove that its selected phases
describe a closed path.
-/

public section

namespace Surface.Core.CyclicStream

open Surface.Core.CyclicFiberHop
open Surface.Core.CyclicHolonomy

noncomputable section

variable {h : ℕ+}

/-! ## Authoritative data -/

/-- Select the fiber automorphism specified by a stream of exact cover phases. -/
@[expose]
def phaseStepStream (phases : ℕ → CoverPhase h)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) :
    ℕ → Fiber3 ≃ₗ[ℝ] Fiber3 :=
  fun n ↦ stepMap (phases n)

/--
Select the fiber automorphism at input index `n` by reducing `input n` to the
finite phase cover.  This is the natural-number serialization wrapper around
the exact phase-stream core `phaseStepStream`.
-/
@[expose]
def indexedStepStream (input : ℕ → ℕ) (h : ℕ+)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) :
    ℕ → Fiber3 ≃ₗ[ℝ] Fiber3 :=
  phaseStepStream (fun n ↦ (input n : CoverPhase h)) stepMap

/--
Compatibility name for the proposed input-driven sequence.

The name records the intended application only.  No braid relation is
assumed or proved for an arbitrary `stepMap`, so values of this function
should be read as an input-indexed word in `GL(Fiber3)` unless separate braid
relations are supplied.
-/
abbrev braidedStream (input : ℕ → ℕ) (h : ℕ+)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) :
    ℕ → Fiber3 ≃ₗ[ℝ] Fiber3 :=
  indexedStepStream input h stepMap

/-! ## Exact theorems -/

@[surface_novel, surface_published, simp]
theorem braidedStream_apply (input : ℕ → ℕ)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) (n : ℕ) :
    braidedStream input h stepMap n = stepMap (input n : CoverPhase h) :=
  rfl

/--
Only the residue of each external input modulo the cover length selects a
map; the input magnitude itself contributes no additional winding.
-/
@[surface_novel, surface_published]
theorem braidedStream_mod_cycle_apply (input : ℕ → ℕ)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) (n : ℕ) :
    braidedStream (fun k ↦ input k % cycleLength h) h stepMap n =
      braidedStream input h stepMap n := by
  unfold braidedStream indexedStepStream phaseStepStream
  congr 1
  simpa [advance] using advance_mod_cycle h (0 : CoverPhase h) (input n)

/-! ## Derived maps or views -/

/-- Shift an exact phase stream past its first `offset` entries. -/
@[expose]
def shiftPhaseStream (phases : ℕ → CoverPhase h) (offset : ℕ) :
    ℕ → CoverPhase h :=
  fun n ↦ phases (offset + n)

/-- Shift an external input stream past its first `offset` entries. -/
@[expose]
def shiftInput (input : ℕ → ℕ) (offset : ℕ) : ℕ → ℕ :=
  fun n ↦ input (offset + n)

/--
Chronological transport through the first `N` maps selected by an exact phase
stream.  Phase step zero acts first; the map selected at `N` is appended after
the preceding prefix.
-/
@[expose]
def phaseStreamTransport (phases : ℕ → CoverPhase h)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) :
    ℕ → Fiber3 ≃ₗ[ℝ] Fiber3
  | 0 => LinearEquiv.refl ℝ Fiber3
  | N + 1 =>
      (phaseStreamTransport phases stepMap N).trans
        (phaseStepStream phases stepMap N)

/--
Natural-number serialization wrapper for chronological phase-stream
transport.  Each input is reduced modulo the cover cardinality before its map
is selected.
-/
@[expose]
def streamTransport (input : ℕ → ℕ) (h : ℕ+)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) (N : ℕ) :
    Fiber3 ≃ₗ[ℝ] Fiber3 :=
  phaseStreamTransport (fun n ↦ (input n : CoverPhase h)) stepMap N

@[surface_novel, surface_published, simp]
theorem phaseStreamTransport_zero (phases : ℕ → CoverPhase h)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) :
    phaseStreamTransport phases stepMap 0 = LinearEquiv.refl ℝ Fiber3 :=
  rfl

@[surface_novel, surface_published, simp]
theorem phaseStreamTransport_succ (phases : ℕ → CoverPhase h)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) (N : ℕ) :
    phaseStreamTransport phases stepMap (N + 1) =
      (phaseStreamTransport phases stepMap N).trans
        (phaseStepStream phases stepMap N) :=
  rfl

@[surface_novel, surface_published, simp]
theorem streamTransport_zero (input : ℕ → ℕ)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) :
    streamTransport input h stepMap 0 = LinearEquiv.refl ℝ Fiber3 :=
  rfl

@[surface_novel, surface_published, simp]
theorem streamTransport_succ (input : ℕ → ℕ)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) (N : ℕ) :
    streamTransport input h stepMap (N + 1) =
      (streamTransport input h stepMap N).trans
        (indexedStepStream input h stepMap N) :=
  rfl

/--
An explicit two-step witness for the chronological convention: input zero
acts on the vector first and input one acts on that result.
-/
@[surface_novel, surface_published, simp]
theorem streamTransport_two_apply (input : ℕ → ℕ)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) (x : Fiber3) :
    streamTransport input h stepMap 2 x =
      indexedStepStream input h stepMap 1
        (indexedStepStream input h stepMap 0 x) :=
  rfl

/--
The recurrence written with the newest map on the left of `.trans`.  Because
`f.trans g` applies `f` and then `g`, the newly selected map acts on the fiber
first and the accumulated earlier prefix acts afterward.  This is retained as
an exact compatibility form of the proposed recurrence, but it is deliberately
not the canonical chronological `streamTransport`.
-/
@[expose]
def reverseStreamTransport (input : ℕ → ℕ) (h : ℕ+)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) :
    ℕ → Fiber3 ≃ₗ[ℝ] Fiber3
  | 0 => LinearEquiv.refl ℝ Fiber3
  | N + 1 =>
      (indexedStepStream input h stepMap N).trans
        (reverseStreamTransport input h stepMap N)

@[surface_novel, surface_published, simp]
theorem reverseStreamTransport_zero (input : ℕ → ℕ)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) :
    reverseStreamTransport input h stepMap 0 =
      LinearEquiv.refl ℝ Fiber3 :=
  rfl

@[surface_novel, surface_published, simp]
theorem reverseStreamTransport_succ (input : ℕ → ℕ)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) (N : ℕ) :
    reverseStreamTransport input h stepMap (N + 1) =
      (indexedStepStream input h stepMap N).trans
        (reverseStreamTransport input h stepMap N) :=
  rfl

/--
The corresponding two-step order witness: input one acts first and input zero
acts second.
-/
@[surface_novel, surface_published, simp]
theorem reverseStreamTransport_two_apply (input : ℕ → ℕ)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) (x : Fiber3) :
    reverseStreamTransport input h stepMap 2 x =
      indexedStepStream input h stepMap 0
        (indexedStepStream input h stepMap 1 x) :=
  rfl

@[surface_novel, surface_published, simp]
theorem shiftPhaseStream_zero (phases : ℕ → CoverPhase h) :
    shiftPhaseStream phases 0 = phases := by
  funext n
  simp [shiftPhaseStream]

@[surface_novel, surface_published]
theorem shiftPhaseStream_add (phases : ℕ → CoverPhase h) (m n : ℕ) :
    shiftPhaseStream (shiftPhaseStream phases m) n =
      shiftPhaseStream phases (m + n) := by
  funext k
  simp [shiftPhaseStream, Nat.add_assoc]

@[surface_novel, surface_published, simp]
theorem shiftInput_zero (input : ℕ → ℕ) :
    shiftInput input 0 = input := by
  funext n
  simp [shiftInput]

@[surface_novel, surface_published]
theorem shiftInput_add (input : ℕ → ℕ) (m n : ℕ) :
    shiftInput (shiftInput input m) n = shiftInput input (m + n) := by
  funext k
  simp [shiftInput, Nat.add_assoc]

/-- Exact phase-stream transport splits into a prefix and its shifted suffix. -/
@[surface_novel, surface_published]
theorem phaseStreamTransport_add (phases : ℕ → CoverPhase h)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) (m n : ℕ) :
    phaseStreamTransport phases stepMap (m + n) =
      (phaseStreamTransport phases stepMap m).trans
        (phaseStreamTransport (shiftPhaseStream phases m) stepMap n) := by
  induction n with
  | zero =>
      simp
  | succ n ih =>
      rw [Nat.add_succ, phaseStreamTransport_succ, ih,
        phaseStreamTransport_succ, LinearEquiv.trans_assoc]
      rfl

/--
The transport of a concatenated prefix is the first chronological word
followed by the transport of the shifted suffix.
-/
@[surface_novel, surface_published]
theorem streamTransport_add (input : ℕ → ℕ)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) (m n : ℕ) :
    streamTransport input h stepMap (m + n) =
      (streamTransport input h stepMap m).trans
        (streamTransport (shiftInput input m) h stepMap n) := by
  induction n with
  | zero =>
      simp
  | succ n ih =>
      rw [Nat.add_succ, streamTransport_succ, ih,
        streamTransport_succ, LinearEquiv.trans_assoc]
      rfl

/--
The exact successor phase stream starts at `p` and follows the deterministic
cover path used by `StepSystem.forwardProduct`.
-/
@[expose]
def successorPhaseStream (h : ℕ+) (p : CoverPhase h) :
    ℕ → CoverPhase h :=
  fun n ↦ advance h p n

/--
On the deterministic successor path, chronological stream transport is
exactly the original `StepSystem.forwardProduct`; the stream layer therefore
extends rather than changes the geometric cover transport.
-/
@[surface_novel, surface_published]
theorem phaseStreamTransport_successor_eq_forwardProduct
    (system : StepSystem h) (p : CoverPhase h) (N : ℕ) :
    phaseStreamTransport (successorPhaseStream h p) system.step N =
      system.forwardProduct p N := by
  induction N with
  | zero =>
      rfl
  | succ N ih =>
      rw [phaseStreamTransport_succ, ih]
      change
        (system.forwardProduct p N).trans (system.step (advance h p N)) =
          system.forwardProduct p (N + 1)
      rw [← Surface.Core.CyclicHolonomy.StepSystem.forwardProduct_one
        system (advance h p N)]
      exact
        (Surface.Core.CyclicHolonomy.StepSystem.forwardProduct_add
          system p N 1).symm

/--
Only the complete deterministic successor circuit is identified with the
geometric monodromy.  Arbitrary stream prefixes remain transport words.
-/
@[surface_novel, surface_published]
theorem phaseStreamTransport_successor_cycle_eq_monodromy
    (system : StepSystem h) (p : CoverPhase h) :
    phaseStreamTransport (successorPhaseStream h p) system.step
        (cycleLength h) =
      Surface.Core.CyclicHolonomy.StepSystem.monodromy system p := by
  rw [phaseStreamTransport_successor_eq_forwardProduct]
  rfl

/-- Every finite stream transport is invertible, hence bijective on the fiber. -/
@[surface_novel, surface_published]
theorem streamTransport_bijective (input : ℕ → ℕ)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) (N : ℕ) :
    Function.Bijective (streamTransport input h stepMap N) :=
  (streamTransport input h stepMap N).bijective

/-- Exact phase-stream transports are likewise bijective. -/
@[surface_novel, surface_published]
theorem phaseStreamTransport_bijective (phases : ℕ → CoverPhase h)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) (N : ℕ) :
    Function.Bijective (phaseStreamTransport phases stepMap N) :=
  (phaseStreamTransport phases stepMap N).bijective

/-- Every map selected by the external input stream lies in `G`. -/
@[expose]
def StreamInSubgroup (input : ℕ → ℕ) (h : ℕ+)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3)
    (G : Subgroup (Fiber3 ≃ₗ[ℝ] Fiber3)) : Prop :=
  ∀ n, indexedStepStream input h stepMap n ∈ G

/-- Subgroup containment is preserved by every finite chronological word. -/
@[surface_novel, surface_published]
theorem streamTransport_mem_subgroup (input : ℕ → ℕ)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3)
    (G : Subgroup (Fiber3 ≃ₗ[ℝ] Fiber3))
    (hG : StreamInSubgroup input h stepMap G) (N : ℕ) :
    streamTransport input h stepMap N ∈ G := by
  induction N with
  | zero =>
      exact G.one_mem
  | succ N ih =>
      rw [streamTransport_succ, ← LinearEquiv.mul_eq_trans]
      exact G.mul_mem (hG N) ih

/--
A stronger phasewise structure-group reduction implies containment for every
possible external input sequence.
-/
@[surface_novel, surface_published]
theorem streamTransport_mem_subgroup_of_phasewise
    (input : ℕ → ℕ)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3)
    (G : Subgroup (Fiber3 ≃ₗ[ℝ] Fiber3))
    (hG : ∀ p, stepMap p ∈ G) (N : ℕ) :
    streamTransport input h stepMap N ∈ G := by
  apply streamTransport_mem_subgroup input stepMap G (N := N)
  intro n
  exact hG (input n : CoverPhase h)

/-! ## Generic payload-preserving stream views

The chronological fiber word acts only on `Fiber3`.  The following ordinary
equivalences carry an arbitrary payload unchanged; they do not interpret an
external word as a closed path or as geometric monodromy.
-/

/-- Carry a payload through an exact phase-indexed chronological word. -/
@[expose]
def phaseStreamTransportWithPayload {Payload : Type*}
    (phases : ℕ → CoverPhase h)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) (N : ℕ) :
    Fiber3 × Payload ≃ Fiber3 × Payload :=
  LinearEquiv.withPayload (Payload := Payload)
    (phaseStreamTransport phases stepMap N)

/-- Carry a payload through the natural-number indexed compatibility word. -/
@[expose]
def streamTransportWithPayload {Payload : Type*}
    (input : ℕ → ℕ) (h : ℕ+)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) (N : ℕ) :
    Fiber3 × Payload ≃ Fiber3 × Payload :=
  LinearEquiv.withPayload (Payload := Payload)
    (streamTransport input h stepMap N)

@[surface_novel, surface_published]
theorem phaseStreamTransportWithPayload_preserves_payload
    {Payload : Type*} (phases : ℕ → CoverPhase h)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) (N : ℕ)
    (value : Fiber3 × Payload) :
    (phaseStreamTransportWithPayload phases stepMap N value).2 = value.2 :=
  rfl

@[surface_novel, surface_published]
theorem streamTransportWithPayload_preserves_payload
    {Payload : Type*} (input : ℕ → ℕ) (h : ℕ+)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3) (N : ℕ)
    (value : Fiber3 × Payload) :
    (streamTransportWithPayload input h stepMap N value).2 = value.2 :=
  rfl

/-! ## Authority boundary / non-claims

Payload preservation says nothing about graph reachability, braid relations,
or closed-path monodromy.  Those require their own explicit hypotheses.
-/

end

end Surface.Core.CyclicStream
