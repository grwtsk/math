/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib.Analysis.InnerProductSpace.Projection.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# One-point height observation and complete orthogonal regulator defect

This is the REAL Hilbert-space algebra required by the Heegner-point
construction. It is NOT an imported Neron--Tate height theorem and does
NOT construct the analytic central-jet quotient of the Hasse--Weil
L-function. A valid arithmetic consumer must instantiate H as
(E(Q)/tors) tensor_R with the ACTUAL Neron--Tate pairing and supply
the genuine Heegner trace Q.

The scalar observation x |-> <x,Q> is the coefficient of the proposed
map x |-> <x,Q> * lambda_E into the central-jet dual, where lambda_E is
actual evaluation of O_1/(L(E,s)) at s=1.

Its normalized Gram is the complete height along Q, NOT the full
arithmetic regulator in rank >=2. All orthogonal residual terms are
retained. In rank one, if Q=m*G (mod tors) for a genuine integral
Mordell--Weil generator G, the index-square formula follows from
height quadraticity. The Gross--Zagier scalar used downstream remains
an externally proved specific arithmetic theorem, never a new axiom.
-/

namespace GRWTSK.Analysis.InnerProductSpace.HeegnerHeightJetProjection

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℝ H]

/-- An actual inner-product observation, independent of any rank claim. -/
def sourceObservation (Q x : H) : ℝ := inner ℝ x Q

/-- The coefficient of Q in the orthogonal one-point observation. -/
def projectionCoefficient (Q x : H) : ℝ :=
  inner ℝ x Q / inner ℝ Q Q

def projectedVector (Q x : H) : H :=
  projectionCoefficient Q x • Q

def residualVector (Q x : H) : H :=
  x - projectedVector Q x

/-- The normalized Gram of the single observed scalar direction. -/
def observedPairing (Q x y : H) : ℝ :=
  inner ℝ x Q * inner ℝ y Q / inner ℝ Q Q

/-- The exact missing geometric component, not a nonnegative placeholder. -/
def residualPairing (Q x y : H) : ℝ :=
  inner ℝ (residualVector Q x) (residualVector Q y)

/-- The observed direction and original residual reconstruct the WHOLE
source pairing. The nonzero scalar follows for a genuine nontorsion
Neron--Tate vector, but is kept explicit here. -/
theorem source_pairing_eq_observed_add_residual
    (Q x y : H) (hQQ : inner ℝ Q Q ≠ 0) :
    inner ℝ x y = observedPairing Q x y + residualPairing Q x y := by
  unfold observedPairing residualPairing residualVector
    projectedVector projectionCoefficient
  simp only [inner_sub_left, inner_sub_right,
    inner_smul_left, inner_smul_right, conj_trivial]
  rw [real_inner_comm Q x, real_inner_comm Q y]
  field_simp [hQQ]
  ring

/-- The residual is genuinely orthogonal to the observed point. -/
theorem residual_orthogonal_to_source
    (Q x : H) (hQQ : inner ℝ Q Q ≠ 0) :
    inner ℝ (residualVector Q x) Q = 0 := by
  unfold residualVector projectedVector projectionCoefficient
  simp only [inner_sub_left, inner_smul_left, conj_trivial]
  field_simp [hQQ]
  ring

/-- Source norm cannot be smaller than its rank-one observation norm.
The difference is the EXACT squared norm of the actual residual. -/
theorem source_norm_defect_nonneg
    (Q x : H) (hQQ : inner ℝ Q Q ≠ 0) :
    0 ≤ inner ℝ x x - observedPairing Q x x := by
  have hr : 0 ≤ residualPairing Q x x := by
    unfold residualPairing
    rw [real_inner_self_eq_norm_sq]
    exact sq_nonneg _
  have hd := source_pairing_eq_observed_add_residual Q x x hQQ
  linarith

variable {ι : Type*} [Fintype ι]

def originalGram (P : ι → H) : Matrix ι ι ℝ :=
  fun i j => inner ℝ (P i) (P j)

def observedGram (Q : H) (P : ι → H) : Matrix ι ι ℝ :=
  fun i j => observedPairing Q (P i) (P j)

def residualGram (Q : H) (P : ι → H) : Matrix ι ι ℝ :=
  fun i j => residualPairing Q (P i) (P j)

/-- The full Gram retains all cross terms, including the orthogonal
sector; replacing it by the observed Gram alone is invalid in rank >1. -/
theorem originalGram_eq_observed_add_residual
    (Q : H) (P : ι → H) (hQQ : inner ℝ Q Q ≠ 0) :
    originalGram P = observedGram Q P + residualGram Q P := by
  ext i j
  exact source_pairing_eq_observed_add_residual Q (P i) (P j) hQQ

/-- Source determinant is the determinant of the COMPLETE reconstructed
Gram, NOT the determinant of the observed rank-one Gram alone. -/
theorem original_regulator_det_exact
    [DecidableEq ι] (Q : H) (P : ι → H)
    (hQQ : inner ℝ Q Q ≠ 0) :
    (originalGram P).det =
      (observedGram Q P + residualGram Q P).det := by
  rw [originalGram_eq_observed_add_residual Q P hQQ]

/-- Quadraticity of the height along a genuine integral index m. -/
theorem index_square_height
    (G Q : H) (m : ℤ) (hQ : Q = (m : ℝ) • G) :
    inner ℝ Q Q = (m : ℝ) ^ 2 * inner ℝ G G := by
  rw [hQ]
  simp only [inner_smul_left, inner_smul_right, conj_trivial]
  ring

/-- Rank-one regulator from the actual generator and index. No
assumed BSD rank--order comparison enters this equality. -/
theorem index_square_regulator
    (G Q : H) (m : ℤ) (hm : m ≠ 0)
    (hQ : Q = (m : ℝ) • G) :
    inner ℝ G G = inner ℝ Q Q / (m : ℝ) ^ 2 := by
  have hmR : (m : ℝ) ≠ 0 := by exact_mod_cast hm
  rw [index_square_height G Q m hQ]
  field_simp [hmR]
  ring

/-- An explicitly SUPPLIED Gross--Zagier height/derivative equality
transports the true rank-one lattice Gram. This is a conditional
algebraic consequence; it neither proves that analytic identity in Lean
nor assumes a higher-rank BSD comparison. -/
theorem rank_one_regulator_of_gross_zagier
    (G Q : H) (m : ℤ) (hm : m ≠ 0)
    (hQ : Q = (m : ℝ) • G) (kappa Lprime : ℝ)
    (hGrossZagier : inner ℝ Q Q = kappa * Lprime) :
    inner ℝ G G = kappa * Lprime / (m : ℝ) ^ 2 := by
  rw [← hGrossZagier]
  exact index_square_regulator G Q m hm hQ

/-! ## Hostile two-dimensional regulator control

These matrices describe an abstract 2D Euclidean lattice, NOT a claim
about any named elliptic curve. They refute the substitution of a
rank-one observed determinant for the original full Gram. -/

def hostileOriginal : Matrix (Fin 2) (Fin 2) ℝ :=
  !![1, 0; 0, 1]

def hostileObserved : Matrix (Fin 2) (Fin 2) ℝ :=
  !![1, 0; 0, 0]

def hostileResidual : Matrix (Fin 2) (Fin 2) ℝ :=
  !![0, 0; 0, 1]

theorem hostile_original_reconstructs :
    hostileOriginal = hostileObserved + hostileResidual := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [hostileOriginal, hostileObserved, hostileResidual]

theorem hostile_regulator_lost_by_compression :
    hostileOriginal.det = 1 ∧ hostileObserved.det = 0 := by
  constructor <;>
    norm_num [hostileOriginal, hostileObserved, Matrix.det_fin_two]

end GRWTSK.Analysis.InnerProductSpace.HeegnerHeightJetProjection
