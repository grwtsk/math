# Complete source: GRWTSK.NumberTheory.Primes.GoldbachFejerKernel

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f97b459674f6857693fdd2f0fa1e4c5b736da17b` · SHA-256 `4d286bb9104b80ef762640f10e91aa5b3eb35eb5a946f1526187bc011a9561b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularEvaluation
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Triangular spectrum and Fejér-square structure of the finite Goldbach kernel

The complete ordered-pair source is grouped by its integer frequency
`u + v - N`.  Its multiplicity is the triangular weight
`N + 1 - |m|` on `-N ≤ m ≤ N`.

The same finite kernel is then identified exactly with the squared norm of the
complete integer exponential sum.  This is the unnormalised Fejér kernel and
gives pointwise reality and nonnegativity before any integration.

No denominator coefficient estimate, prime-progression estimate, minor-arc
bound, finite-exception result, or Goldbach theorem is supplied.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachFejerKernel

open scoped BigOperators Real ComplexConjugate
open GRWTSK.Analysis.Fourier.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization
open GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularExpansion
open GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularEvaluation

noncomputable section

/-- The exact fibre of ordered pairs contributing one integer frequency. -/
def goldbachSingularFrequencyFiber
    (N : ℕ) (m : ℤ) : Finset (ℕ × ℕ) :=
  (goldbachSingularPairBox N).filter
    (fun uv => goldbachSingularPairFrequency N uv = m)

/-- The finite frequency multiplicity, defined from the literal pair fibre. -/
def goldbachTriangularFrequencyWeight
    (N : ℕ) (m : ℤ) : ℕ :=
  (goldbachSingularFrequencyFiber N m).card

/-- Exact membership in one frequency fibre. -/
theorem mem_goldbachSingularFrequencyFiber
    {N u v : ℕ} {m : ℤ} :
    (u, v) ∈ goldbachSingularFrequencyFiber N m ↔
      u ≤ N ∧ v ≤ N ∧
        (u : ℤ) + (v : ℤ) - (N : ℤ) = m := by
  unfold goldbachSingularFrequencyFiber
  rw [Finset.mem_filter, mem_goldbachSingularPairBox]
  simp only [goldbachSingularPairFrequency]
  tauto

/-- Every frequency in the pair box lies in the closed integer interval
`[-N,N]`. -/
theorem goldbachSingularPairFrequency_mem_Icc
    {N : ℕ} {uv : ℕ × ℕ}
    (huv : uv ∈ goldbachSingularPairBox N) :
    goldbachSingularPairFrequency N uv ∈
      Finset.Icc (-(N : ℤ)) (N : ℤ) := by
  have hbounds := mem_goldbachSingularPairBox.mp huv
  simp only [Finset.mem_Icc]
  unfold goldbachSingularPairFrequency
  constructor <;> omega

/-- Frequencies outside `[-N,N]` have an empty fibre. -/
theorem goldbachSingularFrequencyFiber_eq_empty_of_not_mem
    {N : ℕ} {m : ℤ}
    (hm : m ∉ Finset.Icc (-(N : ℤ)) (N : ℤ)) :
    goldbachSingularFrequencyFiber N m = ∅ := by
  apply Finset.eq_empty_iff_forall_notMem.mpr
  intro uv huv
  have hbox : uv ∈ goldbachSingularPairBox N :=
    (Finset.mem_filter.mp huv).1
  have hfreq :
      goldbachSingularPairFrequency N uv = m :=
    (Finset.mem_filter.mp huv).2
  exact hm (hfreq ▸ goldbachSingularPairFrequency_mem_Icc hbox)

