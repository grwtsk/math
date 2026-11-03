/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonGodelResidueCover
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonBlockCovarianceBudget

/-!
# Actual Wilson residue covariance Gram and complete cross-sector energy

Local mathematical attribution: grwtsk contributors.

For any finite grading of the ACTUAL four-dimensional periodic SU(2) Wilson
plaquettes, the class energies are continuous gauge-invariant real observables
on the literal finite configuration space. This module forms their covariance
Gram under the ACTUAL normalized Wilson probability measure.

The complete quadratic equals the variance of the actual signed real linear
combination of those observables. Every diagonal and ordered off-diagonal
cross-residue term is retained. The absolute cross budget is calculated from
the same Wilson measure, not supplied as an arbitrary remainder.

The source-bound covariance estimates give a finite volume-dependent bound.
They do not supply a positive diagonal floor, cross-class cancellation,
uniform regulator constants, an excitation Hamiltonian, or continuum Yang--Mills.
The genuine slice gauge-invariant Hilbert space in WilsonSliceGaugeHilbert is
a DIFFERENT spatial-slice object. No unproved Hilbert identification is made.

SOURCE_PROOF_CANDIDATE. LEAN_BUILD_NOT_RUN; FRESH_KERNEL_NOT_RUN;
TRANSITIVE_AXIOMS_NOT_RUN; EXPECTED_TYPES_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory ProbabilityTheory

namespace GRWTSK.Geometry.GaugeTheory.WilsonGradedCovarianceGram

open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonBlockArithmeticCovariance
open GRWTSK.Geometry.GaugeTheory.WilsonBlockCovarianceBudget
open GRWTSK.Geometry.GaugeTheory.WilsonGodelResidueCover

variable (L : ℕ) [NeZero L]
variable {Grade : Type*} [Fintype Grade] [DecidableEq Grade]

/-- Signed real coefficient observation of the ORIGINAL Wilson class energies. -/
def gradeObservable (rho : Plaquette L → Grade) (a : Grade → ℝ)
    (U : Configuration L SU2) : ℝ :=
  ∑ r : Grade, a r * gradedWilsonEnergy L rho r U

/-- One literal covariance under the actual normalized Wilson probability law. -/
def gradeCovariance (β : ℝ) (rho : Plaquette L → Grade)
    (r s : Grade) : ℝ :=
  blockCovariance L β (gradedWilsonFiber L rho r) (gradedWilsonFiber L rho s)

/-- Full finite Gram, retaining both ordered orientations of every off-diagonal
pair and the actual signed coefficients. -/
def gramQuadratic (β : ℝ) (rho : Plaquette L → Grade)
    (a : Grade → ℝ) : ℝ :=
  ∑ r : Grade, ∑ s : Grade, a r * a s * gradeCovariance L β rho r s

/-- All class observables belong to L2 of the ACTUAL full Wilson measure. -/
theorem gradeObservable_memLp (β : ℝ) (hβ : 0 ≤ β)
    (rho : Plaquette L → Grade) (a : Grade → ℝ) :
    MemLp (gradeObservable L rho a) 2 (wilsonMeasure L β) := by
  letI := wilsonMeasure_isProbabilityMeasure L β hβ
  have hc : Continuous (gradeObservable L rho a) := by
    unfold gradeObservable
    apply continuous_finsetSum
    intro r _
    exact continuous_const.mul
      (blockEnergy_continuous L (gradedWilsonFiber L rho r))
  exact hc.memLp_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)

/-- The genuine Wilson probability-space quadratic is precisely the
complete finite covariance Gram, not a model with removed cross terms. -/
theorem gramQuadratic_eq_covariance (β : ℝ) (hβ : 0 ≤ β)
    (rho : Plaquette L → Grade) (a : Grade → ℝ) :
    gramQuadratic L β rho a =
      covariance (gradeObservable L rho a) (gradeObservable L rho a)
        (wilsonMeasure L β) := by
  letI := wilsonMeasure_isProbabilityMeasure L β hβ
  have hmem (r : Grade) :
      MemLp (fun U : Configuration L SU2 =>
        a r * gradedWilsonEnergy L rho r U) 2 (wilsonMeasure L β) :=
    (blockEnergy_memLp L β hβ (gradedWilsonFiber L rho r)).const_mul (a r)
  have hc :
      covariance (gradeObservable L rho a) (gradeObservable L rho a)
        (wilsonMeasure L β) =
      ∑ r : Grade, ∑ s : Grade,
        covariance
          (fun U : Configuration L SU2 => a r * gradedWilsonEnergy L rho r U)
          (fun U : Configuration L SU2 => a s * gradedWilsonEnergy L rho s U)
          (wilsonMeasure L β) := by
    change covariance
        (fun U : Configuration L SU2 =>
          ∑ r : Grade, a r * gradedWilsonEnergy L rho r U)
        (fun U : Configuration L SU2 =>
          ∑ s : Grade, a s * gradedWilsonEnergy L rho s U)
        (wilsonMeasure L β) = _
    exact covariance_fun_sum_fun_sum' (fun r _ => hmem r) (fun s _ => hmem s)
  rw [hc]
  unfold gramQuadratic
  apply Finset.sum_congr rfl
  intro r _
  apply Finset.sum_congr rfl
  intro s _
  rw [covariance_const_mul_left, covariance_const_mul_right]
  change a r * (a s * gradeCovariance L β rho r s) =
    a r * a s * gradeCovariance L β rho r s
  ring

