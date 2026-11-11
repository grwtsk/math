/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib contributions retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Normed.Group.InfiniteSum
import Mathlib.Topology.Algebra.InfiniteSum.Ring
import Mathlib.Tactic

/-!
# Weighted signed pairings and negative-witness stability

Program RP-OC-02, research issue
https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51,
W1 and the error-budget part of W3. Formalization coordination: grwtsk/math#1801.

For an index reflection `j`, the summand is `m i * u i * conj (v (j i))`.
It is NOT the positive majorant `m i * norm (u i) * norm (v (j i))`.
The results below prove absolute summability and perturbation estimates from a
supplied summable majorant. They do not construct an arithmetic divisor, prove
Fourier decay, or assert positivity of the signed pairing. An involution and
invariant multiplicities are needed for Hermitian symmetry, not for these bounds.

Mathematical consumer: transfer a strict negative value of a fixed auxiliary
transform to a nearby compact-test transform without discarding any tail.
Primary argument: pointwise norm bounds, the absolutely convergent comparison
test, expansion into three error terms, and the triangle inequality. This is a
standard consequence, not a novelty claim. Unlike `QuadraticError.lean`, no
positive norm-square representation of the signed form is assumed.

Source candidate only: elaboration, fresh kernel replay, transitive axiom audit,
and independent analytical review are NOT_RUN. No new axiom or proof placeholder
is used. Gaussian compactification and its analytic estimates remain separate.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.FunctionalAnalysis.WeightedConjugatePairing

open ComplexConjugate

variable {ι : Type*}

/-- A signed, conjugation-swap summand; multiplicity is a weight. -/
def term (m : ι → ℝ) (j : ι → ι) (u v : ι → ℂ) (i : ι) : ℂ :=
  (m i : ℂ) * u i * conj (v (j i))

/-- Use the summability theorems below before interpreting this totalized sum. -/
def pairing (m : ι → ℝ) (j : ι → ι) (u v : ι → ℂ) : ℂ :=
  ∑' i, term m j u v i

/-- The majorant is positive; the summand being bounded need not be. -/
theorem norm_term_le
    (m w : ι → ℝ) (j : ι → ι) (u v : ι → ℂ) (A B : ℝ)
    (hm : ∀ i, 0 ≤ m i) (hw : ∀ i, 0 ≤ w i)
    (hj : ∀ i, w (j i) = w i) (hA : 0 ≤ A)
    (hu : ∀ i, ‖u i‖ ≤ A * w i) (hv : ∀ i, ‖v i‖ ≤ B * w i)
    (i : ι) :
    ‖term m j u v i‖ ≤ (A * B) * (m i * w i ^ 2) := by
  have hvj : ‖v (j i)‖ ≤ B * w i := by simpa only [hj i] using hv (j i)
  calc
    ‖term m j u v i‖ = m i * ‖u i‖ * ‖v (j i)‖ := by
      simp [term, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (hm i)]
    _ ≤ (m i * (A * w i)) * (B * w i) :=
      mul_le_mul (mul_le_mul_of_nonneg_left (hu i) (hm i)) hvj
        (norm_nonneg _) (mul_nonneg (hm i) (mul_nonneg hA (hw i)))
    _ = (A * B) * (m i * w i ^ 2) := by ring

/-- Absolute convergence follows from the supplied weighted moment. -/
theorem summable_norm_term
    (m w : ι → ℝ) (j : ι → ι) (u v : ι → ℂ) (A B : ℝ)
    (hm : ∀ i, 0 ≤ m i) (hw : ∀ i, 0 ≤ w i)
    (hj : ∀ i, w (j i) = w i) (hA : 0 ≤ A)
    (hu : ∀ i, ‖u i‖ ≤ A * w i) (hv : ∀ i, ‖v i‖ ≤ B * w i)
    (hs : Summable (fun i => m i * w i ^ 2)) :
    Summable (fun i => ‖term m j u v i‖) := by
  apply (hs.mul_left (A * B)).of_norm_bounded
  intro i
  simpa only [norm_norm] using norm_term_le m w j u v A B hm hw hj hA hu hv i

