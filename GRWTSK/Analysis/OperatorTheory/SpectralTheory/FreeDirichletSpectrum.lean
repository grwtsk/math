/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Classical finite Dirichlet sine diagonalization. Mathlib authorship and licenses
remain upstream. This file supplies no signed arithmetic pickup estimate. -/
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Inverse
import Mathlib.LinearAlgebra.Eigenspace.Charpoly
import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeDirichletSpectrum
open Matrix Polynomial Module
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.MatrixCountComparison

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


/-!
## Exact central zero mode in every odd free Dirichlet volume

This specializes the established sine diagonalization to the middle
frequency of a finite odd-dimensional path. The zero eigenvalue is a
finite-volume parity obstruction to extrapolating the two-site central
gap to *all* finite volumes. No infinite-volume Sturmian spectral or
IDS statement follows from this finite parity calculation.
-/

/-- Central sine-basis index in the odd volume `2*m+1`. -/
def oddCenterIndex (m : ℕ) : Fin (2 * m + 1) :=
  ⟨m, by omega⟩

/-- In every odd volume, the central sine frequency has angle pi/2. -/
theorem oddCenter_angle (m : ℕ) :
    angle (2 * m + 1) (oddCenterIndex m) = Real.pi / 2 := by
  simp only [angle, oddCenterIndex, Fin.val_mk]
  push_cast
  have hden : 2 * (m : ℝ) + 1 + 1 = 2 * ((m : ℝ) + 1) := by ring
  rw [hden]
  apply (div_eq_iff₀ (by positivity : (0 : ℝ) < 2 * ((m : ℝ) + 1))).2
  ring

/-- The free odd-volume central eigenvalue is exactly zero, not merely
an estimated small eigenvalue. -/
theorem oddCenter_eigenvalue_zero (m : ℕ) :
    eigenvalue (2 * m + 1) (oddCenterIndex m) = 0 := by
  simp [eigenvalue, oddCenter_angle, Real.cos_pi_div_two]

/-- The already-constructed nonzero sine eigenvector is an explicit
zero eigenvector for each finite odd volume. -/
theorem oddCenter_hasEigenvector_zero (m : ℕ) :
    Module.End.HasEigenvector
      (freeDirichlet (2 * m + 1)).toLin' 0
      (sineVector (2 * m + 1) (oddCenterIndex m)) := by
  simpa only [oddCenter_eigenvalue_zero] using
    (sineVector_hasEigenvector (2 * m + 1) (oddCenterIndex m))

