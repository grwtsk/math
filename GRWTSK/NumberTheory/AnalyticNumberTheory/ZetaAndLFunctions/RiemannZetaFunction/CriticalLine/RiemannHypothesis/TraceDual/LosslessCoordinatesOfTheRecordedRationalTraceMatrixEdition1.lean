import FormalResearch.RiemannHypothesis.Conversation.MarkedReadout

/-!
# Lossless coordinates of the recorded rational trace matrix

Exact finite algebra from audited RH conversation Batch 24, pinned public
source commit fdb1d97d68841e962b653dc32f519ba3beb52d69. The matrix constants
and inverse are reported there; Lean checks the identities for every vector,
not merely sampled recoveries. This does not identify the number field,
its Galois group, an M23 action, or the missing arithmetic source map.

Human mathematical programme: grwtsk contributors. Witness calculation and
Lean implementation: OpenAI Codex. Rational arithmetic and matrix laws: Mathlib.
-/

set_option autoImplicit false
set_option maxRecDepth 4000

namespace GRWTSK.RiemannHypothesis.Conversation.TraceDual

open scoped BigOperators Matrix

noncomputable section

/-- The trace gram in this module, with the following exact parameterization.

def traceGram : Matrix (Fin 6) (Fin 6) ℚ := !![6, 1, 7, 19, 39, 91; 1, 7, 19, 39, 91, 229; 7,
19, 39, 91, 229, 561; 19, 39, 91, 229, 561, 1359; 39, 91, 229, 561, 1359, 3367; 91, 229, 561,
1359, 3367, 8287]
-/
def traceGram : Matrix (Fin 6) (Fin 6) ℚ :=
  !![6, 1, 7, 19, 39, 91;
     1, 7, 19, 39, 91, 229;
     7, 19, 39, 91, 229, 561;
     19, 39, 91, 229, 561, 1359;
     39, 91, 229, 561, 1359, 3367;
     91, 229, 561, 1359, 3367, 8287]

/-- The trace gram inverse in this module, with the following exact parameterization.

def traceGramInverse : Matrix (Fin 6) (Fin 6) ℚ := !![(53 / 253), (-31 / 253), (39 / 253), (-1
/ 11), (1 / 253), (1 / 253); (-31 / 253), (-13 / 253), (131 / 506), (12 / 253), (31 / 506),
(-12 / 253); (39 / 253), (131 / 506), (-3 / 506), (-27 / 506), (-39 / 506), (8 / 253); (-1 /
11), (12 / 253), (-27 / 506), (27 / 253), (17 / 253), (-21 / 506); (1 / 253), (31 / 506), (-39
/ 506), (17 / 253), (-17 / 253), (5 / 253); (1 / 253), (-12 / …
-/
def traceGramInverse : Matrix (Fin 6) (Fin 6) ℚ :=
  !![(53 / 253), (-31 / 253), (39 / 253), (-1 / 11), (1 / 253), (1 / 253);
     (-31 / 253), (-13 / 253), (131 / 506), (12 / 253), (31 / 506), (-12 / 253);
     (39 / 253), (131 / 506), (-3 / 506), (-27 / 506), (-39 / 506), (8 / 253);
     (-1 / 11), (12 / 253), (-27 / 506), (27 / 253), (17 / 253), (-21 / 506);
     (1 / 253), (31 / 506), (-39 / 506), (17 / 253), (-17 / 253), (5 / 253);
     (1 / 253), (-12 / 253), (8 / 253), (-21 / 506), (5 / 253), (-1 / 506)]

/-- The lower factor in this module, with the following exact parameterization.

def lowerFactor : Matrix (Fin 6) (Fin 6) ℚ := !![1, 0, 0, 0, 0, 0; (1 / 6), 1, 0, 0, 0, 0; (7
/ 6), (107 / 41), 1, 0, 0, 0; (19 / 6), (215 / 41), (11 / 7), 1, 0, 0; (13 / 2), (507 / 41),
(33 / 14), (8 / 3), 1, 0; (91 / 6), (1283 / 41), (46 / 7), (17 / 3), 10, 1]
-/
def lowerFactor : Matrix (Fin 6) (Fin 6) ℚ :=
  !![1, 0, 0, 0, 0, 0;
     (1 / 6), 1, 0, 0, 0, 0;
     (7 / 6), (107 / 41), 1, 0, 0, 0;
     (19 / 6), (215 / 41), (11 / 7), 1, 0, 0;
     (13 / 2), (507 / 41), (33 / 14), (8 / 3), 1, 0;
     (91 / 6), (1283 / 41), (46 / 7), (17 / 3), 10, 1]

/-- The pivots in this module, with the following exact parameterization.

def pivots : Fin 6 → ℚ := ![6, (41 / 6), (-644 / 41), (138 / 7), (23 / 3), -506]
-/
def pivots : Fin 6 → ℚ := ![6, (41 / 6), (-644 / 41), (138 / 7), (23 / 3), -506]

set_option maxHeartbeats 1600000 in
-- Keep the original allowance for these exact rational trace-matrix identities.
theorem inverse_mul_gram : traceGramInverse * traceGram = 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [traceGramInverse, traceGram, Matrix.mul_apply, Fin.sum_univ_succ]

set_option maxHeartbeats 1600000 in
-- Keep the original allowance for these exact rational trace-matrix identities.
theorem gram_mul_inverse : traceGram * traceGramInverse = 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [traceGramInverse, traceGram, Matrix.mul_apply, Fin.sum_univ_succ]

set_option maxHeartbeats 1600000 in
-- Keep the original allowance for these exact rational trace-matrix identities.
/-- Every power-basis coefficient is recovered by the trace-dual coordinates. -/
theorem trace_dual_recovers_all (v : Fin 6 → ℚ) :
    traceGramInverse.mulVec (traceGram.mulVec v) = v := by
  rw [Matrix.mulVec_mulVec, inverse_mul_gram, Matrix.one_mulVec]

set_option maxHeartbeats 1600000 in
-- Keep the original allowance for these exact rational trace-matrix identities.
/-- The same two-sided identity also reconstructs every moment vector. -/
theorem trace_dual_reconstructs_all (v : Fin 6 → ℚ) :
    traceGram.mulVec (traceGramInverse.mulVec v) = v := by
  rw [Matrix.mulVec_mulVec, gram_mul_inverse, Matrix.one_mulVec]

set_option maxHeartbeats 1600000 in
-- Keep the original allowance for these exact rational trace-matrix identities.
/-- A vanished moment vector cannot conceal a nonzero coordinate vector. -/
theorem trace_moments_injective : Function.Injective traceGram.mulVec := by
  intro v w h
  have hh := congrArg traceGramInverse.mulVec h
  simpa only [trace_dual_recovers_all] using hh

set_option maxHeartbeats 1600000 in
-- Keep the original allowance for these exact rational trace-matrix identities.
/-- The exact LDL factorization records all six signed pivots. -/
theorem gram_ldl : traceGram = lowerFactor * Matrix.diagonal pivots * lowerFactor.transpose := by
  ext i j
  rw [Matrix.mul_apply]
  simp only [Matrix.mul_diagonal, Matrix.transpose_apply]
  fin_cases i <;> fin_cases j <;>
    norm_num [traceGram, lowerFactor, pivots, Fin.sum_univ_succ]

set_option maxHeartbeats 1600000 in
-- Keep the original allowance for these exact rational trace-matrix identities.
theorem lowerFactor_det : lowerFactor.det = 1 := by
  have htri : lowerFactor.IsLowerTriangular := by
    intro i j hij
    change i < j at hij
    have hval : i.val < j.val := hij
    fin_cases i <;> fin_cases j <;> simp at hval <;> norm_num [lowerFactor]
  rw [Matrix.det_of_isLowerTriangular lowerFactor htri]
  norm_num [lowerFactor, Fin.prod_univ_succ]

set_option maxHeartbeats 1600000 in
-- Keep the original allowance for these exact rational trace-matrix identities.
/-- The determinant is derived from the checked factorization, not a numerical sample. -/
theorem traceGram_det : traceGram.det = 49252016 := by
  rw [gram_ldl, Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose, lowerFactor_det,
    Matrix.det_diagonal]
  norm_num [pivots, Fin.prod_univ_succ]

set_option maxHeartbeats 1600000 in
-- Keep the original allowance for these exact rational trace-matrix identities.
theorem discriminant_factorization :
    (49252016 : ℤ) = 2 ^ 4 * 11 * 23 ^ 4 := by norm_num

set_option maxHeartbeats 1600000 in
-- Keep the original allowance for these exact rational trace-matrix identities.
/-- Four pivots are positive and two negative. This is the finite factorization
certificate; no claim about a separate field embedding is inferred. -/
theorem signed_pivot_counts :
    (Finset.univ.filter (fun i : Fin 6 => 0 < pivots i)).card = 4 ∧
      (Finset.univ.filter (fun i : Fin 6 => pivots i < 0)).card = 2 := by
  have hp : (Finset.univ.filter (fun i : Fin 6 => 0 < pivots i)) = {0, 1, 3, 4} := by
    ext i
    fin_cases i <;> norm_num [pivots, Fin.ext_iff]
  have hn : (Finset.univ.filter (fun i : Fin 6 => pivots i < 0)) = {2, 5} := by
    ext i
    fin_cases i <;> norm_num [pivots, Fin.ext_iff]
  rw [hp, hn]
  norm_num [Fin.ext_iff]

end
end GRWTSK.RiemannHypothesis.Conversation.TraceDual
