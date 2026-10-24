/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Classical finite Dirichlet sine diagonalization. Mathlib authorship and licenses
remain upstream. This file supplies no signed arithmetic pickup estimate. -/
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Inverse
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.LinearAlgebra.Eigenspace.Charpoly
import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas
import Mathlib.Analysis.InnerProductSpace.Spectrum

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



/-!
## Exact minimum absolute eigenvalue in a nonempty even free volume

For `N = 2 * m` with `0 < m`, the two central sine frequencies
are adjacent to `π / 2`. They give eigenvalues with opposite signs
and equal magnitude `2 * sin (π / (4*m+2))`. Antitonicity of the
existing complete sine eigenvalue list then proves that this value is
the *attained minimum* of the absolute values over all eigenmodes.

This is a finite-volume result, with a radius that depends on m.
No uniform positive gap as m tends to infinity is asserted.
-/

/-- Left index adjacent to the central frequency of a nonempty even volume. -/
def evenLeftIndex (m : ℕ) (hm : 0 < m) : Fin (2 * m) :=
  ⟨m - 1, by omega⟩

/-- Right index adjacent to the central frequency of a nonempty even volume. -/
def evenRightIndex (m : ℕ) (hm : 0 < m) : Fin (2 * m) :=
  ⟨m, by omega⟩

/-- Exact lower-side angular separation from π/2. -/
theorem evenLeft_angle (m : ℕ) (hm : 0 < m) :
    angle (2 * m) (evenLeftIndex m hm) =
      Real.pi / 2 - Real.pi / (4 * (m : ℝ) + 2) := by
  simp only [angle, evenLeftIndex, Fin.val_mk, Nat.cast_add,
    Nat.cast_mul, Nat.cast_one, Nat.cast_ofNat]
  have hnum : ((m - 1 : ℕ) : ℝ) + 1 = (m : ℝ) := by
    exact_mod_cast Nat.sub_add_cancel hm
  rw [hnum]
  have hd1 : (2 * (m : ℝ) + 1) ≠ 0 := by positivity
  have hd2 : (4 * (m : ℝ) + 2) ≠ 0 := by positivity
  field_simp [hd1, hd2]
  <;> ring

/-- Exact upper-side angular separation from π/2. -/
theorem evenRight_angle (m : ℕ) (hm : 0 < m) :
    angle (2 * m) (evenRightIndex m hm) =
      Real.pi / 2 + Real.pi / (4 * (m : ℝ) + 2) := by
  simp only [angle, evenRightIndex, Fin.val_mk, Nat.cast_add,
    Nat.cast_mul, Nat.cast_one, Nat.cast_ofNat]
  have hd1 : (2 * (m : ℝ) + 1) ≠ 0 := by positivity
  have hd2 : (4 * (m : ℝ) + 2) ≠ 0 := by positivity
  field_simp [hd1, hd2]
  <;> ring

/-- The left central eigenvalue equals the positive sine margin. -/
theorem evenLeft_eigenvalue (m : ℕ) (hm : 0 < m) :
    eigenvalue (2 * m) (evenLeftIndex m hm) =
      2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2)) := by
  simp only [eigenvalue, evenLeft_angle, Real.cos_pi_div_two_sub]

/-- The right central eigenvalue is the negative sine margin. -/
theorem evenRight_eigenvalue (m : ℕ) (hm : 0 < m) :
    eigenvalue (2 * m) (evenRightIndex m hm) =
      -(2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2))) := by
  rw [eigenvalue, evenRight_angle, Real.cos_add]
  simp only [Real.cos_pi_div_two, Real.sin_pi_div_two, zero_mul,
    zero_sub, one_mul, zero_add]
  ring

/-- The attained minimum margin is positive at every nonempty even volume. -/
theorem even_central_margin_pos (m : ℕ) (hm : 0 < m) :
    0 < 2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2)) := by
  have hden : (0 : ℝ) < 4 * (m : ℝ) + 2 := by positivity
  have hdelta : 0 < Real.pi / (4 * (m : ℝ) + 2) :=
    div_pos Real.pi_pos hden
  have hπmul : 0 < Real.pi * (4 * (m : ℝ) + 1) :=
    mul_pos Real.pi_pos (by positivity)
  have hupper : Real.pi / (4 * (m : ℝ) + 2) < Real.pi := by
    apply (div_lt_iff₀ hden).mpr
    nlinarith [hπmul]
  exact mul_pos (by norm_num) (Real.sin_pos_of_pos_of_lt_pi hdelta hupper)

/-- Every free even-volume sine eigenvalue is separated from zero by
the exact central sine margin. The bound depends on the volume. -/
theorem even_eigenvalue_abs_lower_bound (m : ℕ) (hm : 0 < m)
    (k : Fin (2 * m)) :
    2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2)) ≤
      |eigenvalue (2 * m) k| := by
  by_cases hk : k.val < m
  · have hle : k ≤ evenLeftIndex m hm := by
      apply Fin.le_iff_val_le_val.mpr
      change k.val ≤ m - 1
      omega
    have hanti := (eigenvalue_strictAnti (2 * m)).antitone hle
    rw [evenLeft_eigenvalue m hm] at hanti
    exact hanti.trans (le_abs_self _)
  · have hle : evenRightIndex m hm ≤ k := by
      apply Fin.le_iff_val_le_val.mpr
      change m ≤ k.val
      omega
    have hanti := (eigenvalue_strictAnti (2 * m)).antitone hle
    rw [evenRight_eigenvalue m hm] at hanti
    have hneg :
        2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2)) ≤
          -eigenvalue (2 * m) k := by linarith
    exact hneg.trans (neg_le_abs _)

/-- The exact absolute-eigenvalue minimum is attained at a central
frequency and bounds every other finite even-volume eigenvalue.
This gives a minimum characterization without introducing a parallel
eigenvalue list or an artificial scalar shift. -/
theorem even_minimum_abs_eigenvalue (m : ℕ) (hm : 0 < m) :
    (∀ k : Fin (2 * m),
      2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2)) ≤
        |eigenvalue (2 * m) k|) ∧
    (∃ k : Fin (2 * m),
      |eigenvalue (2 * m) k| =
        2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2))) := by
  constructor
  · exact even_eigenvalue_abs_lower_bound m hm
  · refine ⟨evenLeftIndex m hm, ?_⟩
    rw [evenLeft_eigenvalue m hm,
      abs_of_pos (even_central_margin_pos m hm)]



/-!
## Vanishing even-volume free spectral margin

The exact positive margin from `even_minimum_abs_eigenvalue` has a
quantitative elementary upper bound by `2π/(4*m+2)`. It tends to zero
as the even volume grows, so it cannot furnish a positive uniform lower
bound across nonempty even Dirichlet volumes.

This is an exact statement about the free **finite-volume** sine list,
not an assertion about an infinite-volume Sturmian spectral gap.
-/

/-- The attained finite even-volume margin is no greater than the
first-order sine bound `2π/(4*m+2)`. This inequality holds even at
`m=0`; the attained-minimum interpretation still requires `m>0`. -/
theorem even_central_margin_le_inverse (m : ℕ) :
    2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2)) ≤
      2 * Real.pi / (4 * (m : ℝ) + 2) := by
  have hangle : 0 ≤ Real.pi / (4 * (m : ℝ) + 2) := by positivity
  calc
    2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2)) ≤
        2 * (Real.pi / (4 * (m : ℝ) + 2)) :=
      mul_le_mul_of_nonneg_left (Real.sin_le hangle) (by norm_num)
    _ = 2 * Real.pi / (4 * (m : ℝ) + 2) := by ring

/-- The central half-angle converges to zero as finite volume increases. -/
theorem even_central_angle_tendsto_zero :
    Filter.Tendsto
      (fun m : ℕ => Real.pi / (4 * (m : ℝ) + 2))
      Filter.atTop (nhds (0 : ℝ)) := by
  have hden :
      Filter.Tendsto (fun m : ℕ => 4 * (m : ℝ) + 2)
        Filter.atTop Filter.atTop :=
    Filter.Tendsto.atTop_add
      (Filter.Tendsto.const_mul_atTop (by norm_num : (0 : ℝ) < 4)
        tendsto_natCast_atTop_atTop)
      tendsto_const_nhds
  exact tendsto_const_nhds.div_atTop hden

/-- The exact even-volume finite eigenvalue margin tends to zero. -/
theorem even_central_margin_tendsto_zero :
    Filter.Tendsto
      (fun m : ℕ => 2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2)))
      Filter.atTop (nhds (0 : ℝ)) := by
  have hsin :
      Filter.Tendsto
        (fun m : ℕ => Real.sin (Real.pi / (4 * (m : ℝ) + 2)))
        Filter.atTop (nhds (0 : ℝ)) := by
    simpa using
      (Real.continuous_sin.continuousAt.tendsto.comp
        even_central_angle_tendsto_zero)
  simpa using hsin.const_mul 2

/-- No positive constant lower-bounds the *attained* minimum absolute
free eigenvalue in every nonempty even Dirichlet volume. -/
theorem even_central_margin_no_uniform_positive_floor
    (ε : ℝ) (hε : 0 < ε) :
    ∃ m : ℕ, 0 < m ∧
      2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2)) < ε := by
  have hev : ∀ᶠ m : ℕ in Filter.atTop,
      2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2)) < ε :=
    even_central_margin_tendsto_zero.eventually (gt_mem_nhds hε)
  obtain ⟨N, hN⟩ := Filter.eventually_atTop.mp hev
  refine ⟨max N 1, by omega, ?_⟩
  exact hN (le_max_left _ _)



/-!
## Orthogonal spectral coefficients supply a genuine operator norm gap

The sine list is an *eigenvalue inventory*; a norm inequality requires
an orthonormal spectral decomposition. The pinned Mathlib
`LinearMap.IsSymmetric.eigenvectorBasis` supplies that decomposition.
The following reusable lemma pays the norm exactly in that basis,
rather than assuming a norm-isometry for the existing unnormalized
sine basis. The second lemma identifies all actual Hermitian
eigenvalues of the finite free Dirichlet matrix with its sine list.
-/

/-- A quantitative norm lower bound from the **orthonormal** eigenbasis
of a finite-dimensional real symmetric endomorphism. Every eigenvalue
must have magnitude at least `γ`, with `γ ≥ 0`. -/
theorem symmetric_norm_lower_bound_of_eigenvalues
    {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℝ H]
    [FiniteDimensional ℝ H]
    (T : H →ₗ[ℝ] H) (hT : T.IsSymmetric) (n : ℕ)
    (hn : Module.finrank ℝ H = n) (γ : ℝ) (hγ : 0 ≤ γ)
    (heig : ∀ i : Fin n, γ ≤ |hT.eigenvalues hn i|)
    (x : H) : γ * ‖x‖ ≤ ‖T x‖ := by
  let b := hT.eigenvectorBasis hn
  have hcoord (i : Fin n) :
      b.repr (T x) i = hT.eigenvalues hn i * b.repr x i :=
    hT.eigenvectorBasis_apply_self_apply hn x i
  have hsq :
      γ ^ 2 * ‖b.repr x‖ ^ 2 ≤ ‖b.repr (T x)‖ ^ 2 := by
    rw [EuclideanSpace.norm_sq_eq, EuclideanSpace.norm_sq_eq, Finset.mul_sum]
    apply Finset.sum_le_sum
    intro i _
    have hλ : γ ^ 2 ≤ |hT.eigenvalues hn i| ^ 2 := by
      have hnonneg : 0 ≤
          (|hT.eigenvalues hn i| - γ) *
            (|hT.eigenvalues hn i| + γ) :=
        mul_nonneg (sub_nonneg.mpr (heig i))
          (add_nonneg (abs_nonneg _) hγ)
      nlinarith
    calc
      γ ^ 2 * ‖b.repr x i‖ ^ 2 ≤
          |hT.eigenvalues hn i| ^ 2 * ‖b.repr x i‖ ^ 2 :=
        mul_le_mul_of_nonneg_right hλ (sq_nonneg _)
      _ = ‖b.repr (T x) i‖ ^ 2 := by
        rw [hcoord i, norm_mul, Real.norm_eq_abs, mul_pow]
  have hnorm : (γ * ‖x‖) ^ 2 ≤ ‖T x‖ ^ 2 := by
    calc
      (γ * ‖x‖) ^ 2 = γ ^ 2 * ‖b.repr x‖ ^ 2 := by
        rw [b.repr.norm_map]
        ring
      _ ≤ ‖b.repr (T x)‖ ^ 2 := hsq
      _ = ‖T x‖ ^ 2 := by rw [b.repr.norm_map]
  exact (sq_le_sq₀ (mul_nonneg hγ (norm_nonneg _)) (norm_nonneg _)).mp hnorm

/-- The eigenvalues of the **actual** Hermitian free Dirichlet matrix
inherit the exact finite even-volume sine-list gap. Their index order
need not agree with the unnormalized sine basis. -/
theorem even_free_hermitian_eigenvalues_gap (m : ℕ) (hm : 0 < m)
    (i : Fin (2 * m)) :
    2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2)) ≤
      |(freeDirichlet_isHermitian (2 * m)).eigenvalues i| := by
  let A := freeDirichlet (2 * m)
  let hA := freeDirichlet_isHermitian (2 * m)
  have hr : hA.eigenvalues i ∈ spectrum ℝ A :=
    hA.eigenvalues_mem_spectrum_real i
  have hroot : A.charpoly.IsRoot (hA.eigenvalues i) :=
    Matrix.mem_spectrum_iff_isRoot_charpoly.mp hr
  have hroots : hA.eigenvalues i ∈ A.charpoly.roots :=
    (Polynomial.mem_roots').mpr ⟨A.charpoly_monic.ne_zero, hroot⟩
  rw [free_roots_charpoly] at hroots
  obtain ⟨k, _, hk⟩ := Multiset.mem_map.mp hroots
  have hb := even_eigenvalue_abs_lower_bound m hm k
  simpa only [hk] using hb



/-!
## Actual free Euclidean norm gap and coupled Sturmian finite-volume consumer

At fixed nonempty even volume, the pinned finite-dimensional symmetric
spectral theorem diagonalizes the **actual** free Dirichlet linear map
orthonormally. Its eigenvalues belong to the full previously constructed
sine characteristic-root list. Consequently the precise scalar minimum
supplies the norm bound that the bounded-operator perturbation interface
requires. The final two consequences concern the same **finite** volume
at energy zero, and the coupling must be strictly below that margin.
-/

/-- The exact minimum absolute free eigenvalue is a genuine global
Euclidean norm gap for the **actual** unshifted finite operator at zero
energy. There is no abstract `hfree` hypothesis. -/
theorem even_free_zero_energy_norm_gap (m : ℕ) (hm : 0 < m)
    (x : EuclideanSpace ℝ (Fin (2 * m))) :
    2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2)) * ‖x‖ ≤
      ‖(freeEnergyCLM (2 * m) 0) x‖ := by
  let A := freeDirichlet (2 * m)
  let T : EuclideanSpace ℝ (Fin (2 * m)) →ₗ[ℝ]
      EuclideanSpace ℝ (Fin (2 * m)) := A.toEuclideanLin
  have hT : T.IsSymmetric := by
    change A.toEuclideanLin.IsSymmetric
    exact Matrix.isSymmetric_toEuclideanLin_iff.mpr
      (freeDirichlet_isHermitian (2 * m))
  have hn : Module.finrank ℝ (EuclideanSpace ℝ (Fin (2 * m))) = 2 * m := by
    simp
  let γ : ℝ := 2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2))
  have hγ : 0 ≤ γ := (even_central_margin_pos m hm).le
  have heig (i : Fin (2 * m)) : γ ≤ |hT.eigenvalues hn i| := by
    have hrootT : hT.eigenvalues hn i ∈ spectrum ℝ T :=
      (hT.hasEigenvalue_eigenvalues hn i).mem_spectrum
    change hT.eigenvalues hn i ∈ spectrum ℝ A.toEuclideanLin at hrootT
    rw [Matrix.spectrum_toEuclideanLin] at hrootT
    have hroot : A.charpoly.IsRoot (hT.eigenvalues hn i) :=
      Matrix.mem_spectrum_iff_isRoot_charpoly.mp hrootT
    have hroots : hT.eigenvalues hn i ∈ A.charpoly.roots :=
      (Polynomial.mem_roots').mpr ⟨A.charpoly_monic.ne_zero, hroot⟩
    rw [free_roots_charpoly] at hroots
    obtain ⟨k, _, hk⟩ := Multiset.mem_map.mp hroots
    have hb := even_eigenvalue_abs_lower_bound m hm k
    simpa only [hk] using hb
  have hbound := symmetric_norm_lower_bound_of_eigenvalues
    T hT (2 * m) hn γ hγ heig x
  simpa [γ, T, A, freeEnergyCLM,
    Matrix.coe_toEuclideanCLM_eq_toEuclideanLin] using hbound

/-- The previously conditional finite Sturmian gap transport is now
instantiated at energy zero with a **proved source-level free supplier**
and the true finite Sturmian diagonal potential. -/
theorem even_sturmian_zero_energy_gap
    (m : ℕ) (hm : 0 < m) (α V ξ : ℝ) (origin : ℤ)
    (x : EuclideanSpace ℝ (Fin (2 * m))) :
    (2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2)) - |V|) * ‖x‖ ≤
      ‖(sturmianEnergyCLM (2 * m) α V ξ origin 0) x‖ := by
  exact sturmianEnergyCLM_gap_of_free_gap
    (2 * m) α V ξ origin 0
    (2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2)))
    (even_free_zero_energy_norm_gap m hm) x

/-- Strict coupling below the *actual* finite free sine gap yields
injectivity of the coupled finite Sturmian energy-zero residual.
This conclusion is volume-dependent and is not an infinite-volume gap. -/
theorem even_sturmian_zero_energy_injective
    (m : ℕ) (hm : 0 < m) (α V ξ : ℝ) (origin : ℤ)
    (hsmall : |V| < 2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2))) :
    Function.Injective (sturmianEnergyCLM (2 * m) α V ξ origin 0) := by
  exact sturmianEnergyCLM_injective_of_free_gap
    (2 * m) α V ξ origin 0
    (2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2)))
    (even_free_zero_energy_norm_gap m hm) hsmall



/-- Under the exact volume-dependent coupling threshold, zero is absent
from the real matrix spectrum of the **actual** finite Sturmian
Hamiltonian. The proof transports injectivity of the Euclidean energy
residual back through the true matrix-to-Euclidean equivalence, then
uses the pinned finite-square-matrix unit criterion. It does not
identify an infinite-volume spectrum or its IDS. -/
theorem even_sturmian_zero_not_mem_spectrum
    (m : ℕ) (hm : 0 < m) (α V ξ : ℝ) (origin : ℤ)
    (hsmall : |V| < 2 * Real.sin (Real.pi / (4 * (m : ℝ) + 2))) :
    (0 : ℝ) ∉ spectrum ℝ (hamiltonian (2 * m) α V ξ origin) := by
  let H := hamiltonian (2 * m) α V ξ origin
  have hi := even_sturmian_zero_energy_injective m hm α V ξ origin hsmall
  have hmul : Function.Injective H.mulVec := by
    intro x y hxy
    have hcoord (z : Fin (2 * m) → ℝ) :
        (sturmianEnergyCLM (2 * m) α V ξ origin 0)
          (WithLp.toLp 2 z) = WithLp.toLp 2 (H *ᵥ z) := by
      simp [H, sturmianEnergyCLM, sturmianCLM,
        Matrix.toEuclideanCLM_toLp]
    have heq :
        (sturmianEnergyCLM (2 * m) α V ξ origin 0)
          (WithLp.toLp 2 x) =
        (sturmianEnergyCLM (2 * m) α V ξ origin 0)
          (WithLp.toLp 2 y) := by
      rw [hcoord x, hcoord y, hxy]
    have hxyLp := hi heq
    exact (congrArg WithLp.ofLp hxyLp)
  have hunit : IsUnit H := Matrix.mulVec_injective_iff_isUnit.mp hmul
  intro hmem
  exact (spectrum.zero_mem_iff.mp hmem) hunit


end GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeDirichletSpectrum
