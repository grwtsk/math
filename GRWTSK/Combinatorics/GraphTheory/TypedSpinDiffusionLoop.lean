/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
AI-assisted drafting. SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_MATHEMATICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.SpinHolonomyEventWalk
import Mathlib

/-!
# Typed spin diffusion: positive edge form, gauge invariants and processing loops

## Consumer, objects and scope

This is the finite, mathematical double-cover counterpart of
`WeilPrimePhaseDiffusion.lean`. The original `EdgeTrace.TotalEdge` preserves
source, target and the underlying Quiver arrow; the `SpinHolonomyEventWalk`
results provide real Boolean phase signs, parity and gauge-invariant closed
walk products. No edge is inferred merely from two equal-looking endpoints.

A source-bound finite edge family has NONNEGATIVE weights, and one bit of spin
phase per actual edge. The squared covariant edge differences make an
unconditionally nonnegative Dirichlet form even on a frustrated odd cycle.
Changing vertex frames alters both phases and fields; the form and every
valid closed-walk holonomy are unchanged. Its antisymmetric two-sheet lift
has exactly twice this energy.

A separate `SpinProcess` is a finite nonnegative COLUMN-stochastic kernel on
the two-sheet cover. Its `supported` field requires every nonzero transition
to be stationary or a traversal of a *specified* lifted source edge. Each
process step and every finite iterate preserve pointwise NONNEGATIVITY of a
lifted density and its total mass. This is a typed processing-loop contract:
no claim constructs such a kernel for an arbitrary source, and a negative
spin-sector amplitude is not confused with a nonnegative density.

WARNING: a signed spin operator/sector need not preserve pointwise order.
The nonnegative Markov kernel is on the lifted two-sheet space, not the
signed single-sheet amplitude. Form positivity is not Weil positivity:
its exact prime-mass subtraction, gamma terms and pole remain separate.

## Edge-propagating heat process (written finite spectral argument)

For a finite vertex set define the real incidence row B_e by
  (B_e f) = f(source e) - bitSign(phase e)*f(target e).
Set L=B^T W B with diagonal W(e,e)=weight(e). Then L is positive
semidefinite, E(f)=<f,Lf>, and for each v let d(v) be the sum of weights
of all edges incident at v (a loop may be counted twice). Cauchy--Schwarz
on each row gives 0<=L<=2*dmax*I. Therefore whenever dmax>0 and
0<=step<=1/(2*dmax), P=I-step*L obeys
  0<=E(P^n f)<=E(f)   for every n,
because on an L-eigenvector with eigenvalue lambda in [0,2*dmax]
the energy multiplier is (1-step*lambda)^(2*n)<=1. If all weights
vanish, L=0 and every iterate is stationary. The exact-rational
three-vertex odd-cycle example is checked separately in the local test.

This gives a genuine edge-propagating spin heat construction. It is an
ordinary finite-dimensional spectral argument, written here but NOT
Lean-elaborated. `SpinEnergyStep` records the verified form decrease as a
typed premise; this file provides a formally spelled-out damping instance,
not a machine-checked construction of the graph-gradient P. Moreover
P's signed single-sheet entries need not be nonnegative: the finite
`SpinProcess` contract uses the ordinary nonnegative two-sheet lift.

The source gauge and loop arguments are inherited from
`SpinHolonomyEventWalk` with the SAME tagged-edge carrier. The positive
form and Markov identities are elementary square and finite-sum arguments.
A closed-loop phase product is an invariant, not a complete classifier of
paths. Independent analytic review, Lean compilation, kernel/axiom audits:
NOT_RUN. No scheduler, runner, or continuous processor is installed here.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.TypedSpinDiffusionLoop

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyEventWalk
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace

universe u

/-- Keep the actual arrow identity, including parallel edges, not only an
untyped pair of vertices. -/
abbrev Event (V : Type u) [Quiver V] := TotalEdge V

/-- A finite typed spin network. A source edge can occur as an actual
Quiver arrow even when other arrows have the same endpoints. -/
structure SpinNetwork (V : Type u) [Quiver V] where
  events : Finset (Event V)
  weight : Event V → ℝ
  phase : Event V → Bool
  nonneg : ∀ e ∈ events, 0 ≤ weight e

variable {V : Type u} [Quiver V]

