# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TraceMoments.Variante630d6c9db3bd0875cd736aeb6e6193cc8ca6b8589a626c7d2743b50607a0ebc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `232d187c2522e300cafa5a1b369ac2cb1312c16f` · SHA-256 `e630d6c9db3bd0875cd736aeb6e6193cc8ca6b8589a626c7d2743b50607a0ebc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.MarkedReadout

/-!
# Companion-matrix trace moments, with kernel-checked witnesses

The concrete recorded degree-six companion matrix determines all eleven
moments used by the trace Gram matrix. Each successive matrix power is checked
before its trace is taken. This does not establish irreducibility, a field's
Galois group, or its relationship to M23.

Source: audited RH conversation Batch 24. Human direction: grwtsk contributors.
Witness calculation and Lean implementation: OpenAI Codex. Matrix laws: Mathlib.
-/

set_option autoImplicit false
set_option maxRecDepth 4000
set_option maxHeartbeats 800000

namespace GRWTSK.RiemannHypothesis.Conversation.TraceMoments

open scoped BigOperators Matrix
open MarkedReadout

noncomputable section

private def power2 : Matrix (Fin 6) (Fin 6) ℚ :=
  !![0, 0, 0, 0, -4, -4;
     0, 0, 0, 0, -5, -9;
     1, 0, 0, 0, -1, -6;
     0, 1, 0, 0, 3, 2;
     0, 0, 1, 0, 3, 6;
     0, 0, 0, 1, 1, 4]

private theorem power2_eq : traceCompanion ^ 2 = power2 := by
  rw [pow_succ, pow_one]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [power2, traceCompanion, Matrix.mul_apply, Fin.sum_univ_succ]

private def power3 : Matrix (Fin 6) (Fin 6) ℚ :=
  !![0, 0, 0, -4, -4, -16;
     0, 0, 0, -5, -9, -24;
     0, 0, 0, -1, -6, -13;
     1, 0, 0, 3, 2, 6;
     0, 1, 0, 3, 6, 14;
     0, 0, 1, 1, 4, 10]

private theorem power3_eq : traceCompanion ^ 3 = power3 := by
  rw [pow_succ, power2_eq]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [power3, traceCompanion, power2, Matrix.mul_apply, Fin.sum_univ_succ]

private def power4 : Matrix (Fin 6) (Fin 6) ℚ :=
  !![0, 0, -4, -4, -16, -40;
     0, 0, -5, -9, -24, -66;
     0, 0, -1, -6, -13, -34;
     0, 0, 3, 2, 6, 17;
     1, 0, 3, 6, 14, 36;
     0, 1, 1, 4, 10, 24]

private theorem power4_eq : traceCompanion ^ 4 = power4 := by
  rw [pow_succ, power3_eq]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [power4, traceCompanion, power3, Matrix.mul_apply, Fin.sum_univ_succ]

private def power5 : Matrix (Fin 6) (Fin 6) ℚ :=
  !![0, -4, -4, -16, -40, -96;
     0, -5, -9, -24, -66, -160;
     0, -1, -6, -13, -34, -90;
     0, 3, 2, 6, 17, 38;
     0, 3, 6, 14, 36, 89;
     1, 1, 4, 10, 24, 60]

private theorem power5_eq : traceCompanion ^ 5 = power5 := by
  rw [pow_succ, power4_eq]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [power5, traceCompanion, power4, Matrix.mul_apply, Fin.sum_univ_succ]

private def power6 : Matrix (Fin 6) (Fin 6) ℚ :=
  !![-4, -4, -16, -40, -96, -240;
     -5, -9, -24, -66, -160, -396;
     -1, -6, -13, -34, -90, -220;
     3, 2, 6, 17, 38, 90;
     3, 6, 14, 36, 89, 218;
     1, 4, 10, 24, 60, 149]

private theorem power6_eq : traceCompanion ^ 6 = power6 := by
  rw [pow_succ, power5_eq]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [power6, traceCompanion, power5, Matrix.mul_apply, Fin.sum_univ_succ]

private def power7 : Matrix (Fin 6) (Fin 6) ℚ :=
  !![-4, -16, -40, -96, -240, -596;
     -9, -24, -66, -160, -396, -985;
     -6, -13, -34, -90, -220, -545;
     2, 6, 17, 38, 90, 227;
     6, 14, 36, 89, 218, 537;
     4, 10, 24, 60, 149, 367]

private theorem power7_eq : traceCompanion ^ 7 = power7 := by
  rw [pow_succ, power6_eq]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [power7, traceCompanion, power6, Matrix.mul_apply, Fin.sum_univ_succ]

private def power8 : Matrix (Fin 6) (Fin 6) ℚ :=
  !![-16, -40, -96, -240, -596, -1468;
     -24, -66, -160, -396, -985, -2431;
     -13, -34, -90, -220, -545, -1352;
     6, 17, 38, 90, 227, 556;
     14, 36, 89, 218, 537, 1328;
     10, 24, 60, 149, 367, 904]

private theorem power8_eq : traceCompanion ^ 8 = power8 := by
  rw [pow_succ, power7_eq]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [power8, traceCompanion, power7, Matrix.mul_apply, Fin.sum_univ_succ]

private def power9 : Matrix (Fin 6) (Fin 6) ℚ :=
  !![-40, -96, -240, -596, -1468, -3616;
     -66, -160, -396, -985, -2431, -5988;
     -34, -90, -220, -545, -1352, -3335;
     17, 38, 90, 227, 556, 1360;
     36, 89, 218, 537, 1328, 3268;
     24, 60, 149, 367, 904, 2232]

private theorem power9_eq : traceCompanion ^ 9 = power9 := by
  rw [pow_succ, power8_eq]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [power9, traceCompanion, power8, Matrix.mul_apply, Fin.sum_univ_succ]

private def power10 : Matrix (Fin 6) (Fin 6) ℚ :=
  !![-96, -240, -596, -1468, -3616, -8928;
     -160, -396, -985, -2431, -5988, -14776;
     -90, -220, -545, -1352, -3335, -8220;
     38, 90, 227, 556, 1360, 3361;
     89, 218, 537, 1328, 3268, 8056;
     60, 149, 367, 904, 2232, 5500]

private theorem power10_eq : traceCompanion ^ 10 = power10 := by
  rw [pow_succ, power9_eq]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [power10, traceCompanion, power9, Matrix.mul_apply, Fin.sum_univ_succ]

def recordedPowerTrace : Fin 11 → ℚ := ![6, 1, 7, 19, 39, 91, 229, 561, 1359, 3367, 8287]

/-- Every moment is attached to the actual companion matrix, not an assumed field. -/
theorem all_companion_trace_moments (k : Fin 11) :
    Matrix.trace (traceCompanion ^ (k : ℕ)) = recordedPowerTrace k := by
  fin_cases k <;>
    simp only [power2_eq, power3_eq, power4_eq, power5_eq, power6_eq, power7_eq, power8_eq, power9_eq, power10_eq] <;>
    norm_num [recordedPowerTrace, traceCompanion, Matrix.trace, Matrix.diag,
      pow_zero, pow_one, Fin.sum_univ_succ,
      power2_eq, power2, power3_eq, power3, power4_eq, power4, power5_eq, power5, power6_eq, power6, power7_eq, power7, power8_eq, power8, power9_eq, power9, power10_eq, power10]

end
end GRWTSK.RiemannHypothesis.Conversation.TraceMoments
```
