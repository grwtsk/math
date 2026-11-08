/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; AI-assisted Lean drafting.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.EdgeIndexedHolonomyDuality
import Mathlib.Tactic

/-!
# Exact forward adjoints for the complete two-sheet spin diffusion

The existing `SpinHolonomyFiniteDiffusion.EventDiffusion.liftStep` is
a BACKWARD expectation on observables: at (a,s), it reads each actual
outgoing tagged arrow e:a→b at sheet s xor phase(e). The present
`liftPush` is its FORWARD density adjoint: at (b,t), it gathers
the mass at (a,t xor phase(e)) from every original arrow e:a→b.
The xor inverse is an involution; no reversed graph arrow is assumed.

The entire two-sheet pairing, not only its even projection, is
preserved. The symmetric sector maps to the ordinary forward density
diffusion; the antisymmetric sector maps to a SIGNED forward operator
adjoint to the existing `signedStep`. The signed sector need not preserve
nonnegative functions or constant one. The full lift is nonnegative
and mass-conserving with the original source-row normalization.

The old `EventDiffusion` has no extra stationary probability. The
plain forward push equals `EdgeIndexedHolonomyDuality.asEdgeKernel.step`
on the SAME tagged arrows, with no alteration of weights or phase
labels. All path/holonomy claims remain on their existing typed
edge carriers; this finite two-sheet result is not a continuous-time
heat theorem or an arithmetic source-sign result.

Primary proof: interchange the finite source, target and sheet sums,
and substitute s ↦ s xor phase(e) in the two-element fiber. Alternative
check: even and odd projections separately recover the old
`plainStep` and `signedStep` as dual operators. Hostile boundary:
two parallel arrows can carry opposite signs while their aggregated
vertex weights agree. Neither the signed projection nor that aggregate
reconstructs the complete labeled history.

The source is a manually reviewed mathematical candidate; Lean
compilation, fresh kernel replay, axiom audit and independent
mathematical review remain NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyFullAdjoint

open Quiver
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyEventWalk
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyFiniteDiffusion
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.EdgeIndexedStochasticHolonomy
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.EdgeIndexedHolonomyDuality

universe u

variable {V : Type u} [Quiver V] [Fintype V] [DecidableEq V]
  [Fintype (Event V)]

/-- Push density forward along exact directed tagged arrows, retaining
the sheet permutation induced by each original edge phase. -/
def liftPush (D : EventDiffusion V) (mass : V × Bool → ℝ)
    (target : V × Bool) : ℝ :=
  ∑ e : Event V,
    if e.2.1 = target.1 then
      D.weight e * mass (e.1, target.2.xor (D.phase e)) else 0

/-- Plain forward transport obtained by forgetting only the sheet. -/
def plainPush (D : EventDiffusion V) (mass : V → ℝ) (b : V) : ℝ :=
  ∑ e : Event V,
    if e.2.1 = b then D.weight e * mass e.1 else 0

/-- Signed forward transport; NOT an order-preserving Markov kernel. -/
def signedPush (D : EventDiffusion V) (mass : V → ℝ) (b : V) : ℝ :=
  ∑ e : Event V,
    if e.2.1 = b then
      D.weight e * bitSign ℝ (D.phase e) * mass e.1 else 0

/-- The finite counting-measure pairing of sheet densities and observables. -/
def sheetPairing (mass observable : V × Bool → ℝ) : ℝ :=
  ∑ a : V, ∑ s : Bool, mass (a, s) * observable (a, s)

private theorem sum_target_ite (f : Event V → V → ℝ) :
    (∑ b : V, ∑ e : Event V,
      if e.2.1 = b then f e b else 0) =
      ∑ e : Event V, f e e.2.1 := by
  classical
  calc
    (∑ b : V, ∑ e : Event V,
        if e.2.1 = b then f e b else 0) =
      ∑ e : Event V, ∑ b : V,
        if e.2.1 = b then f e b else 0 := Finset.sum_comm
    _ = ∑ e : Event V, f e e.2.1 := by
      apply Finset.sum_congr rfl
      intro e _
      simp

private theorem sum_source_ite (f : Event V → V → ℝ) :
    (∑ a : V, ∑ e : Event V,
      if e.1 = a then f e a else 0) =
      ∑ e : Event V, f e e.1 := by
  classical
  calc
    (∑ a : V, ∑ e : Event V,
        if e.1 = a then f e a else 0) =
      ∑ e : Event V, ∑ a : V,
        if e.1 = a then f e a else 0 := Finset.sum_comm
    _ = ∑ e : Event V, f e e.1 := by
      apply Finset.sum_congr rfl
      intro e _
      simp

/-- The sheet swap is an involution, including for negative-phase
arrows. This is the only sheet reindexing used in the adjoint proof. -/
private theorem sum_xor_pair (phase : Bool) (f g : Bool → ℝ) :
    (∑ s : Bool, f (s.xor phase) * g s) =
      ∑ s : Bool, f s * g (s.xor phase) := by
  cases phase <;> simp [Fintype.sum_bool, Bool.xor, add_comm]

/-- FULL two-sheet adjointness, before either symmetry projection.
No vertex-level aggregation or sign erasure is used. -/
theorem liftPush_liftStep_adjoint (D : EventDiffusion V)
    (mass observable : V × Bool → ℝ) :
    sheetPairing (liftPush D mass) observable =
      sheetPairing mass (D.liftStep observable) := by
  classical
  have hleft :
      sheetPairing (liftPush D mass) observable =
        ∑ e : Event V, ∑ s : Bool,
          D.weight e *
            mass (e.1, s.xor (D.phase e)) * observable (e.2.1, s) := by
    change
      (∑ b : V, ∑ s : Bool,
        (∑ e : Event V, if e.2.1 = b then
          D.weight e * mass (e.1, s.xor (D.phase e)) else 0) *
            observable (b, s)) = _
    calc
      _ = ∑ b : V, ∑ s : Bool, ∑ e : Event V,
            if e.2.1 = b then
              (D.weight e * mass (e.1, s.xor (D.phase e))) *
                observable (b, s) else 0 := by
          simp only [Finset.sum_mul, ite_mul, zero_mul]
      _ = ∑ s : Bool, ∑ b : V, ∑ e : Event V,
            if e.2.1 = b then
              (D.weight e * mass (e.1, s.xor (D.phase e))) *
                observable (b, s) else 0 := Finset.sum_comm
      _ = ∑ s : Bool, ∑ e : Event V,
            (D.weight e * mass (e.1, s.xor (D.phase e))) *
              observable (e.2.1, s) := by
          apply Finset.sum_congr rfl
          intro s _
          exact sum_target_ite
            (fun e b => (D.weight e * mass (e.1, s.xor (D.phase e))) *
              observable (b, s))
      _ = ∑ e : Event V, ∑ s : Bool,
            D.weight e * mass (e.1, s.xor (D.phase e)) *
              observable (e.2.1, s) := Finset.sum_comm
  have hright :
      sheetPairing mass (D.liftStep observable) =
        ∑ e : Event V, ∑ s : Bool,
          D.weight e * mass (e.1, s) *
            observable (e.2.1, s.xor (D.phase e)) := by
    change
      (∑ a : V, ∑ s : Bool,
        mass (a, s) * (∑ e : Event V, if e.1 = a then
          D.weight e * observable (e.2.1, s.xor (D.phase e))
          else 0)) = _
    calc
      _ = ∑ a : V, ∑ s : Bool, ∑ e : Event V,
            if e.1 = a then
              mass (a, s) *
                (D.weight e * observable (e.2.1, s.xor (D.phase e)))
            else 0 := by
          simp only [Finset.mul_sum, mul_ite, mul_zero]
      _ = ∑ s : Bool, ∑ a : V, ∑ e : Event V,
            if e.1 = a then
              mass (a, s) *
                (D.weight e * observable (e.2.1, s.xor (D.phase e)))
            else 0 := Finset.sum_comm
      _ = ∑ s : Bool, ∑ e : Event V,
            mass (e.1, s) *
              (D.weight e * observable (e.2.1, s.xor (D.phase e))) := by
          apply Finset.sum_congr rfl
          intro s _
          exact sum_source_ite
            (fun e a => mass (a, s) *
              (D.weight e * observable (e.2.1, s.xor (D.phase e))))
      _ = ∑ e : Event V, ∑ s : Bool,
            D.weight e * mass (e.1, s) *
              observable (e.2.1, s.xor (D.phase e)) := by
          rw [Finset.sum_comm]
          apply Finset.sum_congr rfl
          intro e _
          apply Finset.sum_congr rfl
          intro s _
          ring
  calc
    sheetPairing (liftPush D mass) observable =
      ∑ e : Event V, ∑ s : Bool,
        D.weight e * mass (e.1, s.xor (D.phase e)) *
          observable (e.2.1, s) := hleft
    _ = ∑ e : Event V, ∑ s : Bool,
        D.weight e * mass (e.1, s) *
          observable (e.2.1, s.xor (D.phase e)) := by
          apply Finset.sum_congr rfl
          intro e _
          simpa only [Finset.mul_sum, mul_assoc] using
            congrArg (fun r : ℝ => D.weight e * r)
              (sum_xor_pair (D.phase e)
                (fun s => mass (e.1, s))
                (fun s => observable (e.2.1, s)))
    _ = sheetPairing mass (D.liftStep observable) := hright.symm

