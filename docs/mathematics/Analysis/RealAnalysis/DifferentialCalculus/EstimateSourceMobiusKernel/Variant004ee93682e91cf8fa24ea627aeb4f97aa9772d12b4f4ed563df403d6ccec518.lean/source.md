# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EstimateSourceMobiusKernel.Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5d154a00a93e066fed1cc5a01e2fff0b9b31c92` · SHA-256 `004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel
import Mathlib.Analysis.Calculus.ContDiff.Deriv

/-!
# RH estimate: actual real Möbius source kernel

This module constructs the real-variable source kernel used by the closed-right
Mertens/Abel transport.

A fixed finite k-inventory is used at each radius. Terms beyond the effective
source support vanish through the already proved compact support of the actual
correlation; there is no moving indicator in the real variable.

The kernel is source-faithful:
  Phi_A(x) = sum_k (log k) / sqrt(x k) * C_A(log x + log k)
on positive x.

All analytic clauses of SourceMobiusKernelContract are proved:
differentiability on the source window, derivative integrability, and upper
boundary vanishing. The full contract is reduced exactly to the remaining
finite integer reindexing statement.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateSourceMobiusKernel

open MeasureTheory Set
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open EstimateMertensAbel EstimateMobiusSplit PrimePowerDescent

noncomputable section

/-- Fixed finite inventory large enough for every effective kernel term. -/
def sourceKernelCutoff (A : ℝ) : ℕ :=
  ⌊sourceUpper A⌋₊

/-- One source-faithful real-kernel summand. -/
def sourceKernelTerm (A : ℝ) (k : ℕ) (x : ℝ) : ℝ :=
  Real.log (k : ℝ) *
    exponentialTest
      (sourceCorrelation Realization.explicitSecondDerivative A)
      (Real.log (x * (k : ℝ)))

/-- The actual real Möbius kernel, represented by one fixed finite sum. -/
def sourceMobiusKernel (A x : ℝ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
    sourceKernelTerm A k x

/-- The fixed-sum representation is exactly the archived
log/square-root/correlation kernel on positive inputs. -/
theorem sourceKernelTerm_eq_archive
    (A x : ℝ) (k : ℕ)
    (hx : 0 < x) (hk : 1 ≤ k) :
    sourceKernelTerm A k x =
      Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
        sourceCorrelation Realization.explicitSecondDerivative A
          (Real.log x + Real.log (k : ℝ)) := by
  have hkpos : 0 < (k : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk)
  have hy : 0 < x * (k : ℝ) := mul_pos hx hkpos
  have hexp :
      Real.exp (-Real.log (x * (k : ℝ)) / 2) =
        1 / Real.sqrt (x * (k : ℝ)) := by
    rw [neg_div, Real.exp_neg, Real.exp_half,
      Real.exp_log hy]
    ring
  unfold sourceKernelTerm exponentialTest
  rw [hexp, Real.log_mul (ne_of_gt hx) (ne_of_gt hkpos)]
  ring

/-- Each fixed summand is C1 on the positive real axis. -/
theorem sourceKernelTerm_contDiffOn_pos
    (A : ℝ) (hA : 0 < A)
    (k : ℕ) (hk : 1 ≤ k) :
    ContDiffOn ℝ 1 (sourceKernelTerm A k) (Ioi 0) := by
  have hkpos : 0 < (k : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk)
  have harg :
      ContDiffOn ℝ 1
        (fun x : ℝ => Real.log (x * (k : ℝ)))
        (Ioi 0) := by
    apply ContDiffOn.log
    · exact (contDiff_id.mul contDiff_const).contDiffOn
    · intro x hx
      exact mul_ne_zero (ne_of_gt hx) (ne_of_gt hkpos)
  have houter :
      ContDiff ℝ 1
        (exponentialTest
          (sourceCorrelation Realization.explicitSecondDerivative A)) :=
    exponentialTest_contDiff _
      (CorrelationRegularity.sourceCorrelation_contDiff A hA)
  have hcomp :
      ContDiffOn ℝ 1
        (fun x : ℝ =>
          exponentialTest
            (sourceCorrelation Realization.explicitSecondDerivative A)
            (Real.log (x * (k : ℝ))))
        (Ioi 0) := by
    simpa only [Function.comp_def] using
      houter.comp_contDiffOn harg
  unfold sourceKernelTerm
  exact contDiffOn_const.mul hcomp

/-- The complete finite source kernel is C1 on the positive real axis. -/
theorem sourceMobiusKernel_contDiffOn_pos
    (A : ℝ) (hA : 0 < A) :
    ContDiffOn ℝ 1 (sourceMobiusKernel A) (Ioi 0) := by
  unfold sourceMobiusKernel
  apply ContDiffOn.sum
  intro k hk
  exact sourceKernelTerm_contDiffOn_pos A hA k
    (Finset.mem_Icc.mp hk).1

/-- Every point of the exact Abel source window is strictly positive. -/
theorem source_window_pos
    (A x : ℝ) (hA : 1 ≤ A)
    (hx : x ∈ Icc (sourceLower A) (sourceUpper A)) :
    0 < x := by
  have hApos : 0 < A := by linarith
  have hLower : 0 < sourceLower A := by
    unfold sourceLower
    positivity
  exact hLower.trans_le hx.1

/-- Differentiability clause of the actual source-kernel contract. -/
theorem sourceMobiusKernel_differentiableAt
    (A : ℝ) (hA : 1 ≤ A)
    (x : ℝ)
    (hx : x ∈ Icc (sourceLower A) (sourceUpper A)) :
    DifferentiableAt ℝ (sourceMobiusKernel A) x := by
  have hApos : 0 < A := by linarith
  have hxpos : 0 < x :=
    source_window_pos A x hA hx
  have hnhds : Ioi (0 : ℝ) ∈ 𝓝 x :=
    Ioi_mem_nhds hxpos
  exact ContDiffAt.differentiableAt
    ((sourceMobiusKernel_contDiffOn_pos A hApos).contDiffAt hnhds) (by norm_num)

/-- The derivative is genuinely integrable on the compact source window. -/
theorem sourceMobiusKernel_deriv_integrable
    (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (deriv (sourceMobiusKernel A))
      (Icc (sourceLower A) (sourceUpper A)) := by
  have hApos : 0 < A := by linarith
  have hcont :
      ContinuousOn (deriv (sourceMobiusKernel A)) (Ioi 0) :=
    ContDiffOn.continuousOn_deriv_of_isOpen
      (sourceMobiusKernel_contDiffOn_pos A hApos) isOpen_Ioi (by norm_num)
  have hsubset :
      Icc (sourceLower A) (sourceUpper A) ⊆ Ioi (0 : ℝ) := by
    intro x hx
    exact source_window_pos A x hA hx
  exact (hcont.mono hsubset).integrableOn_Icc

/-- Every fixed inventory term vanishes at the strict upper source boundary. -/
theorem sourceKernelTerm_upper_zero
    (A : ℝ) (hA : 1 ≤ A)
    (k : ℕ) (hk : 1 ≤ k) :
    sourceKernelTerm A k (sourceUpper A) = 0 := by
  have hApos : 0 < A := by linarith
  have hkpos : 0 < (k : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk)
  have hkone : (1 : ℝ) ≤ k := by
    exact_mod_cast hk
  have hlogk : 0 ≤ Real.log (k : ℝ) :=
    Real.log_nonneg hkone
  have hlog :
      Real.log (sourceUpper A * (k : ℝ)) =
        2 * A + Real.log (k : ℝ) := by
    unfold sourceUpper
    rw [Real.log_mul (Real.exp_pos _).ne' (ne_of_gt hkpos),
      Real.log_exp]
  have hnonneg :
      0 ≤ 2 * A + Real.log (k : ℝ) := by
    linarith
  have hsupport :
      2 * A ≤
        |Real.log (sourceUpper A * (k : ℝ))| := by
    rw [hlog, abs_of_nonneg hnonneg]
    linarith
  have hzero :=
    CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs
      A (Real.log (sourceUpper A * (k : ℝ)))
      hApos hsupport
  simp [sourceKernelTerm, exponentialTest, hzero]

/-- Upper-boundary clause of the actual source-kernel contract. -/
theorem sourceMobiusKernel_upper_zero
    (A : ℝ) (hA : 1 ≤ A) :
    sourceMobiusKernel A (sourceUpper A) = 0 := by
  unfold sourceMobiusKernel
  apply Finset.sum_eq_zero
  intro k hk
  exact sourceKernelTerm_upper_zero A hA k
    (Finset.mem_Icc.mp hk).1

/-- The three analytic clauses of SourceMobiusKernelContract are unconditional
for the actual real kernel. -/
def SourceMobiusKernelAnalyticContract
    (A : ℝ) : Prop :=
  (∀ x ∈ Icc (sourceLower A) (sourceUpper A),
    DifferentiableAt ℝ (sourceMobiusKernel A) x) ∧
  IntegrableOn (deriv (sourceMobiusKernel A))
    (Icc (sourceLower A) (sourceUpper A)) ∧
  sourceMobiusKernel A (sourceUpper A) = 0

theorem sourceMobiusKernel_analytic_contract
    (A : ℝ) (hA : 1 ≤ A) :
    SourceMobiusKernelAnalyticContract A :=
  ⟨sourceMobiusKernel_differentiableAt A hA,
    sourceMobiusKernel_deriv_integrable A hA,
    sourceMobiusKernel_upper_zero A hA⟩

/-- The sole remaining discrete clause: agreement of the actual real kernel at
integer arguments with the finite antidiagonal source kernel. -/
def SourceMobiusKernelIntegerAgreement
    (A : ℝ) : Prop :=
  ∀ d : ℕ,
    d ∈ Finset.Ioc ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊ →
      sourceMobiusKernel A d =
        ∑ n ∈ primePowerInventory (2 * A),
          ∑ dk ∈ n.divisorsAntidiagonal,
            if dk.1 = d
            then Real.log dk.2 * closedPrimeWeight A n
            else 0

/-- With all analytic work discharged, the full source-kernel contract is now
equivalent to one finite reindexing identity. -/
theorem sourceMobiusKernel_contract_iff_integerAgreement
    (A : ℝ) (hA : 1 ≤ A) :
    SourceMobiusKernelContract A (sourceMobiusKernel A) ↔
      SourceMobiusKernelIntegerAgreement A := by
  have ha := sourceMobiusKernel_analytic_contract A hA
  constructor
  · intro h
    exact h.1
  · intro h
    exact ⟨h, ha.1, ha.2.1, ha.2.2⟩

/-- Current source-kernel checkpoint. -/
def SourceMobiusKernelCheckpoint : Prop :=
  ∀ A : ℝ, 1 ≤ A →
    SourceMobiusKernelAnalyticContract A ∧
      (SourceMobiusKernelContract A (sourceMobiusKernel A) ↔
        SourceMobiusKernelIntegerAgreement A)

theorem source_mobius_kernel_checkpoint :
    SourceMobiusKernelCheckpoint := by
  intro A hA
  exact
    ⟨sourceMobiusKernel_analytic_contract A hA,
      sourceMobiusKernel_contract_iff_integerAgreement A hA⟩

end
end EstimateSourceMobiusKernel
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
