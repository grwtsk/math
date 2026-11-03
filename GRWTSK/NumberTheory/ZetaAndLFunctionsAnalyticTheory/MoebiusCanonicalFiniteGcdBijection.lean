/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Lean formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

/-!
# Canonical finite positive-index gcd-to-primitive reindexing

This is a PURE FINITE natural-number summation statement, with no
random Möbius signs or geometric source. It reindexes EVERY ordered
pair (m,n) in the closed 1..N original integer window uniquely as
  g=gcd(m,n), a=m/g, b=n/g,
with g,a,b positive, gcd(a,b)=1, and g*a,g*b still in 1..N.

The inverse sends (g,a,b) to (g*a,g*b). Both orientations and
the original pair multiplicity are preserved. There is no
squarefree or Möbius premise in this generic finite bijection.

All authored declarations are source proof candidates until
Lean 4.34.1 and pinned Mathlib compile and kernel check them.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.CanonicalFiniteGcdBijection

private def window (N : ℕ) : Finset ℕ := Finset.Icc 1 N

private def orderedPairs (N : ℕ) : Finset (ℕ × ℕ) :=
  (window N).product (window N)

private def primitiveTriples (N : ℕ) : Finset (ℕ × (ℕ × ℕ)) :=
  ((window N).product ((window N).product (window N))).filter
    (fun x => Nat.Coprime x.2.1 x.2.2 ∧
      x.1 * x.2.1 ∈ window N ∧ x.1 * x.2.2 ∈ window N)

/-- Explicit original pair to canonical gcd and reduced factors. -/
def pairToGcdTriple (x : ℕ × ℕ) : ℕ × (ℕ × ℕ) :=
  (Nat.gcd x.1 x.2,
    (x.1 / Nat.gcd x.1 x.2, x.2 / Nat.gcd x.1 x.2))

/-- Its inverse reconstructs exactly the original ordered indices. -/
def gcdTripleToPair (x : ℕ × (ℕ × ℕ)) : ℕ × ℕ :=
  (x.1 * x.2.1, x.1 * x.2.2)

/-- Canonical gcd decomposition of any pair in the positive closed
original window remains inside the allowed primitive triple domain. -/
private theorem pairToGcdTriple_mem (N : ℕ) (x : ℕ × ℕ)
    (hx : x ∈ orderedPairs N) :
    pairToGcdTriple x ∈ primitiveTriples N := by
  rcases x with ⟨m, n⟩
  rcases Finset.mem_product.mp hx with ⟨hm, hn⟩
  rcases Finset.mem_Icc.mp hm with ⟨hm1, hmN⟩
  rcases Finset.mem_Icc.mp hn with ⟨hn1, hnN⟩
  let d : ℕ := Nat.gcd m n
  have hdpos : 0 < d := Nat.gcd_pos_of_pos_left n (by omega)
  have hdm : d ∣ m := Nat.gcd_dvd_left m n
  have hdn : d ∣ n := Nat.gcd_dvd_right m n
  have hdle : d ≤ m := Nat.le_of_dvd (by omega : 0 < m) hdm
  have hapos : 0 < m / d :=
    Nat.div_gcd_pos_of_pos_left n (by omega : 0 < m)
  have hbpos : 0 < n / d :=
    Nat.div_gcd_pos_of_pos_right m (by omega : 0 < n)
  have haN : m / d ≤ N := (Nat.div_le_self m d).trans hmN
  have hbN : n / d ≤ N := (Nat.div_le_self n d).trans hnN
  have hcop : Nat.Coprime (m / d) (n / d) :=
    Nat.coprime_div_gcd_div_gcd hdpos
  have hma : d * (m / d) = m := Nat.mul_div_cancel_left' hdm
  have hnb : d * (n / d) = n := Nat.mul_div_cancel_left' hdn
  change (d, (m / d, n / d)) ∈ primitiveTriples N
  unfold primitiveTriples
  apply Finset.mem_filter.mpr
  constructor
  · apply Finset.mem_product.mpr
    constructor
    · exact Finset.mem_Icc.mpr ⟨(by omega : 1 ≤ d), hdle.trans hmN⟩
    · exact Finset.mem_product.mpr
        ⟨Finset.mem_Icc.mpr ⟨(by omega : 1 ≤ m / d), haN⟩,
          Finset.mem_Icc.mpr ⟨(by omega : 1 ≤ n / d), hbN⟩⟩
  · exact ⟨hcop, by simpa only [hma] using hm,
      by simpa only [hnb] using hn⟩

private theorem gcdTripleToPair_mem (N : ℕ)
    (x : ℕ × (ℕ × ℕ)) (hx : x ∈ primitiveTriples N) :
    gcdTripleToPair x ∈ orderedPairs N := by
  rcases x with ⟨g, ⟨a, b⟩⟩
  have h := (Finset.mem_filter.mp hx).2
  exact Finset.mem_product.mpr ⟨h.2.1, h.2.2⟩