/-- Nonnegative sheet densities remain nonnegative when pushed forward. -/
theorem liftPush_nonneg (D : EventDiffusion V)
    (mass : V × Bool → ℝ) (hmass : ∀ z, 0 ≤ mass z)
    (target : V × Bool) : 0 ≤ liftPush D mass target := by
  unfold liftPush
  apply Finset.sum_nonneg
  intro e _
  split_ifs with h
  · exact mul_nonneg (D.weight_nonneg e) (hmass _)
  · exact le_refl _

/-- The forward lift conserves the sum of BOTH sheets; its proof is
paired with the existing backward constant-one law. -/
theorem liftPush_total (D : EventDiffusion V)
    (mass : V × Bool → ℝ) :
    (∑ a : V, ∑ s : Bool, liftPush D mass (a, s)) =
      ∑ a : V, ∑ s : Bool, mass (a, s) := by
  have h := liftPush_liftStep_adjoint D mass (fun _ => (1 : ℝ))
  rw [D.liftStep_one] at h
  simpa only [sheetPairing, mul_one] using h

/-- Exact forward even-sector restriction. -/
theorem liftPush_even (D : EventDiffusion V) (mass : V → ℝ) :
    liftPush D (evenLift mass) = evenLift (plainPush D mass) := by
  funext ⟨b, s⟩
  rfl

/-- Exact forward odd-sector restriction. The sign is retained, and
there is no conclusion that signedPush is nonnegative. -/
theorem liftPush_odd (D : EventDiffusion V) (mass : V → ℝ) :
    liftPush D (oddLift mass) = oddLift (signedPush D mass) := by
  funext ⟨b, s⟩
  change
    (∑ e : Event V, if e.2.1 = b then
      D.weight e * (bitSign ℝ (s.xor (D.phase e)) * mass e.1) else 0) =
      bitSign ℝ s * (∑ e : Event V, if e.2.1 = b then
        D.weight e * bitSign ℝ (D.phase e) * mass e.1 else 0)
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro e _
  by_cases hb : e.2.1 = b
  · simp only [if_pos hb, bitSign_xor] <;> ring
  · simp [hb]

/-- The full forward lift is linear, including all tagged edge summands. -/
theorem liftPush_add (D : EventDiffusion V)
    (mass other : V × Bool → ℝ) :
    liftPush D (mass + other) = liftPush D mass + liftPush D other := by
  funext ⟨b, s⟩
  change
    (∑ e : Event V, if e.2.1 = b then
      D.weight e *
        (mass (e.1, s.xor (D.phase e)) +
          other (e.1, s.xor (D.phase e))) else 0) =
      (∑ e : Event V, if e.2.1 = b then
        D.weight e * mass (e.1, s.xor (D.phase e)) else 0) +
      (∑ e : Event V, if e.2.1 = b then
        D.weight e * other (e.1, s.xor (D.phase e)) else 0)
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro e _
  by_cases hb : e.2.1 = b
  · simp [hb, mul_add]
  · simp [hb]

/-- Reconstruct the COMPLETE forward two-sheet result from both
sectors; the odd component is never erased as a side effect. -/
theorem liftPush_decompose (D : EventDiffusion V)
    (mass : V × Bool → ℝ) :
    liftPush D mass =
      evenLift (plainPush D (evenPart mass)) +
        oddLift (signedPush D (oddPart mass)) := by
  calc
    liftPush D mass = liftPush D (reconstruct mass) := by
      rw [reconstruct_eq]
    _ = liftPush D (evenLift (evenPart mass) + oddLift (oddPart mass)) := rfl
    _ = liftPush D (evenLift (evenPart mass)) +
          liftPush D (oddLift (oddPart mass)) := liftPush_add D _ _
    _ = evenLift (plainPush D (evenPart mass)) +
          oddLift (signedPush D (oddPart mass)) := by
        rw [liftPush_even, liftPush_odd]

/-- The odd lifts have pairing exactly twice the usual vertex pairing.
This identity keeps the non-Markov signed sector in the full adjoint. -/
theorem sheetPairing_odd (mass observable : V → ℝ) :
    sheetPairing (oddLift mass) (oddLift observable) =
      2 * pairing mass observable := by
  classical
  unfold sheetPairing pairing
  calc
    (∑ a : V, ∑ s : Bool,
      oddLift mass (a, s) * oddLift observable (a, s)) =
        ∑ a : V, 2 * (mass a * observable a) := by
          apply Finset.sum_congr rfl
          intro a _
          simp [Fintype.sum_bool, oddLift, bitSign] <;> ring
    _ = 2 * (∑ a : V, mass a * observable a) := by
      rw [Finset.mul_sum]

/-- EXACT adjointness of the signed forward operator and the existing
signed backward readout, with no false Markov-positivity consequence. -/
theorem signedPush_signedStep_adjoint (D : EventDiffusion V)
    (mass observable : V → ℝ) :
    pairing (signedPush D mass) observable =
      pairing mass (D.signedStep observable) := by
  have h := liftPush_liftStep_adjoint D
    (oddLift mass) (oddLift observable)
  rw [liftPush_odd, D.liftStep_odd] at h
  simp only [sheetPairing_odd] at h
  linarith

/-- The same two-sheet restriction also recovers the untwisted
plain-density/backward-expectation adjoint. -/
theorem sheetPairing_even (mass observable : V → ℝ) :
    sheetPairing (evenLift mass) (evenLift observable) =
      2 * pairing mass observable := by
  classical
  unfold sheetPairing pairing
  calc
    (∑ a : V, ∑ s : Bool,
      evenLift mass (a, s) * evenLift observable (a, s)) =
        ∑ a : V, 2 * (mass a * observable a) := by
          apply Finset.sum_congr rfl
          intro a _
          simp [Fintype.sum_bool, evenLift] <;> ring
    _ = 2 * (∑ a : V, mass a * observable a) := by
      rw [Finset.mul_sum]

theorem plainPush_plainStep_adjoint (D : EventDiffusion V)
    (mass observable : V → ℝ) :
    pairing (plainPush D mass) observable =
      pairing mass (D.plainStep observable) := by
  have h := liftPush_liftStep_adjoint D
    (evenLift mass) (evenLift observable)
  rw [liftPush_even, D.liftStep_even] at h
  simp only [sheetPairing_even] at h
  linarith

/-- Distinct local parity components are orthogonal for counting measure. -/
theorem sheetPairing_even_odd (mass observable : V → ℝ) :
    sheetPairing (evenLift mass) (oddLift observable) = 0 := by
  classical
  unfold sheetPairing
  apply Finset.sum_eq_zero
  intro a _
  simp [Fintype.sum_bool, evenLift, oddLift, bitSign] <;> ring

/-- When EVERY incoming arrow at b has negative phase, the signed
forward image is the negative of the ordinary nonnegative image. -/
theorem signedPush_eq_neg_plainPush_of_negative_incoming
    (D : EventDiffusion V) (mass : V → ℝ) (b : V)
    (hall : ∀ e : Event V, e.2.1 = b → D.phase e = true) :
    signedPush D mass b = -(plainPush D mass b) := by
  unfold signedPush plainPush
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro e _
  by_cases hb : e.2.1 = b
  · simp [hb, hall e hb, bitSign] <;> ring
  · simp [hb]

