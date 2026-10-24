# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceHybridKapitza.Variant7a3d0b2e45156ffc6e074edaa872821d8ba30ebaef3d260956084fb232f1bf75

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5e9351bcb0e528d755c455bad76bd7bad4d5431` · SHA-256 `7a3d0b2e45156ffc6e074edaa872821d8ba30ebaef3d260956084fb232f1bf75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceHybridStorage
import FormalResearch.RiemannHypothesis.SourceKapitzaEventBalance

/-!
# Actual Kapitza source instance of hybrid signed storage

QGL-ALL-20261007. Direction, theorem selection, corrections and evaluation:
grwtsk contributors. New matrix calculations and formal proofs: OpenAI Codex.

Prerequisites are the content-pinned research-owner source, not accepted main.
This module retains the signed corrector and closed prime-power resets.
It does not assert the remaining uniform signed arithmetic cap.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceHybridKapitza

open SourcePairing SourceKapitzaReconstruction SourceKapitzaStorage
open SourceKapitzaSourceStorage SourceKapitzaCycle SourceKapitzaEventBalance
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open scoped Matrix BigOperators

def state (z : ℝ) : Fin 2 → ℝ := ![z, 1]

def storageMatrix (w eta : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  !![w, eta / 2; eta / 2, 0]

def sourceFlow (c : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := !![-1, c; 0, 0]

def sourceReset (j : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := !![1, j; 0, 1]

def sourceCost (w k : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := !![0, w * k / 2; w * k / 2, 0]

def storageDerivative (w etaDot : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  !![w / 2, etaDot / 2; etaDot / 2, 0]

def readout (P : Matrix (Fin 2) (Fin 2) ℝ) (z : ℝ) : ℝ :=
  state z ⬝ᵥ (P *ᵥ state z)

theorem storage_matrix_readout (w eta z : ℝ) :
    readout (storageMatrix w eta) z = storage w z eta := by
  simp [readout, state, storageMatrix, storage, Matrix.mulVec, dotProduct, Fin.sum_univ_two]
  ring

theorem source_cost_readout (w k z : ℝ) : readout (sourceCost w k) z = w * k * z := by
  simp [readout, state, sourceCost, Matrix.mulVec, dotProduct, Fin.sum_univ_two]
  ring

theorem source_reset_state (j z : ℝ) : sourceReset j *ᵥ state z = state (z + j) := by
  ext i
  fin_cases i <;> simp [sourceReset, state, Matrix.mulVec, dotProduct, Fin.sum_univ_two]

/-- The flow retains the actual affine forcing after homogenization. -/
theorem source_flow_state (c z : ℝ) : sourceFlow c *ᵥ state z = ![-z + c, 0] := by
  ext i
  fin_cases i <;> simp [sourceFlow, state, Matrix.mulVec, dotProduct, Fin.sum_univ_two]

/-- Exact matrix defect of the original corrector, before any order estimate. -/
theorem source_flow_defect (w eta etaDot c k : ℝ)
    (hcancel : etaDot - eta = -w * (k + 2 * c)) :
    sourceCost w k + storageDerivative w etaDot +
      (sourceFlow c)ᵀ * storageMatrix w eta + storageMatrix w eta * sourceFlow c =
        !![-3 * w / 2, 0; 0, eta * c] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [sourceCost, storageDerivative, sourceFlow, storageMatrix,
      Matrix.mul_apply, Fin.sum_univ_two] <;> linarith

/-- Exact reset matrix defect keeps the complete signed linear and square cost. -/
theorem source_reset_defect (w eta j : ℝ) :
    (sourceReset j)ᵀ * storageMatrix w eta * sourceReset j - storageMatrix w eta =
      !![0, w * j; w * j, w * j ^ 2 + eta * j] := by
  ext i k
  fin_cases i <;> fin_cases k <;>
    simp [sourceReset, storageMatrix, Matrix.mul_apply, Fin.sum_univ_two] <;> ring

/-- The reset is literally the native closed Chebyshev prime-power event. -/
theorem actual_event_reset (A : ℝ) (n : ℕ) (hn : 1 ≤ n) :
    sourceReset (ArithmeticFunction.vonMangoldt (n + 1) / (n + 1 : ℕ)) *ᵥ
      state (frozenState A n (Real.log (n + 1 : ℕ))) =
        state (frozenState A (n + 1) (Real.log (n + 1 : ℕ))) := by
  rw [source_reset_state, frozenState_event A n hn]

/-- At n=2 the left source inventory is exactly empty; no mean or prime is discarded. -/
theorem first_actual_event (A : ℝ) :
    frozenState A 2 (Real.log 2) = -1 - affineTrend A (Real.log 2) + Real.log 2 / 2 := by
  have he := frozenState_event A 1 (by norm_num)
  rw [ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 2)] at he
  simpa [frozenState, chebyshevPrimePower] using he

/-- The matrix flow defect is the already reconstructed complete signed source work. -/
theorem actual_flow_defect (A s : ℝ) (hA : 1 ≤ A) :
    sourceCost (Real.exp (s / 2)) (kapitzaKernel A s) +
      storageDerivative (Real.exp (s / 2)) (deriv (sourceCorrector A) s) +
      (sourceFlow (sourceForcing A s))ᵀ *
        storageMatrix (Real.exp (s / 2)) (sourceCorrector A s) +
      storageMatrix (Real.exp (s / 2)) (sourceCorrector A s) *
        sourceFlow (sourceForcing A s) =
          !![-3 * Real.exp (s / 2) / 2, 0; 0, sourceCorrector A s * sourceForcing A s] :=
  source_flow_defect _ _ _ _ _ (sourceCorrector_deriv_cancel A s hA)

/-- Terminal completion of the square has an explicit, exponentially growing offset. -/
theorem terminal_square_offset_lower (A : ℝ)
    (hA : 1 ≤ A)
    (hp : |endpointValue A| ≤ 1 / 8) (hb : |endpointSlope A| ≤ 1 / 64) :
    (2809 / 1024 : ℝ) * Real.exp A ≤
      sourceCorrector A (2 * A) ^ 2 / (4 * Real.exp A) := by
  have hcoef : endpointSlope A * 12 - 4 - 4 * endpointValue A ≤ -(53 / 16 : ℝ) := by
    rcases abs_le.mp hp with ⟨hp0, hp1⟩
    rcases abs_le.mp hb with ⟨hb0, hb1⟩
    linarith
  have hw : 0 < Real.exp A := Real.exp_pos A
  have hc : sourceCorrector A (2 * A) =
      Real.exp A * (12 * endpointSlope A - 4 - 4 * endpointValue A) := by
    simp only [sourceCorrector, sourceForcing, affineTrend, sub_self,
      mul_zero, add_zero, show 2 * A / 2 = A by ring]
    rw [CorrelationRegularity.sourceCorrelation_upper_endpoint A (by linarith)]
    ring
  rw [hc]
  apply (le_div_iff₀ (by positivity : 0 < 4 * Real.exp A)).mpr
  have hs : (53 / 16 : ℝ) ^ 2 ≤ (12 * endpointSlope A - 4 - 4 * endpointValue A) ^ 2 := by
    nlinarith
  nlinarith [mul_le_mul_of_nonneg_left hs (sq_nonneg (Real.exp A))]

/-- Signed source storage already has a valid zero terminal: no square completion is required. -/
theorem native_signed_terminal_zero (A : ℝ) :
    readout (storageMatrix (Real.exp A) (sourceCorrector A (2 * A)))
      (nonaffineDiscrepancy A (2 * A)) = 0 := by
  rw [storage_matrix_readout, nonaffineDiscrepancy_upper, storage_endpoint]

end FormalResearch.RiemannHypothesis.SourceHybridKapitza
```
