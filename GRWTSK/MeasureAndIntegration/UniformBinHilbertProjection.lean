/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib L2 indicators retain Rémy Degenne and Sébastien Gouëzel's authorship
and Apache-2.0 license; Hilbert-space imports retain upstream attribution. -/
import GRWTSK.MeasureAndIntegration.UniformBinProjection
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.FiniteGramCompression
import Mathlib.MeasureTheory.Function.L2Space

/-!
# The actual L2 step projection, not just a scalar energy surrogate

Use zero extension into real L2(volume). The bins are disjoint Ioc intervals;
endpoint conventions differ only on null sets. Normalized indicator vectors
are proved orthonormal. Their actual finite Gram operator is idempotent and
orthogonal. Its energy and remainder are identified with the literal bin
integrals and centered energies already used in the arithmetic consumer.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.Analysis.Integration.UniformBinHilbertProjection
open GRWTSK.Analysis.Integration.UniformBinProjection
open GRWTSK.Analysis.InnerProductSpace.FiniteGramCompression

abbrev H := Lp ℝ 2 (volume : Measure ℝ)
def cell (T : ℝ) (m : ℕ) (j : Fin m) : Set ℝ := Ioc (cut T m j.val) (cut T m (j.val + 1))

def basisVector (T : ℝ) (m : ℕ) (j : Fin m) : H :=
  (Real.sqrt (width T m))⁻¹ •
    indicatorConstLp 2 (show MeasurableSet (cell T m j) from measurableSet_Ioc)
      (by simp [cell, Real.volume_Ioc]) (1 : ℝ)

def projection (T : ℝ) (m : ℕ) : H →L[ℝ] H := gramOperator (basisVector T m)

theorem cell_disjoint {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m)
    {i j : Fin m} (hij : i ≠ j) : Disjoint (cell T m i) (cell T m j) := by
  have hw := (width_positive hT hm).le
  have hc {a b : ℕ} (hab : a ≤ b) : cut T m a ≤ cut T m b :=
    mul_le_mul_of_nonneg_right (by exact_mod_cast hab) hw
  have hn : i.val ≠ j.val := fun h => hij (Fin.ext h)
  rcases lt_or_gt_of_ne hn with h | h
  · apply Set.disjoint_left.mpr
    intro u hui huj
    have hh := hc (Nat.succ_le_of_lt h)
    exact (not_lt_of_ge (hui.2.trans hh)) huj.1
  · apply Set.disjoint_left.mpr
    intro u hui huj
    have hh := hc (Nat.succ_le_of_lt h)
    exact (not_lt_of_ge (huj.2.trans hh)) hui.1

theorem basis_inner {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) (i j : Fin m) :
    inner ℝ (basisVector T m i) (basisVector T m j) = if i = j then 1 else 0 := by
  classical
  simp only [basisVector, real_inner_smul_left, inner_smul_right,
    L2.real_inner_indicatorConstLp_one_indicatorConstLp_one]
  by_cases hij : i = j
  · subst j
    rw [if_pos rfl, Set.inter_self]
    have hcell : volume.real (cell T m i) = width T m := by
      rw [measureReal_def, cell, Real.volume_Ioc,
        ENNReal.toReal_ofReal (sub_nonneg.mpr (cut_lt hT hm i.val).le), cut_difference]
    rw [hcell]
    have hw := width_positive hT hm
    have hs : Real.sqrt (width T m) ≠ 0 := (Real.sqrt_pos.2 hw).ne'
    field_simp [hs]
    nlinarith [Real.sq_sqrt hw.le]
  · rw [if_neg hij, Set.disjoint_iff_inter_eq_empty.mp (cell_disjoint hT hm hij)]
    simp

theorem basis_pairing_projection {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m)
    (x : H) (j : Fin m) :
    inner ℝ (basisVector T m j) (projection T m x) = inner ℝ (basisVector T m j) x := by
  classical
  simp only [projection, gramOperator_apply, inner_sum, inner_smul_right, basis_inner hT hm]
  simp

/-- The explicit finite map really is an orthogonal projector. -/
theorem projection_idempotent {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) (x : H) :
    projection T m (projection T m x) = projection T m x := by
  simp only [projection, gramOperator_apply]
  apply Finset.sum_congr rfl
  intro j _
  congr 1
  exact basis_pairing_projection hT hm x j

theorem projection_orthogonal {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) (x : H) :
    inner ℝ (projection T m x) (x - projection T m x) = 0 := by
  rw [projection, gramOperator_apply, sum_inner]
  apply Finset.sum_eq_zero
  intro j _
  rw [real_inner_smul_left, inner_sub_right, basis_pairing_projection hT hm]
  simp

theorem projection_energy {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) (x : H) :
    ‖projection T m x‖ ^ 2 = ∑ j : Fin m, (inner ℝ (basisVector T m j) x) ^ 2 := by
  have ho := projection_orthogonal hT hm x
  rw [inner_sub_right, real_inner_self_eq_norm_sq] at ho
  have he := gramOperator_quadratic (basisVector T m) x
  rw [real_inner_comm x (projection T m x)] at he
  have hs : (∑ j : Fin m, (inner ℝ x (basisVector T m j)) ^ 2) =
      ∑ j : Fin m, (inner ℝ (basisVector T m j) x) ^ 2 := by
    apply Finset.sum_congr rfl
    intro j _
    rw [real_inner_comm]
  rw [hs] at he
  change inner ℝ (projection T m x) x = _ at he
  linarith

theorem norm_split {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) (x : H) :
    ‖x‖ ^ 2 = ‖projection T m x‖ ^ 2 + ‖x - projection T m x‖ ^ 2 := by
  have ho := projection_orthogonal hT hm x
  have hc : inner ℝ x (projection T m x) = inner ℝ (projection T m x) x := real_inner_comm _ _
  rw [inner_sub_right] at ho
  simp only [← real_inner_self_eq_norm_sq, inner_sub_left, inner_sub_right]
  linarith

def cutoff (f : ℝ → ℝ) (T : ℝ) : ℝ → ℝ := (Ioc 0 T).indicator f

theorem cutoff_memLp {f : ℝ → ℝ} (hf : Continuous f) (T : ℝ) : MemLp (cutoff f T) 2 volume := by
  apply (memLp_two_iff_integrable_sq (hf.aestronglyMeasurable.indicator measurableSet_Ioc)).mpr
  have he : (fun x => cutoff f T x ^ 2) = (Ioc 0 T).indicator (fun x => f x ^ 2) := by
    funext x
    by_cases hx : x ∈ Ioc 0 T <;> simp [cutoff, hx]
  rw [he]
  exact (integrable_indicator_iff measurableSet_Ioc).mpr ((hf.pow 2).intervalIntegrable 0 T).1

def sourceVector (f : ℝ → ℝ) (hf : Continuous f) (T : ℝ) : H :=
  (cutoff_memLp hf T).toLp (cutoff f T)

theorem sourceVector_norm_sq {f : ℝ → ℝ} (hf : Continuous f) {T : ℝ} (hT : 0 ≤ T) :
    ‖sourceVector f hf T‖ ^ 2 = ∫ u in (0 : ℝ)..T, f u ^ 2 := by
  rw [← real_inner_self_eq_norm_sq, L2.inner_def]
  have he : (fun u => inner ℝ (sourceVector f hf T u) (sourceVector f hf T u)) =ᵐ[volume]
      (Ioc 0 T).indicator (fun u => f u ^ 2) := by
    filter_upwards [MemLp.coeFn_toLp (cutoff_memLp hf T)] with u hu
    by_cases hm : u ∈ Ioc 0 T <;> simp [hu, cutoff, hm, Real.inner_apply, pow_two]
  rw [integral_congr_ae he, integral_indicator measurableSet_Ioc,
    intervalIntegral.integral_of_le hT]

/-- Literal bin integrals are the actual indicator coordinates of the cutoff source. -/
theorem basis_source_pairing {f : ℝ → ℝ} (hf : Continuous f) {T : ℝ} {m : ℕ}
    (hT : 0 < T) (hm : 0 < m) (j : Fin m) :
    inner ℝ (basisVector T m j) (sourceVector f hf T) =
      binIntegral f T m j.val / Real.sqrt (width T m) := by
  rw [basisVector, real_inner_smul_left, L2.inner_indicatorConstLp_one]
  have he : (∫ u in cell T m j, sourceVector f hf T u) =
      ∫ u in cell T m j, f u := by
    apply integral_congr_ae
    filter_upwards [ae_restrict_of_ae (MemLp.coeFn_toLp (cutoff_memLp hf T)),
      ae_restrict_mem (show MeasurableSet (cell T m j) from measurableSet_Ioc)] with u hu hmem
    have hlo := (cut_mem hT.le hm (Nat.le_of_lt j.isLt)).1
    have hhi := (cut_mem hT.le hm (Nat.succ_le_of_lt j.isLt)).2
    have hin : u ∈ Ioc 0 T := ⟨lt_of_le_of_lt hlo hmem.1, hmem.2.trans hhi⟩
    simpa only [cutoff, Set.indicator_of_mem hin] using hu
  rw [he]
  change (Real.sqrt (width T m))⁻¹ *
    (∫ u in Ioc (cut T m j.val) (cut T m (j.val+1)), f u) = _
  rw [← intervalIntegral.integral_of_le (cut_lt hT hm j.val).le]
  simp only [binIntegral, div_eq_mul_inv, mul_comm]

/-- The scalar feature energy is exactly the energy of the constructed Hilbert projection. -/
theorem projected_source_norm_sq {f : ℝ → ℝ} (hf : Continuous f) {T : ℝ} {m : ℕ}
    (hT : 0 < T) (hm : 0 < m) :
    ‖projection T m (sourceVector f hf T)‖ ^ 2 = featureEnergy f T m := by
  rw [projection_energy hT hm]
  simp_rw [basis_source_pairing hf hT hm, div_pow, Real.sq_sqrt (width_positive hT hm).le]
  exact Fin.sum_univ_eq_sum_range _ _

/-- The two arithmetic error estimates control this SAME actual Hilbert residual. -/
theorem residual_source_norm_sq {f : ℝ → ℝ} (hf : Continuous f) {T : ℝ} {m : ℕ}
    (hT : 0 < T) (hm : 0 < m) :
    ‖sourceVector f hf T - projection T m (sourceVector f hf T)‖ ^ 2 = residualEnergy f T m := by
  have h := norm_split hT hm (sourceVector f hf T)
  rw [sourceVector_norm_sq hf hT.le, projected_source_norm_sq hf hT hm] at h
  have he := energy_split hf hT hm
  linarith

end GRWTSK.Analysis.Integration.UniformBinHilbertProjection
