# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TraceGramConsumer.Variant6ee587f4cc6287dbd624484bdf705784dc6fa2184639f1b6b44424c1940bdcc4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `276204ba2cea2937b6cd02c8472005e62f7d6fd7` · SHA-256 `6ee587f4cc6287dbd624484bdf705784dc6fa2184639f1b6b44424c1940bdcc4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.TraceDual
import FormalResearch.RiemannHypothesis.Conversation.TraceMoments

/-!
# The recorded Gram matrix consumes the checked companion moments

This links the exact rational matrix to its actual concrete matrix powers and
checks the centered five-dimensional factorization. Pivot counts are finite
certificates, not a proof of a separately claimed number-field signature or
Galois recognition. The source-to-M23 arithmetic map remains open.

Source: audited RH conversation Batch 24. Human direction: grwtsk contributors.
Local consumers and Lean implementation: OpenAI Codex. Matrix laws: Mathlib.
-/

set_option autoImplicit false
set_option maxRecDepth 4000

namespace GRWTSK.RiemannHypothesis.Conversation.TraceGramConsumer

open TraceDual TraceMoments MarkedReadout
open scoped BigOperators Matrix
noncomputable section

set_option maxHeartbeats 800000 in
-- Keep the original allowance for the exact trace and centered-matrix normalization.
/-- Every Gram entry is the trace of the corresponding actual companion power. -/
theorem traceGram_entry (i j : Fin 6) :
    Matrix.trace (traceCompanion ^ ((i : ℕ) + (j : ℕ))) = traceGram i j := by
  have hij : (i : ℕ) + (j : ℕ) < 11 := by omega
  calc
    _ = recordedPowerTrace ⟨(i : ℕ) + (j : ℕ), hij⟩ := all_companion_trace_moments _
    _ = _ := by
      fin_cases i <;> fin_cases j <;> norm_num [recordedPowerTrace, traceGram]

/-- The centered gram in this module, with the following exact parameterization.

def centeredGram : Matrix (Fin 5) (Fin 5) ℚ := fun i j => traceGram i.succ j.succ - traceGram
0 i.succ * traceGram 0 j.succ / 6
-/
def centeredGram : Matrix (Fin 5) (Fin 5) ℚ := fun i j =>
  traceGram i.succ j.succ - traceGram 0 i.succ * traceGram 0 j.succ / 6

/-- The centered lower in this module, with the following exact parameterization.

def centeredLower : Matrix (Fin 5) (Fin 5) ℚ := fun i j => lowerFactor i.succ j.succ
-/
def centeredLower : Matrix (Fin 5) (Fin 5) ℚ := fun i j => lowerFactor i.succ j.succ
/-- The centered pivots in this module, with the following exact parameterization.

def centeredPivots : Fin 5 → ℚ := fun i => pivots i.succ
-/
def centeredPivots : Fin 5 → ℚ := fun i => pivots i.succ

set_option maxHeartbeats 800000 in
-- Keep the original allowance for the exact trace and centered-matrix normalization.
/-- Subtracting the rational mean retains the five signed centered pivots. -/
theorem centered_gram_ldl :
    centeredGram = centeredLower * Matrix.diagonal centeredPivots * centeredLower.transpose := by
  ext i j
  rw [Matrix.mul_apply]
  simp only [Matrix.mul_diagonal, Matrix.transpose_apply]
  fin_cases i <;> fin_cases j <;>
    norm_num [centeredGram, centeredLower, centeredPivots, lowerFactor, pivots,
      traceGram, Fin.sum_univ_succ, Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail]

set_option maxHeartbeats 800000 in
-- Keep the original allowance for the exact trace and centered-matrix normalization.
theorem centeredLower_det : centeredLower.det = 1 := by
  have htri : centeredLower.IsLowerTriangular := by
    intro i j hij
    change i < j at hij
    have hval : i.val < j.val := hij
    fin_cases i <;> fin_cases j <;> simp at hval <;>
      norm_num [centeredLower, lowerFactor, Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail]
  rw [Matrix.det_of_isLowerTriangular centeredLower htri]
  norm_num [centeredLower, lowerFactor, Fin.prod_univ_succ,
    Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail]

set_option maxHeartbeats 800000 in
-- Keep the original allowance for the exact trace and centered-matrix normalization.
theorem centeredGram_det : centeredGram.det = 24626008 / 3 := by
  rw [centered_gram_ldl, Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose,
    centeredLower_det, Matrix.det_diagonal]
  norm_num [centeredPivots, pivots, Fin.prod_univ_succ]

set_option maxHeartbeats 800000 in
-- Keep the original allowance for the exact trace and centered-matrix normalization.
theorem centered_signed_pivot_counts :
    (Finset.univ.filter (fun i : Fin 5 => 0 < centeredPivots i)).card = 3 ∧
      (Finset.univ.filter (fun i : Fin 5 => centeredPivots i < 0)).card = 2 := by
  have hp : (Finset.univ.filter (fun i : Fin 5 => 0 < centeredPivots i)) = {0, 2, 3} := by
    ext i
    fin_cases i <;> norm_num [centeredPivots, pivots, Fin.ext_iff]
  have hn : (Finset.univ.filter (fun i : Fin 5 => centeredPivots i < 0)) = {1, 4} := by
    ext i
    fin_cases i <;> norm_num [centeredPivots, pivots, Fin.ext_iff]
  rw [hp, hn]
  norm_num [Fin.ext_iff]

end
end GRWTSK.RiemannHypothesis.Conversation.TraceGramConsumer
```
