/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib covariance and Mobius-function results retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.FiniteSU2Wilson
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.DensityMoebius
import Mathlib.Probability.Moments.Covariance
import Mathlib.MeasureTheory.Function.LpSpace.Indicator

/-!
# Two actual Wilson blocks and their Mobius-marked covariance

Block observables use literal SU2 plaquette penalties and the actual normalized
Wilson measure. Arithmetic observables mark the SAME energies by genuine real
Mobius coefficients at an explicit plaquette labeling. The comparison is exact:
ordinary covariance minus marked covariance is the complete sum of pair
covariances weighted by 1-mu(label p)*mu(label q). No residual is discarded.
This is a marked Wilson comparison, not identification with the RH causal
response process. Label choice does not preserve spatial geometry by itself.
Link-support separation is defined, but implies no independence for the coupled
Wilson measure. SOURCE_PROOF_CANDIDATE; compile, replay, axioms, interface NOT_RUN.
No RH implication, exponential decay, uniform scaling or continuum gap follows.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory ProbabilityTheory
namespace GRWTSK.Geometry.GaugeTheory.WilsonBlockArithmeticCovariance
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2Topology
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
variable (L : ℕ) [NeZero L]

def plaquetteEnergy (p : Plaquette L) (U : Configuration L SU2) : ℝ :=
  penalty (holonomy U p)

def blockEnergy (B : Finset (Plaquette L)) (U : Configuration L SU2) : ℝ :=
  ∑ p ∈ B, plaquetteEnergy L p U

/-- A finite explicit positive labeling; a different labeling changes the marking. -/
def defaultLabel (p : Plaquette L) : ℕ := (Fintype.equivFin (Plaquette L) p).val + 1

theorem defaultLabel_positive (p : Plaquette L) : 0 < defaultLabel L p :=
  Nat.succ_pos _

theorem defaultLabel_injective : Function.Injective (defaultLabel L) := by
  intro p q h
  apply (Fintype.equivFin (Plaquette L)).injective
  apply Fin.ext
  exact Nat.add_right_cancel h

def markedEnergy (label : Plaquette L → ℕ) (B : Finset (Plaquette L))
    (U : Configuration L SU2) : ℝ :=
  ∑ p ∈ B, moebiusReal (label p) * plaquetteEnergy L p U

/-- All four actual link variables used by a plaquette holonomy. -/
def plaquetteLinks (p : Plaquette L) : Finset (Link L) :=
  {(p.1, p.2.1.1), (shift p.1 p.2.1.1, p.2.1.2),
    (shift p.1 p.2.1.2, p.2.1.1), (p.1, p.2.1.2)}

def linkSupport (B : Finset (Plaquette L)) : Finset (Link L) :=
  B.biUnion (plaquetteLinks L)

def Separated (B C : Finset (Plaquette L)) : Prop :=
  Disjoint (linkSupport L B) (linkSupport L C)

def blockCovariance (β : ℝ) (B C : Finset (Plaquette L)) : ℝ :=
  covariance (blockEnergy L B) (blockEnergy L C) (wilsonMeasure L β)

def markedCovariance (β : ℝ) (label : Plaquette L → ℕ)
    (B C : Finset (Plaquette L)) : ℝ :=
  covariance (markedEnergy L label B) (markedEnergy L label C) (wilsonMeasure L β)

theorem plaquetteEnergy_bounds (p : Plaquette L) (U : Configuration L SU2) :
    0 ≤ plaquetteEnergy L p U ∧ plaquetteEnergy L p U ≤ 2 :=
  penalty_bounds _

theorem plaquetteEnergy_continuous (p : Plaquette L) :
    Continuous (plaquetteEnergy L p) := continuous_penalty.comp (continuous_holonomy p)

theorem blockEnergy_continuous (B : Finset (Plaquette L)) :
    Continuous (blockEnergy L B) := by
  apply continuous_finsetSum
  intro p _
  exact plaquetteEnergy_continuous L p

theorem blockEnergy_gauge (B : Finset (Plaquette L)) (h : Gauge L SU2)
    (U : Configuration L SU2) : blockEnergy L B (gaugeTransform h U) = blockEnergy L B U := by
  apply Finset.sum_congr rfl
  intro p _
  change penalty (holonomy (gaugeTransform h U) p) = penalty (holonomy U p)
  rw [holonomy_gauge, penalty_conjugation]

theorem plaquetteEnergy_memLp (β : ℝ) (hβ : 0 ≤ β) (p : Plaquette L) :
    MemLp (plaquetteEnergy L p) 2 (wilsonMeasure L β) := by
  letI := wilsonMeasure_isProbabilityMeasure L β hβ
  exact (plaquetteEnergy_continuous L p).memLp_of_hasCompactSupport
    (HasCompactSupport.of_compactSpace _)

theorem blockEnergy_memLp (β : ℝ) (hβ : 0 ≤ β) (B : Finset (Plaquette L)) :
    MemLp (blockEnergy L B) 2 (wilsonMeasure L β) := by
  letI := wilsonMeasure_isProbabilityMeasure L β hβ
  exact (blockEnergy_continuous L B).memLp_of_hasCompactSupport
    (HasCompactSupport.of_compactSpace _)

/-- This is the centered covariance of the actual finite Wilson probability law. -/
theorem blockCovariance_eq_moments (β : ℝ) (hβ : 0 ≤ β) (B C : Finset (Plaquette L)) :
    blockCovariance L β B C =
      (∫ U, blockEnergy L B U * blockEnergy L C U ∂wilsonMeasure L β) -
      (∫ U, blockEnergy L B U ∂wilsonMeasure L β) *
      (∫ U, blockEnergy L C U ∂wilsonMeasure L β) := by
  letI := wilsonMeasure_isProbabilityMeasure L β hβ
  exact covariance_eq_sub (blockEnergy_memLp L β hβ B) (blockEnergy_memLp L β hβ C)

theorem blockCovariance_eq_pairs (β : ℝ) (hβ : 0 ≤ β) (B C : Finset (Plaquette L)) :
    blockCovariance L β B C = ∑ p ∈ B, ∑ q ∈ C,
      covariance (plaquetteEnergy L p) (plaquetteEnergy L q) (wilsonMeasure L β) := by
  letI := wilsonMeasure_isProbabilityMeasure L β hβ
  exact covariance_fun_sum_fun_sum'
    (fun p _ => plaquetteEnergy_memLp L β hβ p)
    (fun q _ => plaquetteEnergy_memLp L β hβ q)

theorem markedCovariance_eq_pairs (β : ℝ) (hβ : 0 ≤ β) (label : Plaquette L → ℕ)
    (B C : Finset (Plaquette L)) :
    markedCovariance L β label B C = ∑ p ∈ B, ∑ q ∈ C,
      (moebiusReal (label p) * moebiusReal (label q)) *
      covariance (plaquetteEnergy L p) (plaquetteEnergy L q) (wilsonMeasure L β) := by
  letI := wilsonMeasure_isProbabilityMeasure L β hβ
  unfold markedCovariance markedEnergy
  rw [covariance_fun_sum_fun_sum'
    (fun p _ => (plaquetteEnergy_memLp L β hβ p).const_mul (moebiusReal (label p)))
    (fun q _ => (plaquetteEnergy_memLp L β hβ q).const_mul (moebiusReal (label q)))]
  apply Finset.sum_congr rfl
  intro p _
  apply Finset.sum_congr rfl
  intro q _
  rw [covariance_const_mul_left, covariance_const_mul_right]
  ring

/-- Exact comparison, valid also for separated blocks; separation supplies no decay estimate. -/
theorem covariance_exact_comparison (β : ℝ) (hβ : 0 ≤ β) (label : Plaquette L → ℕ)
    (B C : Finset (Plaquette L)) :
    blockCovariance L β B C - markedCovariance L β label B C =
      ∑ p ∈ B, ∑ q ∈ C, (1 - moebiusReal (label p) * moebiusReal (label q)) *
        covariance (plaquetteEnergy L p) (plaquetteEnergy L q) (wilsonMeasure L β) := by
  rw [blockCovariance_eq_pairs L β hβ, markedCovariance_eq_pairs L β hβ,
    ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro p _
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro q _
  ring

/-- Concrete separated one-plaquette blocks on the four-dimensional size-eight torus. -/
def originPlaquette : Plaquette 8 :=
  (fun _ => 0, ⟨(0, 1), by decide⟩)

def distantPlaquette : Plaquette 8 :=
  (fun ν => if ν = 2 then 3 else 0, ⟨(0, 1), by decide⟩)

theorem example_blocks_separated :
    Separated 8 {originPlaquette} {distantPlaquette} := by
  decide

/-- A fully specified finite-regulator covariance; no numerical value is asserted. -/
def exampleBlockCovariance (β : ℝ) : ℝ :=
  blockCovariance 8 β {originPlaquette} {distantPlaquette}

end GRWTSK.Geometry.GaugeTheory.WilsonBlockArithmeticCovariance