/-- Thus a positive incoming plain mass may become a NEGATIVE signed
value. This explicitly blocks a false Markov-positivity inference. -/
theorem signedPush_negative_of_negative_incoming
    (D : EventDiffusion V) (mass : V → ℝ) (b : V)
    (hall : ∀ e : Event V, e.2.1 = b → D.phase e = true)
    (hpositive : 0 < plainPush D mass b) :
    signedPush D mass b < 0 := by
  rw [signedPush_eq_neg_plainPush_of_negative_incoming D mass b hall]
  exact neg_lt_zero.mpr hpositive

/-- Projection to the odd sheet part is exactly signed forward
transport, not an inferred positivity or conserved mass law. -/
theorem oddPart_liftPush (D : EventDiffusion V)
    (mass : V × Bool → ℝ) (b : V) :
    oddPart (liftPush D mass) b =
      signedPush D (oddPart mass) b := by
  rw [liftPush_decompose]
  simp [oddPart, evenLift, oddLift, bitSign, Pi.add_apply] <;> ring

section ExistingEdgeKernelBridge

variable [∀ a b : V, Fintype (a ⟶ b)]

/-- Reindex a complete tagged incoming inventory through its actual
source, target and arrow fibers. This is NOT an endpoint-only bijection. -/
private theorem sum_tagged_incoming (f : Event V → ℝ) (b : V) :
    (∑ e : Event V, if e.2.1 = b then f e else 0) =
      ∑ a : V, ∑ e : a ⟶ b, f ⟨a, b, e⟩ := by
  classical
  calc
    (∑ e : Event V, if e.2.1 = b then f e else 0) =
        ∑ a : V, ∑ c : V, ∑ e : a ⟶ c,
          if c = b then f ⟨a, c, e⟩ else 0 := by
            simp only [Fintype.sum_sigma]
    _ = ∑ a : V, ∑ e : a ⟶ b, f ⟨a, b, e⟩ := by
          apply Finset.sum_congr rfl
          intro a _
          simp

/-- The even forward projection agrees with the previous precise
`asEdgeKernel` adapter, including its zero-stay convention. -/
theorem plainPush_eq_edgeKernel_step (D : EventDiffusion V)
    (mass : V → ℝ) (b : V) :
    plainPush D mass b =
      (asEdgeKernel D).step mass b := by
  have h := sum_tagged_incoming
    (fun e : Event V => D.weight e * mass e.1) b
  change
    (∑ e : Event V, if e.2.1 = b then
      D.weight e * mass e.1 else 0) =
        (0 : ℝ) * mass b +
          (∑ a : V, ∑ e : a ⟶ b,
            D.weight ⟨a, b, e⟩ * mass a)
  simpa using h

/-- Full two-sheet → even marginal → existing edge-kernel density
pushforward, with no signed contribution introduced into the marginal. -/
theorem evenPart_liftPush_eq_edgeKernel (D : EventDiffusion V)
    (mass : V × Bool → ℝ) (b : V) :
    evenPart (liftPush D mass) b =
      (asEdgeKernel D).step (evenPart mass) b := by
  rw [liftPush_decompose]
  have h :
      evenPart
        (evenLift (plainPush D (evenPart mass)) +
          oddLift (signedPush D (oddPart mass))) b =
        plainPush D (evenPart mass) b := by
      simp [evenPart, evenLift, oddLift, bitSign, Pi.add_apply] <;> ring
  exact h.trans (plainPush_eq_edgeKernel_step D (evenPart mass) b)

end ExistingEdgeKernelBridge

/-- Iteration applies the incoming push once per natural-number step.
The recursive orientation is chosen to pair directly with the older
outgoing backward iterate, not to suggest an analytic time parameter. -/
def liftPushEvolve (D : EventDiffusion V)
    (mass : V × Bool → ℝ) : ℕ → (V × Bool → ℝ)
  | 0 => mass
  | n + 1 => liftPushEvolve D (liftPush D mass) n

/-- The signed forward iteration acts on amplitudes, not positive
density, and inherits no stochasticity assertion. -/
def signedPushEvolve (D : EventDiffusion V)
    (mass : V → ℝ) : ℕ → (V → ℝ)
  | 0 => mass
  | n + 1 => signedPushEvolve D (signedPush D mass) n

/-- At every finite time, the signed forward and the existing signed
backward operators remain adjoint on vertex functions. -/
theorem signedPushEvolve_signedEvolve_adjoint
    (D : EventDiffusion V) (mass observable : V → ℝ) (n : ℕ) :
    pairing (signedPushEvolve D mass n) observable =
      pairing mass (D.signedEvolve n observable) := by
  induction n generalizing mass with
  | zero => rfl
  | succ n ih =>
      change
        pairing (signedPushEvolve D (signedPush D mass) n) observable =
          pairing mass (D.signedStep (D.signedEvolve n observable))
      exact (ih (signedPush D mass)).trans
        (signedPush_signedStep_adjoint D mass (D.signedEvolve n observable))

/-- Every iterated odd sheet lift is the corresponding signed forward
iterate, preserving this source's complete phase information. -/
theorem liftPushEvolve_odd (D : EventDiffusion V)
    (mass : V → ℝ) (n : ℕ) :
    liftPushEvolve D (oddLift mass) n =
      oddLift (signedPushEvolve D mass n) := by
  induction n generalizing mass with
  | zero => rfl
  | succ n ih =>
      change liftPushEvolve D (liftPush D (oddLift mass)) n =
        oddLift (signedPushEvolve D (signedPush D mass) n)
      rw [liftPush_odd]
      exact ih (signedPush D mass)

/-- FULL adjointness survives any finite number of two-sheet steps. -/
theorem liftPushEvolve_liftEvolve_adjoint (D : EventDiffusion V)
    (mass observable : V × Bool → ℝ) (n : ℕ) :
    sheetPairing (liftPushEvolve D mass n) observable =
      sheetPairing mass (D.liftEvolve n observable) := by
  induction n generalizing mass with
  | zero => rfl
  | succ n ih =>
      change
        sheetPairing (liftPushEvolve D (liftPush D mass) n) observable =
          sheetPairing mass (D.liftStep (D.liftEvolve n observable))
      exact (ih (liftPush D mass)).trans
        (liftPush_liftStep_adjoint D mass (D.liftEvolve n observable))

/-- Every finite forward iterate conserves the FULL two-sheet total. -/
theorem liftPushEvolve_total (D : EventDiffusion V)
    (mass : V × Bool → ℝ) (n : ℕ) :
    (∑ a : V, ∑ s : Bool, liftPushEvolve D mass n (a, s)) =
      ∑ a : V, ∑ s : Bool, mass (a, s) := by
  have hone :
      ∀ n : ℕ, D.liftEvolve n (fun _ => (1 : ℝ)) =
        (fun _ => (1 : ℝ)) := by
    intro k
    induction k with
    | zero => rfl
    | succ k ih =>
        change D.liftStep (D.liftEvolve k (fun _ => (1 : ℝ))) =
          (fun _ => (1 : ℝ))
        rw [ih, D.liftStep_one]
  have h := liftPushEvolve_liftEvolve_adjoint D mass
    (fun _ => (1 : ℝ)) n
  rw [hone n] at h
  simpa only [sheetPairing, mul_one] using h

/-- Positivity of the FULL lifted density holds through all finite
iterations; this does not apply to the signed odd projection. -/
theorem liftPushEvolve_nonneg (D : EventDiffusion V)
    (mass : V × Bool → ℝ) (hmass : ∀ z, 0 ≤ mass z)
    (n : ℕ) (target : V × Bool) :
    0 ≤ liftPushEvolve D mass n target := by
  induction n generalizing mass with
  | zero => exact hmass target
  | succ n ih =>
      change 0 ≤ liftPushEvolve D (liftPush D mass) n target
      exact ih (liftPush D mass) (liftPush_nonneg D mass hmass)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyFullAdjoint
end
