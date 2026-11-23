/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
The six finite energy laws are verification targets in
`verification/prime-jacobi-independent.toml`. Specialist review: NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.PrimeKnotJacobiArithmetic
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.RelationSandwich

/-!
# Exact quadratic-energy sandwiches from prime-only graph weights

The certified/lower, candidate/middle and admissible/upper relations
are the REAL existing GRWTSK RelationSandwich. Each observed edge
is charged the nonnegative prime-knot Dirichlet energy on Fin N.
A new middle edge is not a verified theorem: the monotonic energy
law is purely graph-theoretic and independent of proof admission.

Increasing the graph relation can only increase this explicit
nonnegative quadratic form. This establishes an exact mathematical
bound on finite graph-layer evolution, not eigenvalue interlacing
without a compatible selfadjoint operator/min-max principle.

No zeta-zero data, RH theorem, Alpoge proof, positive Weil criterion,
heat semigroup or guessed spectral source is imported.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiGraphSandwichEnergy

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotJacobiArithmetic
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich

open scoped Classical in
/-- The actual source-prime-weighted ordered-pair Dirichlet energy.
If an edge is not present, it contributes zero; existing edges are
charged by their REAL mathematical prime-knot weight. -/
def edgeEnergy {N : ℕ}
    (edge : EdgeRelation (Fin N)) (f : Fin N → ℝ) : ℝ :=
  ∑ i : Fin N, ∑ j : Fin N,
    if edge i j then knotWeight i j * (f i - f j) ^ 2 else 0

theorem edgeEnergy_nonneg {N : ℕ}
    (edge : EdgeRelation (Fin N)) (f : Fin N → ℝ) :
    0 ≤ edgeEnergy edge f := by
  classical
  unfold edgeEnergy
  apply Finset.sum_nonneg
  intro i _
  apply Finset.sum_nonneg
  intro j _
  split_ifs with h
  · exact mul_nonneg (knotWeight_nonneg i j) (sq_nonneg _)
  · exact le_refl 0

/-- A new edge never DECREASES a nonnegative Dirichlet form.
The graph inclusion is an explicit premise, not a property of a
similarly named software graph or candidate algorithm. -/
theorem edgeEnergy_mono {N : ℕ}
    {lower upper : EdgeRelation (Fin N)}
    (h : RelationSandwich.Subrelation lower upper) (f : Fin N → ℝ) :
    edgeEnergy lower f ≤ edgeEnergy upper f := by
  classical
  unfold edgeEnergy
  apply Finset.sum_le_sum
  intro i _
  apply Finset.sum_le_sum
  intro j _
  by_cases hl : lower i j
  · have hu : upper i j := h hl
    simp [hl, hu]
  · by_cases hu : upper i j
    · simpa [hl, hu] using
        (mul_nonneg (knotWeight_nonneg i j) (sq_nonneg (f i - f j)))
    · simp [hl, hu]

/-- Real-valued source-independent spectral-form comparison across all
THREE original certified/candidate/admissible graph-sandwich layers. -/
theorem sandwich_energy_bounds {N : ℕ}
    (S : Sandwich (Fin N)) (f : Fin N → ℝ) :
    edgeEnergy S.lower f ≤ edgeEnergy S.middle f ∧
      edgeEnergy S.middle f ≤ edgeEnergy S.upper f :=
  ⟨edgeEnergy_mono S.lower_le_middle f,
   edgeEnergy_mono S.middle_le_upper f⟩

/-- The full (unrestricted) graph relation recovers precisely the
original prime-knot Dirichlet energy. -/
theorem full_relation_energy_eq_graphEnergy {N : ℕ}
    (f : Fin N → ℝ) :
    edgeEnergy (fun _ _ : Fin N => True) f = graphEnergy f := by
  classical
  simp [edgeEnergy, graphEnergy]

/-- Certified/candidate/admissible energies are ALL bounded by the
full source-prime graph's nonnegative energy. -/
theorem sandwich_energy_le_full {N : ℕ}
    (S : Sandwich (Fin N)) (f : Fin N → ℝ) :
    edgeEnergy S.lower f ≤ graphEnergy f ∧
      edgeEnergy S.middle f ≤ graphEnergy f ∧
      edgeEnergy S.upper f ≤ graphEnergy f := by
  have hu : edgeEnergy S.upper f ≤
      edgeEnergy (fun _ _ : Fin N => True) f :=
    edgeEnergy_mono (by intro i j _; trivial) f
  rw [full_relation_energy_eq_graphEnergy] at hu
  obtain ⟨hlm, hmu⟩ := sandwich_energy_bounds S f
  exact ⟨le_trans hlm (le_trans hmu hu),
    le_trans hmu hu, hu⟩

/-- An invariant graph energy at a fixed signal vanishes when every
source bond difference vanishes. This is a source-level computational
fact, not a theorem that candidate graph edges have proof authority. -/
theorem edgeEnergy_constant_zero {N : ℕ}
    (edge : EdgeRelation (Fin N)) (c : ℝ) :
    edgeEnergy edge (fun _ : Fin N => c) = 0 := by
  classical
  simp [edgeEnergy]

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiGraphSandwichEnergy
