/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.FiniteSU2Wilson
import Mathlib

/-!
# Exact full-lattice Wilson Gibbs-density comparison at explicit regulator scale

Local mathematical attribution: grwtsk contributors.

The density is the ACTUAL normalized Wilson Boltzmann weight with respect
to the ACTUAL full positive-link product Haar probability. Its lower and
upper bounds depend explicitly on the complete original plaquette inventory.
They do not assert cluster decay, a regulator-uniform bound, or the existence
of a continuum Yang--Mills Hamiltonian.

The accompanying analytical review derives a quantitative weak-coupling
covariance perturbation bound from this density estimate and the independently
proven product-Haar covariance factorization for distinct spatial times.
The latter integral comparison is not asserted to be Lean-verified here.

SOURCE_PROOF_CANDIDATE / LEAN_BUILD_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOMS_NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonRegulatorDensityControl

open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
variable (L : ℕ) [NeZero L]

/-- Actual original plaquette-count action ceiling, NOT an adjustable
physical energy normalization. -/
def actionCeiling : ℝ := 2 * (Fintype.card (Plaquette L) : ℝ)

/-- A dimensionless finite-regulator coupling-volume factor. -/
def couplingVolume (β : ℝ) : ℝ := β * actionCeiling L

/-- The literal density with respect to the full Haar reference probability. -/
def densityRatio (β : ℝ) (U : Configuration L SU2) : ℝ :=
  Real.exp (-β * wilsonAction L U) / wilsonPartition L β

/-- The complete original Wilson action supplies the explicit weight interval. -/
theorem unnormalized_weight_bounds (β : ℝ) (hβ : 0 ≤ β)
    (U : Configuration L SU2) :
    Real.exp (-couplingVolume L β) ≤
        Real.exp (-β * wilsonAction L U) ∧
      Real.exp (-β * wilsonAction L U) ≤ 1 := by
  have hS := wilsonAction_bounds L U
  have hneg : -β ≤ 0 := neg_nonpos.mpr hβ
  have hlo : -couplingVolume L β ≤ -β * wilsonAction L U := by
    change -(β * (2 * (Fintype.card (Plaquette L) : ℝ))) ≤
      -β * wilsonAction L U
    exact mul_le_mul_of_nonpos_left hS.2 hneg
  have hhi : -β * wilsonAction L U ≤ 0 := by
    exact mul_nonpos_of_nonpos_of_nonneg hneg hS.1
  constructor
  · exact Real.exp_le_exp.mpr hlo
  · simpa only [Real.exp_le_one_iff] using hhi

/-- Actual partition function has an explicit positive normalization. -/
theorem partition_bounds (β : ℝ) (hβ : 0 ≤ β) :
    Real.exp (-couplingVolume L β) ≤ wilsonPartition L β ∧
      wilsonPartition L β ≤ 1 := by
  simpa only [couplingVolume, actionCeiling, show
    -(β * (2 * (Fintype.card (Plaquette L) : ℝ))) =
      -2 * β * (Fintype.card (Plaquette L) : ℝ) by ring]
    using wilsonPartition_bounds L β hβ

/-- Pointwise normalized Gibbs density bound, with all original plaquettes
and both sides of the normalization retained. -/
theorem densityRatio_bounds (β : ℝ) (hβ : 0 ≤ β)
    (U : Configuration L SU2) :
    Real.exp (-couplingVolume L β) ≤ densityRatio L β U ∧
      densityRatio L β U ≤ Real.exp (couplingVolume L β) := by
  have hz := partition_bounds L β hβ
  have hw := unnormalized_weight_bounds L β hβ U
  have hzpos : 0 < wilsonPartition L β := wilsonPartition_pos L β hβ
  have heq : (1 : ℝ) =
      Real.exp (couplingVolume L β) * Real.exp (-couplingVolume L β) := by
    rw [← Real.exp_add]
    simp
  constructor
  · apply (le_div_iff₀ hzpos).mpr
    calc
      Real.exp (-couplingVolume L β) * wilsonPartition L β ≤
          Real.exp (-couplingVolume L β) * 1 :=
        mul_le_mul_of_nonneg_left hz.2 (Real.exp_pos _).le
      _ = Real.exp (-couplingVolume L β) := by ring
      _ ≤ Real.exp (-β * wilsonAction L U) := hw.1
  · apply (div_le_iff₀ hzpos).mpr
    calc
      Real.exp (-β * wilsonAction L U) ≤ 1 := hw.2
      _ = Real.exp (couplingVolume L β) *
          Real.exp (-couplingVolume L β) := heq
      _ ≤ Real.exp (couplingVolume L β) * wilsonPartition L β :=
        mul_le_mul_of_nonneg_left hz.1 (Real.exp_pos _).le

/-- At zero coupling, the actual normalized density is literally Haar. -/
theorem densityRatio_zero (U : Configuration L SU2) :
    densityRatio L 0 U = 1 := by
  have h := partition_bounds L 0 (le_refl 0)
  have hz : wilsonPartition L 0 = 1 := by
    have h' : (1 : ℝ) ≤ wilsonPartition L 0 := by
      simpa [couplingVolume, actionCeiling] using h.1
    exact le_antisymm h.2 h'
  simp [densityRatio, hz]

end GRWTSK.Geometry.GaugeTheory.WilsonRegulatorDensityControl