/-- Zero belongs to the actual matrix spectrum in every odd free
Dirichlet volume. This uses the complete existing characteristic-root
inventory, not a newly postulated spectrum identification. -/
theorem odd_free_zero_in_spectrum (m : ℕ) :
    (0 : ℝ) ∈ spectrum ℝ (freeDirichlet (2 * m + 1)) := by
  have hroot : (0 : ℝ) ∈ (freeDirichlet (2 * m + 1)).charpoly.roots := by
    rw [free_roots_charpoly]
    exact Multiset.mem_map.mpr
      ⟨oddCenterIndex m, by simp, oddCenter_eigenvalue_zero m⟩
  exact Matrix.mem_spectrum_iff_isRoot_charpoly.mpr
    (Polynomial.mem_roots'.mp hroot).2

/-- At zero coupling, every odd finite-volume Sturmian Dirichlet
restriction has zero in its actual matrix spectrum, uniformly in
rotation, phase, and lattice origin. -/
theorem odd_zeroCoupling_zero_in_spectrum (m : ℕ)
    (α ξ : ℝ) (origin : ℤ) :
    (0 : ℝ) ∈ spectrum ℝ
      (hamiltonian (2 * m + 1) α 0 ξ origin) := by
  simpa only [hamiltonian_zero] using odd_free_zero_in_spectrum m



/-!
## Complementary even-volume free zero-exclusion

The exact free Dirichlet eigenvalue at index `k` is
`2 * cos (pi * (k+1) / (N+1))`. In the even volume `N=2*m`,
the central cosine cannot vanish: equality of its angle to `pi/2`
would force the even natural number `2*(k+1)` to equal `2*m+1`.
This uses the existing sine diagonalization and does not construct
another spectral representation or any infinite-volume gap.
-/

/-- In an even free Dirichlet volume, no sine frequency reaches pi/2. -/
theorem even_angle_ne_pi_div_two (m : ℕ) (k : Fin (2 * m)) :
    angle (2 * m) k ≠ Real.pi / 2 := by
  intro hangle
  have hratio :
      Real.pi * ((k.val : ℝ) + 1) / (2 * (m : ℝ) + 1) = Real.pi / 2 := by
    simpa [angle, Nat.cast_add, Nat.cast_mul] using hangle
  have hden : (0 : ℝ) < 2 * (m : ℝ) + 1 := by positivity
  have hmul := (div_eq_iff₀ hden).mp hratio
  have hcast : 2 * (k.val : ℝ) + 2 = 2 * (m : ℝ) + 1 := by
    apply (mul_left_cancel₀ Real.pi_ne_zero)
    nlinarith [hmul]
  have hnat : 2 * k.val + 2 = 2 * m + 1 := by
    exact_mod_cast hcast
  omega

/-- Every eigenvalue in an even free Dirichlet volume is nonzero. -/
theorem even_eigenvalue_ne_zero (m : ℕ) (k : Fin (2 * m)) :
    eigenvalue (2 * m) k ≠ 0 := by
  intro hz
  have hcos : Real.cos (angle (2 * m) k) = 0 := by
    unfold eigenvalue at hz
    linarith
  have hangle : angle (2 * m) k = Real.pi / 2 :=
    Real.injOn_cos
      ⟨(angle_pos (2 * m) k).le, (angle_lt_pi (2 * m) k).le⟩
      ⟨by positivity, by linarith [Real.pi_pos]⟩
      (by simpa only [Real.cos_pi_div_two] using hcos)
  exact even_angle_ne_pi_div_two m k hangle

/-- The complete sine characteristic polynomial excludes zero from the
actual finite *even-volume* free Dirichlet matrix spectrum. This
does not give a uniform gap as the volume grows. -/
theorem even_free_zero_not_mem_spectrum (m : ℕ) :
    (0 : ℝ) ∉ spectrum ℝ (freeDirichlet (2 * m)) := by
  intro hmem
  have hroot : (freeDirichlet (2 * m)).charpoly.IsRoot (0 : ℝ) :=
    Matrix.mem_spectrum_iff_isRoot_charpoly.mp hmem
  rw [free_charpoly, Polynomial.isRoot_prod] at hroot
  obtain ⟨k, _, hk⟩ := hroot
  have hk0 : eigenvalue (2 * m) k = 0 := by
    have heval : (X - C (eigenvalue (2 * m) k) : ℝ[X]).eval 0 = 0 := hk
    simpa using heval
  exact (even_eigenvalue_ne_zero m k) hk0

/-- At zero coupling, every even-volume finite Sturmian Dirichlet
restriction excludes zero, uniformly in phase and origin. -/
theorem even_zeroCoupling_zero_not_mem_spectrum
    (m : ℕ) (α ξ : ℝ) (origin : ℤ) :
    (0 : ℝ) ∉ spectrum ℝ (hamiltonian (2 * m) α 0 ξ origin) := by
  simpa only [hamiltonian_zero] using even_free_zero_not_mem_spectrum m

/-- The complete finite parity dichotomy for the actual free Dirichlet
matrices, including the empty matrix when m=0. -/
theorem free_zero_spectrum_parity (m : ℕ) :
    (0 : ℝ) ∈ spectrum ℝ (freeDirichlet (2 * m + 1)) ∧
    (0 : ℝ) ∉ spectrum ℝ (freeDirichlet (2 * m)) :=
  ⟨odd_free_zero_in_spectrum m, even_free_zero_not_mem_spectrum m⟩


end GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeDirichletSpectrum
