/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ActualMertensKernelColumnDiagonal
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.GcdSignedRectangleKernel

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual bounded source column telescope. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensColumnTelescope
open MertensCoefficientKernelCongruence ActualMertensNaturalGcdKernel ActualMertensPositivePairStatistic
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
variable (N : ℕ) [NeZero N]

theorem bounded_gap_tail_reindex (r : ℕ) (hr : 0<r) (hrN : r≤N) :
    (∑ k ∈ Finset.range N, if r≤k+1 then criticalEndpointGap (k+1) else 0)=
      endpointGapTail r (N+1-r) := by
  rw [← Finset.sum_filter]
  unfold endpointGapTail
  refine Finset.sum_bij (fun k _ => k+1-r) ?_ ?_ ?_ ?_
  · intro k hk
    have hh := Finset.mem_filter.mp hk
    have hb := Finset.mem_range.mp hh.1
    apply Finset.mem_range.mpr
    omega
  · intro k hk l hl he
    have h₁ := (Finset.mem_filter.mp hk).2
    have h₂ := (Finset.mem_filter.mp hl).2
    omega
  · intro k hk
    have hb := Finset.mem_range.mp hk
    refine ⟨r+k-1,Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (by omega),by omega⟩,by omega⟩
  · intro k hk
    have hb := (Finset.mem_filter.mp hk).2
    have he : r+(k+1-r)=k+1 := by omega
    rw [he]

theorem actual_column_sum_telescope (e : ZMod N ≃ Fin N) (r : ℕ)
    (hr : 0<r) (hrN : r≤N) :
    (∑ i : ZMod N, mertensIncrementMatrix N e i (naturalSourceSite N e r))=
      (Real.sqrt r)⁻¹-(Real.sqrt ((N+1 : ℕ) : ℝ))⁻¹ := by
  have hc := bounded_source_label N e r hr hrN
  calc
    _ = ∑ k : Fin N, if r≤k.val+1 then criticalEndpointGap (k.val+1) else 0 := by
      apply Fintype.sum_equiv e
      intro i
      have hi : (e (naturalSourceSite N e r)).val≤(e i).val ↔ r≤(e i).val+1 := by omega
      simp only [mertensIncrementMatrix,hi]
    _ = ∑ k ∈ Finset.range N, if r≤k+1 then criticalEndpointGap (k+1) else 0 :=
      Fin.sum_univ_eq_sum_range _ _
    _ = endpointGapTail r (N+1-r) := bounded_gap_tail_reindex N r hr hrN
    _ = _ := by rw [endpointGapTail_eq,show r+(N+1-r)=N+1 by omega]

/- This telescope concerns the exact source column, not an approximation.
Its square-minus-column-energy identity pays K_rr≤1/r after positivity;
finite harmonic assembly and actual off-diagonal cancellation remain separate. -/
end GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensColumnTelescope
