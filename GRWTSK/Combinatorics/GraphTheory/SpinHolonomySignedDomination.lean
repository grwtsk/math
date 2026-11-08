/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; AI-assisted Lean drafting.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.SpinHolonomyFullAdjoint
import Mathlib.Tactic

/-!
# Pointwise domination and finite-time stability of signed spin diffusion

The existing `EventDiffusion` retains actual directed quiver edge identities,
including parallel arrows with potentially different signs. Its `plainStep`
and `liftStep` are outgoing (backward) observable operators; the exact
incoming adjoints `plainPush` and `signedPush` are defined in
`SpinHolonomyFullAdjoint`. This file strengthens their interoperability.

The central unconditional statement is the DOMINATION inequality
  |signedPush D m b| ≤ plainPush D (fun a => |m a|) b
at every vertex, and at every finite time. In particular the signed
incoming operator is a contraction in finite counting-measure L¹.
The backward signed operator has an analogous domination by the
positive backward Markov operator. These are signed-operator bounds,
NOT positive-kernel assertions for the odd sector.

The proof expands the SAME tagged event summands, applies the triangle
inequality and |(-1)^phase|=1, and propagates the resulting inequality
through a nonnegative plain operator. The source-row mass-one law is
needed precisely to turn domination into L¹ contractivity. No
reversibility, symmetric adjacency, connectedness or spectral gap is
assumed.

Mathematical comparison and hostile boundary: the unsigned marginal
forgets signed parallel-edge contributions; cancellations can be strict.
Conversely a pure vertex-gauge phase is conjugate to the unsigned
backward Markov step. Thus nontrivial labels or a positive Markov
kernel by themselves do not guarantee strict signed decay. A lower
spectral gap, continuous semigroup, arithmetic Weil sign, RH or GRH
requires separate source-specific arguments.

Written analytical proof and Lean source candidate only; no fresh Lean
elaboration, kernel replay, axiom audit, or independent analytical
review has occurred in this contribution.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomySignedDomination

open Quiver
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyEventWalk
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyFiniteDiffusion
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyFullAdjoint
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.EdgeIndexedHolonomyDuality

universe u

variable {V : Type u} [Quiver V] [Fintype V] [DecidableEq V]
  [Fintype (Event V)]

/-- Taking absolute values eliminates the edge sign but never changes
the underlying source/target arrow or its nonnegative weight. -/
private theorem abs_signed_edge (D : EventDiffusion V)
    (e : Event V) (x : ℝ) :
    |D.weight e * bitSign ℝ (D.phase e) * x| =
      D.weight e * |x| := by
  cases h : D.phase e <;>
    simp [h, bitSign, abs_mul, abs_of_nonneg (D.weight_nonneg e),
      mul_assoc]

/-- The incoming signed operator is pointwise dominated by the full
unsigned incoming event sum, without aggregating parallel arrows. -/
theorem signedPush_abs_le_plainPush (D : EventDiffusion V)
    (m : V → ℝ) (b : V) :
    |signedPush D m b| ≤ plainPush D (fun a => |m a|) b := by
  unfold signedPush plainPush
  calc
    |∑ e : Event V,
      (if e.2.1 = b then
        D.weight e * bitSign ℝ (D.phase e) * m e.1 else 0)| ≤
        ∑ e : Event V,
          |if e.2.1 = b then
            D.weight e * bitSign ℝ (D.phase e) * m e.1 else 0| :=
          Finset.abs_sum_le_sum_abs _ _
    _ = ∑ e : Event V,
        if e.2.1 = b then D.weight e * |m e.1| else 0 := by
          apply Finset.sum_congr rfl
          intro e _
          by_cases hb : e.2.1 = b
          · simp only [if_pos hb]
            exact abs_signed_edge D e (m e.1)
          · simp [hb]

/-- The unsigned forward event operator preserves inequalities. -/
theorem plainPush_mono (D : EventDiffusion V)
    (m n : V → ℝ) (hmn : ∀ a, m a ≤ n a) (b : V) :
    plainPush D m b ≤ plainPush D n b := by
  unfold plainPush
  apply Finset.sum_le_sum
  intro e _
  by_cases hb : e.2.1 = b
  · simp only [if_pos hb]
    exact mul_le_mul_of_nonneg_left (hmn e.1) (D.weight_nonneg e)
  · simp [hb]

/-- The outgoing signed observable operator is similarly dominated by
the positive outgoing backward expectation. -/
theorem signedStep_abs_le_plainStep (D : EventDiffusion V)
    (f : V → ℝ) (a : V) :
    |D.signedStep f a| ≤ D.plainStep (fun b => |f b|) a := by
  unfold EventDiffusion.signedStep EventDiffusion.plainStep
  calc
    |∑ e : Event V,
      (if e.1 = a then
        D.weight e * bitSign ℝ (D.phase e) * f e.2.1 else 0)| ≤
        ∑ e : Event V,
          |if e.1 = a then
            D.weight e * bitSign ℝ (D.phase e) * f e.2.1 else 0| :=
          Finset.abs_sum_le_sum_abs _ _
    _ = ∑ e : Event V,
        if e.1 = a then D.weight e * |f e.2.1| else 0 := by
          apply Finset.sum_congr rfl
          intro e _
          by_cases ha : e.1 = a
          · simp only [if_pos ha]
            exact abs_signed_edge D e (f e.2.1)
          · simp [ha]

/-- Positivity and outgoing row normalization imply monotonicity of
the backward observable operator. -/
theorem plainStep_mono (D : EventDiffusion V)
    (f g : V → ℝ) (hfg : ∀ b, f b ≤ g b) (a : V) :
    D.plainStep f a ≤ D.plainStep g a := by
  unfold EventDiffusion.plainStep
  apply Finset.sum_le_sum
  intro e _
  by_cases ha : e.1 = a
  · simp only [if_pos ha]
    exact mul_le_mul_of_nonneg_left (hfg e.2.1) (D.weight_nonneg e)
  · simp [ha]

/-- Backward signed observables stay pointwise dominated by a positive
Markov evolution, at EVERY finite iteration. -/
theorem signedEvolve_abs_le_plainEvolve (D : EventDiffusion V)
    (f : V → ℝ) (n : ℕ) (a : V) :
    |D.signedEvolve n f a| ≤
      D.plainEvolve n (fun b => |f b|) a := by
  induction n generalizing a with
  | zero => exact le_refl _
  | succ n ih =>
      change
        |D.signedStep (D.signedEvolve n f) a| ≤
          D.plainStep (D.plainEvolve n (fun b => |f b|)) a
      exact (signedStep_abs_le_plainStep D (D.signedEvolve n f) a).trans
        (plainStep_mono D
          (fun b => |D.signedEvolve n f b|)
          (D.plainEvolve n (fun b => |f b|))
          (fun b => ih b) a)

/-! ## Sharp obstruction: a pure-gauge signed sector does not decay. -/

/-- A vertex frame acts by a sign on each observable. Unlike an
arbitrary projection, this map is invertible and retains every vertex. -/
def spinFrame (frame : V → Bool) (f : V → ℝ) (a : V) : ℝ :=
  bitSign ℝ (frame a) * f a

/-- Each Ising vertex sign has square one. -/
private theorem bitSign_sq_one (b : Bool) :
    (bitSign ℝ b) ^ 2 = 1 := by
  cases b <;> norm_num [bitSign]

/-- A change of spin frame is involutive on the ORIGINAL vertex carrier. -/
theorem spinFrame_involutive (frame : V → Bool) (f : V → ℝ) :
    spinFrame frame (spinFrame frame f) = f := by
  funext a
  change bitSign ℝ (frame a) * (bitSign ℝ (frame a) * f a) = f a
  have hs := bitSign_sq_one (frame a)
  calc
    bitSign ℝ (frame a) * (bitSign ℝ (frame a) * f a) =
      (bitSign ℝ (frame a)) ^ 2 * f a := by ring
    _ = f a := by rw [hs]; ring

/-- A phase that is exactly the XOR of its endpoint frames is a
coboundary. Its signed BACKWARD step is conjugate to the unsigned
backward Markov step, so it has no automatic strict spectral decay. -/
theorem signedStep_of_coboundary (D : EventDiffusion V)
    (frame : V → Bool)
    (hphase : ∀ e : Event V,
      D.phase e = (frame e.1).xor (frame e.2.1))
    (f : V → ℝ) :
    D.signedStep (spinFrame frame f) =
      spinFrame frame (D.plainStep f) := by
  funext a
  change
    (∑ e : Event V, if e.1 = a then
      D.weight e * bitSign ℝ (D.phase e) *
        (bitSign ℝ (frame e.2.1) * f e.2.1) else 0) =
      bitSign ℝ (frame a) *
        (∑ e : Event V, if e.1 = a then
          D.weight e * f e.2.1 else 0)
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro e _
  by_cases he : e.1 = a
  · simp only [if_pos he, hphase e, bitSign_xor]
    rw [← he]
    have hs := bitSign_sq_one (frame e.2.1)
    calc
      D.weight e *
          (bitSign ℝ (frame e.1) * bitSign ℝ (frame e.2.1)) *
            (bitSign ℝ (frame e.2.1) * f e.2.1) =
        bitSign ℝ (frame e.1) *
          ((bitSign ℝ (frame e.2.1)) ^ 2) *
            (D.weight e * f e.2.1) := by ring
      _ = bitSign ℝ (frame e.1) * (D.weight e * f e.2.1) := by
        rw [hs]
        ring
  · simp [he]

/-- Conjugacy statement on a source-identical operator, not merely
an analogy between different stochastic kernels. -/
theorem signedStep_conjugate_of_coboundary (D : EventDiffusion V)
    (frame : V → Bool)
    (hphase : ∀ e : Event V,
      D.phase e = (frame e.1).xor (frame e.2.1))
    (f : V → ℝ) :
    D.signedStep f =
      spinFrame frame (D.plainStep (spinFrame frame f)) := by
  have h := signedStep_of_coboundary D frame hphase (spinFrame frame f)
  rw [spinFrame_involutive] at h
  exact h

/-- The nonzero sign-valued gauge field is fixed by signed diffusion
whenever its phases are a coboundary. In particular a strict global
decay estimate cannot follow from stochasticity alone. -/
theorem signedStep_fixed_spinFrame_of_coboundary (D : EventDiffusion V)
    (frame : V → Bool)
    (hphase : ∀ e : Event V,
      D.phase e = (frame e.1).xor (frame e.2.1)) :
    D.signedStep (fun a => bitSign ℝ (frame a)) =
      (fun a => bitSign ℝ (frame a)) := by
  have h := signedStep_of_coboundary D frame hphase
    (fun _ => (1 : ℝ))
  rw [D.plainStep_one] at h
  simpa only [spinFrame, mul_one] using h

section ExactForwardMass

variable [∀ a b : V, Fintype (a ⟶ b)]

/-- Full incoming plain transport preserves total mass by the existing
exact source-row EdgeKernel adapter. No column-stochastic premise is
silently added to `EventDiffusion`. -/
theorem plainPush_total (D : EventDiffusion V) (m : V → ℝ) :
    (∑ b : V, plainPush D m b) = ∑ a : V, m a := by
  calc
    (∑ b : V, plainPush D m b) =
        ∑ b : V, (asEdgeKernel D).step m b := by
          apply Finset.sum_congr rfl
          intro b _
          exact plainPush_eq_edgeKernel_step D m b
    _ = ∑ a : V, m a := (asEdgeKernel D).total_step m

/-- For arbitrary signed input, the signed forward push is nonexpansive
in the counting-measure L¹ norm. -/
theorem signedPush_l1_le (D : EventDiffusion V) (m : V → ℝ) :
    (∑ b : V, |signedPush D m b|) ≤ ∑ a : V, |m a| := by
  calc
    (∑ b : V, |signedPush D m b|) ≤
        ∑ b : V, plainPush D (fun a => |m a|) b :=
          Finset.sum_le_sum (fun b _ => signedPush_abs_le_plainPush D m b)
    _ = ∑ a : V, |m a| := plainPush_total D (fun a => |m a|)

/-- Iterate the unsigned incoming density operator using the same
recursion orientation as the existing signed forward evolution. -/
def plainPushEvolve (D : EventDiffusion V)
    (m : V → ℝ) : ℕ → V → ℝ
  | 0 => m
  | n + 1 => plainPushEvolve D (plainPush D m) n

theorem plainPushEvolve_mono (D : EventDiffusion V)
    (m k : V → ℝ) (hmk : ∀ a, m a ≤ k a)
    (n : ℕ) (b : V) :
    plainPushEvolve D m n b ≤ plainPushEvolve D k n b := by
  induction n generalizing m k with
  | zero => exact hmk b
  | succ n ih =>
      change plainPushEvolve D (plainPush D m) n b ≤
        plainPushEvolve D (plainPush D k) n b
      exact ih (plainPush D m) (plainPush D k)
        (fun a => plainPush_mono D m k hmk a)

theorem plainPushEvolve_total (D : EventDiffusion V)
    (m : V → ℝ) (n : ℕ) :
    (∑ b : V, plainPushEvolve D m n b) = ∑ a : V, m a := by
  induction n generalizing m with
  | zero => rfl
  | succ n ih =>
      change (∑ b : V, plainPushEvolve D (plainPush D m) n b) =
        ∑ a : V, m a
      exact (ih (plainPush D m)).trans (plainPush_total D m)

/-- A signed multi-step process is dominated vertex by vertex by the
plain multi-step transport of the ORIGINAL absolute input. -/
theorem signedPushEvolve_abs_le_plainPushEvolve (D : EventDiffusion V)
    (m : V → ℝ) (n : ℕ) (b : V) :
    |signedPushEvolve D m n b| ≤
      plainPushEvolve D (fun a => |m a|) n b := by
  induction n generalizing m with
  | zero => exact le_refl _
  | succ n ih =>
      change |signedPushEvolve D (signedPush D m) n b| ≤
        plainPushEvolve D (plainPush D (fun a => |m a|)) n b
      exact (ih (signedPush D m)).trans
        (plainPushEvolve_mono D
          (fun a => |signedPush D m a|)
          (plainPush D (fun a => |m a|))
          (fun a => signedPush_abs_le_plainPush D m a) n b)

/-- Total variation cannot grow on the signed odd sector, for any
finite number of steps. The plain evolution is mass-conserving,
but the signed one is NOT thereby a positive Markov kernel. -/
theorem signedPushEvolve_l1_le (D : EventDiffusion V)
    (m : V → ℝ) (n : ℕ) :
    (∑ b : V, |signedPushEvolve D m n b|) ≤
      ∑ a : V, |m a| := by
  calc
    (∑ b : V, |signedPushEvolve D m n b|) ≤
        ∑ b : V, plainPushEvolve D (fun a => |m a|) n b :=
          Finset.sum_le_sum (fun b _ =>
            signedPushEvolve_abs_le_plainPushEvolve D m n b)
    _ = ∑ a : V, |m a| := plainPushEvolve_total D (fun a => |m a|) n

end ExactForwardMass

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomySignedDomination
end