/-- A quantitative bound on the full, not finitely truncated, signed pairing. -/
theorem norm_pairing_le
    (m w : ι → ℝ) (j : ι → ι) (u v : ι → ℂ) (A B M : ℝ)
    (hm : ∀ i, 0 ≤ m i) (hw : ∀ i, 0 ≤ w i)
    (hj : ∀ i, w (j i) = w i) (hA : 0 ≤ A) (hB : 0 ≤ B)
    (hu : ∀ i, ‖u i‖ ≤ A * w i) (hv : ∀ i, ‖v i‖ ≤ B * w i)
    (hs : Summable (fun i => m i * w i ^ 2))
    (hM : (∑' i, m i * w i ^ 2) ≤ M) :
    ‖pairing m j u v‖ ≤ M * A * B := by
  calc
    ‖pairing m j u v‖ ≤ (A * B) * ∑' i, m i * w i ^ 2 :=
      tsum_of_norm_bounded (hs.hasSum.mul_left (A * B))
        (norm_term_le m w j u v A B hm hw hj hA hu hv)
    _ ≤ (A * B) * M := mul_le_mul_of_nonneg_left hM (mul_nonneg hA hB)
    _ = M * A * B := by ring

/-- Algebraic expansion of the diagonal error retains both mixed terms. -/
theorem term_add_self_sub (m : ι → ℝ) (j : ι → ι) (u e : ι → ℂ) (i : ι) :
    term m j (u + e) (u + e) i - term m j u u i =
      term m j u e i + term m j e u i + term m j e e i := by
  simp only [term, Pi.add_apply, map_add]
  ring

/-- Pointwise error domination before taking any infinite sum. -/
theorem norm_term_add_self_sub_le
    (m w : ι → ℝ) (j : ι → ι) (u e : ι → ℂ) (S E : ℝ)
    (hm : ∀ i, 0 ≤ m i) (hw : ∀ i, 0 ≤ w i)
    (hj : ∀ i, w (j i) = w i) (hS : 0 ≤ S) (hE : 0 ≤ E)
    (hu : ∀ i, ‖u i‖ ≤ S * w i) (he : ∀ i, ‖e i‖ ≤ E * w i)
    (i : ι) :
    ‖term m j (u + e) (u + e) i - term m j u u i‖ ≤
      (2 * S * E + E ^ 2) * (m i * w i ^ 2) := by
  rw [term_add_self_sub]
  calc
    ‖term m j u e i + term m j e u i + term m j e e i‖ ≤
        (‖term m j u e i‖ + ‖term m j e u i‖) + ‖term m j e e i‖ :=
      (norm_add_le _ _).trans (add_le_add_right (norm_add_le _ _) _)
    _ ≤ ((S * E) * (m i * w i ^ 2) + (E * S) * (m i * w i ^ 2)) +
        (E * E) * (m i * w i ^ 2) :=
      add_le_add
        (add_le_add (norm_term_le m w j u e S E hm hw hj hS hu he i)
          (norm_term_le m w j e u E S hm hw hj hE he hu i))
        (norm_term_le m w j e e E E hm hw hj hE he he i)
    _ = (2 * S * E + E ^ 2) * (m i * w i ^ 2) := by ring

/-- Whole-divisor perturbation bound. This does not require positivity of `pairing`. -/
theorem norm_pairing_add_self_sub_le
    (m w : ι → ℝ) (j : ι → ι) (u e : ι → ℂ) (S E M : ℝ)
    (hm : ∀ i, 0 ≤ m i) (hw : ∀ i, 0 ≤ w i)
    (hj : ∀ i, w (j i) = w i) (hS : 0 ≤ S) (hE : 0 ≤ E)
    (hu : ∀ i, ‖u i‖ ≤ S * w i) (he : ∀ i, ‖e i‖ ≤ E * w i)
    (hs : Summable (fun i => m i * w i ^ 2))
    (hM : (∑' i, m i * w i ^ 2) ≤ M) :
    ‖pairing m j (u + e) (u + e) - pairing m j u u‖ ≤
      M * (2 * S * E + E ^ 2) := by
  have hsum : ∀ i, ‖(u + e) i‖ ≤ (S + E) * w i := by
    intro i
    calc
      ‖(u + e) i‖ ≤ ‖u i‖ + ‖e i‖ := norm_add_le _ _
      _ ≤ S * w i + E * w i := add_le_add (hu i) (he i)
      _ = (S + E) * w i := by ring
  have hnew : Summable (term m j (u + e) (u + e)) :=
    (summable_norm_term m w j (u + e) (u + e) (S + E) (S + E)
      hm hw hj (add_nonneg hS hE) hsum hsum hs).of_norm
  have hold : Summable (term m j u u) :=
    (summable_norm_term m w j u u S S hm hw hj hS hu hu hs).of_norm
  have hdiff :
      ‖∑' i, (term m j (u + e) (u + e) i - term m j u u i)‖ ≤
        (2 * S * E + E ^ 2) * ∑' i, m i * w i ^ 2 :=
    tsum_of_norm_bounded (hs.hasSum.mul_left (2 * S * E + E ^ 2))
      (norm_term_add_self_sub_le m w j u e S E hm hw hj hS hE hu he)
  calc
    ‖pairing m j (u + e) (u + e) - pairing m j u u‖ =
        ‖∑' i, (term m j (u + e) (u + e) i - term m j u u i)‖ := by
      simp only [pairing, tsum_sub hnew hold]
    _ ≤ (2 * S * E + E ^ 2) * ∑' i, m i * w i ^ 2 := hdiff
    _ ≤ (2 * S * E + E ^ 2) * M :=
      mul_le_mul_of_nonneg_left hM (by positivity)
    _ = M * (2 * S * E + E ^ 2) := by ring

/-- A strict head/remainder certificate controls the full real part. -/
theorem re_neg_of_error_budget (q head : ℂ) (eta R : ℝ)
    (hhead : head.re ≤ -eta) (herror : ‖q - head‖ ≤ R) (hmargin : R < eta) :
    q.re < 0 := by
  have h := (Complex.re_le_norm (q - head)).trans herror
  simp only [Complex.sub_re] at h
  linarith

/-- Two separately supplied budgets leave the advertised negative margin. -/
theorem re_le_neg_of_two_errors (q g : ℂ) (m tail cutoff : ℝ)
    (hgaussian : g.re ≤ -2 * m + tail)
    (hcutoff : ‖q - g‖ ≤ cutoff) (hbudget : tail + cutoff ≤ m) :
    q.re ≤ -m := by
  have h := (Complex.re_le_norm (q - g)).trans hcutoff
  simp only [Complex.sub_re] at h
  linarith

/-- The concrete whole-divisor perturbation estimate consumes a cutoff budget. -/
theorem pairing_add_self_re_le_neg
    (m w : ι → ℝ) (j : ι → ι) (u e : ι → ℂ) (S E M m0 tail : ℝ)
    (hm : ∀ i, 0 ≤ m i) (hw : ∀ i, 0 ≤ w i)
    (hj : ∀ i, w (j i) = w i) (hS : 0 ≤ S) (hE : 0 ≤ E)
    (hu : ∀ i, ‖u i‖ ≤ S * w i) (he : ∀ i, ‖e i‖ ≤ E * w i)
    (hs : Summable (fun i => m i * w i ^ 2))
    (hM : (∑' i, m i * w i ^ 2) ≤ M)
    (hnegative : (pairing m j u u).re ≤ -2 * m0 + tail)
    (hbudget : tail + M * (2 * S * E + E ^ 2) ≤ m0) :
    (pairing m j (u + e) (u + e)).re ≤ -m0 := by
  exact re_le_neg_of_two_errors _ _ m0 tail _ hnegative
    (norm_pairing_add_self_sub_le m w j u e S E M hm hw hj hS hE hu he hs hM)
    hbudget

end GRWTSK.FunctionalAnalysis.WeightedConjugatePairing
