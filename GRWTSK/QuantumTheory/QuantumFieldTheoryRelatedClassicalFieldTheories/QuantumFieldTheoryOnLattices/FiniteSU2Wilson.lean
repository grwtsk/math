/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.FinitePeriodicLattice
import GRWTSK.MeasureAndIntegration.SetFunctionsAndMeasuresOnSpacesWithAdditionalStructure.SetFunctionsAndMeasuresOnTopologicalGroupsOrSemigroupsHaarMeasuresInvariantMeasures.SU2Haar
import GRWTSK.ProbabilityTheoryAndStochasticProcesses.FoundationsOfProbabilityTheory.ProbabilisticMeasureTheory.FiniteBoltzmannNormalization

/-!
# The finite periodic SU(2) Wilson probability measure

The reference measure is the actual finite product of normalized Haar on the
actual complex special-unitary matrix group. The action is the sum of Wilson
penalties on the oriented plaquettes of the four-dimensional periodic lattice.
Its pointwise bounds prove a positive partition function, which normalizes the
actual density measure. Gauge invariance is proved from actual two-sided Haar
invariance and the literal plaquette conjugation identity.

The finite construction works whenever L is nonzero. The final existence
consumer explicitly supplies the requested L>=3 and beta>=0. No invariant
measure, normalization, continuum limit, reflection positivity, Hilbert space,
physical Hamiltonian or mass gap is assumed as an unproved certificate field.

Paper context: Arthur Jaffe and Edward Witten, Quantum Yang--Mills Theory,
section 6.5, https://www.claymath.org/wp-content/uploads/2022/06/yangmills.pdf.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson

open MeasureTheory Set
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2Topology
open GRWTSK.Geometry.GaugeTheory.SU2Haar
open GRWTSK.Probability.StatisticalMechanics.FiniteBoltzmannNormalization

section PositiveSize

variable (L : ℕ) [NeZero L]

/-- Product Haar on precisely the actual positive-link inventory. -/
def referenceMeasure : Measure (Configuration L SU2) := productHaar (Link L)

instance referenceMeasure_isProbabilityMeasure :
    IsProbabilityMeasure (referenceMeasure L) := by
  dsimp only [referenceMeasure]
  infer_instance

/-- The unnormalized Wilson action on precisely the actual plaquette inventory. -/
def wilsonAction (U : Configuration L SU2) : ℝ :=
  ∑ p : Plaquette L, penalty (holonomy U p)

/-- Both pointwise action bounds follow from actual SU(2) matrix unitarity. -/
theorem wilsonAction_bounds (U : Configuration L SU2) :
    0 ≤ wilsonAction L U ∧
      wilsonAction L U ≤ 2 * (Fintype.card (Plaquette L) : ℝ) := by
  constructor
  · exact Finset.sum_nonneg (fun p _ => (penalty_bounds (holonomy U p)).1)
  · calc
      wilsonAction L U ≤ ∑ _p : Plaquette L, (2 : ℝ) :=
        Finset.sum_le_sum (fun p _ => (penalty_bounds (holonomy U p)).2)
      _ = 2 * (Fintype.card (Plaquette L) : ℝ) := by
        simp only [Finset.sum_const, Finset.card_univ, nsmul_eq_mul]
        ring

/-- Each plaquette holonomy is conjugated at its initial vertex, so the
literal trace action is gauge invariant. -/
theorem wilsonAction_gauge (h : Gauge L SU2) (U : Configuration L SU2) :
    wilsonAction L (gaugeTransform h U) = wilsonAction L U := by
  unfold wilsonAction
  apply Finset.sum_congr rfl
  intro p _
  rw [holonomy_gauge, penalty_conjugation]

/-- This is continuity on the actual finite matrix configuration space. -/
theorem continuous_wilsonAction : Continuous (wilsonAction L) := by
  apply continuous_finsetSum
  intro p _
  exact continuous_penalty.comp (continuous_holonomy p)

theorem measurable_wilsonAction : Measurable (wilsonAction L) :=
  (continuous_wilsonAction L).measurable

/-- Vertex gauge transformations preserve the actual product Haar measure.
The two multipliers are fixed separately at each positive link. -/
theorem referenceMeasure_gauge (h : Gauge L SU2) :
    MeasurePreserving (gaugeTransform h) (referenceMeasure L) (referenceMeasure L) := by
  exact measurePreserving_twoSidedProduct
    (fun e : Link L => h e.1) (fun e : Link L => (h (shift e.1 e.2))⁻¹)

/-- The actual real Wilson partition function. -/
def wilsonPartition (β : ℝ) : ℝ :=
  partitionFunction (referenceMeasure L) β (wilsonAction L)

/-- The actual normalized Wilson density measure. Its denominator is the
constructed partition function, whose positivity is proved below. -/
def wilsonMeasure (β : ℝ) : Measure (Configuration L SU2) :=
  boltzmannMeasure (referenceMeasure L) β (wilsonAction L)

/-- The requested explicit finite regulator partition-function bounds. -/
theorem wilsonPartition_bounds (β : ℝ) (hβ : 0 ≤ β) :
    Real.exp (-2 * β * (Fintype.card (Plaquette L) : ℝ)) ≤ wilsonPartition L β ∧
      wilsonPartition L β ≤ 1 := by
  have h := partitionFunction_bounds (referenceMeasure L) hβ
    (measurable_wilsonAction L) (wilsonAction_bounds L)
  have hexp : -β * (2 * (Fintype.card (Plaquette L) : ℝ)) =
      -2 * β * (Fintype.card (Plaquette L) : ℝ) := by ring
  simpa only [wilsonPartition, hexp] using h

theorem wilsonPartition_pos (β : ℝ) (hβ : 0 ≤ β) : 0 < wilsonPartition L β :=
  (Real.exp_pos _).trans_le (wilsonPartition_bounds L β hβ).1

/-- The constructed density has total mass one. No probability witness is
assumed for the weighted measure. -/
theorem wilsonMeasure_univ (β : ℝ) (hβ : 0 ≤ β) : wilsonMeasure L β univ = 1 :=
  boltzmannMeasure_univ (referenceMeasure L) hβ
    (measurable_wilsonAction L) (wilsonAction_bounds L)

theorem wilsonMeasure_isProbabilityMeasure (β : ℝ) (hβ : 0 ≤ β) :
    IsProbabilityMeasure (wilsonMeasure L β) :=
  ⟨wilsonMeasure_univ L β hβ⟩

/-- Gauge invariance of the constructed density measure follows from its
actual Haar reference measure and actual action invariance. -/
theorem wilsonMeasure_map_gauge (β : ℝ) (h : Gauge L SU2) :
    (wilsonMeasure L β).map (gaugeTransform h) = wilsonMeasure L β :=
  boltzmannMeasure_map_eq (referenceMeasure L) (measurable_wilsonAction L)
    (referenceMeasure_gauge L h) (wilsonAction_gauge L h)

end PositiveSize

/-- Instantiate the requested finite regulator with L>=3. The witness is
the explicit normalized product-Haar Wilson density constructed above. -/
theorem finiteWilson_probability_exists (L : ℕ) (hL : 3 ≤ L)
    (β : ℝ) (hβ : 0 ≤ β) :
    ∃ μ : Measure (Configuration L SU2),
      IsProbabilityMeasure μ ∧
        ∀ h : Gauge L SU2, μ.map (gaugeTransform h) = μ := by
  letI : NeZero L := ⟨by omega⟩
  exact ⟨wilsonMeasure L β, wilsonMeasure_isProbabilityMeasure L β hβ,
    wilsonMeasure_map_gauge L β⟩

end GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
