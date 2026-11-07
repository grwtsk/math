/- Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.SpinHolonomyEventWalk
import Mathlib.Tactic

/-!
# Finite spin-holonomy diffusion on tagged quiver events

Reuses the SOURCE SpinHolonomyEventWalk.Event, isingSign,
spinGaugedEdge, walkWeight, ValidFrom and finish. Each edge retains
the original source, target and full arrow identity, including loops
and parallel arrows. Source: grwtsk/math at
727ad4913c1a07b0cedb4a6d59b6f71a1bf7009a, SpinHolonomyEventWalk
blob acac42be6025c42e11ac82447f996d8148721a99.

For arbitrary real edge link W and nonnegative edge conductance c,
construct the signed gradient and energy E(f)=sum_e c_e (D_W f)_e²,
the incidence-transpose Laplacian and its Euler step.

This source candidate proves the finite gauge law, nonnegative energy,
the exact discrete Green identity and squared-mass Euler balance.
A negative-holonomy closed event walk forces any parallel section to
vanish at its root. The optional Euler contraction consumer requires
a paid estimate on the full Laplacian norm, NOT just energy positivity.

For links in {+1,-1}, the independent analytic Cauchy-Schwarz bound
||Lf||² <= 4 (sum_e c_e) E(f) gives uniform Euler contraction for
0<=h<=1/(2 sum_e c_e) when the sum is positive, even with loops.
The factor 4 is sharp for a negative self-loop. This finite
universal estimate is not a Lean declaration in this file.

A negative link can produce a negative off-diagonal Euler entry:
this is not an entrywise-positive Markov kernel or coverage heat.
The chosen graph and energy are NOT the complete adelic geometry,
the full Weil form, a gamma-factor return, or RH/Dirichlet GRH.
Related magnetic graph Laplacian results are established mathematics;
theorem-level novelty is not claimed. No Lean or independent review run.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyDiffusion

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyEventWalk
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace

variable {V : Type*} [Quiver V] [Fintype V] [Fintype (Event V)] [DecidableEq V]

def incidence (W : Event V → ℝ) (e : Event V) (v : V) : ℝ :=
  (if e.1 = v then 1 else 0) -
    W e * (if e.2.1 = v then 1 else 0)

def gradient (W : Event V → ℝ) (f : V → ℝ) (e : Event V) : ℝ :=
  f e.1 - W e * f e.2.1

def energy (W c : Event V → ℝ) (f : V → ℝ) : ℝ :=
  ∑ e : Event V, c e * (gradient W f e) ^ 2

def laplace (W c : Event V → ℝ) (f : V → ℝ) (v : V) : ℝ :=
  ∑ e : Event V, c e * gradient W f e * incidence W e v

def diffuse (W c : Event V → ℝ) (h : ℝ) (f : V → ℝ) : V → ℝ :=
  fun v => f v - h * laplace W c f v

def squareMass (f : V → ℝ) : ℝ :=
  ∑ v : V, (f v) ^ 2

def gaugeSection (σ : V → Bool) (f : V → ℝ) : V → ℝ :=
  fun v => isingSign (R := ℝ) σ v * f v

def gaugeConnection (σ : V → Bool) (W : Event V → ℝ) : Event V → ℝ :=
  spinGaugedEdge W σ

theorem energy_nonneg (W c : Event V → ℝ) (f : V → ℝ)
    (hc : ∀ e, 0 ≤ c e) : 0 ≤ energy W c f := by
  unfold energy
  apply Finset.sum_nonneg
  intro e he
  exact mul_nonneg (hc e) (sq_nonneg _)

theorem gradient_gauge (W : Event V → ℝ)
    (σ : V → Bool) (f : V → ℝ) (e : Event V) :
    gradient (gaugeConnection σ W) (gaugeSection σ f) e =
      isingSign (R := ℝ) σ e.1 * gradient W f e := by
  let s : ℝ := isingSign (R := ℝ) σ e.1
  let t : ℝ := isingSign (R := ℝ) σ e.2.1
  have ht : t * t = 1 := by
    simpa only [t] using (isingSign_sq (R := ℝ) σ e.2.1)
  change s * f e.1 - (s * W e * t) * (t * f e.2.1) =
    s * (f e.1 - W e * f e.2.1)
  calc
    _ = s * f e.1 - s * W e * (t * t) * f e.2.1 := by ring
    _ = _ := by rw [ht]; ring

theorem energy_gauge (W c : Event V → ℝ)
    (σ : V → Bool) (f : V → ℝ) :
    energy (gaugeConnection σ W) c (gaugeSection σ f) =
      energy W c f := by
  unfold energy
  apply Finset.sum_congr rfl
  intro e he
  rw [gradient_gauge]
  have hs : isingSign (R := ℝ) σ e.1 *
      isingSign (R := ℝ) σ e.1 = 1 :=
    isingSign_sq (R := ℝ) σ e.1
  calc
    c e * (isingSign (R := ℝ) σ e.1 * gradient W f e) ^ 2 =
      c e * (isingSign (R := ℝ) σ e.1 *
        isingSign (R := ℝ) σ e.1) * (gradient W f e) ^ 2 := by ring
    _ = c e * (gradient W f e) ^ 2 := by rw [hs]; ring

theorem incidence_pair (W : Event V → ℝ) (f : V → ℝ)
    (e : Event V) :
    (∑ v : V, incidence W e v * f v) = gradient W f e := by
  classical
  simp [incidence, gradient, sub_mul, Finset.sum_sub_distrib,
    Finset.mul_sum, mul_ite, mul_assoc]

theorem green_identity (W c : Event V → ℝ) (f g : V → ℝ) :
    (∑ v : V, f v * laplace W c g v) =
      ∑ e : Event V, c e * gradient W f e * gradient W g e := by
  classical
  unfold laplace
  calc
    (∑ v : V, f v *
       ∑ e : Event V, c e * gradient W g e * incidence W e v) =
      ∑ v : V, ∑ e : Event V,
         f v * (c e * gradient W g e * incidence W e v) := by
        simp only [Finset.mul_sum]
    _ = ∑ e : Event V, ∑ v : V,
         f v * (c e * gradient W g e * incidence W e v) :=
        Finset.sum_comm
    _ = ∑ e : Event V, c e * gradient W g e *
         (∑ v : V, incidence W e v * f v) := by
        apply Finset.sum_congr rfl
        intro e he
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro v hv
        ring
    _ = ∑ e : Event V, c e * gradient W f e * gradient W g e := by
        apply Finset.sum_congr rfl
        intro e he
        rw [incidence_pair]
        ring

theorem laplace_quadratic (W c : Event V → ℝ) (f : V → ℝ) :
    (∑ v : V, f v * laplace W c f v) = energy W c f := by
  simpa [energy] using (green_identity W c f f)

theorem diffuse_squareMass (W c : Event V → ℝ)
    (h : ℝ) (f : V → ℝ) :
    squareMass (diffuse W c h f) = squareMass f -
      2 * h * energy W c f +
        h ^ 2 * squareMass (laplace W c f) := by
  unfold squareMass diffuse
  rw [← laplace_quadratic W c f]
  calc
    (∑ v : V, (f v - h * laplace W c f v) ^ 2) =
        ∑ v : V, ((f v) ^ 2 -
          2 * h * (f v * laplace W c f v) +
          h ^ 2 * (laplace W c f v) ^ 2) := by
            apply Finset.sum_congr rfl
            intro v hv
            ring
    _ = _ := by
      simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib,
        ← Finset.mul_sum]
      ring

theorem diffuse_contractive_of_paid_bound (W c : Event V → ℝ)
    (h : ℝ) (f : V → ℝ) (hh : 0 ≤ h)
    (paid : h * squareMass (laplace W c f) ≤ 2 * energy W c f) :
    squareMass (diffuse W c h f) ≤ squareMass f := by
  rw [diffuse_squareMass]
  nlinarith [mul_nonneg hh (sub_nonneg.mpr paid)]

theorem parallel_along_valid_walk
    (W : Event V → ℝ) (f : V → ℝ)
    (root : V) (events : List (Event V))
    (hvalid : ValidFrom root events)
    (hparallel : ∀ e ∈ events, gradient W f e = 0) :
    f root = walkWeight W events * f (finish root events) := by
  induction events generalizing root with
  | nil => simp [walkWeight, finish]
  | cons e tail ih =>
    rcases hvalid with ⟨hsource, htail⟩
    have hgrad : f e.1 = W e * f e.2.1 := by
      have hz := hparallel e (by simp)
      dsimp [gradient] at hz
      linarith
    have hrest : ∀ z ∈ tail, gradient W f z = 0 := by
      intro z hz
      exact hparallel z (by simp [hz])
    have htailEq := ih e.2.1 htail hrest
    calc
      f root = f e.1 := congrArg f hsource.symm
      _ = W e * f e.2.1 := hgrad
      _ = W e * (walkWeight W tail * f (finish e.2.1 tail)) := by
          rw [htailEq]
      _ = walkWeight W (e :: tail) * f (finish root (e :: tail)) := by
          simp only [walkWeight_cons, finish]
          ring

theorem negative_holonomy_forces_root_zero
    (W : Event V → ℝ) (f : V → ℝ)
    (root : V) (events : List (Event V))
    (hvalid : ValidFrom root events)
    (hclosed : finish root events = root)
    (hnegative : walkWeight W events = -1)
    (hparallel : ∀ e ∈ events, gradient W f e = 0) :
    f root = 0 := by
  have hp := parallel_along_valid_walk W f root events hvalid hparallel
  rw [hclosed, hnegative] at hp
  linarith

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyDiffusion
