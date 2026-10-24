/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Model: Band, Beckus and Loewy, arXiv:2402.16703v2, equation (1.1).
The finite comparison is proved here. FreeIDS proves the actual free count limit;
the nonzero-coupling infinite-volume IDS remains a separate obligation.
Mathlib authorship and licenses remain upstream. -/
import GRWTSK.Algebra.LinearAlgebra.Sturmian
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.MatrixCountComparison
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.GapTransport
import Mathlib.Topology.Order.OrderClosed
import Mathlib.Analysis.CStarAlgebra.Matrix

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume

open Matrix GRWTSK.Algebra.LinearAlgebra.Sturmian
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.MatrixCountComparison
open scoped RealInnerProductSpace ComplexOrder
open Filter

/-- Path adjacency on N consecutive sites. No corner joining the endpoints is added. -/
def freeDirichlet (N : ℕ) : Matrix (Fin N) (Fin N) ℝ :=
  fun i j => if i.val + 1 = j.val ∨ j.val + 1 = i.val then 1 else 0

/-- Literal Dirichlet restriction, including an arbitrary integer origin and phase. -/
def hamiltonian (N : ℕ) (α V ξ : ℝ) (origin : ℤ) : Matrix (Fin N) (Fin N) ℝ :=
  freeDirichlet N + diagonal (fun i => potential α V ξ (origin + (i.val : ℤ)))

theorem freeDirichlet_isHermitian (N : ℕ) : (freeDirichlet N).IsHermitian := by
  ext i j
  simp [freeDirichlet, conjTranspose_apply, or_comm]

theorem hamiltonian_isHermitian (N : ℕ) (α V ξ : ℝ) (origin : ℤ) :
    (hamiltonian N α V ξ origin).IsHermitian :=
  (freeDirichlet_isHermitian N).add (Matrix.isHermitian_diagonal _)

theorem hamiltonian_zero (N : ℕ) (α ξ : ℝ) (origin : ℤ) :
    hamiltonian N α 0 ξ origin = freeDirichlet N := by
  simp [hamiltonian, potential_zero]

theorem lower_difference_posSemidef (N : ℕ) (α V ξ : ℝ) (origin : ℤ) :
    (hamiltonian N α V ξ origin -
      (freeDirichlet N + diagonal (fun _ => min V 0))).PosSemidef := by
  have heq : hamiltonian N α V ξ origin -
      (freeDirichlet N + diagonal (fun _ => min V 0)) =
      diagonal (fun i => potential α V ξ (origin + (i.val : ℤ)) - min V 0) := by
    ext i j
    by_cases hij : i = j <;> simp [hamiltonian, hij]
  rw [heq, Matrix.posSemidef_diagonal_iff]
  intro i
  exact sub_nonneg.mpr (potential_between_offsets α V ξ _).1

theorem upper_difference_posSemidef (N : ℕ) (α V ξ : ℝ) (origin : ℤ) :
    ((freeDirichlet N + diagonal (fun _ => max V 0)) -
      hamiltonian N α V ξ origin).PosSemidef := by
  have heq : (freeDirichlet N + diagonal (fun _ => max V 0)) -
      hamiltonian N α V ξ origin =
      diagonal (fun i => max V 0 - potential α V ξ (origin + (i.val : ℤ))) := by
    ext i j
    by_cases hij : i = j <;> simp [hamiltonian, hij]
  rw [heq, Matrix.posSemidef_diagonal_iff]
  intro i
  exact sub_nonneg.mpr (potential_between_offsets α V ξ _).2

private theorem diagonal_quadratic {N : ℕ} (d : Fin N → ℝ)
    (v : EuclideanSpace ℝ (Fin N)) :
    ⟪v, (diagonal d).toEuclideanLin v⟫ = ∑ i, d i * (v i)^2 := by
  simp only [PiLp.inner_apply, Matrix.toLpLin_apply, mulVec_diagonal,
    RCLike.inner_apply, conj_trivial, pow_two]
  apply Finset.sum_congr rfl
  intro i _
  ring

private theorem coordinate_norm {N : ℕ} (v : EuclideanSpace ℝ (Fin N)) :
    ‖v‖^2 = ∑ i, (v i)^2 := by
  simpa [Real.norm_eq_abs, sq_abs] using PiLp.norm_sq_eq_of_L2 (fun _ : Fin N => ℝ) v

theorem hamiltonian_quadratic_bounds (N : ℕ) (α V ξ : ℝ) (origin : ℤ)
    (v : EuclideanSpace ℝ (Fin N)) :
    ⟪v, (freeDirichlet N).toEuclideanLin v⟫ + min V 0 * ‖v‖^2 ≤
      ⟪v, (hamiltonian N α V ξ origin).toEuclideanLin v⟫ ∧
    ⟪v, (hamiltonian N α V ξ origin).toEuclideanLin v⟫ ≤
      ⟪v, (freeDirichlet N).toEuclideanLin v⟫ + max V 0 * ‖v‖^2 := by
  have heq : ⟪v, (hamiltonian N α V ξ origin).toEuclideanLin v⟫ =
      ⟪v, (freeDirichlet N).toEuclideanLin v⟫ +
        ∑ i, potential α V ξ (origin + (i.val : ℤ)) * (v i)^2 := by
    rw [hamiltonian, Matrix.toEuclideanLin, map_add, LinearMap.add_apply, inner_add_right,
      diagonal_quadratic]
  rw [heq, coordinate_norm, Finset.mul_sum, Finset.mul_sum]
  constructor
  · apply add_le_add_right
    apply Finset.sum_le_sum
    intro i _
    exact mul_le_mul_of_nonneg_right (potential_between_offsets α V ξ _).1 (sq_nonneg _)
  · apply add_le_add_right
    apply Finset.sum_le_sum
    intro i _
    exact mul_le_mul_of_nonneg_right (potential_between_offsets α V ξ _).2 (sq_nonneg _)

def freeCount (N : ℕ) (E : ℝ) : ℕ := eigenvalueCount (freeDirichlet_isHermitian N) E

def sturmianCount (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) : ℕ :=
  eigenvalueCount (hamiltonian_isHermitian N α V ξ origin) E

/-- The actual finite-volume comparison, for all energies and both coupling signs. -/
theorem finite_count_comparison (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    freeCount N (E - max V 0) ≤ sturmianCount N α V ξ origin E ∧
      sturmianCount N α V ξ origin E ≤ freeCount N (E - min V 0) := by
  constructor
  · apply eigenvalueCount_le_of_quadratic
      (hamiltonian_isHermitian N α V ξ origin) (freeDirichlet_isHermitian N)
    intro v
    have h := (hamiltonian_quadratic_bounds N α V ξ origin v).2
    convert h using 1
    ring
  · apply eigenvalueCount_le_of_quadratic
      (freeDirichlet_isHermitian N) (hamiltonian_isHermitian N α V ξ origin)
    intro v
    have h := (hamiltonian_quadratic_bounds N α V ξ origin v).1
    nlinarith

def freeNormalizedCount (N : ℕ) (E : ℝ) : ℝ := (freeCount N E : ℝ) / N

def sturmianNormalizedCount (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) : ℝ :=
  (sturmianCount N α V ξ origin E : ℝ) / N

theorem finite_normalized_comparison (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    freeNormalizedCount N (E - max V 0) ≤ sturmianNormalizedCount N α V ξ origin E ∧
    sturmianNormalizedCount N α V ξ origin E ≤ freeNormalizedCount N (E - min V 0) := by
  have h := finite_count_comparison N α V ξ origin E
  constructor
  · exact div_le_div_of_nonneg_right (by exact_mod_cast h.1) (Nat.cast_nonneg N)
  · exact div_le_div_of_nonneg_right (by exact_mod_cast h.2) (Nat.cast_nonneg N)

/-- Pass the proved comparisons to actual pointwise count limits. This theorem
does not assert that either limit exists or identifies it with a spectral IDS. -/
theorem ids_comparison_of_count_limits (α V ξ : ℝ) (origin : ℤ) (free ids : ℝ → ℝ)
    (hfree : ∀ E, Tendsto (fun N => freeNormalizedCount N E) atTop (nhds (free E)))
    (hids : ∀ E, Tendsto (fun N => sturmianNormalizedCount N α V ξ origin E)
      atTop (nhds (ids E))) (E : ℝ) :
    free (E - max V 0) ≤ ids E ∧ ids E ≤ free (E - min V 0) := by
  constructor
  · exact le_of_tendsto_of_tendsto' (hfree _) (hids _) (fun N =>
      (finite_normalized_comparison N α V ξ origin E).1)
  · exact le_of_tendsto_of_tendsto' (hids _) (hfree _) (fun N =>
      (finite_normalized_comparison N α V ξ origin E).2)

/-- The gap-width consumer now uses the proved finite-volume comparison. Actual
count limits, free inverse cuts and an actual gap still have to be supplied. -/
theorem gap_width_le_abs_coupling_of_count_limits
    (α V ξ : ℝ) (origin : ℤ) {S : Set ℝ} {free ids : ℝ → ℝ}
    {label freeEnergy a b : ℝ}
    (hfree : ∀ E, Tendsto (fun N => freeNormalizedCount N E) atTop (nhds (free E)))
    (hids : ∀ E, Tendsto (fun N => sturmianNormalizedCount N α V ξ origin E)
      atTop (nhds (ids E)))
    (hleft : ∀ x, free x ≤ label → x ≤ freeEnergy)
    (hright : ∀ x, label ≤ free x → freeEnergy ≤ x)
    (hgap : GRWTSK.Analysis.OperatorTheory.SpectralTheory.GapTransport.OpenLabelGap S ids label a b) :
    0 < b-a ∧ b-a ≤ |V| := by
  have h := GRWTSK.Analysis.OperatorTheory.SpectralTheory.GapTransport.gap_width_le_of_ids_comparison
    (ids_comparison_of_count_limits α V ξ origin free ids hfree hids) hleft hright hgap
  simpa only [comparison_offset_width] using h


/-!
## Quantitative finite-volume shifted-resolvent supplier

The *literal* Sturmian Dirichlet matrix is converted by pinned Mathlib's
`Matrix.toEuclideanCLM` into a bounded Euclidean operator. Adding the real
scalar `shift` times the identity produces a concrete, quantitative
coercivity margin. This does not assert a gap of the original unshifted
Sturmian Hamiltonian or any infinite-volume spectral theorem.
-/

/-- The bounded real Euclidean operator of the actual finite Sturmian matrix. -/
noncomputable def sturmianCLM (N : ℕ) (α V ξ : ℝ) (origin : ℤ) :
    EuclideanSpace ℝ (Fin N) →L[ℝ] EuclideanSpace ℝ (Fin N) :=
  Matrix.toEuclideanCLM (hamiltonian N α V ξ origin)

/-- A scalar shift of the *actual* finite Sturmian bounded operator. -/
noncomputable def shiftedSturmianCLM (N : ℕ) (α V ξ : ℝ) (origin : ℤ)
    (shift : ℝ) :
    EuclideanSpace ℝ (Fin N) →L[ℝ] EuclideanSpace ℝ (Fin N) :=
  sturmianCLM N α V ξ origin +
    shift • ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin N))

/-- Global quadratic-form lower bound for a shifted finite Sturmian operator.
The unshifted operator can have negative spectrum; the entire norm loss
is explicitly paid by the scalar shift. -/
theorem shiftedSturmian_quadratic_lower (N : ℕ) (α V ξ : ℝ) (origin : ℤ)
    (shift : ℝ) (x : EuclideanSpace ℝ (Fin N)) :
    (shift - ‖sturmianCLM N α V ξ origin‖) * ‖x‖ ^ 2 ≤
      ⟪(shiftedSturmianCLM N α V ξ origin shift) x, x⟫ := by
  have hbound :
      -(‖sturmianCLM N α V ξ origin‖ * ‖x‖ * ‖x‖) ≤
        ⟪(sturmianCLM N α V ξ origin) x, x⟫ := by
    simpa using
      (GapTransport.projected_cross_lower_bound_of_operator_norm
        (sturmianCLM N α V ξ origin) x x)
  have hidentity :
      ⟪(shiftedSturmianCLM N α V ξ origin shift) x, x⟫ =
        ⟪(sturmianCLM N α V ξ origin) x, x⟫ + shift * ‖x‖ ^ 2 := by
    simp [shiftedSturmianCLM, inner_add_left, inner_smul_left,
      real_inner_self_eq_norm_sq]
  rw [hidentity]
  nlinarith [hbound]

/-- The quantitative lower operator norm follows without assuming a
spectral eigenspace, determinant or inverse. -/
theorem shiftedSturmian_norm_gap (N : ℕ) (α V ξ : ℝ) (origin : ℤ)
    (shift : ℝ) (x : EuclideanSpace ℝ (Fin N)) :
    (shift - ‖sturmianCLM N α V ξ origin‖) * ‖x‖ ≤
      ‖(shiftedSturmianCLM N α V ξ origin shift) x‖ := by
  apply GapTransport.norm_gap_of_quadratic_bound
    (shiftedSturmianCLM N α V ξ origin shift)
    (shift - ‖sturmianCLM N α V ξ origin‖)
  intro y
  simpa using shiftedSturmian_quadratic_lower N α V ξ origin shift y

/-- Both global projected sector bounds follow from the concrete shifted
operator, for any fixed orthogonal sector. Neither bound is postulated. -/
theorem shiftedSturmian_two_sector_bounds (N : ℕ) (α V ξ : ℝ) (origin : ℤ)
    (shift : ℝ)
    (S : Submodule ℝ (EuclideanSpace ℝ (Fin N)))
    [S.HasOrthogonalProjection] :
    (∀ x, (shift - ‖sturmianCLM N α V ξ origin‖) *
      ‖S.starProjection x‖ ^ 2 ≤
      RCLike.re (inner ℝ
        ((shiftedSturmianCLM N α V ξ origin shift) (S.starProjection x))
        (S.starProjection x))) ∧
    (∀ x, (shift - ‖sturmianCLM N α V ξ origin‖) *
      ‖Sᗮ.starProjection x‖ ^ 2 ≤
      RCLike.re (inner ℝ
        ((shiftedSturmianCLM N α V ξ origin shift) (Sᗮ.starProjection x))
        (Sᗮ.starProjection x))) := by
  constructor
  · intro x
    simpa using shiftedSturmian_quadratic_lower N α V ξ origin shift
      (S.starProjection x)
  · intro x
    simpa using shiftedSturmian_quadratic_lower N α V ξ origin shift
      (Sᗮ.starProjection x)

/-- Any operator strictly closer than the proven shifted norm gap is injective.
The strict norm inequality is the perturbation certificate, not a hidden
assertion about an independently chosen matrix. -/
theorem shiftedSturmian_perturbation_injective
    (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (shift : ℝ)
    (P : EuclideanSpace ℝ (Fin N) →L[ℝ] EuclideanSpace ℝ (Fin N))
    (hsmall :
      ‖shiftedSturmianCLM N α V ξ origin shift - P‖ <
        shift - ‖sturmianCLM N α V ξ origin‖) :
    Function.Injective P := by
  have hgap : ∀ x : EuclideanSpace ℝ (Fin N),
      (shift - ‖sturmianCLM N α V ξ origin‖) * ‖x‖ ≤
        ‖((ContinuousLinearMap.id ℝ _).comp
          (shiftedSturmianCLM N α V ξ origin shift)) x‖ := by
    intro x
    simpa using shiftedSturmian_norm_gap N α V ξ origin shift x
  have hdefect :
      ‖GRWTSK.Analysis.OperatorTheory.BoundedPortDefect.defect
        (ContinuousLinearMap.id ℝ _) (shiftedSturmianCLM N α V ξ origin shift) P‖ <
        shift - ‖sturmianCLM N α V ξ origin‖ := by
    simpa [GRWTSK.Analysis.OperatorTheory.BoundedPortDefect.defect] using hsmall
  have hi :=
    GRWTSK.Analysis.OperatorTheory.BoundedPortDefect.injective_of_defect_lt_gap
      (ContinuousLinearMap.id ℝ _)
      (shiftedSturmianCLM N α V ξ origin shift) P hgap hdefect
  simpa using hi

/-- The explicit one-unit shift supplies a nonvacuous, unit-sized
perturbation tolerance in every finite volume, including zero dimension. -/
theorem shiftedSturmian_unit_margin_perturbation_injective
    (N : ℕ) (α V ξ : ℝ) (origin : ℤ)
    (P : EuclideanSpace ℝ (Fin N) →L[ℝ] EuclideanSpace ℝ (Fin N))
    (hsmall :
      ‖shiftedSturmianCLM N α V ξ origin
          (‖sturmianCLM N α V ξ origin‖ + 1) - P‖ < 1) :
    Function.Injective P := by
  apply shiftedSturmian_perturbation_injective N α V ξ origin
    (‖sturmianCLM N α V ξ origin‖ + 1) P
  simpa only [add_sub_cancel_left] using hsmall


end GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume
