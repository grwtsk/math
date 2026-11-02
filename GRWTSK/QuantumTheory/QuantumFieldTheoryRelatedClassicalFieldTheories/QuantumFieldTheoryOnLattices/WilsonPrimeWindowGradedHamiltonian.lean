/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonPrimeWindowShiftedHamiltonian
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib

/-!
# Finite prime-window residue grading of the regulated Wilson Hamiltonian

Local mathematical attribution: grwtsk contributors.

For a finite residue type, this file forms the genuine finite L2 direct sum of
copies of the regulated Wilson Hilbert space and places the additive
prime-window Hamiltonian

  H_r = H + log(p_r) I

on the r-th block.  The maximal domain is the finite L2 product of the original
maximal logarithmic domains.  The source proves the exact block form,
residue-vacuum energies, block eigenvalue transport, equality of the graded
point spectrum with the union of the block point spectra, and the finite direct
sum graph self-adjointness characterization.

The direct-sum Hamiltonian distinguishes residue vacua by positive
transcendental energies.  Centering each block by its own vacuum energy returns
the original Hamiltonian form exactly, so the construction does not create an
excitation gap.  No full unbounded spectrum theorem, continuum limit, physical
mass gap, arithmetic endpoint estimate, or RH conclusion is asserted.

SOURCE_PROOF_CANDIDATE; LEAN_BUILD_NOT_RUN; EXPECTED_TYPES_NOT_RUN;
FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowGradedHamiltonian

open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open GRWTSK.Geometry.GaugeTheory.WilsonFullRegulatedHamiltonian
open GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowResidueHamiltonian
open GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowShiftedHamiltonian

variable {Residue : Type*} [Fintype Residue] [DecidableEq Residue]
variable (L : ℕ) [NeZero L]

/-- The finite L2 direct sum of one regulated Hilbert space per residue. -/
abbrev GradedHilbert :=
  PiLp 2 (fun _ : Residue => RegulatedHilbert L)

/-- The finite L2 direct sum of the original maximal logarithmic domains. -/
abbrev GradedDomain (β : ℝ) (hβ : 0 ≤ β) (a : ℝ) :=
  PiLp 2 (fun _ : Residue => HamiltonianDomain L β hβ a)

/-- Coordinatewise inclusion of the graded maximal domain into the graded
Hilbert space. -/
def gradedDomainCoe (β : ℝ) (hβ : 0 ≤ β) (a : ℝ) :
    GradedDomain (Residue := Residue) L β hβ a →ₗ[ℝ]
      GradedHilbert (Residue := Residue) L where
  toFun x := WithLp.toLp 2 (fun r => (x r : RegulatedHilbert L))
  map_add' x y := by
    ext r
    rfl
  map_smul' c x := by
    ext r
    rfl

@[simp]
theorem gradedDomainCoe_apply
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : GradedDomain (Residue := Residue) L β hβ a)
    (r : Residue) :
    gradedDomainCoe (Residue := Residue) L β hβ a x r =
      (x r : RegulatedHilbert L) := rfl

/-- The finite block Hamiltonian with r-th block H + log(p_r) I. -/
def gradedHamiltonian
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ) :
    GradedDomain (Residue := Residue) L β hβ a →ₗ[ℝ]
      GradedHilbert (Residue := Residue) L where
  toFun x := WithLp.toLp 2
    (fun r => shiftedHamiltonian L S r β hβ a (x r))
  map_add' x y := by
    ext r
    simp
  map_smul' c x := by
    ext r
    simp

@[simp]
theorem gradedHamiltonian_apply
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : GradedDomain (Residue := Residue) L β hβ a)
    (r : Residue) :
    gradedHamiltonian (Residue := Residue) L S β hβ a x r =
      shiftedHamiltonian L S r β hβ a (x r) := rfl

/-- The actual direct-sum Hamiltonian quadratic form. -/
def gradedHamiltonianForm
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : GradedDomain (Residue := Residue) L β hβ a) : ℝ :=
  inner ℝ
    (gradedDomainCoe (Residue := Residue) L β hβ a x)
    (gradedHamiltonian (Residue := Residue) L S β hβ a x)

/-- Sum of the unshifted block forms. -/
def gradedBaseForm
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : GradedDomain (Residue := Residue) L β hβ a) : ℝ :=
  ∑ r : Residue, hamiltonianForm L β hβ a (x r)

/-- Complete finite residue offset in the graded form. -/
def gradedOffsetForm
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : GradedDomain (Residue := Residue) L β hβ a) : ℝ :=
  ∑ r : Residue,
    S.value r * ‖(x r : RegulatedHilbert L)‖ ^ 2

/-- Vacuum-centered direct-sum form. -/
def gradedCenteredForm
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : GradedDomain (Residue := Residue) L β hβ a) : ℝ :=
  gradedHamiltonianForm (Residue := Residue) L S β hβ a x -
    gradedOffsetForm (Residue := Residue) L S β hβ a x

/-- The direct-sum form is the sum of the literal shifted block forms. -/
theorem gradedHamiltonianForm_eq_sum
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : GradedDomain (Residue := Residue) L β hβ a) :
    gradedHamiltonianForm (Residue := Residue) L S β hβ a x =
      ∑ r : Residue, shiftedHamiltonianForm L S r β hβ a (x r) := by
  unfold gradedHamiltonianForm
  rw [PiLp.inner_apply]
  rfl

/-- Exact separation into the original form and the prime-window offsets. -/
theorem gradedHamiltonianForm_eq_base_add_offset
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : GradedDomain (Residue := Residue) L β hβ a) :
    gradedHamiltonianForm (Residue := Residue) L S β hβ a x =
      gradedBaseForm (Residue := Residue) L β hβ a x +
        gradedOffsetForm (Residue := Residue) L S β hβ a x := by
  rw [gradedHamiltonianForm_eq_sum]
  unfold gradedBaseForm gradedOffsetForm
  simp_rw [shiftedHamiltonianForm_eq]
  rw [Finset.sum_add_distrib]

/-- Centering every block by its own residue vacuum energy recovers the
unshifted direct-sum form exactly. -/
theorem gradedCenteredForm_eq_base
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : GradedDomain (Residue := Residue) L β hβ a) :
    gradedCenteredForm (Residue := Residue) L S β hβ a x =
      gradedBaseForm (Residue := Residue) L β hβ a x := by
  unfold gradedCenteredForm
  rw [gradedHamiltonianForm_eq_base_add_offset]
  ring

/-- Embed one domain vector into one residue block. -/
def blockState
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (r : Residue) (x : HamiltonianDomain L β hβ a) :
    GradedDomain (Residue := Residue) L β hβ a :=
  PiLp.single 2 r x

/-- Embed one Hilbert vector into one residue block. -/
def blockVector
    (r : Residue) (x : RegulatedHilbert L) :
    GradedHilbert (Residue := Residue) L :=
  PiLp.single 2 r x

@[simp]
theorem gradedDomainCoe_blockState
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (r : Residue) (x : HamiltonianDomain L β hβ a) :
    gradedDomainCoe (Residue := Residue) L β hβ a
        (blockState (Residue := Residue) L β hβ a r x) =
      blockVector (Residue := Residue) L r
        (x : RegulatedHilbert L) := by
  ext s
  by_cases h : s = r
  · subst s
    simp [blockState, blockVector]
  · simp [blockState, blockVector, h]

/-- The graded Hamiltonian acts only on the occupied block. -/
theorem gradedHamiltonian_blockState
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (r : Residue) (x : HamiltonianDomain L β hβ a) :
    gradedHamiltonian (Residue := Residue) L S β hβ a
        (blockState (Residue := Residue) L β hβ a r x) =
      blockVector (Residue := Residue) L r
        (shiftedHamiltonian L S r β hβ a x) := by
  ext s
  by_cases h : s = r
  · subst s
    simp [blockState, blockVector]
  · simp [blockState, blockVector, h]

/-- A one-block state has exactly the corresponding block form. -/
theorem gradedHamiltonianForm_blockState
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (r : Residue) (x : HamiltonianDomain L β hβ a) :
    gradedHamiltonianForm (Residue := Residue) L S β hβ a
        (blockState (Residue := Residue) L β hβ a r x) =
      shiftedHamiltonianForm L S r β hβ a x := by
  rw [gradedHamiltonianForm_eq_sum]
  simp [blockState, shiftedHamiltonianForm]

/-- The r-th residue vacuum in the finite direct sum. -/
def gradedVacuum
    (β : ℝ) (hβ : 0 < β) (a : ℝ) (r : Residue) :
    GradedDomain (Residue := Residue) L β hβ.le a :=
  blockState (Residue := Residue) L β hβ.le a r
    (vacuumDomain L β hβ a)

/-- The r-th graded vacuum is an eigenvector with its prime-window energy. -/
theorem gradedHamiltonian_vacuum
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ) (r : Residue) :
    gradedHamiltonian (Residue := Residue) L S β hβ.le a
        (gradedVacuum (Residue := Residue) L β hβ a r) =
      blockVector (Residue := Residue) L r
        (S.value r • vacuum L β hβ) := by
  rw [gradedVacuum, gradedHamiltonian_blockState,
    shiftedHamiltonian_vacuum]

/-- Vacuum-energy readout of one residue block. -/
def gradedVacuumEnergy
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ) (r : Residue) : ℝ :=
  gradedHamiltonianForm (Residue := Residue) L S β hβ.le a
    (gradedVacuum (Residue := Residue) L β hβ a r)

/-- The graded vacuum energy is exactly the singleton prime-window value. -/
theorem gradedVacuumEnergy_eq
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ) (r : Residue) :
    gradedVacuumEnergy (Residue := Residue) L S β hβ a r =
      S.value r := by
  unfold gradedVacuumEnergy gradedVacuum
  rw [gradedHamiltonianForm_blockState,
    shiftedHamiltonianForm_vacuum]

/-- Every graded vacuum energy is transcendental over Q. -/
theorem gradedVacuumEnergy_transcendental
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ) (r : Residue) :
    Transcendental ℚ
      (gradedVacuumEnergy (Residue := Residue) L S β hβ a r) := by
  rw [gradedVacuumEnergy_eq]
  exact S.value_transcendental r

/-- The finite family of graded vacuum energies recovers residue classes. -/
theorem gradedVacuumEnergy_injective
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ) :
    Function.Injective
      (gradedVacuumEnergy (Residue := Residue) L S β hβ a) := by
  intro r s hrs
  rw [gradedVacuumEnergy_eq L S β hβ a r,
    gradedVacuumEnergy_eq L S β hβ a s] at hrs
  exact S.value_injective hrs

/-- Distinct residue vacua have strictly separated absolute energies. -/
theorem gradedVacuumEnergy_abs_sub_pos
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ)
    {r s : Residue} (hrs : r ≠ s) :
    0 < |gradedVacuumEnergy (Residue := Residue) L S β hβ a r -
      gradedVacuumEnergy (Residue := Residue) L S β hβ a s| := by
  apply abs_pos.mpr
  exact sub_ne_zero.mpr
    (fun h => hrs (gradedVacuumEnergy_injective L S β hβ a h))

/-- Point spectrum of one shifted block, phrased on its maximal domain. -/
def blockPointSpectrum
    (S : PrimeWindowSupplier Residue) (r : Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ) : Set ℝ :=
  {E | ∃ x : HamiltonianDomain L β hβ a,
    (x : RegulatedHilbert L) ≠ 0 ∧
      shiftedHamiltonian L S r β hβ a x =
        E • (x : RegulatedHilbert L)}

/-- Point spectrum of the finite graded block Hamiltonian. -/
def gradedPointSpectrum
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ) : Set ℝ :=
  {E | ∃ x : GradedDomain (Residue := Residue) L β hβ a,
    gradedDomainCoe (Residue := Residue) L β hβ a x ≠ 0 ∧
      gradedHamiltonian (Residue := Residue) L S β hβ a x =
        E • gradedDomainCoe (Residue := Residue) L β hβ a x}

/-- A block eigenvector embeds as a graded eigenvector. -/
theorem gradedHamiltonian_blockEigen
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a E : ℝ)
    (r : Residue) (x : HamiltonianDomain L β hβ a)
    (heigen : shiftedHamiltonian L S r β hβ a x =
      E • (x : RegulatedHilbert L)) :
    gradedHamiltonian (Residue := Residue) L S β hβ a
        (blockState (Residue := Residue) L β hβ a r x) =
      E • blockVector (Residue := Residue) L r
        (x : RegulatedHilbert L) := by
  rw [gradedHamiltonian_blockState]
  ext s
  by_cases h : s = r
  · subst s
    simpa [blockVector] using heigen
  · simp [blockVector, h]

/-- The graded point spectrum is exactly the union of the block point spectra.
This is an eigenvalue statement and does not claim a full unbounded spectrum
API theorem. -/
theorem gradedPointSpectrum_eq_iUnion
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ) :
    gradedPointSpectrum (Residue := Residue) L S β hβ a =
      ⋃ r : Residue, blockPointSpectrum L S r β hβ a := by
  ext E
  constructor
  · rintro ⟨x, hx, heigen⟩
    have hr : ∃ r : Residue,
        (x r : RegulatedHilbert L) ≠ 0 := by
      by_contra h
      apply hx
      ext r
      have hr0 : (x r : RegulatedHilbert L) = 0 := by
        exact not_ne_iff.mp (not_exists.mp h r)
      simpa using hr0
    rcases hr with ⟨r, hr⟩
    have hcoord := congrArg
      (fun v : GradedHilbert (Residue := Residue) L => v r) heigen
    have hblock :
        shiftedHamiltonian L S r β hβ a (x r) =
          E • (x r : RegulatedHilbert L) := by
      simpa using hcoord
    exact Set.mem_iUnion.mpr ⟨r, x r, hr, hblock⟩
  · intro hE
    rcases Set.mem_iUnion.mp hE with ⟨r, x, hx, heigen⟩
    refine ⟨blockState (Residue := Residue) L β hβ a r x, ?_, ?_⟩
    · rw [gradedDomainCoe_blockState]
      intro hzero
      have hcoord := congrArg
        (fun v : GradedHilbert (Residue := Residue) L => v r) hzero
      apply hx
      simpa [blockVector] using hcoord
    · rw [gradedDomainCoe_blockState]
      exact gradedHamiltonian_blockEigen L S β hβ a E r x heigen

/-- Every original eigenvalue E yields the graded block eigenvalue
E + log(p_r). -/
theorem original_eigen_mem_gradedPointSpectrum
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a E : ℝ)
    (r : Residue) (x : HamiltonianDomain L β hβ a)
    (hx : (x : RegulatedHilbert L) ≠ 0)
    (heigen : Hamiltonian L β hβ a x =
      E • (x : RegulatedHilbert L)) :
    E + S.value r ∈
      gradedPointSpectrum (Residue := Residue) L S β hβ a := by
  rw [gradedPointSpectrum_eq_iUnion]
  apply Set.mem_iUnion.mpr
  refine ⟨r, x, hx, ?_⟩
  exact shiftedHamiltonian_eigen L S r β hβ a E x heigen

/-- Turn coordinatewise domain membership into an actual graded-domain
vector. -/
def gradedStateOfMem
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : GradedHilbert (Residue := Residue) L)
    (hx : ∀ r, x r ∈ HamiltonianDomain L β hβ a) :
    GradedDomain (Residue := Residue) L β hβ a :=
  WithLp.toLp 2 (fun r => ⟨x r, hx r⟩)

@[simp]
theorem gradedStateOfMem_apply
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : GradedHilbert (Residue := Residue) L)
    (hx : ∀ r, x r ∈ HamiltonianDomain L β hβ a)
    (r : Residue) :
    gradedStateOfMem (Residue := Residue) L β hβ a x hx r =
      ⟨x r, hx r⟩ := rfl

/-- Finite direct-sum graph self-adjointness, expressed in the actual L2 direct
sum inner product. -/
theorem graded_selfAdjoint_graph
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x y : GradedHilbert (Residue := Residue) L) :
    (∀ z : GradedDomain (Residue := Residue) L β hβ a,
      inner ℝ
        (gradedHamiltonian (Residue := Residue) L S β hβ a z) x =
      inner ℝ
        (gradedDomainCoe (Residue := Residue) L β hβ a z) y) ↔
      ∃ hx : ∀ r, x r ∈ HamiltonianDomain L β hβ a,
        gradedHamiltonian (Residue := Residue) L S β hβ a
          (gradedStateOfMem (Residue := Residue) L β hβ a x hx) = y := by
  constructor
  · intro h
    have hlocal : ∀ r : Residue,
        ∀ z : HamiltonianDomain L β hβ a,
          inner ℝ (shiftedHamiltonian L S r β hβ a z) (x r) =
            inner ℝ (z : RegulatedHilbert L) (y r) := by
      intro r z
      have hz := h (blockState (Residue := Residue) L β hβ a r z)
      rw [gradedHamiltonian_blockState,
        gradedDomainCoe_blockState] at hz
      simpa [blockVector, PiLp.inner_apply] using hz
    have hex : ∀ r : Residue,
        ∃ hx : x r ∈ HamiltonianDomain L β hβ a,
          shiftedHamiltonian L S r β hβ a ⟨x r, hx⟩ = y r := by
      intro r
      exact (shifted_selfAdjoint_graph L S r β hβ a
        (x r) (y r)).mp (hlocal r)
    choose hx hxy using hex
    refine ⟨hx, ?_⟩
    ext r
    simpa using hxy r
  · rintro ⟨hx, hxy⟩ z
    rw [PiLp.inner_apply, PiLp.inner_apply]
    apply Finset.sum_congr rfl
    intro r hr
    have hcoord :
        shiftedHamiltonian L S r β hβ a ⟨x r, hx r⟩ = y r := by
      have h := congrArg
        (fun v : GradedHilbert (Residue := Residue) L => v r) hxy
      simpa using h
    have hlocal :=
      (shifted_selfAdjoint_graph L S r β hβ a
        (x r) (y r)).mpr ⟨hx r, hcoord⟩
    simpa using hlocal (z r)

/-- The finite graded form is nonnegative. -/
theorem gradedHamiltonianForm_nonnegative
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) {a : ℝ} (ha : 0 < a)
    (x : GradedDomain (Residue := Residue) L β hβ.le a) :
    0 ≤ gradedHamiltonianForm (Residue := Residue)
      L S β hβ.le a x := by
  rw [gradedHamiltonianForm_eq_sum]
  exact Finset.sum_nonneg fun r hr =>
    shiftedHamiltonianForm_nonnegative L S r β hβ ha (x r)

/-- Complete blockwise excitation estimate. -/
theorem graded_excitation_lower_bound
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) {a : ℝ} (ha : 0 < a)
    (x : GradedDomain (Residue := Residue) L β hβ.le a)
    (hperp : ∀ r,
      spectralCoordinates L β hβ.le
        (x r : RegulatedHilbert L)
        (lambda0 L β hβ.le) = 0) :
    (∑ r : Residue,
      (S.value r +
        (-Real.log
          (1 - Real.exp (-24 * β * (L : ℝ)^3)) / a)) *
        ‖(x r : RegulatedHilbert L)‖ ^ 2) ≤
      gradedHamiltonianForm (Residue := Residue)
        L S β hβ.le a x := by
  rw [gradedHamiltonianForm_eq_sum]
  apply Finset.sum_le_sum
  intro r hr
  exact shifted_excitation_lower_bound L S r β hβ ha
    (x r) (hperp r)

/-- After exact residue-vacuum subtraction, the original excitation lower bound
holds on the entire finite L2 direct sum. -/
theorem graded_centered_excitation_lower_bound
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) {a : ℝ} (ha : 0 < a)
    (x : GradedDomain (Residue := Residue) L β hβ.le a)
    (hperp : ∀ r,
      spectralCoordinates L β hβ.le
        (x r : RegulatedHilbert L)
        (lambda0 L β hβ.le) = 0) :
    (-Real.log
      (1 - Real.exp (-24 * β * (L : ℝ)^3)) / a) *
        ‖gradedDomainCoe (Residue := Residue)
          L β hβ.le a x‖ ^ 2 ≤
      gradedCenteredForm (Residue := Residue)
        L S β hβ.le a x := by
  rw [gradedCenteredForm_eq_base]
  unfold gradedBaseForm
  have hsum :
      (∑ r : Residue,
        (-Real.log
          (1 - Real.exp (-24 * β * (L : ℝ)^3)) / a) *
          ‖(x r : RegulatedHilbert L)‖ ^ 2) ≤
        ∑ r : Residue, hamiltonianForm L β hβ.le a (x r) := by
    apply Finset.sum_le_sum
    intro r hr
    exact full_excitation_lower_bound L β hβ ha (x r) (hperp r)
  calc
    (-Real.log
      (1 - Real.exp (-24 * β * (L : ℝ)^3)) / a) *
        ‖gradedDomainCoe (Residue := Residue)
          L β hβ.le a x‖ ^ 2 =
      (-Real.log
        (1 - Real.exp (-24 * β * (L : ℝ)^3)) / a) *
        (∑ r : Residue, ‖(x r : RegulatedHilbert L)‖ ^ 2) := by
          rw [PiLp.norm_sq_eq_of_L2
            (fun _ : Residue => RegulatedHilbert L)]
    _ = ∑ r : Residue,
        (-Real.log
          (1 - Real.exp (-24 * β * (L : ℝ)^3)) / a) *
          ‖(x r : RegulatedHilbert L)‖ ^ 2 := by
      rw [Finset.mul_sum]
    _ ≤ _ := hsum

end GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowGradedHamiltonian
