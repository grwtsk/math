/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.PrimeOrbitHolonomy
import Mathlib.Tactic

/-!
# Prime-orbit abelian spin network: gauge law and vertex intertwiners

Geometric primary source: Alain Connes and Caterina Consani,
"Knots, primes and class field theory", arXiv:2501.06560v1 (2025).
This work identifies prime periodic-orbit monodromy with Frobenius in
finite abelian covers. The graph used here is ADDITIONAL CHOSEN data;
no canonical graph connecting different primes is claimed.

For additive abelian G and phase group P, an edge is labeled by an
additive character G ->+ P. Choosing P = Additive (Units ℂ) realizes
multiplicative U(1) character phases. At a vertex v the intertwiner
condition is equality of outgoing and incoming product characters.
Every edge remains present, including loops and parallel edges.

The complete gauge-variation equation, and its local necessary-and-
sufficient condition, are formal candidates below. This uses neither
an arithmetic Weil positivity premise nor an assumed RH/GRH conclusion.

For finite abelian G, finite Fourier orthogonality additionally gives
a COMPLETE orthonormal basis of L²(G^E)^(G^V) from balanced labels.
That Hilbert-space completeness theorem is NOT Lean-formalized here;
the code proves only its exact finite gauge/Gauss algebra, contingent
on successful future elaboration and source-bound checking.

The full Weil form, gamma factors, ramified sectors, pole terms, and
unbounded spectral domains require a separate source-preserving bridge.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.PrimeSpinNetworkCore

variable {V E G P : Type*} [Fintype V] [Fintype E] [DecidableEq V]
variable [AddCommGroup G] [AddCommGroup P]

/-- Chosen directed graph: loops and parallel edges are allowed. -/
structure Graph (V E : Type*) where
  source : E → V
  target : E → V

variable (Γ : Graph V E)

/-- A change of vertex trivialization on each oriented edge. -/
def gauge (connection : E → G) (h : V → G) : E → G :=
  fun e => connection e + h (Γ.source e) - h (Γ.target e)

/-- One-dimensional edge representation data. -/
abbrev Labels (E G P : Type*) [AddCommGroup G] [AddCommGroup P] :=
  E → (G →+ P)

/-- Contract the edge-character factors, in additive phase coordinates. -/
def amplitude (labels : Labels E G P) (connection : E → G) : P :=
  ∑ e : E, labels e (connection e)

/-- Product character on edges exiting v. -/
def outgoing (labels : Labels E G P) (v : V) (g : G) : P :=
  ∑ e : E, if Γ.source e = v then labels e g else 0

/-- Product character on edges entering v. -/
def incoming (labels : Labels E G P) (v : V) (g : G) : P :=
  ∑ e : E, if Γ.target e = v then labels e g else 0

/-- Defect of the vertex intertwiner equation. -/
def divergence (labels : Labels E G P) (v : V) (g : G) : P :=
  outgoing Γ labels v g - incoming Γ labels v g

/-- Every vertex must conserve its representation label for every g. -/
def GaussLaw (labels : Labels E G P) : Prop :=
  ∀ v : V, ∀ g : G, divergence Γ labels v g = 0

/-- Invariance under ALL connections and ALL vertex gauges. -/
def GaugeInvariant (labels : Labels E G P) : Prop :=
  ∀ (connection : E → G) (h : V → G),
    amplitude labels (gauge Γ connection h) = amplitude labels connection

private theorem regroup_source (labels : Labels E G P) (h : V → G) :
    (∑ e : E, labels e (h (Γ.source e))) =
      ∑ v : V, outgoing Γ labels v (h v) := by
  classical
  calc
    (∑ e : E, labels e (h (Γ.source e))) =
        ∑ e : E, ∑ v : V,
          if Γ.source e = v then labels e (h v) else 0 := by
      apply Finset.sum_congr rfl
      intro e he
      simp
    _ = ∑ v : V, ∑ e : E,
          if Γ.source e = v then labels e (h v) else 0 := Finset.sum_comm
    _ = ∑ v : V, outgoing Γ labels v (h v) := rfl

private theorem regroup_target (labels : Labels E G P) (h : V → G) :
    (∑ e : E, labels e (h (Γ.target e))) =
      ∑ v : V, incoming Γ labels v (h v) := by
  classical
  calc
    (∑ e : E, labels e (h (Γ.target e))) =
        ∑ e : E, ∑ v : V,
          if Γ.target e = v then labels e (h v) else 0 := by
      apply Finset.sum_congr rfl
      intro e he
      simp
    _ = ∑ v : V, ∑ e : E,
          if Γ.target e = v then labels e (h v) else 0 := Finset.sum_comm
    _ = ∑ v : V, incoming Γ labels v (h v) := rfl

/-- The exact signed gauge defect: all vertices and edges are retained. -/
theorem amplitude_gauge (labels : Labels E G P)
    (connection : E → G) (h : V → G) :
    amplitude labels (gauge Γ connection h) =
      amplitude labels connection +
        ∑ v : V, divergence Γ labels v (h v) := by
  classical
  unfold amplitude gauge
  calc
    (∑ e : E, labels e
       (connection e + h (Γ.source e) - h (Γ.target e))) =
      (∑ e : E, labels e (connection e)) +
        (∑ e : E, labels e (h (Γ.source e))) -
        (∑ e : E, labels e (h (Γ.target e))) := by
      simp only [map_add, map_sub,
        Finset.sum_add_distrib, Finset.sum_sub_distrib]
    _ = (∑ e : E, labels e (connection e)) +
        (∑ v : V, outgoing Γ labels v (h v)) -
        (∑ v : V, incoming Γ labels v (h v)) := by
      rw [regroup_source Γ labels h, regroup_target Γ labels h]
    _ = (∑ e : E, labels e (connection e)) +
        ∑ v : V, divergence Γ labels v (h v) := by
      simp only [divergence, Finset.sum_sub_distrib]
      abel

private def pointGauge (v : V) (g : G) : V → G :=
  fun w => if w = v then g else 0

private theorem detect_vertex (labels : Labels E G P)
    (v : V) (g : G) :
    (∑ w : V, divergence Γ labels w (pointGauge v g w)) =
      divergence Γ labels v g := by
  classical
  have hzero (w : V) :
      divergence Γ labels w (0 : G) = 0 := by
    simp [divergence, outgoing, incoming]
  simp [pointGauge, hzero]

/-- Full algebraic completion: local intertwiners iff all-gauge invariance. -/
theorem gaugeInvariant_iff_gaussLaw (labels : Labels E G P) :
    GaugeInvariant Γ labels ↔ GaussLaw Γ labels := by
  constructor
  · intro hinvariant v g
    let h : V → G := pointGauge v g
    have h0 : amplitude labels (fun _ => 0) = 0 := by
      simp [amplitude]
    have hEq := hinvariant (fun _ => 0) h
    rw [amplitude_gauge, h0] at hEq
    simp only [zero_add] at hEq
    change (∑ w : V, divergence Γ labels w (pointGauge v g w)) = 0 at hEq
    rw [detect_vertex Γ labels v g] at hEq
    exact hEq
  · intro hgauss connection h
    rw [amplitude_gauge]
    have hsum : (∑ v : V, divergence Γ labels v (h v)) = 0 := by
      apply Finset.sum_eq_zero
      intro v hv
      exact hgauss v (h v)
    simp [hsum]

end GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.PrimeSpinNetworkCore
