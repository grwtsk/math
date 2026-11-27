import Mathlib.MeasureTheory.Integral.Lebesgue.Add
import Mathlib.MeasureTheory.Measure.Typeclasses.Probability
import Mathlib.Analysis.SpecificLimits.Basic

/-!
# Counting the work of repeated factoring attempts

Local source attribution: grwtsk contributors. A local composition lemma for
the fair-coin attempts in the Google Cogentic Las Vegas manuscript, §6.
A conditional expectation on each reached history implies the unconditional
mass-times-cost premise below by integration over the reached event.
-/

open MeasureTheory
open scoped ENNReal

namespace GRWTSK.IntegerFactorization

/-- With continuation probability bounded by r, each attempted phase
costs at most C in mean conditional on being reached. The cost supplied
for a phase is zero off that phase's reached set. Histories may be dependent. -/
theorem restart_expected_cost {Ω : Type*} [MeasurableSpace Ω] (μ : Measure Ω)
    [IsProbabilityMeasure μ] (reach : ℕ → Set Ω) (cost : ℕ → Ω → ℝ≥0∞)
    (r C setup : ℝ≥0∞) (hr : r < 1) (hC : C ≠ ⊤) (hsetup : setup ≠ ⊤)
    (hstep : ∀ j, μ (reach (j + 1)) ≤ μ (reach j) * r)
    (hmeas : ∀ j, AEMeasurable (cost j) μ)
    (hcost : ∀ j, (∫⁻ ω, cost j ω ∂μ) ≤ C * μ (reach j)) :
    setup + (∫⁻ ω, ∑' j, cost j ω ∂μ) ≤ setup + C / (1 - r) ∧
    setup + C / (1 - r) ≠ ⊤ := by
  have hreach : ∀ j, μ (reach j) ≤ r ^ j := by
    intro j
    induction j with
    | zero => simpa using (prob_le_one (μ := μ) (s := reach 0))
    | succ j ih => exact (hstep j).trans (by simpa [pow_succ] using mul_le_mul_left ih r)
  constructor
  · apply add_le_add_right
    rw [lintegral_tsum hmeas]
    calc
      ∑' j, ∫⁻ ω, cost j ω ∂μ ≤ ∑' j, C * r ^ j :=
        ENNReal.tsum_le_tsum fun j => (hcost j).trans (mul_le_mul_right (hreach j) C)
      _ = C / (1 - r) := by rw [ENNReal.tsum_mul_left, ENNReal.tsum_geometric, div_eq_mul_inv]
  · exact ENNReal.add_ne_top.mpr ⟨hsetup, ENNReal.div_ne_top hC (ne_of_gt (tsub_pos_of_lt hr))⟩

/-- A tape partition into a fixed number of simultaneously live stack slots
plus a reusable work region gives a bound on *every* execution and step.
A zero slot represents an inactive frame. The representation obligation is
an equality for the machine's actual live footprint at each step. -/
theorem restart_workspace_pathwise {Ω : Type*} {depth : ℕ}
    (live work : Ω → ℕ → ℕ) (slot : Ω → ℕ → Fin depth → ℕ)
    (cap : Fin depth → ℕ) (workCap : ℕ)
    (hpartition : ∀ ω t, live ω t = work ω t + ∑ i, slot ω t i)
    (hwork : ∀ ω t, work ω t ≤ workCap)
    (hslot : ∀ ω t i, slot ω t i ≤ cap i) :
    ∀ ω t, live ω t ≤ workCap + ∑ i, cap i := by
  intro ω t
  rw [hpartition]
  exact Nat.add_le_add (hwork ω t) (Finset.sum_le_sum fun i _ => hslot ω t i)

end GRWTSK.IntegerFactorization