/-- Reconstruction after gcd reduction is exact for every positive
ordered original pair, using the actual divisibility of its gcd. -/
theorem gcdTripleToPair_pairToGcdTriple (x : ℕ × ℕ) :
    gcdTripleToPair (pairToGcdTriple x) = x := by
  rcases x with ⟨m, n⟩
  have hm : Nat.gcd m n * (m / Nat.gcd m n) = m :=
    Nat.mul_div_cancel_left' (Nat.gcd_dvd_left m n)
  have hn : Nat.gcd m n * (n / Nat.gcd m n) = n :=
    Nat.mul_div_cancel_left' (Nat.gcd_dvd_right m n)
  simp only [pairToGcdTriple, gcdTripleToPair, hm, hn]

/-- Uniqueness: a,b coprime implies gcd(g*a,g*b)=g. All original
positive support and ordered orientation are recovered. -/
theorem pairToGcdTriple_gcdTripleToPair (N : ℕ)
    (x : ℕ × (ℕ × ℕ)) (hx : x ∈ primitiveTriples N) :
    pairToGcdTriple (gcdTripleToPair x) = x := by
  rcases x with ⟨g, ⟨a, b⟩⟩
  have hprod := (Finset.mem_filter.mp hx).1
  have hgmem : g ∈ window N := (Finset.mem_product.mp hprod).1
  have hgpos : 0 < g := by
    have h : 1 ≤ g := (Finset.mem_Icc.mp hgmem).1
    omega
  have hcop : Nat.Coprime a b := (Finset.mem_filter.mp hx).2.1
  have hgcd : Nat.gcd (g * a) (g * b) = g := by
    rw [Nat.gcd_mul_left, hcop.gcd_eq_one]
    simp
  have ha : (g * a) / g = a := Nat.mul_div_cancel_left a hgpos
  have hb : (g * b) / g = b := Nat.mul_div_cancel_left b hgpos
  change (Nat.gcd (g * a) (g * b),
    ((g * a) / Nat.gcd (g * a) (g * b),
      (g * b) / Nat.gcd (g * a) (g * b))) = (g, (a, b))
  rw [hgcd, ha, hb]

/-- Full FINITE ordered pair-to-primitive-triple reindexing for ANY
real-valued original-index pair observable. No arithmetic bound or
probability assumption is needed. -/
theorem finite_ordered_gcd_sum (N : ℕ) (F : ℕ → ℕ → ℝ) :
    (∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N, F m n) =
      ∑ g ∈ Finset.Icc 1 N, ∑ a ∈ Finset.Icc 1 N,
        ∑ b ∈ Finset.Icc 1 N,
          if Nat.Coprime a b ∧
            g * a ∈ Finset.Icc 1 N ∧
            g * b ∈ Finset.Icc 1 N
          then F (g * a) (g * b) else 0 := by
  classical
  have hleft :
      (∑ m ∈ window N, ∑ n ∈ window N, F m n) =
        ∑ x ∈ orderedPairs N, F x.1 x.2 := by
    simp only [orderedPairs, Finset.sum_product]
  have hbij :
      (∑ x ∈ orderedPairs N, F x.1 x.2) =
        ∑ x ∈ primitiveTriples N,
          F (x.1 * x.2.1) (x.1 * x.2.2) := by
    refine Finset.sum_bij'
      (fun x _ => pairToGcdTriple x)
      (fun x _ => gcdTripleToPair x) ?_ ?_ ?_ ?_ ?_
    · intro x hx
      exact pairToGcdTriple_mem N x hx
    · intro x hx
      exact gcdTripleToPair_mem N x hx
    · intro x hx
      exact gcdTripleToPair_pairToGcdTriple x
    · intro x hx
      exact pairToGcdTriple_gcdTripleToPair N x hx
    · intro x hx
      rcases x with ⟨m, n⟩
      have hm : Nat.gcd m n * (m / Nat.gcd m n) = m :=
        Nat.mul_div_cancel_left' (Nat.gcd_dvd_left m n)
      have hn : Nat.gcd m n * (n / Nat.gcd m n) = n :=
        Nat.mul_div_cancel_left' (Nat.gcd_dvd_right m n)
      simp only [pairToGcdTriple, hm, hn]
  have hright :
      (∑ x ∈ primitiveTriples N,
        F (x.1 * x.2.1) (x.1 * x.2.2)) =
      ∑ g ∈ window N, ∑ a ∈ window N, ∑ b ∈ window N,
        if Nat.Coprime a b ∧
          g * a ∈ window N ∧ g * b ∈ window N
        then F (g * a) (g * b) else 0 := by
    simp only [primitiveTriples, Finset.sum_filter, Finset.sum_product]
  change (∑ m ∈ window N, ∑ n ∈ window N, F m n) =
    ∑ g ∈ window N, ∑ a ∈ window N, ∑ b ∈ window N,
      if Nat.Coprime a b ∧ g * a ∈ window N ∧
         g * b ∈ window N then F (g * a) (g * b) else 0
  exact hleft.trans (hbij.trans hright)

end GRWTSK.NumberTheory.Moebius.CanonicalFiniteGcdBijection