/-- Positive semidefinite Gram without assuming spectral separation. -/
theorem gramQuadratic_nonneg (β : ℝ) (hβ : 0 ≤ β)
    (rho : Plaquette L → Grade) (a : Grade → ℝ) :
    0 ≤ gramQuadratic L β rho a := by
  rw [gramQuadratic_eq_covariance L β hβ rho a]
  rw [covariance_self (gradeObservable_memLp L β hβ rho a).aemeasurable]
  exact variance_nonneg _ _

/-- Literal covariance of two class energies, retaining all original
plaquette pairs (including same-plaquette and both orientations). -/
theorem gradeCovariance_eq_plaquette_pairs (β : ℝ) (hβ : 0 ≤ β)
    (rho : Plaquette L → Grade) (r s : Grade) :
    gradeCovariance L β rho r s =
      ∑ p ∈ gradedWilsonFiber L rho r,
        ∑ q ∈ gradedWilsonFiber L rho s,
          covariance (plaquetteEnergy L p) (plaquetteEnergy L q)
            (wilsonMeasure L β) := by
  exact blockCovariance_eq_pairs L β hβ _ _

/-- The only unconditional source-specific correlation allowance here
is volume-dependent: no invented separation decay or spectral floor. -/
theorem gradeCovariance_abs_le_card (β : ℝ) (hβ : 0 ≤ β)
    (rho : Plaquette L → Grade) (r s : Grade) :
    |gradeCovariance L β rho r s| ≤
      ((gradedWilsonFiber L rho r).card : ℝ) *
        ((gradedWilsonFiber L rho s).card : ℝ) := by
  rw [gradeCovariance_eq_plaquette_pairs L β hβ rho r s]
  calc
    |∑ p ∈ gradedWilsonFiber L rho r,
      ∑ q ∈ gradedWilsonFiber L rho s,
        covariance (plaquetteEnergy L p) (plaquetteEnergy L q)
          (wilsonMeasure L β)| ≤
      ∑ p ∈ gradedWilsonFiber L rho r,
        ∑ q ∈ gradedWilsonFiber L rho s,
          |covariance (plaquetteEnergy L p) (plaquetteEnergy L q)
            (wilsonMeasure L β)| := by
      refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
      apply Finset.sum_le_sum
      intro p _
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _p ∈ gradedWilsonFiber L rho r,
          ∑ _q ∈ gradedWilsonFiber L rho s, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro p _
      apply Finset.sum_le_sum
      intro q _
      exact plaquette_covariance_abs_le_one L β hβ p q
    _ = ((gradedWilsonFiber L rho r).card : ℝ) *
        ((gradedWilsonFiber L rho s).card : ℝ) := by
      simp

/-- Extract ALL and ONLY the equal-grade ordered pairs. -/
def diagonalQuadratic (β : ℝ) (rho : Plaquette L → Grade)
    (a : Grade → ℝ) : ℝ :=
  ∑ r : Grade, ∑ s : Grade,
    if r = s then a r * a s * gradeCovariance L β rho r s else 0

/-- Every other ordered residue-pair correlation, preserving its sign. -/
def offDiagonalQuadratic (β : ℝ) (rho : Plaquette L → Grade)
    (a : Grade → ℝ) : ℝ :=
  ∑ r : Grade, ∑ s : Grade,
    if r = s then 0 else a r * a s * gradeCovariance L β rho r s

/-- Charge precisely the ABSOLUTE total of the original off-diagonal terms. -/
def offDiagonalBudget (β : ℝ) (rho : Plaquette L → Grade)
    (a : Grade → ℝ) : ℝ :=
  ∑ r : Grade, ∑ s : Grade,
    if r = s then 0 else |a r * a s * gradeCovariance L β rho r s|

/-- The exact complete signed decomposition uses the existing full Gram. -/
theorem gram_eq_diagonal_add_offDiagonal (β : ℝ)
    (rho : Plaquette L → Grade) (a : Grade → ℝ) :
    gramQuadratic L β rho a =
      diagonalQuadratic L β rho a + offDiagonalQuadratic L β rho a := by
  unfold gramQuadratic diagonalQuadratic offDiagonalQuadratic
  calc
    (∑ r : Grade, ∑ s : Grade, a r * a s * gradeCovariance L β rho r s) =
      ∑ r : Grade, ∑ s : Grade,
        ((if r = s then a r * a s * gradeCovariance L β rho r s else 0) +
          (if r = s then 0 else a r * a s * gradeCovariance L β rho r s)) := by
      apply Finset.sum_congr rfl
      intro r _
      apply Finset.sum_congr rfl
      intro s _
      by_cases h : r = s <;> simp [h]
    _ = (∑ r : Grade, ∑ s : Grade,
          if r = s then a r * a s * gradeCovariance L β rho r s else 0) +
        (∑ r : Grade, ∑ s : Grade,
          if r = s then 0 else a r * a s * gradeCovariance L β rho r s) := by
      simp_rw [Finset.sum_add_distrib]

/-- The actual signed cross interaction is controlled by its explicitly
defined source-matched absolute budget, not assumed to vanish. -/
theorem offDiagonal_abs_le_budget (β : ℝ)
    (rho : Plaquette L → Grade) (a : Grade → ℝ) :
    |offDiagonalQuadratic L β rho a| ≤ offDiagonalBudget L β rho a := by
  unfold offDiagonalQuadratic offDiagonalBudget
  calc
    |∑ r : Grade, ∑ s : Grade,
      if r = s then 0 else a r * a s * gradeCovariance L β rho r s| ≤
      ∑ r : Grade, ∑ s : Grade,
        |if r = s then 0 else a r * a s * gradeCovariance L β rho r s| := by
      refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
      apply Finset.sum_le_sum
      intro r _
      exact Finset.abs_sum_le_sum_abs _ _
    _ = ∑ r : Grade, ∑ s : Grade,
          if r = s then 0 else |a r * a s * gradeCovariance L β rho r s| := by
      apply Finset.sum_congr rfl
      intro r _
      apply Finset.sum_congr rfl
      intro s _
      by_cases h : r = s <;> simp [h]

/-- Full covariance Gram is above its diagonal minus precisely the actual
cross-class budget. This is unconditional finite Wilson mathematics. -/
theorem diagonal_sub_budget_le_gram (β : ℝ)
    (rho : Plaquette L → Grade) (a : Grade → ℝ) :
    diagonalQuadratic L β rho a - offDiagonalBudget L β rho a ≤
      gramQuadratic L β rho a := by
  rw [gram_eq_diagonal_add_offDiagonal]
  have hc := (abs_le.mp (offDiagonal_abs_le_budget L β rho a)).1
  linarith

/-- Explicit volume-dependent cross allowance from the actual Wilson law:
each plaquette covariance is at most one in absolute value. -/
theorem offDiagonalBudget_le_card_sum (β : ℝ) (hβ : 0 ≤ β)
    (rho : Plaquette L → Grade) (a : Grade → ℝ) :
    offDiagonalBudget L β rho a ≤
      ∑ r : Grade, ∑ s : Grade,
        if r = s then 0 else
          |a r * a s| * ((gradedWilsonFiber L rho r).card : ℝ) *
            ((gradedWilsonFiber L rho s).card : ℝ) := by
  unfold offDiagonalBudget
  apply Finset.sum_le_sum
  intro r _
  apply Finset.sum_le_sum
  intro s _
  by_cases hrs : r = s
  · simp [hrs]
  · simp only [hrs, ↓reduceIte]
    rw [abs_mul]
    have hc := gradeCovariance_abs_le_card L β hβ rho r s
    have hnonneg : 0 ≤ |a r * a s| := abs_nonneg _
    calc
      |a r * a s| * |gradeCovariance L β rho r s| ≤
          |a r * a s| * (((gradedWilsonFiber L rho r).card : ℝ) *
            ((gradedWilsonFiber L rho s).card : ℝ)) :=
        mul_le_mul_of_nonneg_left hc hnonneg
      _ = |a r * a s| * ((gradedWilsonFiber L rho r).card : ℝ) *
            ((gradedWilsonFiber L rho s).card : ℝ) := by ring

/-- An unoccupied grade gives an IDENTICALLY zero actual Wilson observable.
Thus its coefficient cannot be detected by this Gram, independently of L. -/
theorem empty_grade_observable_zero (rho : Plaquette L → Grade)
    (r : Grade) (h : gradedWilsonFiber L rho r = ∅)
    (U : Configuration L SU2) :
    gradedWilsonEnergy L rho r U = 0 := by
  simp [gradedWilsonEnergy, blockEnergy, h]

/-- A possible quadratic coercivity conclusion is explicitly conditional
on a diagonal floor AND a bound on the complete physical cross budget.
Neither premise is supplied merely by residue coverage or the finite
plaquette cardinality estimate. -/
theorem gram_coercive_of_diagonal_and_cross
    (β : ℝ) (rho : Plaquette L → Grade) (a : Grade → ℝ)
    (delta eps : ℝ)
    (hdiag : delta * (∑ r : Grade, (a r) ^ 2) ≤
      diagonalQuadratic L β rho a)
    (hcross : offDiagonalBudget L β rho a ≤
      eps * (∑ r : Grade, (a r) ^ 2)) :
    (delta - eps) * (∑ r : Grade, (a r) ^ 2) ≤
      gramQuadratic L β rho a := by
  have h := diagonal_sub_budget_le_gram L β rho a
  nlinarith

end GRWTSK.Geometry.GaugeTheory.WilsonGradedCovarianceGram
