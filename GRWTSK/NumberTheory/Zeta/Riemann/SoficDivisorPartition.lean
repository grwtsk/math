import GRWTSK.NumberTheory.Zeta.Riemann.SoficDivisorPrimeCountingBridge

/-!
# Exact finite selection and omitted-zero bookkeeping
Copyright (c) 2026 grwtsk contributors. MIT.

Finite algebra only. The selected records are not asserted to exhaust the
analytic zeta divisor. No Siegel-zero or zero-density result is assumed here.
SOURCE_CANDIDATE; compilation, kernel replay and axiom audit NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.SoficDivisorPartition

open GRWTSK.NumberTheory.Zeta.Riemann.SoficDivisorPrimeCountingBridge

/-- Weighted contribution of a specifically selected indexed subfamily. -/
def selectedZeroSum {n : ℕ} (D : FiniteDivisor n)
    (kernel : ℂ → ℂ) (sigma height : ℝ) : ℂ :=
  ∑ i ∈ selected D sigma height,
    (D.multiplicity i : ℂ) * kernel (D.root i)

/-- Every other record remains in the explicitly retained complement. -/
def omittedZeroSum {n : ℕ} (D : FiniteDivisor n)
    (kernel : ℂ → ℂ) (sigma height : ℝ) : ℂ :=
  ∑ i ∈ (Finset.univ \ selected D sigma height),
    (D.multiplicity i : ℂ) * kernel (D.root i)

theorem zeroSum_eq_selected_add_omitted {n : ℕ}
    (D : FiniteDivisor n) (kernel : ℂ → ℂ)
    (sigma height : ℝ) :
    zeroSum D kernel =
      selectedZeroSum D kernel sigma height +
      omittedZeroSum D kernel sigma height := by
  classical
  unfold zeroSum selectedZeroSum omittedZeroSum
  exact (Finset.sum_add_sum_compl
    (s := Finset.univ) (t := selected D sigma height)
    (fun i => (D.multiplicity i : ℂ) * kernel (D.root i))
    (selected_subset_source D sigma height)).symm

/-- Finite prime-counting correction with no discarded selected-complement
term. The analytic full-divisor and outside-cutoff tails remain inside F.remainder. -/
theorem prime_counting_selected_with_complement {n : ℕ}
    (D : FiniteDivisor n) (kernel : ℂ → ℂ)
    (sigma height : ℝ) (F : ExplicitFormulaAt D kernel) :
    F.psi - F.mainTerm =
      -selectedZeroSum D kernel sigma height +
      (F.remainder - omittedZeroSum D kernel sigma height) := by
  rw [prime_counting_correction D kernel F,
      zeroSum_eq_selected_add_omitted D kernel sigma height]
  ring

end GRWTSK.NumberTheory.Zeta.Riemann.SoficDivisorPartition
