/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Tactic

/-!
# Exact finite primitive gcd coordinates: positive ordered pairs ↔ positive triples

For a finite positive original inventory 1..N, the map
  (m,n) -> (gcd(m,n), m/gcd(m,n), n/gcd(m,n))
is a bijection to triples (g,a,b) satisfying
  gcd(a,b)=1, g*a in 1..N, g*b in 1..N.
There is NO coprimality requirement between g and a or g and b in this
pure reindexing: adding one would erase genuine SQUAREFUL original indices.

This file proves candidates for the exact map, inverse and generic
ordered DOUBLE sum to primitive TRIPLE sum for arbitrary real f(m,n).
It has no import of RH sources, and makes NO arithmetic cancellation
claim. The SOURCE-specific Möbius zero masks are handled separately.
Native pinned Lean/replay/axiom auditing are NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PrimitiveGcdFiniteBijection

def positiveIndex (N : ℕ) : Finset ℕ := Finset.Icc 1 N

def orderedPositivePairs (N : ℕ) : Finset (ℕ × ℕ) :=
  (positiveIndex N).product (positiveIndex N)

/-- Triples are explicitly parenthesized (g,(a,b)), with literal
positive original integer labels, and no quotient-/residue-alias. -/
def primitivePositiveTriples (N : ℕ) : Finset (ℕ × (ℕ × ℕ)) :=
  ((positiveIndex N).product
    ((positiveIndex N).product (positiveIndex N))).filter
      (fun t => Nat.Coprime t.2.1 t.2.2 ∧
        t.1 * t.2.1 ∈ positiveIndex N ∧
        t.1 * t.2.2 ∈ positiveIndex N)

def pairToGcdTriple (p : ℕ × ℕ) : ℕ × (ℕ × ℕ) :=
  let g := Nat.gcd p.1 p.2
  (g, (p.1 / g, p.2 / g))

def gcdTripleToPair (t : ℕ × (ℕ × ℕ)) : ℕ × ℕ :=
  (t.1 * t.2.1, t.1 * t.2.2)

/-- Exact pair recovery even at zero: no truncation or index sorting. -/
theorem gcdTripleToPair_pairToGcdTriple (p : ℕ × ℕ) :
    gcdTripleToPair (pairToGcdTriple p) = p := by
  rcases p with ⟨m, n⟩
  apply Prod.ext
  · change Nat.gcd m n * (m / Nat.gcd m n) = m
    rw [Nat.mul_comm, Nat.div_mul_cancel (Nat.gcd_dvd_left m n)]
  · change Nat.gcd m n * (n / Nat.gcd m n) = n
    rw [Nat.mul_comm, Nat.div_mul_cancel (Nat.gcd_dvd_right m n)]

/-- With genuine positive gcd and reduced coprimality, the reverse
map also recovers EVERY triple label exactly. -/
theorem pairToGcdTriple_gcdTripleToPair (t : ℕ × (ℕ × ℕ))
    (hg : 0 < t.1) (hab : Nat.Coprime t.2.1 t.2.2) :
    pairToGcdTriple (gcdTripleToPair t) = t := by
  rcases t with ⟨g, ⟨a, b⟩⟩
  have hgcd : Nat.gcd (g * a) (g * b) = g := by
    rw [Nat.gcd_mul_left, hab.gcd_eq_one, Nat.mul_one]
  apply Prod.ext
  · exact hgcd
  · apply Prod.ext
    · change (g * a) / Nat.gcd (g * a) (g * b) = a
      rw [hgcd, Nat.mul_div_cancel_left _ hg]
    · change (g * b) / Nat.gcd (g * a) (g * b) = b
      rw [hgcd, Nat.mul_div_cancel_left _ hg]

