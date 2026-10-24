# Complete source: GRWTSK.Algebra.CommutativeAlgebra.DegLex.Variant43629adb9efa4b018aa8f72e4fb0da7128dc391ca5992b104fb667bce3e96da4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f391df3b6ed0bc0d3c4fe2c081c2fb54ceb2e885` · SHA-256 `43629adb9efa4b018aa8f72e4fb0da7128dc391ca5992b104fb667bce3e96da4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Antoine Chambert-Loir. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Chambert-Loir
-/
import Mathlib.RingTheory.MvPolynomial.MonomialOrder
import Mathlib.Data.Finsupp.MonomialOrder.DegLex

/-! # Some lemmas about the deglex monomial order on multivariate polynomials -/

namespace MvPolynomial

open MonomialOrder Finsupp

open scoped MonomialOrder

variable {σ : Type*} {R : Type*} [CommSemiring R] {f g : MvPolynomial σ R}

section LinearOrder

variable [LinearOrder σ] [WellFoundedGT σ]

theorem degree_degLexDegree : (degLex.degree f).degree = f.totalDegree := by
  by_cases hf : f = 0
  · simp [hf]
  apply le_antisymm
  · exact le_totalDegree (degLex.degree_mem_support hf)
  · unfold MvPolynomial.totalDegree
    apply Finset.sup_le
    intro b hb
    exact DegLex.monotone_degree (degLex.le_degree hb)

theorem degLex_totalDegree_monotone (h : degLex.degree f ≼[degLex] degLex.degree g) :
    f.totalDegree ≤ g.totalDegree := by
  simp only [← MvPolynomial.degree_degLexDegree]
  exact DegLex.monotone_degree h

end LinearOrder

theorem totalDegree_mul_of_isDomain [IsCancelMulZero R] (hf : f ≠ 0) (hg : g ≠ 0) :
    totalDegree (f * g) = totalDegree f + totalDegree g := by
  cases exists_wellOrder σ
  rw [← degree_degLexDegree (σ := σᵒᵈ), ← degree_degLexDegree (σ := σᵒᵈ),
    ← degree_degLexDegree (σ := σᵒᵈ), MonomialOrder.degree_mul hf hg]
  simp [Finsupp.sum_add_index]

end MvPolynomial
```
