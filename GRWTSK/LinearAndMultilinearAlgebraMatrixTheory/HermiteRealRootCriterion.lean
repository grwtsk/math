/-
Copyright (c) 2026 grwtsk contributors. MIT.
Imported Mathlib results retain their upstream authorship and license.
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.HermiteMomentCertificates
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.NegativeIndex
import GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation
import Mathlib.LinearAlgebra.Lagrange
import Mathlib.Algebra.Polynomial.Eval.Degree

/-!
# Real support from a finite weighted Hermite matrix

MSC2020: 15A63, 12D10; arithmetic consumer 11M26, 11M41.

Source comparison: Melvyn B. Nathanson, *The Hermite-Sylvester criterion
for real-rooted polynomials*, arXiv:1911.01745v2, Lemmas 1--2 and Theorem 1,
pp. 2--3 (PDF date November 26, 2019). This is classical mathematics.
ZCERT-1 sections 6--8 at research revision
b8c773f7847126518bcc20f3e37d1223af889cf4 supply the local consumer.

The support is a finite set of distinct locations. Positive weights retain
multiplicity; they are not independent interpolation slots. For n >= card S,
real-part Hermite nonnegativity is equivalent to every location being real.
Conjugation invariance of the weights is unnecessary for this real-part
criterion; it is needed to identify the underlying complex moments as real.

The converse interpolates conjugation-compatible values i,-i,0. Coefficient
realification preserves those values by an explicit averaging identity.
This differs from RP-OC-02's opposite REAL pair values, which require a
complex polynomial and feed the full signed Weil pairing instead.
RP-OC-03 supplies the negative-index interface; RP-OC-10 supplies the
shrinking-enclosure consumer. These do not identify an arithmetic source.

No full inertia formula, contour evaluator, arithmetic positivity, effective
rational search or RH/GRH proof is asserted. Formal source candidate only:
elaboration, fresh kernel replay, transitive axiom audit and independent
review NOT_RUN. Inspected math base 5f66eb82a40921253664f53602851091ccd01d94.
Coordination: grwtsk/math#1806, with #1801, #1807, #1808 and #1809.
See the adjacent declaration-level provenance records.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators ComplexConjugate
open GRWTSK.HermiteMomentCertificates

namespace GRWTSK.HermiteRealRootCriterion

/-- Evaluation of the real coefficient vector in the complex plane. -/
def evaluation {n : ℕ} (z : ℂ) (v : Fin n → ℝ) : ℂ :=
  ∑ i, (v i : ℂ) * z ^ i.val

theorem evaluation_re {n : ℕ} (z : ℂ) (v : Fin n → ℝ) :
    (evaluation z v).re = realEvaluation z v := by
  simp [evaluation, realEvaluation, Complex.mul_re]

theorem evaluation_im {n : ℕ} (z : ℂ) (v : Fin n → ℝ) :
    (evaluation z v).im = imagEvaluation z v := by
  simp [evaluation, imagEvaluation, Complex.mul_im]

/-- Taking real parts of coefficients averages a polynomial with its
coefficient conjugate. No claim that `Complex.re` is a ring homomorphism. -/
theorem twice_evaluation_realCoeffs (p : Polynomial ℂ) (n : ℕ)
    (hn : p.natDegree < n) (z : ℂ) :
    (2 : ℂ) * evaluation z (fun i : Fin n => (p.coeff i.val).re) =
      p.eval z + conj (p.eval (conj z)) := by
  classical
  have hexpand (w : ℂ) : p.eval w = ∑ i : Fin n, p.coeff i.val * w ^ i.val := by
    rw [Polynomial.eval_eq_sum_range' hn]
    exact (Fin.sum_univ_eq_sum_range (fun k => p.coeff k * w ^ k) n).symm
  rw [hexpand z, hexpand (conj z)]
  simp only [map_sum, map_mul, map_pow, Complex.conj_conj]
  rw [← Finset.sum_add_distrib]
  unfold evaluation
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  have hcoeff : (2 : ℂ) * ((p.coeff i.val).re : ℂ) =
      p.coeff i.val + conj (p.coeff i.val) := by
    apply Complex.ext <;> simp [Complex.mul_re, Complex.mul_im] <;> ring
  calc
    (2 : ℂ) * (((p.coeff i.val).re : ℂ) * z ^ i.val) =
        ((2 : ℂ) * ((p.coeff i.val).re : ℂ)) * z ^ i.val := by ring
    _ = p.coeff i.val * z ^ i.val + conj (p.coeff i.val) * z ^ i.val := by
      rw [hcoeff]
      ring

/-- Finite conjugation-compatible interpolation by an actual real coefficient
vector. The degree budget counts distinct locations, not multiplicities. -/
theorem exists_real_interpolant (S : Finset ℂ) (n : ℕ)
    (hn : S.card ≤ n)
    (hconj : ∀ z ∈ S, conj z ∈ S)
    (values : ℂ → ℂ)
    (hvalues : ∀ z ∈ S, values (conj z) = conj (values z)) :
    ∃ v : Fin n → ℝ, ∀ z ∈ S, evaluation z v = values z := by
  classical
  by_cases hS : S.Nonempty
  · have hnpos : 0 < n := lt_of_lt_of_le hS.card_pos hn
    let p : Polynomial ℂ := Lagrange.interpolate S id values
    have hp (z : ℂ) (hz : z ∈ S) : p.eval z = values z :=
      Lagrange.eval_interpolate_at_node values Function.injective_id.injOn hz
    have hdegree : p.degree < (n : WithBot ℕ) :=
      lt_of_lt_of_le (Lagrange.degree_interpolate_lt values Function.injective_id.injOn)
        (WithBot.coe_le_coe.mpr hn)
    have hnat : p.natDegree < n := by
      by_cases hpzero : p = 0
      · simpa [hpzero] using hnpos
      · rw [Polynomial.degree_eq_natDegree hpzero] at hdegree
        exact WithBot.coe_lt_coe.mp hdegree
    refine ⟨fun i => (p.coeff i.val).re, ?_⟩
    intro z hz
    have h := twice_evaluation_realCoeffs p n hnat z
    rw [hp z hz, hp (conj z) (hconj z hz), hvalues z hz, Complex.conj_conj] at h
    have hzero : (2 : ℂ) *
        (evaluation z (fun i : Fin n => (p.coeff i.val).re) - values z) = 0 := by
      linear_combination h
    exact sub_eq_zero.mp ((mul_eq_zero.mp hzero).resolve_left (by norm_num))
  · refine ⟨0, ?_⟩
    intro z hz
    exact (hS ⟨z, hz⟩).elim

/-- The real-part Hankel matrix of the entire supplied finite weighted support. -/
def supportMatrix (S : Finset ℂ) (weight : ℂ → ℝ) (n : ℕ) :
    Matrix (Fin n) (Fin n) ℝ := by
  classical
  exact hermiteMatrix (fun z : S => (z : ℂ)) (fun z : S => weight z) n

/-- A real-coefficient separator for a nonreal conjugate pair has an exact
negative value. No equality between the two pair weights is required. -/
theorem exists_pair_separator_value (S : Finset ℂ) (weight : ℂ → ℝ) (n : ℕ)
    (hn : S.card ≤ n) (hconj : ∀ z ∈ S, conj z ∈ S)
    (z₀ : ℂ) (hz₀ : z₀ ∈ S) (hnonreal : z₀.im ≠ 0) :
    ∃ v : Fin n → ℝ,
      quadraticValue (supportMatrix S weight n) v = -(weight z₀ + weight (conj z₀)) := by
  classical
  have hcne : conj z₀ ≠ z₀ := fun h => hnonreal (Complex.conj_eq_iff_im.mp h)
  have hne : z₀ ≠ conj z₀ := Ne.symm hcne
  let values : ℂ → ℂ := fun z =>
    if z = z₀ then Complex.I else if z = conj z₀ then -Complex.I else 0
  have hvalues (z : ℂ) (_hz : z ∈ S) : values (conj z) = conj (values z) := by
    by_cases h0 : z = z₀
    · subst z
      simp [values, hne, hcne]
    · by_cases h1 : z = conj z₀
      · subst z
        simp [values, hne, hcne]
      · have hc0 : conj z ≠ z₀ := by
          intro h
          apply h1
          simpa using congrArg conj h
        have hc1 : conj z ≠ conj z₀ := by
          intro h
          apply h0
          simpa using congrArg conj h
        simp [values, h0, h1, hc0, hc1]
  obtain ⟨v, hv⟩ := exists_real_interpolant S n hn hconj values hvalues
  let a : S := ⟨z₀, hz₀⟩
  let b : S := ⟨conj z₀, hconj z₀ hz₀⟩
  have hterm (z : S) :
      weight z * (realEvaluation z v ^ 2 - imagEvaluation z v ^ 2) =
        (if z = a then -weight z₀ else 0) +
        (if z = b then -weight (conj z₀) else 0) := by
    rw [← evaluation_re, ← evaluation_im, hv z z.property]
    by_cases ha : z = a
    · subst z
      simp [values, a, b, hne, hcne]
    · by_cases hb : z = b
      · subst z
        simp [values, a, b, hne, hcne]
      · have hz0 : (z : ℂ) ≠ z₀ := fun h => ha (Subtype.ext h)
        have hzc : (z : ℂ) ≠ conj z₀ := fun h => hb (Subtype.ext h)
        simp [values, hz0, hzc, ha, hb]
  refine ⟨v, ?_⟩
  unfold supportMatrix
  rw [hermite_quadratic_identity]
  rw [Finset.sum_congr rfl (fun z _ => hterm z), Finset.sum_add_distrib]
  simp
  <;> ring

/-- Strict positivity of weights prevents a nonreal location from being erased. -/
theorem exists_negative_of_nonreal (S : Finset ℂ) (weight : ℂ → ℝ) (n : ℕ)
    (hn : S.card ≤ n) (hconj : ∀ z ∈ S, conj z ∈ S)
    (hweight : ∀ z ∈ S, 0 < weight z)
    (z₀ : ℂ) (hz₀ : z₀ ∈ S) (hnonreal : z₀.im ≠ 0) :
    ∃ v : Fin n → ℝ, quadraticValue (supportMatrix S weight n) v < 0 := by
  obtain ⟨v, hv⟩ := exists_pair_separator_value S weight n hn hconj z₀ hz₀ hnonreal
  refine ⟨v, ?_⟩
  rw [hv]
  have hpos := add_pos (hweight z₀ hz₀) (hweight (conj z₀) (hconj z₀ hz₀))
  linarith

/-- Weighted Hermite-Sylvester real-support criterion, including the empty
support and arbitrary positive multiplicities. No simplicity premise. -/
theorem nonnegative_iff_real_support (S : Finset ℂ) (weight : ℂ → ℝ) (n : ℕ)
    (hn : S.card ≤ n) (hconj : ∀ z ∈ S, conj z ∈ S)
    (hweight : ∀ z ∈ S, 0 < weight z) :
    Nonnegative (supportMatrix S weight n) ↔ ∀ z ∈ S, z.im = 0 := by
  constructor
  · intro h z hz
    by_contra hnonreal
    obtain ⟨v, hv⟩ := exists_negative_of_nonreal S weight n hn hconj hweight z hz hnonreal
    exact (not_lt_of_ge (h v)) hv
  · intro hreal
    exact hermite_nonnegative_of_real (fun z : S => (z : ℂ))
      (fun z : S => weight z) n
      (fun z => (hweight z z.property).le) (fun z => hreal z z.property)

/-- The literal real matrix quadratic form has the required norm-square law. -/
theorem quadraticValue_smul {ι : Type*} [Fintype ι]
    (M : Matrix ι ι ℝ) (c : ℝ) (v : ι → ℝ) :
    quadraticValue M (c • v) = ‖c‖ ^ 2 * quadraticValue M v := by
  classical
  simp only [Real.norm_eq_abs, sq_abs]
  unfold quadraticValue
  simp only [Pi.smul_apply, smul_eq_mul]
  simp_rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- RP-OC-03's real-scalar negative index agrees with the Hermite sign test.
This is a zero-index equivalence, not the full inertia-count formula. -/
theorem negativeIndex_zero_iff_real_support
    (S : Finset ℂ) (weight : ℂ → ℝ) (n : ℕ)
    (hn : S.card ≤ n) (hconj : ∀ z ∈ S, conj z ∈ S)
    (hweight : ∀ z ∈ S, 0 < weight z) :
    GRWTSK.LinearAlgebra.NegativeIndex.negativeIndex (𝕜 := ℝ)
      (quadraticValue (supportMatrix S weight n)) = 0 ↔ ∀ z ∈ S, z.im = 0 := by
  have hzero : quadraticValue (supportMatrix S weight n) 0 = 0 := by
    simp [quadraticValue]
  exact (GRWTSK.LinearAlgebra.NegativeIndex.negativeIndex_eq_zero_iff hzero
    (quadraticValue_smul (supportMatrix S weight n))).trans
      (nonnegative_iff_real_support S weight n hn hconj hweight)

/-- RP-OC-10's enclosure consumer applies after the separator is constructed.
The coefficients are real, not asserted rational or effectively computable;
shrinking sound enclosures are explicit suppliers, not a runtime guarantee. -/
theorem exists_negative_enclosure_of_nonreal
    (S : Finset ℂ) (weight : ℂ → ℝ) (n : ℕ)
    (hn : S.card ≤ n) (hconj : ∀ z ∈ S, conj z ∈ S)
    (hweight : ∀ z ∈ S, 0 < weight z)
    (lower upper : (Fin n → ℝ) → ℕ → ℝ)
    (hencloses : ∀ v k, lower v k ≤ quadraticValue (supportMatrix S weight n) v ∧
      quadraticValue (supportMatrix S weight n) v ≤ upper v k)
    (hwidth : ∀ v δ, 0 < δ → ∃ k, upper v k - lower v k < δ)
    (hnonreal : ∃ z ∈ S, z.im ≠ 0) :
    ∃ v k, upper v k < 0 := by
  obtain ⟨z, hz, hzi⟩ := hnonreal
  obtain ⟨v, hv⟩ := exists_negative_of_nonreal S weight n hn hconj hweight z hz hzi
  obtain ⟨k, hk⟩ :=
    GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation.exists_negative_upper_endpoint
      (lower v) (upper v) (hencloses v) (hwidth v) hv
  exact ⟨v, k, hk⟩

/-- A one-by-one truncation cannot distinguish the two nonreal nodes ±i. -/
theorem undersized_pair_nonnegative :
    Nonnegative (hermiteMatrix (pairNodes 0 1) (fun _ => 1) 1) := by
  intro v
  have h : quadraticValue (hermiteMatrix (pairNodes 0 1) (fun _ => 1) 1) v =
      2 * (v 0) ^ 2 := by
    simp [quadraticValue, hermiteMatrix, moment, Fin.sum_univ_one, Fin.sum_univ_two]
    <;> ring
  rw [h]
  positivity

/-- Without conjugation-closed support, dimension equal to support size is
not enough: the singleton nonreal node i has a positive one-by-one matrix. -/
theorem unpaired_node_counterexample :
    Nonnegative (hermiteMatrix (fun _ : Fin 1 => Complex.I) (fun _ => 1) 1) ∧
      Complex.I.im ≠ 0 := by
  constructor
  · intro v
    have h : quadraticValue
        (hermiteMatrix (fun _ : Fin 1 => Complex.I) (fun _ => 1) 1) v = (v 0) ^ 2 := by
      simp [quadraticValue, hermiteMatrix, moment, Fin.sum_univ_one, pow_two]
    rw [h]
    exact sq_nonneg _
  · norm_num

/-- Zero weights can hide a nonreal pair at every tested coefficient dimension. -/
theorem zero_weight_counterexample :
    Nonnegative (hermiteMatrix (pairNodes 0 1) (fun _ => 0) 2) ∧
      (pairNodes 0 1 0).im ≠ 0 := by
  constructor
  · intro v
    simp [quadraticValue, hermiteMatrix, moment]
  · norm_num [pairNodes]

end GRWTSK.HermiteRealRootCriterion