/-- Closed formula for the literal fibre cardinality.  The proof splits
positive and negative frequencies and uses the first coordinate as the finite
parameter of the corresponding antidiagonal segment. -/
theorem goldbachTriangularFrequencyWeight_formula
    (N : ℕ) (m : ℤ) :
    goldbachTriangularFrequencyWeight N m =
      if m.natAbs ≤ N then N + 1 - m.natAbs else 0 := by
  classical
  unfold goldbachTriangularFrequencyWeight
  by_cases hm : m.natAbs ≤ N
  · rw [if_pos hm]
    let s : Finset ℕ := Finset.Icc m.natAbs N
    have hcard : s.card = N + 1 - m.natAbs := by
      simp [s]
    have hnonneg_or_nonpos : 0 ≤ m ∨ m ≤ 0 := le_total 0 m
    rcases hnonneg_or_nonpos with hnonneg | hnonpos
    · let e :
          {uv : ℕ × ℕ // uv ∈ goldbachSingularFrequencyFiber N m} ≃
            {u : ℕ // u ∈ s} := {
        toFun := fun uv => ⟨uv.1.1, by
          rcases uv with ⟨⟨u, v⟩, huv⟩
          dsimp only
          have huv := mem_goldbachSingularFrequencyFiber.mp huv
          have hmcast : (m.natAbs : ℤ) = m := by
            simp only [Int.natCast_natAbs, abs_of_nonneg hnonneg]
          simp only [s, Finset.mem_Icc]
          constructor
          · omega
          · exact huv.1⟩
        invFun := fun u =>
          ⟨(u.1, N + m.natAbs - u.1), by
            apply mem_goldbachSingularFrequencyFiber.mpr
            have hu := Finset.mem_Icc.mp u.2
            have hmcast : (m.natAbs : ℤ) = m := by
              simp only [Int.natCast_natAbs, abs_of_nonneg hnonneg]
            constructor
            · exact hu.2
            constructor
            · omega
            · omega⟩
        left_inv := fun uv => by
          rcases uv with ⟨⟨u, v⟩, huv⟩
          apply Subtype.ext
          apply Prod.ext
          · rfl
          · dsimp only
            have huv := mem_goldbachSingularFrequencyFiber.mp huv
            have hmcast : (m.natAbs : ℤ) = m := by
              simp only [Int.natCast_natAbs, abs_of_nonneg hnonneg]
            omega
        right_inv := fun u => by
          apply Subtype.ext
          rfl
      }
      calc
        (goldbachSingularFrequencyFiber N m).card =
            Fintype.card {uv : ℕ × ℕ // uv ∈ goldbachSingularFrequencyFiber N m} := by
              simp
        _ = Fintype.card {u : ℕ // u ∈ s} := Fintype.card_congr e
        _ = s.card := by simp
        _ = N + 1 - m.natAbs := hcard
    · let t : Finset ℕ := Finset.Icc 0 (N - m.natAbs)
      let e :
          {uv : ℕ × ℕ // uv ∈ goldbachSingularFrequencyFiber N m} ≃
            {u : ℕ // u ∈ t} := {
        toFun := fun uv => ⟨uv.1.1, by
          rcases uv with ⟨⟨u, v⟩, huv⟩
          dsimp only
          have huv := mem_goldbachSingularFrequencyFiber.mp huv
          have hmcast : (m.natAbs : ℤ) = -m := by
            simp only [Int.natCast_natAbs, abs_of_nonpos hnonpos]
          simp only [t, Finset.mem_Icc, Nat.zero_le, true_and]
          omega⟩
        invFun := fun u =>
          ⟨(u.1, N - m.natAbs - u.1), by
            apply mem_goldbachSingularFrequencyFiber.mpr
            have hu := Finset.mem_Icc.mp u.2
            have hmcast : (m.natAbs : ℤ) = -m := by
              simp only [Int.natCast_natAbs, abs_of_nonpos hnonpos]
            constructor
            · omega
            constructor
            · omega
            · omega⟩
        left_inv := fun uv => by
          rcases uv with ⟨⟨u, v⟩, huv⟩
          apply Subtype.ext
          apply Prod.ext
          · rfl
          · dsimp only
            have huv := mem_goldbachSingularFrequencyFiber.mp huv
            have hmcast : (m.natAbs : ℤ) = -m := by
              simp only [Int.natCast_natAbs, abs_of_nonpos hnonpos]
            omega
        right_inv := fun u => by
          apply Subtype.ext
          rfl
      }
      calc
        (goldbachSingularFrequencyFiber N m).card =
            Fintype.card {uv : ℕ × ℕ // uv ∈ goldbachSingularFrequencyFiber N m} := by
              simp
        _ =
            Fintype.card
              {u : ℕ // u ∈ t} :=
          Fintype.card_congr e
        _ = N - m.natAbs + 1 := by simp [t]
        _ = N + 1 - m.natAbs := by omega
  · rw [if_neg hm]
    apply Finset.card_eq_zero.mpr
    apply goldbachSingularFrequencyFiber_eq_empty_of_not_mem
    simp only [Finset.mem_Icc, not_and_or]
    omega

/-- The triangular weight is even in the integer frequency. -/
theorem goldbachTriangularFrequencyWeight_neg
    (N : ℕ) (m : ℤ) :
    goldbachTriangularFrequencyWeight N (-m) =
      goldbachTriangularFrequencyWeight N m := by
  rw [goldbachTriangularFrequencyWeight_formula,
    goldbachTriangularFrequencyWeight_formula]
  simp

/-- The zero frequency has multiplicity `N+1`. -/
@[simp]
theorem goldbachTriangularFrequencyWeight_zero
    (N : ℕ) :
    goldbachTriangularFrequencyWeight N 0 = N + 1 := by
  simp [goldbachTriangularFrequencyWeight_formula]

/-- Exact regrouping of the complete pair source by integer frequency. -/
theorem goldbachFiniteSingularKernel_eq_triangularFrequencySum
    (N : ℕ) (β : ℝ) :
    goldbachFiniteSingularKernel N β =
      ∑ m ∈ Finset.Icc (-(N : ℤ)) (N : ℤ),
        (goldbachTriangularFrequencyWeight N m : ℂ) *
          unitCharacter m β := by
  rw [goldbachFiniteSingularKernel_eq_pairSum]
  symm
  calc
    (∑ m ∈ Finset.Icc (-(N : ℤ)) (N : ℤ),
        (goldbachTriangularFrequencyWeight N m : ℂ) *
          unitCharacter m β) =
      ∑ m ∈ Finset.Icc (-(N : ℤ)) (N : ℤ),
        ∑ uv ∈ goldbachSingularPairBox N with
            goldbachSingularPairFrequency N uv = m,
          unitCharacter (goldbachSingularPairFrequency N uv) β := by
            apply Finset.sum_congr rfl
            intro m hm
            unfold goldbachTriangularFrequencyWeight
              goldbachSingularFrequencyFiber
            symm
            calc
              (∑ uv ∈ goldbachSingularPairBox N with
                  goldbachSingularPairFrequency N uv = m,
                  unitCharacter (goldbachSingularPairFrequency N uv) β) =
                ∑ _uv ∈ goldbachSingularPairBox N with
                    goldbachSingularPairFrequency N _uv = m,
                  unitCharacter m β := by
                    apply Finset.sum_congr rfl
                    intro uv huv
                    rw [(Finset.mem_filter.mp huv).2]
              _ = _ := by simp
    _ =
      ∑ uv ∈ goldbachSingularPairBox N,
        unitCharacter (goldbachSingularPairFrequency N uv) β := by
          exact Finset.sum_fiberwise_of_maps_to
            (fun uv huv =>
              goldbachSingularPairFrequency_mem_Icc huv)
            (fun uv =>
              unitCharacter
                (goldbachSingularPairFrequency N uv) β)

/-- Negating an integer frequency conjugates the canonical unit character. -/
theorem unitCharacter_neg_conj
    (m : ℤ) (β : ℝ) :
    unitCharacter (-m) β =
      conj (unitCharacter m β) := by
  simp [unitCharacter]

/-- Conjugating the complete integer kernel is the same as attaching the
negative target phase and reflecting the finite index set. -/
theorem goldbachIntegerExponentialKernel_conj_eq_phase_mul
    (N : ℕ) (β : ℝ) :
    conj (goldbachIntegerExponentialKernel N β) =
      unitCharacter (-(N : ℤ)) β *
        goldbachIntegerExponentialKernel N β := by
  unfold goldbachIntegerExponentialKernel
  calc
    conj
        (∑ n ∈ Finset.range (N + 1),
          unitCharacter (n : ℤ) β) =
      ∑ n ∈ Finset.range (N + 1),
        unitCharacter (-(n : ℤ)) β := by
          simp [unitCharacter_neg_conj]
    _ =
      ∑ n ∈ Finset.range (N + 1),
        unitCharacter (-((N - n : ℕ) : ℤ)) β := by
          simpa using (Finset.sum_range_reflect
            (fun n => unitCharacter (-(n : ℤ)) β) (N + 1)).symm
    _ =
      ∑ n ∈ Finset.range (N + 1),
        unitCharacter (-(N : ℤ)) β *
          unitCharacter (n : ℤ) β := by
          apply Finset.sum_congr rfl
          intro n hn
          have hnN : n ≤ N := Nat.le_of_lt_succ (Finset.mem_range.mp hn)
          rw [← unitCharacter_add]
          congr 2
          omega
    _ =
      unitCharacter (-(N : ℤ)) β *
        ∑ n ∈ Finset.range (N + 1),
          unitCharacter (n : ℤ) β := by
            rw [Finset.mul_sum]

/-- The unnormalised Fejér kernel attached to the complete integer sum. -/
def goldbachFejerKernel (N : ℕ) (β : ℝ) : ℝ :=
  Complex.normSq (goldbachIntegerExponentialKernel N β)

/-- The finite singular kernel is exactly the real Fejér square. -/
theorem goldbachFiniteSingularKernel_eq_fejer
    (N : ℕ) (β : ℝ) :
    goldbachFiniteSingularKernel N β =
      (goldbachFejerKernel N β : ℂ) := by
  unfold goldbachFiniteSingularKernel goldbachFejerKernel
  rw [show
      goldbachIntegerExponentialKernel N β *
          goldbachIntegerExponentialKernel N β *
          unitCharacter (-(N : ℤ)) β =
        goldbachIntegerExponentialKernel N β *
          (unitCharacter (-(N : ℤ)) β *
            goldbachIntegerExponentialKernel N β) by ring]
  rw [← goldbachIntegerExponentialKernel_conj_eq_phase_mul]
  exact Complex.mul_conj _

/-- The finite singular kernel is real. -/
theorem goldbachFiniteSingularKernel_im_zero
    (N : ℕ) (β : ℝ) :
    (goldbachFiniteSingularKernel N β).im = 0 := by
  rw [goldbachFiniteSingularKernel_eq_fejer]
  simp

/-- Its real part is exactly the Fejér square. -/
theorem goldbachFiniteSingularKernel_re_eq_fejer
    (N : ℕ) (β : ℝ) :
    (goldbachFiniteSingularKernel N β).re =
      goldbachFejerKernel N β := by
  rw [goldbachFiniteSingularKernel_eq_fejer]
  simp

/-- Pointwise nonnegativity of the finite singular kernel. -/
theorem goldbachFejerKernel_nonneg
    (N : ℕ) (β : ℝ) :
    0 ≤ goldbachFejerKernel N β := by
  unfold goldbachFejerKernel
  exact Complex.normSq_nonneg _

/-- Pointwise nonnegativity, stated on the inherited complex kernel. -/
theorem goldbachFiniteSingularKernel_re_nonneg
    (N : ℕ) (β : ℝ) :
    0 ≤ (goldbachFiniteSingularKernel N β).re := by
  rw [goldbachFiniteSingularKernel_re_eq_fejer]
  exact goldbachFejerKernel_nonneg N β

end
end GRWTSK.NumberTheory.Primes.GoldbachFejerKernel
```
