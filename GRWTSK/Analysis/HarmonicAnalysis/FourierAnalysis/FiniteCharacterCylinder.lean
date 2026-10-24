/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Existing finite additive-character projector: GRWTSK contributors and Mathlib.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#649. Parent draft: #632; related #121, #168, #444, #516.
-/
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteAdditiveProjector
import GRWTSK.Analysis.FiniteSum.WalshCylinder
import Mathlib.Algebra.BigOperators.Ring.Finset

/-!
# Finite character projection and its binary Walsh specialization

The canonical additive character on \`ZMod q\` reconstructs an exact modular
equality indicator. This module takes independent finite products of these
normalized projectors, proves the full finite-frequency formula for
\`(ZMod q)^m\`, and reconstructs q-ary finite observation counts.

For \`q = 2\`, the same equality selector is exactly the signed Walsh factor
already used in \`GRWTSK.Analysis.FiniteSum.WalshCylinder\`.

This finite algebra does not establish Liouville or Mobius correlation
cancellation, a sofic limit, continuous holonomy/Haar integration, spectral
universality, a zeta-divisor identification, or the Riemann hypothesis.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteCharacterCylinder

open scoped BigOperators
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteAdditiveProjector
open GRWTSK.Analysis.FiniteSum.WalshCylinder

variable {ι : Type*}

/-- Independent, normalized additive-character averages on a finite coordinate
set. The comparison is modulo q, not an equality of integer lifts. -/
def coordinateAverage (q : ℕ) [NeZero q] (s : Finset ι)
    (observed pattern : ι → ZMod q) : ℂ :=
  ∏ i ∈ s, characterAverage q (observed i - pattern i)

/-- The normalization and every frequency sum remain visible. -/
theorem coordinateAverage_eq_factored_sum (q : ℕ) [NeZero q] (s : Finset ι)
    (observed pattern : ι → ZMod q) :
    coordinateAverage q s observed pattern =
      (q : ℂ)⁻¹ ^ s.card *
        ∏ i ∈ s, ∑ k : ZMod q,
          ZMod.stdAddChar (k * (observed i - pattern i)) := by
  classical
  simp [coordinateAverage, characterAverage, Finset.prod_mul_distrib]

/-- Exact product-cylinder selector. No probabilistic independence is used. -/
theorem coordinateAverage_eq_indicator (q : ℕ) [NeZero q] (s : Finset ι)
    (observed pattern : ι → ZMod q) :
    coordinateAverage q s observed pattern =
      ∏ i ∈ s, if observed i = pattern i then (1 : ℂ) else 0 := by
  classical
  unfold coordinateAverage
  apply Finset.prod_congr rfl
  intro i hi
  rw [characterAverage_eq_indicator]
  simp only [sub_eq_zero]

/-- For a full m-coordinate tuple, the product selector detects exact
equality of residue tuples, including the empty tuple m = 0. -/
theorem tuple_coordinateAverage_eq_indicator (q : ℕ) [NeZero q] (m : ℕ)
    (u v : Fin m → ZMod q) :
    coordinateAverage q (Finset.univ : Finset (Fin m)) u v =
      if u = v then 1 else 0 := by
  classical
  by_cases huv : u = v
  · subst v
    simp [coordinateAverage, characterAverage_eq_indicator]
  · have hdiff : ∃ i : Fin m, u i ≠ v i := by
      by_contra hnone
      apply huv
      funext i
      by_contra hi
      exact hnone ⟨i, hi⟩
    obtain ⟨i, hi⟩ := hdiff
    rw [if_neg huv]
    unfold coordinateAverage
    apply Finset.prod_eq_zero (Finset.mem_univ i)
    simp [characterAverage_eq_indicator, sub_eq_zero, hi]

/-- The literal normalized sum over all frequency tuples in (ZMod q)^m. -/
def tupleCharacterMean (q : ℕ) [NeZero q] (m : ℕ)
    (u v : Fin m → ZMod q) : ℂ :=
  (q : ℂ)⁻¹ ^ m *
    ∑ θ : Fin m → ZMod q,
      ∏ i : Fin m, ZMod.stdAddChar (θ i * (u i - v i))

/-- Finite Fubini: summing over all character tuples is the same as taking
the product of independently normalized coordinate sums. -/
theorem tupleCharacterMean_eq_coordinateAverage (q : ℕ) [NeZero q] (m : ℕ)
    (u v : Fin m → ZMod q) :
    tupleCharacterMean q m u v =
      coordinateAverage q (Finset.univ : Finset (Fin m)) u v := by
  classical
  unfold tupleCharacterMean
  calc
    (q : ℂ)⁻¹ ^ m *
        (∑ θ : Fin m → ZMod q,
          ∏ i : Fin m, ZMod.stdAddChar (θ i * (u i - v i))) =
      (q : ℂ)⁻¹ ^ m *
        ∏ i : Fin m, ∑ k : ZMod q,
          ZMod.stdAddChar (k * (u i - v i)) := by
      rw [Fintype.prod_sum]
    _ = _ := by
      symm
      simpa using
        (coordinateAverage_eq_factored_sum q
          (Finset.univ : Finset (Fin m)) u v)

/-- Exact full-frequency orthogonality on (ZMod q)^m. -/
theorem tupleCharacterMean_eq_indicator (q : ℕ) [NeZero q] (m : ℕ)
    (u v : Fin m → ZMod q) :
    tupleCharacterMean q m u v = if u = v then 1 else 0 := by
  rw [tupleCharacterMean_eq_coordinateAverage,
    tuple_coordinateAverage_eq_indicator]

/-- The q-ary cylinder count with values embedded in the complex numbers.
No normalization by N is performed. -/
def qaryPatternCount (q : ℕ) [NeZero q] (s : Finset ι)
    (pattern : ι → ZMod q) (observations : ℕ → ι → ZMod q)
    (N : ℕ) : ℂ :=
  ∑ n ∈ Finset.range N,
    ∏ i ∈ s, if observations n i = pattern i then (1 : ℂ) else 0

/-- The same finite pattern count expressed by actual character projectors. -/
def finiteCharacterMatches (q : ℕ) [NeZero q] (s : Finset ι)
    (pattern : ι → ZMod q) (observations : ℕ → ι → ZMod q)
    (N : ℕ) : ℂ :=
  ∑ n ∈ Finset.range N, coordinateAverage q s (observations n) pattern

/-- Exact finite q-ary cylinder reconstruction for arbitrary observations,
including N = 0 and an empty coordinate set. -/
theorem finiteCharacterMatches_eq_qaryPatternCount (q : ℕ) [NeZero q]
    (s : Finset ι) (pattern : ι → ZMod q)
    (observations : ℕ → ι → ZMod q) (N : ℕ) :
    finiteCharacterMatches q s pattern observations N =
      qaryPatternCount q s pattern observations N := by
  classical
  unfold finiteCharacterMatches qaryPatternCount
  apply Finset.sum_congr rfl
  intro n hn
  exact coordinateAverage_eq_indicator q s (observations n) pattern

/-- The empty sample has no matching observations. -/
@[simp] theorem qaryPatternCount_zero (q : ℕ) [NeZero q]
    (s : Finset ι) (pattern : ι → ZMod q)
    (observations : ℕ → ι → ZMod q) :
    qaryPatternCount q s pattern observations 0 = 0 := by
  simp [qaryPatternCount]

/-- An empty pattern matches all N observations, not zero observations. -/
@[simp] theorem qaryPatternCount_empty (q : ℕ) [NeZero q]
    (pattern : ι → ZMod q) (observations : ℕ → ι → ZMod q)
    (N : ℕ) :
    qaryPatternCount q (∅ : Finset ι) pattern observations N = (N : ℂ) := by
  simp [qaryPatternCount]

/-- The binary alphabet is embedded into the two-element residue ring. -/
def boolResidue (b : Bool) : ZMod 2 :=
  if b then 1 else 0

/-- The binary encoding preserves and reflects equality. -/
theorem boolResidue_eq_iff (b c : Bool) :
    boolResidue b = boolResidue c ↔ b = c := by
  cases b <;> cases c <;> decide

/-- The q = 2 canonical complex character projector is exactly the Walsh
match factor, with the real sign encoding from the parent draft. -/
theorem characterAverage_two_eq_walsh_factor (b c : Bool) :
    (2 : ℂ) * characterAverage 2 (boolResidue b - boolResidue c) =
      1 + (bitSign b : ℂ) * (bitSign c : ℂ) := by
  rw [characterAverage_eq_indicator]
  simp only [sub_eq_zero, boolResidue_eq_iff]
  cases b <;> cases c <;> norm_num [bitSign]

/-- Multiplication over finite positions produces the scaled Walsh cylinder
numerator in the complex coefficient ring. -/
theorem coordinateAverage_two_scaled (s : Finset ι)
    (observed pattern : ι → Bool) :
    (2 : ℂ) ^ s.card *
        coordinateAverage 2 s
          (fun i => boolResidue (observed i))
          (fun i => boolResidue (pattern i)) =
      ∏ i ∈ s, (1 : ℂ) + (bitSign (observed i) : ℂ) *
        (bitSign (pattern i) : ℂ) := by
  classical
  calc
    (2 : ℂ) ^ s.card *
        coordinateAverage 2 s
          (fun i => boolResidue (observed i))
          (fun i => boolResidue (pattern i)) =
      ∏ i ∈ s, (2 : ℂ) *
        characterAverage 2 (boolResidue (observed i) - boolResidue (pattern i)) := by
      simp [coordinateAverage, Finset.prod_mul_distrib]
    _ = _ := by
      apply Finset.prod_congr rfl
      intro i hi
      exact characterAverage_two_eq_walsh_factor (observed i) (pattern i)

/-- Finite-horizon binary specialization: the q = 2 character formula equals
the Walsh cylinder numerator for the *actual* observations. -/
theorem finiteCharacterMatches_two_scaled (s : Finset ι)
    (pattern : ι → Bool) (observations : ℕ → ι → Bool) (N : ℕ) :
    (2 : ℂ) ^ s.card *
      finiteCharacterMatches 2 s
        (fun i => boolResidue (pattern i))
        (fun n i => boolResidue (observations n i)) N =
      ∑ n ∈ Finset.range N,
        ∏ i ∈ s, (1 : ℂ) + (bitSign (observations n i) : ℂ) *
          (bitSign (pattern i) : ℂ) := by
  classical
  unfold finiteCharacterMatches
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  exact coordinateAverage_two_scaled s (observations n) pattern

end GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteCharacterCylinder
