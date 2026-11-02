/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonPrimeWindowGradedHamiltonian
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonFullHamiltonianEvolution

/-!
# Exact evolution of the existing prime-window graded Wilson Hamiltonian

Local attribution: grwtsk contributors.

This joins TWO actual maintained sources, rather than introducing an
unrelated Hamiltonian: the finite PiLp 2 direct-sum maximal-domain
H_r = H_Wilson + S.value(r) I, and the ALL-MODE normalized Wilson
discrete-time semigroup U(n) = (T / lambda0)^n.

For physical time spacing a >= 0, the r-th graded one-step evolution is
exp(-a*S.value(r)) times the actual normalized Wilson transfer.
The graded evolution acts on ALL vectors of the finite direct sum,
including infinitely many Wilson excitation modes in each component.
The exact semigroup law, positivity and contraction of every block,
vacuum response, and source-dependent excitation bounds are retained.

Prime-window scalar shifts are external label offsets: they do NOT
identify the plaquette residue source with the Hilbert block index,
supply a mass-gap improvement, prove an RH implication, or construct
the continuum OS Yang--Mills Hamiltonian. The supplier's unproved
transcendence ingredient remains in its original hypothesis field.

SOURCE_PROOF_CANDIDATE / LEAN_BUILD_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOMS_NOT_RUN / EXPECTED_TYPES_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowGradedEvolution

open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonFullRegulatedHamiltonian
open GRWTSK.Geometry.GaugeTheory.WilsonFullHamiltonianEvolution
open GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowResidueHamiltonian
open GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowShiftedHamiltonian
open GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowGradedHamiltonian

variable {Residue : Type*} [Fintype Residue] [DecidableEq Residue]
variable (L : ℕ) [NeZero L]

/-- Literal positive prime-window damping per physical lattice time step.
No arithmetic scalar is confused with a Wilson field operator. -/
def stepWeight (S : PrimeWindowSupplier Residue) (a : ℝ) (r : Residue) : ℝ :=
  Real.exp (-a * S.value r)

theorem stepWeight_pos (S : PrimeWindowSupplier Residue)
    (a : ℝ) (r : Residue) :
    0 < stepWeight S a r :=
  Real.exp_pos _

theorem stepWeight_le_one (S : PrimeWindowSupplier Residue)
    (a : ℝ) (ha : 0 ≤ a) (r : Residue) :
    stepWeight S a r ≤ 1 := by
  unfold stepWeight
  apply Real.exp_le_one_iff.mpr
  have hp := mul_nonneg ha (S.value_pos r).le
  linarith

/-- The EXACT unshifted Wilson evolution applied in each existing residue
Hilbert component, without projecting to a finite-dimensional subspace. -/
def centeredEvolution (β : ℝ) (hβ : 0 < β) (n : ℕ) :
    GradedHilbert (Residue := Residue) L →ₗ[ℝ]
      GradedHilbert (Residue := Residue) L where
  toFun x := WithLp.toLp 2
    (fun r => evolution L β hβ n (x r))
  map_add' x y := by
    ext r
    simp
  map_smul' c x := by
    ext r
    simp

@[simp]
theorem centeredEvolution_apply (β : ℝ) (hβ : 0 < β) (n : ℕ)
    (x : GradedHilbert (Residue := Residue) L) (r : Residue) :
    centeredEvolution (Residue := Residue) L β hβ n x r =
      evolution L β hβ n (x r) := rfl

/-- The genuine global discrete-time evolution for H_r = H + log(p_r) I,
on the whole existing finite direct sum of gauge-invariant Wilson Hilberts. -/
def gradedEvolution (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ) (n : ℕ) :
    GradedHilbert (Residue := Residue) L →ₗ[ℝ]
      GradedHilbert (Residue := Residue) L where
  toFun x := WithLp.toLp 2
    (fun r => (stepWeight S a r)^n • evolution L β hβ n (x r))
  map_add' x y := by
    ext r
    simp
  map_smul' c x := by
    ext r
    simp [smul_comm]

@[simp]
theorem gradedEvolution_apply
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ) (n : ℕ)
    (x : GradedHilbert (Residue := Residue) L) (r : Residue) :
    gradedEvolution (Residue := Residue) L S β hβ a n x r =
      (stepWeight S a r)^n • evolution L β hβ n (x r) := rfl

/-- Exact normalization of the graded dynamics back to the actual unshifted
Wilson dynamics, coordinate by coordinate: no term or sector is lost. -/
theorem gradedEvolution_eq_weighted_centered
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ) (n : ℕ)
    (x : GradedHilbert (Residue := Residue) L) (r : Residue) :
    gradedEvolution (Residue := Residue) L S β hβ a n x r =
      (stepWeight S a r)^n •
        centeredEvolution (Residue := Residue) L β hβ n x r := by
  simp only [gradedEvolution_apply, centeredEvolution_apply]

theorem gradedEvolution_zero (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ)
    (x : GradedHilbert (Residue := Residue) L) :
    gradedEvolution (Residue := Residue) L S β hβ a 0 x = x := by
  ext r
  simp only [gradedEvolution_apply, pow_zero, one_smul, evolution_zero]

/-- The exact semigroup property retains ALL actual Wilson excitation modes,
including all off-principal eigenvectors and their multiplicities. -/
theorem gradedEvolution_add (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ) (n m : ℕ)
    (x : GradedHilbert (Residue := Residue) L) :
    gradedEvolution (Residue := Residue) L S β hβ a (n + m) x =
      gradedEvolution (Residue := Residue) L S β hβ a n
        (gradedEvolution (Residue := Residue) L S β hβ a m x) := by
  ext r
  simp only [gradedEvolution_apply]
  rw [evolution_add L β hβ n m (x r), pow_add, map_smul, smul_smul]

/-- The actual Wilson transfer contracts every individual grade. The
prime shift never enlarges a norm when the time spacing is nonnegative. -/
theorem gradedEvolution_coordinate_norm_le
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ) (ha : 0 ≤ a)
    (n : ℕ) (x : GradedHilbert (Residue := Residue) L)
    (r : Residue) :
    ‖gradedEvolution (Residue := Residue) L S β hβ a n x r‖ ≤
      ‖x r‖ := by
  have hq : 0 ≤ stepWeight S a r := (stepWeight_pos S a r).le
  have hqn : (stepWeight S a r)^n ≤ 1 := by
    simpa using (pow_le_pow_left₀ hq
      (stepWeight_le_one S a ha r) n)
  rw [gradedEvolution_apply, norm_smul, Real.norm_eq_abs,
    abs_of_nonneg (pow_nonneg hq n)]
  calc
    (stepWeight S a r)^n * ‖evolution L β hβ n (x r)‖ ≤
        (stepWeight S a r)^n * ‖x r‖ :=
      mul_le_mul_of_nonneg_left (evolution_norm_le L β hβ n (x r))
        (pow_nonneg hq n)
    _ ≤ 1 * ‖x r‖ :=
      mul_le_mul_of_nonneg_right hqn (norm_nonneg _)
    _ = ‖x r‖ := one_mul _

/-- The graded finite direct sum contracts in its TRUE PiLp 2 Hilbert norm,
not just a pointwise array pseudo-norm. -/
theorem gradedEvolution_norm_le
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ) (ha : 0 ≤ a)
    (n : ℕ) (x : GradedHilbert (Residue := Residue) L) :
    ‖gradedEvolution (Residue := Residue) L S β hβ a n x‖ ≤
      ‖x‖ := by
  have hs : ‖gradedEvolution (Residue := Residue) L S β hβ a n x‖^2 ≤
      ‖x‖^2 := by
    rw [PiLp.norm_sq_eq_of_L2
      (fun _ : Residue => RegulatedHilbert L)]
    rw [PiLp.norm_sq_eq_of_L2
      (fun _ : Residue => RegulatedHilbert L)]
    apply Finset.sum_le_sum
    intro r _
    exact pow_le_pow_left₀ (norm_nonneg _)
      (gradedEvolution_coordinate_norm_le L S β hβ a ha n x r) 2
  nlinarith [norm_nonneg (gradedEvolution (Residue := Residue)
    L S β hβ a n x), norm_nonneg x]

/-- The r-th actual unit Wilson vacuum remains a vacuum of the CENTERED
dynamics, but acquires the known external prime weight in the shifted
dynamics. No false globally fixed graded vacuum is asserted. -/
theorem gradedEvolution_vacuum_block
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ) (n : ℕ) (r : Residue) :
    gradedEvolution (Residue := Residue) L S β hβ a n
        (blockVector (Residue := Residue) L r (vacuum L β hβ)) r =
      (stepWeight S a r)^n • vacuum L β hβ := by
  simp only [gradedEvolution_apply]
  simp [blockVector, evolution_vacuum]

/-- Source-exact prime-window shift of every single spectral coordinate.
This supplies the blockwise spectral exponential generated by the ACTUAL
maximal-domain shifted Hamiltonian H + S.value r I. -/
theorem gradedEvolution_spectral_coordinate
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ) (ha : 0 < a)
    (n : ℕ) (x : GradedHilbert (Residue := Residue) L)
    (r : Residue) (μ : ℝ) :
    spectralCoordinates L β hβ.le
      (gradedEvolution (Residue := Residue) L S β hβ a n x r) μ =
      ((stepWeight S a r)^n *
        (Real.exp (-a *
          (Real.log (lambda0 L β hβ.le / μ) / a)))^n) •
        spectralCoordinates L β hβ.le (x r) μ := by
  rw [gradedEvolution_apply, map_smul,
    evolution_coordinate L β hβ n ha (x r) μ, smul_smul]

/-- On each vacuum-orthogonal source block, ALL Wilson excitation modes
decay with the source's full-space rate and the independent prime shift.
This is not an improved centered physical mass gap. -/
theorem gradedEvolution_excitation_coordinate
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ)
    (n : ℕ) (x : GradedHilbert (Residue := Residue) L)
    (r : Residue)
    (hx : inner ℝ (vacuum L β hβ) (x r) = 0) :
    ‖gradedEvolution (Residue := Residue) L S β hβ a n x r‖ ≤
      (stepWeight S a r)^n *
        ((1 - Real.exp (-24 * β * (L : ℝ)^3))^n * ‖x r‖) := by
  have hq : 0 ≤ stepWeight S a r := (stepWeight_pos S a r).le
  rw [gradedEvolution_apply, norm_smul, Real.norm_eq_abs,
    abs_of_nonneg (pow_nonneg hq n)]
  exact mul_le_mul_of_nonneg_left
    (evolution_excitation_explicit L β hβ n (x r) hx)
    (pow_nonneg hq n)

end GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowGradedEvolution
