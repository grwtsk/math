/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.SpinHolonomyEventWalk
import GRWTSK.Combinatorics.GraphTheory.FiniteAdmissibleSampler
import Mathlib.Tactic

/-!
# Exact finite spin-holonomy diffusion on original tagged event arrows

The underlying event carrier is the EXISTING lossless Quiver TotalEdge.
Parallel arrows remain distinct, and the source/target of each occurrence
is retained. Unlike a freely chosen vertex adjacency matrix, the diffusion
step sums over the actual finite event inventory.

For nonnegative event weights with all outgoing rows summing to one, the
two-sheet process is an ordinary stochastic diffusion. Its even sheet sector
intertwines the untwisted vertex diffusion, while its odd sector intertwines
the SIGNED diffusion with the original event bit phases. Every iterated step
inherits the exact intertwining. Arbitrary sheet data split into these two
sectors without throwing away the antisymmetric part.

The signed sector is NOT a Markov kernel: its constant-one defect is exactly
twice the nonnegative outgoing mass of negative event links. An odd closed
walk changes its lifted sheet, so it is not a removable closed lift.

Source comparison: existing SpinHolonomyEventWalk supplies bitSign,
walkParity and lossless tagged paths. FiniteAdmissibleSampler supplies
an independently defined normalized Gibbs Markov law; it is not assumed
equal to the event weights here. No Markov realization on all integers,
CM period-site map, small signed source defect, spectral half-gap, RH or
Dirichlet GRH is claimed.

These are finite elementary linear/Boolean identities, not an analytic
heat-semigroup result or an arithmetic limit theorem. Lean elaboration
and independent mathematical review have NOT been run.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyFiniteDiffusion

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyEventWalk
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace

universe u

/-- Exact source-labelled finite stochastic edge inventory. No independent
Markov normalization assumption is made for the signed readout. -/
structure EventDiffusion (V : Type u) [Quiver V]
    [Fintype V] [DecidableEq V] [Fintype (Event V)] where
  weight : Event V → ℝ
  phase : Event V → Bool
  weight_nonneg : ∀ e, 0 ≤ weight e
  row_mass_one :
    ∀ i : V, (∑ e : Event V,
      if e.1 = i then weight e else 0) = 1

namespace EventDiffusion

variable {V : Type u} [Quiver V] [Fintype V] [DecidableEq V]
  [Fintype (Event V)]

/-- Ordinary one-step diffusion; positive weights use only original events. -/
def plainStep (D : EventDiffusion V) (f : V → ℝ) : V → ℝ :=
  fun i => ∑ e : Event V,
    if e.1 = i then D.weight e * f e.2.1 else 0

/-- Signed holonomy readout, which in general is NOT stochastic. -/
def signedStep (D : EventDiffusion V) (f : V → ℝ) : V → ℝ :=
  fun i => ∑ e : Event V,
    if e.1 = i then
      D.weight e * bitSign ℝ (D.phase e) * f e.2.1 else 0

/-- The genuine two-sheet Markov lift: traversing a negative event
flips the sheet, but each event retains its full source/target label. -/
def liftStep (D : EventDiffusion V)
    (F : V × Bool → ℝ) : V × Bool → ℝ :=
  fun p => ∑ e : Event V,
    if e.1 = p.1 then
      D.weight e * F (e.2.1, p.2.xor (D.phase e)) else 0

/-- Sheet symmetric and antisymmetric lifts. The former sees P and the
latter T, without identifying their positivity profiles. -/
def evenLift (f : V → ℝ) : V × Bool → ℝ :=
  fun p => f p.1

def oddLift (f : V → ℝ) : V × Bool → ℝ :=
  fun p => bitSign ℝ p.2 * f p.1

theorem liftStep_even (D : EventDiffusion V) (f : V → ℝ) :
    D.liftStep (evenLift f) = evenLift (D.plainStep f) := by
  funext ⟨i, b⟩
  rfl

theorem liftStep_odd (D : EventDiffusion V) (f : V → ℝ) :
    D.liftStep (oddLift f) = oddLift (D.signedStep f) := by
  funext ⟨i, b⟩
  change (∑ e : Event V,
      if e.1 = i then
        D.weight e * (bitSign ℝ (b.xor (D.phase e)) * f e.2.1)
      else 0) =
    bitSign ℝ b * (∑ e : Event V,
      if e.1 = i then
        D.weight e * bitSign ℝ (D.phase e) * f e.2.1
      else 0)
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro e he
  by_cases h : e.1 = i
  · simp only [if_pos h]
    rw [bitSign_xor]
    ring
  · simp [h]

/-- The lifted step respects superposition. -/
theorem liftStep_add (D : EventDiffusion V)
    (F G : V × Bool → ℝ) :
    D.liftStep (F + G) = D.liftStep F + D.liftStep G := by
  funext ⟨i, b⟩
  change (∑ e : Event V,
      if e.1 = i then
        D.weight e * (F (e.2.1, b.xor (D.phase e)) +
          G (e.2.1, b.xor (D.phase e)))
      else 0) =
    (∑ e : Event V,
      if e.1 = i then D.weight e *
        F (e.2.1, b.xor (D.phase e)) else 0) +
    (∑ e : Event V,
      if e.1 = i then D.weight e *
        G (e.2.1, b.xor (D.phase e)) else 0)
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro e he
  by_cases h : e.1 = i
  · simp [h, mul_add]
  · simp [h]

/-- Exactly recover both sheet values; no information is discarded by
passing to the even/odd decomposition. -/
def evenPart (F : V × Bool → ℝ) : V → ℝ :=
  fun i => (F (i, false) + F (i, true)) / 2

def oddPart (F : V × Bool → ℝ) : V → ℝ :=
  fun i => (F (i, false) - F (i, true)) / 2

def reconstruct (F : V × Bool → ℝ) : V × Bool → ℝ :=
  evenLift (evenPart F) + oddLift (oddPart F)

theorem reconstruct_eq (F : V × Bool → ℝ) :
    reconstruct F = F := by
  funext ⟨i, b⟩
  cases b <;>
    simp [reconstruct, evenLift, oddLift, evenPart, oddPart,
      bitSign, Pi.add_apply] <;> ring

/-- Exact block-diagonalization of the two-sheet one-step diffusion.
It is an operator identity on a FULL two-sheet source, not a positivity
theorem for the antisymmetric signed sector. -/
theorem liftStep_decompose (D : EventDiffusion V)
    (F : V × Bool → ℝ) :
    D.liftStep F =
      evenLift (D.plainStep (evenPart F)) +
      oddLift (D.signedStep (oddPart F)) := by
  calc
    D.liftStep F = D.liftStep (reconstruct F) := by
      rw [reconstruct_eq]
    _ = _ := by
      simp only [reconstruct, liftStep_add, liftStep_even, liftStep_odd]

/-- Actual integer iteration, with no imported infinite-time heat limit. -/
def plainEvolve (D : EventDiffusion V) : ℕ → (V → ℝ) → (V → ℝ)
  | 0, f => f
  | n + 1, f => D.plainStep (plainEvolve D n f)

def signedEvolve (D : EventDiffusion V) : ℕ → (V → ℝ) → (V → ℝ)
  | 0, f => f
  | n + 1, f => D.signedStep (signedEvolve D n f)

def liftEvolve (D : EventDiffusion V) :
    ℕ → (V × Bool → ℝ) → (V × Bool → ℝ)
  | 0, F => F
  | n + 1, F => D.liftStep (liftEvolve D n F)

theorem liftEvolve_even (D : EventDiffusion V)
    (n : ℕ) (f : V → ℝ) :
    D.liftEvolve n (evenLift f) =
      evenLift (D.plainEvolve n f) := by
  induction n with
  | zero => rfl
  | succ n ih =>
      change D.liftStep (D.liftEvolve n (evenLift f)) =
        evenLift (D.plainStep (D.plainEvolve n f))
      rw [ih]
      exact liftStep_even D (D.plainEvolve n f)

theorem liftEvolve_odd (D : EventDiffusion V)
    (n : ℕ) (f : V → ℝ) :
    D.liftEvolve n (oddLift f) =
      oddLift (D.signedEvolve n f) := by
  induction n with
  | zero => rfl
  | succ n ih =>
      change D.liftStep (D.liftEvolve n (oddLift f)) =
        oddLift (D.signedStep (D.signedEvolve n f))
      rw [ih]
      exact liftStep_odd D (D.signedEvolve n f)

/-- A row-stochastic event inventory gives an ordinary lifted Markov kernel:
nonnegative data cannot become negative under one step. -/
theorem liftStep_nonneg (D : EventDiffusion V)
    (F : V × Bool → ℝ) (hF : ∀ p, 0 ≤ F p)
    (p : V × Bool) : 0 ≤ D.liftStep F p := by
  rcases p with ⟨i, b⟩
  change 0 ≤ ∑ e : Event V,
    if e.1 = i then
      D.weight e * F (e.2.1, b.xor (D.phase e)) else 0
  apply Finset.sum_nonneg
  intro e he
  by_cases h : e.1 = i
  · simp only [if_pos h]
    exact mul_nonneg (D.weight_nonneg e) (hF _)
  · simp [h]

/-- The genuine lifted diffusion preserves constant one; this statement
does NOT extend to the signed odd sector. -/
theorem liftStep_one (D : EventDiffusion V) :
    D.liftStep (fun _ => (1 : ℝ)) = (fun _ => 1) := by
  funext ⟨i, b⟩
  change (∑ e : Event V,
      if e.1 = i then D.weight e * (1 : ℝ) else 0) = 1
  simpa using D.row_mass_one i

theorem plainStep_one (D : EventDiffusion V) :
    D.plainStep (fun _ => (1 : ℝ)) = (fun _ => 1) := by
  funext i
  change (∑ e : Event V,
      if e.1 = i then D.weight e * (1 : ℝ) else 0) = 1
  simpa using D.row_mass_one i

/-- Complete original negative-event outgoing probability mass, including
multiple differently tagged arrows between the same vertices. -/
def oddOutgoing (D : EventDiffusion V) (i : V) : ℝ :=
  ∑ e : Event V,
    if e.1 = i ∧ D.phase e = true then D.weight e else 0

theorem oddOutgoing_nonneg (D : EventDiffusion V) (i : V) :
    0 ≤ D.oddOutgoing i := by
  unfold oddOutgoing
  apply Finset.sum_nonneg
  intro e he
  split_ifs with h
  · exact D.weight_nonneg e
  · exact le_refl 0

/-- Exact one-step signed-diffusion defect; odd source events cannot be
hidden behind a stochastic normalization assertion. -/
theorem signed_one_defect (D : EventDiffusion V) (i : V) :
    D.plainStep (fun _ => (1 : ℝ)) i -
      D.signedStep (fun _ => (1 : ℝ)) i =
        2 * D.oddOutgoing i := by
  unfold plainStep signedStep oddOutgoing
  rw [← Finset.sum_sub_distrib, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro e he
  by_cases hs : e.1 = i
  · cases hp : D.phase e <;>
      simp [hs, hp, bitSign] <;> ring
  · simp [hs]

/-- A negative-holonomy closed walk of original fully tagged events is NOT
closed in the lifted state, even if the base endpoints agree. -/
theorem odd_closed_walk_not_closed_lift (D : EventDiffusion V)
    (root : V) (events : List (Event V))
    (hvalid : ValidFrom root events)
    (hclosed : finish root events = root)
    (hodd : walkParity D.phase events = true) :
    (root, false) ≠
      (finish root events, sheetFinish D.phase false events) := by
  have hs := odd_walk_changes_sheet D.phase events hodd
  simp [hclosed, hs]

end EventDiffusion

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyFiniteDiffusion
