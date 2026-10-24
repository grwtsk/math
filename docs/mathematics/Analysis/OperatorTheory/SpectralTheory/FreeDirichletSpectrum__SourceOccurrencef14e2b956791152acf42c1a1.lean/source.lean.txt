/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Classical finite Dirichlet sine diagonalization. Mathlib authorship and licenses
remain upstream. This file supplies no signed arithmetic pickup estimate. -/
import GRWTSK.Spectral.SturmianFiniteVolume
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Inverse
import Mathlib.LinearAlgebra.Eigenspace.Charpoly
import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Spectral.FreeDirichletSpectrum
open Matrix Polynomial Module
open GRWTSK.Spectral.SturmianFiniteVolume
open GRWTSK.Spectral.MatrixCountComparison

def angle (N : ℕ) (k : Fin N) : ℝ := Real.pi * (k.val+1) / (N+1)
def eigenvalue (N : ℕ) (k : Fin N) : ℝ := 2 * Real.cos (angle N k)
def sineVector (N : ℕ) (k : Fin N) : Fin N → ℝ :=
  fun i => Real.sin (angle N k * (i.val+1))

theorem angle_pos (N : ℕ) (k : Fin N) : 0 < angle N k := by
  unfold angle
  positivity

theorem angle_lt_pi (N : ℕ) (k : Fin N) : angle N k < Real.pi := by
  unfold angle
  apply (div_lt_iff₀ (by positivity : (0:ℝ) < N+1)).mpr
  have hk0 : (k.val:ℝ) < N := by exact_mod_cast k.isLt
  have hk : (k.val:ℝ)+1 < (N:ℝ)+1 := by linarith
  nlinarith [Real.pi_pos]

theorem eigenvalue_strictAnti (N : ℕ) : StrictAnti (eigenvalue N) := by
  intro i j hij
  have ha : angle N i < angle N j := by
    unfold angle
    apply (div_lt_div_iff_of_pos_right (by positivity : (0:ℝ) < N+1)).mpr
    have h : (i.val:ℝ) < j.val := by exact_mod_cast hij
    nlinarith [Real.pi_pos]
  have hcos := Real.strictAntiOn_cos
    ⟨(angle_pos N i).le, (angle_lt_pi N i).le⟩
    ⟨(angle_pos N j).le, (angle_lt_pi N j).le⟩ ha
  unfold eigenvalue
  linarith

/-- The boundary-zero recurrence, with both endpoint terms paid explicitly. -/
theorem freeDirichlet_mulVec_of_boundary (N : ℕ) (g : ℕ → ℝ)
    (hleft : g 0 = 0) (hright : g (N+1) = 0) (i : Fin N) :
    (freeDirichlet N *ᵥ (fun j => g (j.val+1))) i = g (i.val+2) + g i.val := by
  have hrow (j : Fin N) : freeDirichlet N i j * g (j.val+1) =
      (if i.val+1 = j.val then g (j.val+1) else 0) +
        (if j.val+1 = i.val then g (j.val+1) else 0) := by
    by_cases h1 : i.val+1 = j.val <;> by_cases h2 : j.val+1 = i.val
    · omega
    · simp [freeDirichlet, h1, h2]
    · simp [freeDirichlet, h1, h2]
    · simp [freeDirichlet, h1, h2]
  simp only [mulVec, dotProduct, hrow, Finset.sum_add_distrib]
  have hnext : (∑ j : Fin N, if i.val+1 = j.val then g (j.val+1) else 0) =
      g (i.val+2) := by
    by_cases hi : i.val+1 < N
    · let j : Fin N := ⟨i.val+1,hi⟩
      rw [Finset.sum_eq_single j]
      · simp [j, Nat.add_assoc]
      · intro k _ hkj
        have hn : i.val+1 ≠ k.val := by
          intro he
          apply hkj
          exact Fin.ext he.symm
        simp [hn]
      · simp
    · have he : i.val+2 = N+1 := by omega
      rw [he, hright]
      apply Finset.sum_eq_zero
      intro j _
      have hj : i.val+1 ≠ j.val := by omega
      simp [hj]
  have hprev : (∑ j : Fin N, if j.val+1 = i.val then g (j.val+1) else 0) = g i.val := by
    by_cases hi : 0 < i.val
    · let j : Fin N := ⟨i.val-1,by omega⟩
      have hj : j.val+1 = i.val := by dsimp [j]; omega
      rw [Finset.sum_eq_single j]
      · simp [hj]
      · intro k _ hkj
        have hn : k.val+1 ≠ i.val := by
          intro he
          apply hkj
          apply Fin.ext
          dsimp [j]
          omega
        simp [hn]
      · simp
    · have he : i.val = 0 := by omega
      rw [he, hleft]
      simp
  rw [hnext, hprev]

theorem sineVector_eigen_equation (N : ℕ) (k : Fin N) :
    freeDirichlet N *ᵥ sineVector N k = eigenvalue N k • sineVector N k := by
  have hN : (N:ℝ)+1 ≠ 0 := by positivity
  have hr : Real.sin (angle N k * ((N+1:ℕ):ℝ)) = 0 := by
    have he : angle N k * ((N+1:ℕ):ℝ) = (k.val+1:ℕ) * Real.pi := by
      unfold angle
      push_cast
      field_simp
    rw [he, Real.sin_nat_mul_pi]
  ext i
  have he := freeDirichlet_mulVec_of_boundary N (fun n => Real.sin (angle N k * n))
    (by simp) hr i
  simp only [Nat.cast_add, Nat.cast_one, Nat.cast_ofNat] at he
  change (freeDirichlet N *ᵥ (fun j => Real.sin (angle N k * (j.val+1)))) i = _
  rw [he]
  have hplus : angle N k * ((i.val:ℝ)+2) = angle N k * (i.val+1) + angle N k := by
    ring
  have hminus : angle N k * (i.val:ℝ) = angle N k * (i.val+1) - angle N k := by ring
  rw [hplus, hminus, Real.sin_add, Real.sin_sub]
  simp only [Pi.smul_apply, smul_eq_mul, eigenvalue, sineVector]
  ring

theorem sineVector_ne_zero (N : ℕ) (k : Fin N) : sineVector N k ≠ 0 := by
  have hn : 0 < N := (Nat.zero_le k.val).trans_lt k.isLt
  intro h
  have h0 := congrFun h ⟨0,hn⟩
  have hs := Real.sin_pos_of_pos_of_lt_pi (angle_pos N k) (angle_lt_pi N k)
  simp only [sineVector, Nat.cast_zero, zero_add, mul_one, Pi.zero_apply] at h0
  linarith

theorem sineVector_hasEigenvector (N : ℕ) (k : Fin N) :
    Module.End.HasEigenvector (freeDirichlet N).toLin' (eigenvalue N k) (sineVector N k) := by
  refine ⟨?_, sineVector_ne_zero N k⟩
  rw [Module.End.mem_eigenspace_iff]
  exact sineVector_eigen_equation N k

theorem sineVectors_linearIndependent (N : ℕ) : LinearIndependent ℝ (sineVector N) :=
  Module.End.eigenvectors_linearIndependent' (freeDirichlet N).toLin' (eigenvalue N)
    (eigenvalue_strictAnti N).injective (sineVector N) (sineVector_hasEigenvector N)

def sineBasis (N : ℕ) : Basis (Fin N) ℝ (Fin N → ℝ) :=
  basisOfLinearIndependentOfCardEqFinrank' (sineVector N) (sineVectors_linearIndependent N)
    (by simp)

theorem sineBasis_apply (N : ℕ) (k : Fin N) : sineBasis N k = sineVector N k := by
  simp [sineBasis]

theorem free_toMatrix_sineBasis (N : ℕ) :
    (freeDirichlet N).toLin'.toMatrix (sineBasis N) (sineBasis N) = diagonal (eigenvalue N) := by
  ext i j
  rw [LinearMap.toMatrix_apply, sineBasis_apply]
  change (sineBasis N).repr (freeDirichlet N *ᵥ sineVector N j) i = _
  rw [sineVector_eigen_equation, ← sineBasis_apply]
  by_cases hij : i = j
  · subst j
    simp
  · simp [hij]

/-- Complete finite eigenvalue list, established through a full sine basis. -/
theorem free_charpoly (N : ℕ) :
    (freeDirichlet N).charpoly = ∏ k : Fin N, (X - C (eigenvalue N k)) := by
  have h := LinearMap.charpoly_toMatrix (freeDirichlet N).toLin' (sineBasis N)
  rw [free_toMatrix_sineBasis, Matrix.charpoly_diagonal] at h
  simpa only [Matrix.charpoly_toLin'] using h.symm

theorem free_roots_charpoly (N : ℕ) :
    (freeDirichlet N).charpoly.roots = Finset.univ.val.map (eigenvalue N) := by
  rw [free_charpoly, Polynomial.roots_prod]
  · simp
  · simp [Finset.prod_ne_zero_iff, Polynomial.X_sub_C_ne_zero]

theorem freeCount_eq_cosine_count (N : ℕ) (E : ℝ) :
    freeCount N E = (Finset.univ.filter (fun k : Fin N => eigenvalue N k ≤ E)).card := by
  have h := congrArg (fun s : Multiset ℝ => (s.filter (fun x => x ≤ E)).card)
    ((freeDirichlet_isHermitian N).roots_charpoly_eq_eigenvalues)
  rw [free_roots_charpoly] at h
  simpa only [freeCount, eigenvalueCount, eigenvalueCut, Multiset.filter_map,
    RCLike.ofReal_real_eq_id, Function.id_comp,
    Multiset.card_map, Finset.card_def, id_eq,
    ← Finset.filter_val, Function.comp_def] using h.symm

end GRWTSK.Spectral.FreeDirichletSpectrum
