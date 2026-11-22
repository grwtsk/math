/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Root Lean 4.34.1 /
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Elaboration, fresh kernel, transitive axioms: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimeJacobiGmDiscreteDiffusion
import Mathlib.Data.Matrix.Mul
import Mathlib.Tactic

/-!
# Heat / cyclic character phase order is noncommutative

The prime coefficient phase is position dependent and must be
applied BEFORE finite Gm diffusion. For the root finite Dirichlet
second difference L_N and D_t=I+tL_N, and any diagonal phase M_c,
  [D_t,M_c]_(i,j)=t*L_(i,j)*(c_j-c_i).
This is EXACT, with no missing exterior boundary terms. The
previous PrimeJacobiGmDiscreteDiffusion retains the separate
source boundary vector for truncated arithmetic curvature.

The original native Level.cyc phase satisfies 2/3<c<4/3
(mathematical proof in separate original Lean v4.33.1 adapter).
Its exact source typed transport into this root generic theorem
remains an isolated compatibility obligation. It is NOT a
Hilbert-Polya spectral mapping and uses no RH/GRH result.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.AlpogeGmPhaseDiffusionCommutator

open GRWTSK.NumberTheory.AlpogeGmDiscreteDiffusion

/-- The genuine finite coordinate multiplier, not an invented
positive quadratic functional. -/
def multiplier (N : ℕ) (c : Fin N → ℝ) :
    Matrix (Fin N) (Fin N) ℝ := Matrix.diagonal c

/-- Exact heat phase commutator before taking matrix powers.
At every adjacent edge it is t*(c_j-c_i); all other entries vanish.
The difference is generally NONZERO for an original cyclic phase. -/
theorem phase_diffusion_commutator_entry
    (N : ℕ) (t : ℝ) (c : Fin N → ℝ) (i j : Fin N) :
    (diffuseStep N t * multiplier N c -
        multiplier N c * diffuseStep N t) i j =
      t * (dirichletDifference N i j) * (c j - c i) := by
  classical
  simp only [Matrix.sub_apply, multiplier, Matrix.mul_diagonal,
    Matrix.diagonal_mul]
  unfold diffuseStep
  simp only [Matrix.add_apply, Matrix.smul_apply]
  by_cases hij : i = j
  · subst j
    ring
  · have hOne : (1 : Matrix (Fin N) (Fin N) ℝ) i j = 0 := by
      simp [Matrix.one_apply, hij]
    rw [hOne]
    ring

/-- The root finite second difference has only adjacent source
edges. This theorem is an exact source layout identity. -/
theorem dirichletDifference_edge (N : ℕ) (i j : Fin N)
    (hij : i ≠ j) :
    dirichletDifference N i j =
      if Nat.dist i.val j.val = 1 then 1 else 0 := by
  simp [dirichletDifference, hij]

/-- Explicit adjacent-edge version: the two-symbol phase must be
multiplied BEFORE heat; the ordering error is concentrated on
neighboring prime/character symbol changes. -/
theorem phase_diffusion_commutator_edge
    (N : ℕ) (t : ℝ) (c : Fin N → ℝ) (i j : Fin N)
    (hij : i ≠ j) :
    (diffuseStep N t * multiplier N c -
        multiplier N c * diffuseStep N t) i j =
      if Nat.dist i.val j.val = 1 then t * (c j - c i) else 0 := by
  rw [phase_diffusion_commutator_entry,
    dirichletDifference_edge N i j hij]
  split_ifs <;> ring

/-- The heat commutator identifies the EXACT source-order defect,
with no invalid source phase/heat commutation assumption. -/
theorem phase_diffusion_source_order
    (N : ℕ) (t : ℝ) (c : Fin N → ℝ) (v : Fin N → ℝ) :
    (diffuseStep N t).mulVec ((multiplier N c).mulVec v) -
      (multiplier N c).mulVec ((diffuseStep N t).mulVec v) =
      (diffuseStep N t * multiplier N c -
         multiplier N c * diffuseStep N t).mulVec v := by
  rw [Matrix.sub_mulVec, Matrix.mulVec_mulVec,
    Matrix.mulVec_mulVec]

end GRWTSK.NumberTheory.AlpogeGmPhaseDiffusionCommutator