/-- Each original ordered positive pair enters the true finite triple
inventory. The missing g-a and g-b coprimality is INTENTIONAL here. -/
theorem pairToGcdTriple_mem_primitivePositiveTriples (N : ℕ)
    {p : ℕ × ℕ} (hp : p ∈ orderedPositivePairs N) :
    pairToGcdTriple p ∈ primitivePositiveTriples N := by
  rcases p with ⟨m, n⟩
  have hpair : m ∈ positiveIndex N ∧ n ∈ positiveIndex N :=
    Finset.mem_product.mp hp
  have hm := (Finset.mem_Icc.mp hpair.1).1
  have hn := (Finset.mem_Icc.mp hpair.2).1
  have hmN := (Finset.mem_Icc.mp hpair.1).2
  have hnN := (Finset.mem_Icc.mp hpair.2).2
  let g : ℕ := Nat.gcd m n
  have hg : 0 < g := Nat.gcd_pos_of_pos_left n (by omega)
  have hgle : g ≤ m := Nat.le_of_dvd (by omega) (Nat.gcd_dvd_left m n)
  have hA : m / g ∈ positiveIndex N :=
    Finset.mem_Icc.mpr ⟨Nat.div_gcd_pos_of_pos_left n (by omega),
      (Nat.div_le_self m g).trans hmN⟩
  have hB : n / g ∈ positiveIndex N :=
    Finset.mem_Icc.mpr ⟨Nat.div_gcd_pos_of_pos_right m (by omega),
      (Nat.div_le_self n g).trans hnN⟩
  have hG : g ∈ positiveIndex N :=
    Finset.mem_Icc.mpr ⟨hg, hgle.trans hmN⟩
  have hcop : Nat.Coprime (m / g) (n / g) :=
    Nat.coprime_div_gcd_div_gcd hg
  have hmprod : g * (m / g) ∈ positiveIndex N := by
    rw [Nat.mul_comm, Nat.div_mul_cancel (Nat.gcd_dvd_left m n)]
    exact hpair.1
  have hnprod : g * (n / g) ∈ positiveIndex N := by
    rw [Nat.mul_comm, Nat.div_mul_cancel (Nat.gcd_dvd_right m n)]
    exact hpair.2
  change (g, (m / g, n / g)) ∈ primitivePositiveTriples N
  exact Finset.mem_filter.mpr
    ⟨Finset.mem_product.mpr
      ⟨hG, Finset.mem_product.mpr ⟨hA, hB⟩⟩,
      ⟨hcop, hmprod, hnprod⟩⟩

/-- Every reduced triple returns to the exact ORIGINAL positive pair
inventory, without any squarefree assumption. -/
theorem gcdTripleToPair_mem_orderedPositivePairs (N : ℕ)
    {t : ℕ × (ℕ × ℕ)} (ht : t ∈ primitivePositiveTriples N) :
    gcdTripleToPair t ∈ orderedPositivePairs N := by
  have hh := (Finset.mem_filter.mp ht).2
  exact Finset.mem_product.mpr ⟨hh.2.1, hh.2.2⟩

theorem pairToGcdTriple_right_inverse (N : ℕ)
    {t : ℕ × (ℕ × ℕ)} (ht : t ∈ primitivePositiveTriples N) :
    pairToGcdTriple (gcdTripleToPair t) = t := by
  have hp := (Finset.mem_filter.mp ht).1
  have hG : t.1 ∈ positiveIndex N := (Finset.mem_product.mp hp).1
  have hg : 0 < t.1 := (Finset.mem_Icc.mp hG).1
  exact pairToGcdTriple_gcdTripleToPair t hg (Finset.mem_filter.mp ht).2.1

/-- A fully generic, FINITE, exact source-coordinate return. This applies
to any original real ordered-pair source, including signed Mobius Gram
entries, without declaring any pair cancellation or RH. -/
theorem orderedPairs_sum_eq_primitiveTriples
    (N : ℕ) (F : ℕ → ℕ → ℝ) :
    (∑ p ∈ orderedPositivePairs N, F p.1 p.2) =
      ∑ t ∈ primitivePositiveTriples N,
        F (t.1 * t.2.1) (t.1 * t.2.2) := by
  classical
  apply Finset.sum_bij
    (fun p _ => pairToGcdTriple p)
  · intro p hp
    exact pairToGcdTriple_mem_primitivePositiveTriples N hp
  · intro p hp q hq heq
    have h := congrArg gcdTripleToPair heq
    simpa only [gcdTripleToPair_pairToGcdTriple] using h
  · intro t ht
    refine ⟨gcdTripleToPair t,
      gcdTripleToPair_mem_orderedPositivePairs N ht, ?_⟩
    exact pairToGcdTriple_right_inverse N ht
  · intro p hp
    change F p.1 p.2 =
      F (gcdTripleToPair (pairToGcdTriple p)).1
        (gcdTripleToPair (pairToGcdTriple p)).2
    rw [gcdTripleToPair_pairToGcdTriple]

end GRWTSK.NumberTheory.Moebius.PrimitiveGcdFiniteBijection
