import Mathlib
import GRWTSK.NumberTheory.Zeta.Riemann.ThreeQuarterDensityObstruction

/-!
# Indexed sofic zero records and conditional prime-counting transfer

Copyright (c) 2026 grwtsk contributors. MIT.

The finite index is the stable source identity of a graph cell / analytic-zero
record, so distinct records are not collapsed when zeros repeat. The analytic
identification of records with all actual zeta zeros, and the explicit formula,
are NOT supplied by this finite construction. A supplied explicit formula is
transported exactly; it is never derived from graph geometry.

SOURCE_CANDIDATE / compilation NOT_RUN / kernel NOT_RUN / axiom audit NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.SoficDivisorPrimeCountingBridge

/-- Each finite source record retains its exact cell address, zero coordinate
and multiplicity. Multiplicity is not inferred from distinct complex values. -/
structure FiniteDivisor (n : ℕ) where
  cell : Fin n → List Bool
  root : Fin n → ℂ
  multiplicity : Fin n → ℕ

/-- The signed zero contribution of the *indexed* records.
No deduplication by complex zero value takes place. -/
def zeroSum {n : ℕ} (D : FiniteDivisor n) (kernel : ℂ → ℂ) : ℂ :=
  ∑ i : Fin n, (D.multiplicity i : ℂ) * kernel (D.root i)

/-- A cutoff includes both a real-part boundary and a height boundary. -/
def selected {n : ℕ} (D : FiniteDivisor n) (sigma height : ℝ) :
    Finset (Fin n) :=
  Finset.univ.filter (fun i =>
    sigma ≤ (D.root i).re ∧ |(D.root i).im| ≤ height)

/-- Zero counting uses analytic multiplicity, not the number of distinct
positions or graph vertices. -/
def zeroCount {n : ℕ} (D : FiniteDivisor n)
    (sigma height : ℝ) : ℕ :=
  ∑ i ∈ selected D sigma height, D.multiplicity i

/-- All selected records are present in the same source-indexed graph. -/
theorem selected_subset_source {n : ℕ} (D : FiniteDivisor n)
    (sigma height : ℝ) :
    selected D sigma height ⊆ (Finset.univ : Finset (Fin n)) := by
  intro i hi
  simp

/-- Re-encoding an index as its graph vertex retains its full multiplicity. -/
theorem indexed_multiplicity_accounting {n : ℕ}
    (D : FiniteDivisor n) (sigma height : ℝ) :
    (∑ i ∈ selected D sigma height, D.multiplicity i) =
      zeroCount D sigma height := rfl

/-- A certified real zero-density budget bounds the exact finite weighted
count, conditional on the arithmetic supplier being applicable to D. -/
theorem count_le_budget {n : ℕ} (D : FiniteDivisor n)
    (sigma height : ℝ) (budget : ℕ)
    (density : zeroCount D sigma height ≤ budget) :
    (∑ i ∈ selected D sigma height, D.multiplicity i) ≤ budget :=
  density

/-- Analytic explicit-formula record: the remainder includes pole,
trivial-zero, endpoint, unselected-zero and truncation terms. It is a
premise, not an axiom or an alleged consequence of the finite graph. -/
structure ExplicitFormulaAt {n : ℕ} (D : FiniteDivisor n)
    (kernel : ℂ → ℂ) where
  psi : ℂ
  mainTerm : ℂ
  remainder : ℂ
  identity : psi = mainTerm - zeroSum D kernel + remainder

/-- The prime-counting correction is *exactly* the multiplicity-weighted
zero contribution plus the declared residual. -/
theorem prime_counting_correction {n : ℕ}
    (D : FiniteDivisor n) (kernel : ℂ → ℂ)
    (F : ExplicitFormulaAt D kernel) :
    F.psi - F.mainTerm = -zeroSum D kernel + F.remainder := by
  rw [F.identity]
  ring

end GRWTSK.NumberTheory.Zeta.Riemann.SoficDivisorPrimeCountingBridge
