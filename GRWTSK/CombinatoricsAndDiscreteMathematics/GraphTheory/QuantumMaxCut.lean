/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and licenses. -/

import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy

set_option autoImplicit false

/-!
# The finite diagonal MaxCut Hamiltonian and its Born expectation

We retain the exact edge-representative carrier of `SpinCutEnergy`.
For a finite vertex type, a computational-basis configuration is a Boolean
spin assignment. Complex amplitudes are functions on those configurations.

The cost Hamiltonian is a complex-linear *diagonal* operator. Its eigenvalue
on a computational-basis configuration is the classical cut size, equivalently
the sum of (1 - Z_u Z_v)/2 eigenvalues over the represented undirected edges.
The real quadratic expectation equals the Born-weighted classical cut value.
A unit-normalized amplitude therefore has expected cost between zero and the
maximum cut. The earlier double-oriented graph energy has factor eight.

This does not define QAOA cost/mixer exponentials or establish any circuit
depth, light-cone, graph-girth, SK, Gaussian, or Parisi limit.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QuantumMaxCut

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy

variable {V : Type*} [Fintype V] [DecidableEq V]

/-- Finite computational-basis configurations (one Boolean spin per vertex). -/
abbrev Configuration (V : Type*) := V → Bool

/-- The eigenvalue of the edge operator (I - Z_u Z_v)/2. -/
def pauliZEdgeCost (a b : Bool) : ℝ :=
  (1 - spin a * spin b) / 2

theorem pauliZEdgeCost_eq_cutIndicator (a b : Bool) :
    pauliZEdgeCost a b = cutIndicator a b := by
  cases a <;> cases b <;> norm_num [pauliZEdgeCost, spin, cutIndicator]

/-- The paper's 1/2 sum of identity-minus-Pauli-Z-pair eigenvalues agrees
with the classical one-count-per-undirected-edge cut objective. -/
theorem cutSize_eq_pauliZ_sum
    (G : SimpleEdgePresentation V) (σ : Configuration V) :
    cutSize G σ =
      ∑ e ∈ G.edges, pauliZEdgeCost (σ e.1) (σ e.2) := by
  unfold cutSize
  apply Finset.sum_congr rfl
  intro e he
  exact (pauliZEdgeCost_eq_cutIndicator (σ e.1) (σ e.2)).symm

/-- The diagonal cost Hamiltonian acts on complex-valued amplitude vectors. -/
noncomputable def diagonalHamiltonian (G : SimpleEdgePresentation V) :
    (Configuration V → ℂ) →ₗ[ℂ] (Configuration V → ℂ) where
  toFun ψ σ := (cutSize G σ : ℂ) * ψ σ
  map_add' := by
    intro ψ φ
    funext σ
    change (cutSize G σ : ℂ) * (ψ σ + φ σ) =
      (cutSize G σ : ℂ) * ψ σ + (cutSize G σ : ℂ) * φ σ
    ring
  map_smul' := by
    intro c ψ
    funext σ
    change (cutSize G σ : ℂ) * (c * ψ σ) =
      c * ((cutSize G σ : ℂ) * ψ σ)
    ring

theorem diagonalHamiltonian_apply (G : SimpleEdgePresentation V)
    (ψ : Configuration V → ℂ) (σ : Configuration V) :
    diagonalHamiltonian G ψ σ = (cutSize G σ : ℂ) * ψ σ := rfl

/-- The diagonal operator is the computational-basis realization of
the standard MaxCut cost `(1/2) ∑ (I - Z_u Z_v)`. -/
theorem diagonalHamiltonian_apply_pauliZ
    (G : SimpleEdgePresentation V) (ψ : Configuration V → ℂ)
    (σ : Configuration V) :
    diagonalHamiltonian G ψ σ =
      ((∑ e ∈ G.edges, pauliZEdgeCost (σ e.1) (σ e.2) : ℝ) : ℂ) * ψ σ := by
  rw [diagonalHamiltonian_apply, cutSize_eq_pauliZ_sum]

/-- The amplitude vector of a computational-basis spin assignment. -/
noncomputable def basisState (τ : Configuration V) : Configuration V → ℂ := by
  classical
  exact fun σ => if σ = τ then 1 else 0

/-- Each computational-basis state is an eigenvector with its classical cut
value. No optimization, evolution, or physical sampling claim is used. -/
theorem diagonalHamiltonian_basis_eigenvector
    (G : SimpleEdgePresentation V) (τ : Configuration V) :
    diagonalHamiltonian G (basisState τ) =
      (cutSize G τ : ℂ) • basisState τ := by
  classical
  funext σ
  change (cutSize G σ : ℂ) * (if σ = τ then 1 else 0) =
    (cutSize G τ : ℂ) * (if σ = τ then 1 else 0)
  by_cases h : σ = τ
  · subst σ
    simp
  · simp [h]

/-- Squared complex amplitude: the Born weight of one basis outcome. -/
def bornWeight (ψ : Configuration V → ℂ) (σ : Configuration V) : ℝ :=
  Complex.normSq (ψ σ)

theorem bornWeight_nonneg (ψ : Configuration V → ℂ)
    (σ : Configuration V) : 0 ≤ bornWeight ψ σ :=
  Complex.normSq_nonneg (ψ σ)

/-- Unit total Born probability; this is the exact normalization required
for comparison with the maximum classical cut. -/
def IsNormalized (ψ : Configuration V → ℂ) : Prop :=
  (∑ σ : Configuration V, bornWeight ψ σ) = 1

/-- The Born-weighted classical cut value. -/
noncomputable def bornCutAverage (G : SimpleEdgePresentation V)
    (ψ : Configuration V → ℂ) : ℝ :=
  ∑ σ : Configuration V, bornWeight ψ σ * cutSize G σ

/-- The real quadratic form of the diagonal cost operator. -/
noncomputable def hamiltonianExpectation (G : SimpleEdgePresentation V)
    (ψ : Configuration V → ℂ) : ℝ :=
  ∑ σ : Configuration V,
    (Complex.conj (ψ σ) * diagonalHamiltonian G ψ σ).re

/-- For any complex amplitude and real eigenvalue, the diagonal quadratic
form is exactly the Born weight times that eigenvalue. -/
private theorem diagonal_term_eq_bornWeight (z : ℂ) (t : ℝ) :
    (Complex.conj z * ((t : ℂ) * z)).re = Complex.normSq z * t := by
  have h :
      Complex.conj z * ((t : ℂ) * z) =
        (Complex.normSq z : ℂ) * (t : ℂ) := by
    calc
      _ = (Complex.conj z * z) * (t : ℂ) := by ring
      _ = (Complex.normSq z : ℂ) * (t : ℂ) := by
        rw [Complex.normSq_eq_conj_mul_self]
  calc
    _ = ((Complex.normSq z : ℂ) * (t : ℂ)).re :=
      congrArg Complex.re h
    _ = Complex.normSq z * t := by simp [Complex.mul_re]

/-- Exact finite-dimensional Hamiltonian expectation / Born-average bridge. -/
theorem hamiltonianExpectation_eq_bornCutAverage
    (G : SimpleEdgePresentation V) (ψ : Configuration V → ℂ) :
    hamiltonianExpectation G ψ = bornCutAverage G ψ := by
  classical
  unfold hamiltonianExpectation bornCutAverage
  apply Finset.sum_congr rfl
  intro σ hσ
  change (Complex.conj (ψ σ) *
      ((cutSize G σ : ℂ) * ψ σ)).re =
      bornWeight ψ σ * cutSize G σ
  exact diagonal_term_eq_bornWeight (ψ σ) (cutSize G σ)

/-- The same expected cost is one eighth of the Born-averaged energy
using both orientations of each undirected edge. -/
theorem hamiltonianExpectation_eq_orientedEnergy
    (G : SimpleEdgePresentation V) (ψ : Configuration V → ℂ) :
    hamiltonianExpectation G ψ =
      (1 / 8 : ℝ) *
        ∑ σ : Configuration V, bornWeight ψ σ * orientedEnergy G σ := by
  rw [hamiltonianExpectation_eq_bornCutAverage]
  unfold bornCutAverage
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro σ hσ
  rw [orientedEnergy_eq_eight_cutSize]
  ring

/-- Maximum classical cut among finitely many spin assignments. -/
noncomputable def maxCut (G : SimpleEdgePresentation V) : ℝ := by
  classical
  let s : Finset ℝ := Finset.univ.image (cutSize G)
  have hs : s.Nonempty := by
    refine ⟨cutSize G (fun _ => false), ?_⟩
    exact Finset.mem_image.mpr
      ⟨(fun _ => false), Finset.mem_univ _, rfl⟩
  exact s.max' hs

/-- The maximum cut bounds every classical spin configuration. -/
theorem cutSize_le_maxCut (G : SimpleEdgePresentation V)
    (σ : Configuration V) : cutSize G σ ≤ maxCut G := by
  classical
  simpa [maxCut] using
    (Finset.univ.image (cutSize G)).le_max' (cutSize G σ)
      (Finset.mem_image.mpr ⟨σ, Finset.mem_univ _, rfl⟩)

/-- Nonnegativity of every classical cut size. -/
theorem cutSize_nonneg (G : SimpleEdgePresentation V)
    (σ : Configuration V) : 0 ≤ cutSize G σ := by
  unfold cutSize
  apply Finset.sum_nonneg
  intro e he
  by_cases h : σ e.1 = σ e.2
  · simp [cutIndicator, h]
  · simp [cutIndicator, h]

/-- Any complex amplitude vector has nonnegative diagonal cost. -/
theorem hamiltonianExpectation_nonneg
    (G : SimpleEdgePresentation V) (ψ : Configuration V → ℂ) :
    0 ≤ hamiltonianExpectation G ψ := by
  rw [hamiltonianExpectation_eq_bornCutAverage]
  unfold bornCutAverage
  apply Finset.sum_nonneg
  intro σ hσ
  exact mul_nonneg (bornWeight_nonneg ψ σ) (cutSize_nonneg G σ)

/-- A normalized measurement distribution cannot exceed the classical
MaxCut optimum. This is a finite inequality, not an asymptotic claim. -/
theorem hamiltonianExpectation_le_maxCut
    (G : SimpleEdgePresentation V) (ψ : Configuration V → ℂ)
    (hnorm : IsNormalized ψ) :
    hamiltonianExpectation G ψ ≤ maxCut G := by
  rw [hamiltonianExpectation_eq_bornCutAverage]
  unfold bornCutAverage
  calc
    (∑ σ : Configuration V, bornWeight ψ σ * cutSize G σ) ≤
        ∑ σ : Configuration V, bornWeight ψ σ * maxCut G := by
      apply Finset.sum_le_sum
      intro σ hσ
      exact mul_le_mul_of_nonneg_left (cutSize_le_maxCut G σ)
        (bornWeight_nonneg ψ σ)
    _ = (∑ σ : Configuration V, bornWeight ψ σ) * maxCut G := by
      simp [Finset.sum_mul]
    _ = maxCut G := by
      rw [show (∑ σ : Configuration V, bornWeight ψ σ) = 1 from hnorm]
      ring

/-- Every computational-basis vector has Born mass one. -/
theorem basisState_normalized (τ : Configuration V) :
    IsNormalized (basisState τ) := by
  classical
  simp [IsNormalized, bornWeight, basisState]

/-- A computational-basis state has exactly its classical cut expectation. -/
theorem hamiltonianExpectation_basisState
    (G : SimpleEdgePresentation V) (τ : Configuration V) :
    hamiltonianExpectation G (basisState τ) = cutSize G τ := by
  rw [hamiltonianExpectation_eq_bornCutAverage]
  classical
  simp [bornCutAverage, bornWeight, basisState]

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QuantumMaxCut