/-- The full edge sum is NONNEGATIVE, regardless of spin holonomy. -/
def SpinNetwork.spinForm (N : SpinNetwork V) (f : V → ℝ) : ℝ :=
  ∑ e ∈ N.events,
    N.weight e *
      (f e.1 - bitSign ℝ (N.phase e) * f e.2.1) ^ 2

theorem SpinNetwork.spinForm_nonneg (N : SpinNetwork V) (f : V → ℝ) :
    0 ≤ N.spinForm f := by
  unfold SpinNetwork.spinForm
  apply Finset.sum_nonneg
  intro e he
  exact mul_nonneg (N.nonneg e he) (sq_nonneg _)

/-- The vertex frame multiplies an amplitude by an Ising sign. -/
def gaugeField (frame : V → Bool) (f : V → ℝ) (v : V) : ℝ :=
  bitSign ℝ (frame v) * f v

/-- Conjugate each actual tagged edge by the two endpoint frame signs. -/
def SpinNetwork.gauge (N : SpinNetwork V) (frame : V → Bool) : SpinNetwork V where
  events := N.events
  weight := N.weight
  phase := fun e => (frame e.1).xor ((N.phase e).xor (frame e.2.1))
  nonneg := N.nonneg

private theorem bitSign_sq (b : Bool) : (bitSign ℝ b) ^ 2 = 1 := by
  cases b <;> norm_num [bitSign]

private theorem bitSign_eq_neg_isingSign (frame : V → Bool) (v : V) :
    bitSign ℝ (frame v) = -isingSign (R := ℝ) frame v := by
  cases h : frame v <;> norm_num [bitSign, isingSign, h]

/-- Every frame transform retains the SAME edge phase conjugation. -/
theorem SpinNetwork.gauge_phase_sign (N : SpinNetwork V) (frame : V → Bool)
    (e : Event V) :
    bitSign ℝ ((N.gauge frame).phase e) =
      bitSign ℝ (frame e.1) * bitSign ℝ (N.phase e) *
        bitSign ℝ (frame e.2.1) := by
  simp only [SpinNetwork.gauge, bitSign_xor]
  ring

/-- Covariant edge difference transforms by its source vertex sign. -/
theorem SpinNetwork.gauge_defect (N : SpinNetwork V)
    (frame : V → Bool) (f : V → ℝ) (e : Event V) :
    gaugeField frame f e.1 -
        bitSign ℝ ((N.gauge frame).phase e) * gaugeField frame f e.2.1 =
      bitSign ℝ (frame e.1) *
        (f e.1 - bitSign ℝ (N.phase e) * f e.2.1) := by
  rw [N.gauge_phase_sign frame e]
  dsimp only [gaugeField]
  have hsq := bitSign_sq (frame e.2.1)
  calc
    _ = bitSign ℝ (frame e.1) * f e.1 -
        bitSign ℝ (frame e.1) * bitSign ℝ (N.phase e) *
          (bitSign ℝ (frame e.2.1)) ^ 2 * f e.2.1 := by ring
    _ = _ := by rw [hsq]; ring

/-- A gauge cannot alter the nonnegative spin energy. -/
theorem SpinNetwork.spinForm_gauge (N : SpinNetwork V)
    (frame : V → Bool) (f : V → ℝ) :
    (N.gauge frame).spinForm (gaugeField frame f) = N.spinForm f := by
  change
    (∑ e ∈ N.events, N.weight e *
      (gaugeField frame f e.1 -
        bitSign ℝ ((N.gauge frame).phase e) * gaugeField frame f e.2.1) ^ 2) =
    (∑ e ∈ N.events, N.weight e *
      (f e.1 - bitSign ℝ (N.phase e) * f e.2.1) ^ 2)
  apply Finset.sum_congr rfl
  intro e _
  rw [N.gauge_defect frame f e, mul_pow, bitSign_sq]
  ring

/-- All loop labels refer to the original chronological valid edge path,
not to a set of endpoints. The existing spin-gauge telescoping theorem is
reused rather than replaced with a surrogate path definition. -/
theorem SpinNetwork.closed_holonomy_gauge (N : SpinNetwork V)
    (frame : V → Bool) (root : V) (events : List (Event V))
    (hvalid : ValidFrom root events)
    (hclosed : finish root events = root) :
    walkWeight (fun e => bitSign ℝ ((N.gauge frame).phase e)) events =
      walkWeight (fun e => bitSign ℝ (N.phase e)) events := by
  have hfun :
      (fun e : Event V => bitSign ℝ ((N.gauge frame).phase e)) =
        spinGaugedEdge (fun e : Event V => bitSign ℝ (N.phase e)) frame := by
    funext e
    rw [N.gauge_phase_sign frame e]
    unfold spinGaugedEdge
    have hsrc : isingSign (R := ℝ) frame e.1 =
        -bitSign ℝ (frame e.1) := by
      cases h : frame e.1 <;> norm_num [isingSign, bitSign, h]
    have hdst : isingSign (R := ℝ) frame e.2.1 =
        -bitSign ℝ (frame e.2.1) := by
      cases h : frame e.2.1 <;> norm_num [isingSign, bitSign, h]
    rw [hsrc, hdst]
    ring
  rw [hfun]
  exact closed_walk_spin_gauge_invariant
    (fun e : Event V => bitSign ℝ (N.phase e)) frame root events hvalid hclosed

/-! ## Energy-dissipating loops with an explicit theorem-carrying type. -/

/-- Scaling a field scales its *exact* squared spin energy by c²;
this reuses all original edge phases rather than averaging them away. -/
theorem SpinNetwork.spinForm_scale (N : SpinNetwork V) (c : ℝ)
    (f : V → ℝ) :
    N.spinForm (fun v => c * f v) = c ^ 2 * N.spinForm f := by
  unfold SpinNetwork.spinForm
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro e _
  have hfactor :
      c * f e.1 - bitSign ℝ (N.phase e) * (c * f e.2.1) =
        c * (f e.1 - bitSign ℝ (N.phase e) * f e.2.1) := by ring
  rw [hfactor, mul_pow]
  ring

/-- A supplied mathematical processing map is energy-dissipative only
if it carries the original source form inequality for EVERY field. -/
structure SpinEnergyStep (N : SpinNetwork V) where
  apply : (V → ℝ) → (V → ℝ)
  form_nonincreasing : ∀ f, N.spinForm (apply f) ≤ N.spinForm f

/-- A concrete (non-propagating) damping instance shows the contract is
inhabited. An actual edge-propagating heat step needs its OWN proof of the
same form bound, not a default equivalence with damping. -/
def SpinEnergyStep.damping (N : SpinNetwork V) (c : ℝ)
    (hc0 : 0 ≤ c) (hc1 : c ≤ 1) : SpinEnergyStep N where
  apply := fun f v => c * f v
  form_nonincreasing := by
    intro f
    rw [N.spinForm_scale c f]
    have hc : c ^ 2 ≤ 1 := by
      nlinarith [mul_nonneg hc0 (sub_nonneg.mpr hc1)]
    simpa only [one_mul] using
      mul_le_mul_of_nonneg_right hc (N.spinForm_nonneg f)

/-- Finite iteration consumes a source-verified dissipative step. -/
def SpinEnergyStep.iterate {N : SpinNetwork V} (H : SpinEnergyStep N)
    (f : V → ℝ) : ℕ → V → ℝ
  | 0 => f
  | n + 1 => H.apply (H.iterate f n)

/-- The finite processing loop has a monotone nonnegative spin-form at
EVERY stage. No continuous-time semigroup is inferred from this. -/
theorem SpinEnergyStep.iterate_form_le {N : SpinNetwork V}
    (H : SpinEnergyStep N) (f : V → ℝ) (n : ℕ) :
    N.spinForm (H.iterate f n) ≤ N.spinForm f := by
  induction n with
  | zero => exact le_refl _
  | succ n ih =>
      change N.spinForm (H.apply (H.iterate f n)) ≤ N.spinForm f
      exact (H.form_nonincreasing _).trans ih

/-- Nonnegativity and dissipation stay jointly true through the finite
loop; the form's sign is not inferred from a model's training state. -/
theorem SpinEnergyStep.iterate_form_invariants {N : SpinNetwork V}
    (H : SpinEnergyStep N) (f : V → ℝ) (n : ℕ) :
    0 ≤ N.spinForm (H.iterate f n) ∧
      N.spinForm (H.iterate f n) ≤ N.spinForm f :=
  ⟨N.spinForm_nonneg _, H.iterate_form_le f n⟩

/-! ## The positive two-sheet lift; its antisymmetric sector is the spin form. -/

/-- Lifted vertices retain the underlying vertex and the sheet bit. -/
abbrev Sheet (V : Type u) := V × Bool

def deck (z : Sheet V) : Sheet V := (z.1, !z.2)

theorem deck_deck (z : Sheet V) : deck (deck z) = z := by
  rcases z with ⟨v, b⟩
  cases b <;> rfl

/-- The anti-invariant lift of a real spin amplitude. -/
def liftField (f : V → ℝ) (z : Sheet V) : ℝ :=
  bitSign ℝ z.2 * f z.1

theorem liftField_deck (f : V → ℝ) (z : Sheet V) :
    liftField f (deck z) = -liftField f z := by
  rcases z with ⟨v, b⟩
  cases b <;> simp [deck, liftField, bitSign]

/-- A phase one edge swaps sheets, while phase zero preserves sheets. -/
def SpinNetwork.liftedTarget (N : SpinNetwork V)
    (e : Event V) (b : Bool) : Sheet V :=
  (e.2.1, b.xor (N.phase e))

/-- One original edge is counted on both lifted sheets. -/
def SpinNetwork.liftedForm (N : SpinNetwork V) (f : V → ℝ) : ℝ :=
  ∑ e ∈ N.events, N.weight e *
    ((liftField f (e.1, false) - liftField f (N.liftedTarget e false)) ^ 2 +
      (liftField f (e.1, true) - liftField f (N.liftedTarget e true)) ^ 2)

theorem SpinNetwork.lift_defect (N : SpinNetwork V) (f : V → ℝ)
    (e : Event V) (b : Bool) :
    liftField f (e.1, b) - liftField f (N.liftedTarget e b) =
      bitSign ℝ b * (f e.1 - bitSign ℝ (N.phase e) * f e.2.1) := by
  change
    bitSign ℝ b * f e.1 - bitSign ℝ (b.xor (N.phase e)) * f e.2.1 = _
  rw [bitSign_xor]
  ring

/-- The lifted spin form is EXACTLY twice the original one; neither
positive mass nor a negative sign is lost in the two-sheet representation. -/
theorem SpinNetwork.liftedForm_eq_two_spinForm
    (N : SpinNetwork V) (f : V → ℝ) :
    N.liftedForm f = 2 * N.spinForm f := by
  unfold SpinNetwork.liftedForm SpinNetwork.spinForm
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro e _
  rw [N.lift_defect f e false, N.lift_defect f e true]
  simp only [bitSign_false, bitSign_true, one_mul, neg_mul]
  ring

/-- The source spin form remains positive under an arbitrary gauge and
under lifting, even for odd-holonomy cycles. -/
theorem SpinNetwork.liftedForm_nonneg (N : SpinNetwork V) (f : V → ℝ) :
    0 ≤ N.liftedForm f := by
  rw [N.liftedForm_eq_two_spinForm]
  exact mul_nonneg (by norm_num) (N.spinForm_nonneg f)

/-! ## Typed processing loops: positivity is on the lifted density. -/

/-- A legal move is a stationary transition or a traversal of an original
edge in either orientation, respecting its sheet bit. This is an edge-
occurrence support proposition, NOT an implication of spectral proximity. -/
def SpinNetwork.LegalStep (N : SpinNetwork V)
    (source target : Sheet V) : Prop :=
  source = target ∨
    ∃ e ∈ N.events, ∃ b : Bool,
      (source = (e.1, b) ∧ target = N.liftedTarget e b) ∨
      (target = (e.1, b) ∧ source = N.liftedTarget e b)

/-- Explicit finite column-stochastic kernel on the phase-doubled graph.
`transport target source` is the probability of a SOURCE-column move.
No positivity claim is made for signed anti-invariant amplitudes. -/
structure SpinProcess (N : SpinNetwork V) [Fintype V] where
  transport : Sheet V → Sheet V → ℝ
  nonneg : ∀ target source, 0 ≤ transport target source
  source_mass : ∀ source, ∑ target : Sheet V, transport target source = 1
  supported : ∀ target source, transport target source ≠ 0 → N.LegalStep source target
  deck_compatible : ∀ target source,
    transport (deck target) (deck source) = transport target source

section Processing
variable [Fintype V] (N : SpinNetwork V) (P : SpinProcess N)

/-- One finite probabilistic transfer; source/target index direction is
fixed by `P.source_mass`. -/
def SpinProcess.step (P : SpinProcess N) (density : Sheet V → ℝ)
    (target : Sheet V) : ℝ :=
  ∑ source : Sheet V, P.transport target source * density source

theorem SpinProcess.step_nonneg (density : Sheet V → ℝ)
    (hdensity : ∀ source, 0 ≤ density source) (target : Sheet V) :
    0 ≤ P.step density target := by
  unfold SpinProcess.step
  apply Finset.sum_nonneg
  intro source _
  exact mul_nonneg (P.nonneg target source) (hdensity source)

/-- Every admissible processing step preserves the TOTAL nonnegative
lifted density mass; this is a finite Markov identity, not a source sign. -/
theorem SpinProcess.step_mass (density : Sheet V → ℝ) :
    (∑ target : Sheet V, P.step density target) =
      ∑ source : Sheet V, density source := by
  classical
  unfold SpinProcess.step
  rw [Finset.sum_comm]
  calc
    (∑ source : Sheet V,
      ∑ target : Sheet V, P.transport target source * density source) =
      ∑ source : Sheet V,
        (∑ target : Sheet V, P.transport target source) * density source := by
          apply Finset.sum_congr rfl
          intro source _
          rw [Finset.sum_mul]
    _ = _ := by simp [P.source_mass]

/-- Repeated application is a mathematical finite iterate, not an
asynchronous loop or a proof-worker process. -/
def SpinProcess.iterate (density : Sheet V → ℝ) : ℕ → Sheet V → ℝ
  | 0 => density
  | n + 1 => P.step (P.iterate density n)

/-- Positivity is an invariant TYPE of all finite processing-loop stages. -/
theorem SpinProcess.iterate_nonneg (density : Sheet V → ℝ)
    (hdensity : ∀ source, 0 ≤ density source) (n : ℕ)
    (target : Sheet V) : 0 ≤ P.iterate density n target := by
  induction n generalizing target with
  | zero => exact hdensity target
  | succ n ih =>
      change 0 ≤ P.step (P.iterate density n) target
      exact P.step_nonneg _ (fun source => ih source) target

/-- The total mass is invariant through an arbitrary finite count of
admitted processing stages, not just one diffusion step. -/
theorem SpinProcess.iterate_mass (density : Sheet V → ℝ) (n : ℕ) :
    (∑ target : Sheet V, P.iterate density n target) =
      ∑ target : Sheet V, density target := by
  induction n with
  | zero => rfl
  | succ n ih =>
      change (∑ target : Sheet V, P.step (P.iterate density n) target) = _
      rw [P.step_mass, ih]

/-! ## An invariant-carrying type for each finite processing stage. -/

/-- A processing state carries its own positivity and mass certificates.
A state lacking either certificate does not inhabit this type. -/
structure InvariantState where
  density : Sheet V → ℝ
  mass : ℝ
  nonneg : ∀ x, 0 ≤ density x
  mass_eq : (∑ x : Sheet V, density x) = mass

/-- A valid stochastic step constructs another state of the SAME invariant
type; no truth assertion is inferred from the presence of a label alone. -/
def InvariantState.advance (state : InvariantState (V := V)) :
    InvariantState (V := V) where
  density := P.step state.density
  mass := state.mass
  nonneg := fun x => P.step_nonneg state.density state.nonneg x
  mass_eq := by
    rw [P.step_mass]
    exact state.mass_eq

/-- The finite processing loop retains its certified invariants through
its constructor, rather than checking a final untyped output afterward. -/
def InvariantState.loop (state : InvariantState (V := V)) :
    ℕ → InvariantState (V := V)
  | 0 => state
  | n + 1 =>
      (state.loop (N := N) (P := P) n).advance (N := N) (P := P)

theorem InvariantState.loop_mass (state : InvariantState (V := V))
    (n : ℕ) : (state.loop (N := N) (P := P) n).mass = state.mass := by
  induction n with
  | zero => rfl
  | succ n ih =>
      change (state.loop (N := N) (P := P) n).mass = state.mass
      exact ih

end Processing

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.TypedSpinDiffusionLoop
