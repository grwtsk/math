# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.Checks.Positive.TraceRank

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26f509909a9c4bcbc62eff2a098eea6d0e6aace9` · SHA-256 `bfc73736c4d167cfa7d8d70a8cd80476e5047f51ff99fd4ef060a8bf369d6cff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Consumer tests for the Apache-2.0 OpenAI-derived trace-rank interfaces. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.TraceRank
import Mathlib.Tactic.NormNum

open GRWTSK.LinearAlgebra.Matrix.TraceRank
open GRWTSK.Analysis.FiniteSquareSum
open scoped BigOperators ComplexOrder

set_option autoImplicit false

example {ι : Type*} [Fintype ι] (f : ι → ℝ) :
    (∑ i, f i) ^ 2 ≤ (Fintype.card {i // f i ≠ 0} : ℝ) * ∑ i, f i ^ 2 :=
  sq_sum_le_support_card_mul_sum_sq f

example {ι : Type*} [Fintype ι] [DecidableEq ι]
    {A : Matrix ι ι ℂ} (hA : A.IsHermitian) :
    A.trace.re ^ 2 ≤ (A.rank : ℝ) * (A ^ 2).trace.re :=
  hermitian_trace_sq_le_rank_mul_trace_sq hA

-- The positive denominator is derived from a genuinely nonzero matrix.
example {ι : Type*} [Fintype ι] [DecidableEq ι]
    {A : Matrix ι ι ℂ} (hA : A.IsHermitian) (hne : A ≠ 0) :
    A.trace.re ^ 2 / (A ^ 2).trace.re ≤ (A.rank : ℝ) :=
  hermitian_rank_ge_trace_ratio hA (hermitian_trace_sq_pos hA hne)

example {ι κ : Type*} [Fintype ι] [Fintype κ] [DecidableEq κ]
    (A : Matrix ι κ ℂ)
    (hsecond : 0 < ((A.conjTranspose * A) ^ 2).trace.re) :
    (A.conjTranspose * A).trace.re ^ 2 /
      ((A.conjTranspose * A) ^ 2).trace.re ≤ (A.rank : ℝ) :=
  gram_rank_ge_trace_ratio A hsecond

-- The zero matrix has second moment zero; strict positivity needs nonzero.
example : (((0 : Matrix Unit Unit ℂ) ^ 2).trace).re = 0 := by simp

-- Hermitian symmetry is a real hypothesis: the scalar I has negative
-- second moment, and is not Hermitian.
example : ((Matrix.diagonal (fun _ : Unit => Complex.I)) ^ 2).trace.re = -1 := by
  norm_num [Matrix.diagonal_pow, Function.comp_def, Matrix.trace]

example : ¬ ((Matrix.diagonal (fun _ : Unit => Complex.I)).IsHermitian) := by
  intro h
  have hc := congrArg (fun M : Matrix Unit Unit ℂ => (M () ()).im) h
  norm_num [Matrix.conjTranspose_apply] at hc
```
