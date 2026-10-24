# Complete source: GRWTSK.Analysis.ErrorBounds.HermitianGramRealification

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49cca1f22a48fb43604ea01c60055567057518e5` · SHA-256 `0fd96a822b272fc6fc7ff14d5b970f1f7aeb4ccd5b37cae6157c2c7f9f24d87e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.GrowingGramResidual
import Mathlib.Data.Complex.BigOperators
import Mathlib.Analysis.Complex.Norm

set_option autoImplicit false

open scoped BigOperators ComplexConjugate

/-!
# Complex Gram comparison through exact realification

The block map R(H) = [re H, -im H; im H, re H] retains imaginary mixed
entries. A complex feature x supplies TWO real rows: (re x, im x) and
(-im x, re x). Their Gram is R(x x*), with no factor 1/2.

The quadratic readout is Re(z* H z). Hermitian symmetry is a separate
sufficient premise for its imaginary part to vanish; source positivity is
never assumed. Rectangular congruence, actual Gram updates and source tails
transport to the existing changing-coordinate theorem.

The weighted real column mass uses |re a|+|im a|, NOT |a|. Full matrix
residual mass is twice the corresponding componentwise complex mass.
These constants and the independent mismatch/tail hypotheses are retained.
This supplies no arithmetic source, actual Weil approximation or decay proof.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No choice-free axiom-closure claim.
-/

namespace GRWTSK.Analysis.ErrorBounds.HermitianGramRealification

open GRWTSK.Analysis.ErrorBounds
open GRWTSK.Analysis.ErrorBounds.FixedWitnessBudget
open GRWTSK.Analysis.ErrorBounds.ContractingResidualBudget
open GRWTSK.Analysis.ErrorBounds.QuadraticGramResidual
open GRWTSK.Analysis.ErrorBounds.GrowingGramResidual

noncomputable section

variable {ι τ κ : Type*} [ιFinite : Fintype ι] [τFinite : Fintype τ] [Fintype κ]

/-- Both coordinates of the complex test vector are retained. -/
def realVector (z : ι → ℂ) : ι ⊕ ι → ℝ :=
  Sum.elim (fun i => (z i).re) (fun i => (z i).im)

/-- Real coordinates of i times the same feature. -/
def imaginaryPartner (z : ι → ℂ) : ι ⊕ ι → ℝ :=
  Sum.elim (fun i => -(z i).im) (fun i => (z i).re)

/-- Rectangular realification; the upper-right minus sign is essential. -/
def realGain (A : τ → ι → ℂ) : τ ⊕ τ → ι ⊕ ι → ℝ
  | .inl i, .inl j => (A i j).re
  | .inl i, .inr j => -(A i j).im
  | .inr i, .inl j => (A i j).im
  | .inr i, .inr j => (A i j).re

/-- Realification of an arbitrary source matrix, not necessarily positive. -/
def realSource (H : ι × ι → ℂ) (p : (ι ⊕ ι) × (ι ⊕ ι)) : ℝ :=
  realGain (fun i j => H (i, j)) p.1 p.2

/-- The complex model uses conjugate outer products, not ordinary squares. -/
def complexGram (feature : κ → ι → ℂ) (p : ι × ι) : ℂ :=
  ∑ k, feature k p.1 * conj (feature k p.2)

/-- The full complex quadratic readout; real-valuedness is not definitional. -/
def complexReadout (test : ι → ℂ) (H : ι × ι → ℂ) : ℂ :=
  ∑ p, conj (test p.1) * H p * test p.2

/-- Every complex feature contributes its real vector and imaginary partner. -/
def pairedFeatures (feature : κ → ι → ℂ) : κ ⊕ κ → ι ⊕ ι → ℝ :=
  Sum.elim (fun k => realVector (feature k)) (fun k => imaginaryPartner (feature k))

/-- The same weight is assigned to the real and imaginary coordinates. -/
def duplicateWeight (weight : ι → ℝ) : ι ⊕ ι → ℝ := Sum.elim weight weight

/-- This componentwise absolute sum is not the complex Euclidean modulus. -/
def componentMass (z : ℂ) : ℝ := |z.re| + |z.im|

/-- Conjugate-transpose congruence on the complete signed source matrix. -/
def complexTransport (A : τ → ι → ℂ) (H : ι × ι → ℂ) (p : τ × τ) : ℂ :=
  ∑ q, A p.1 q.1 * H q * conj (A p.2 q.2)

/-- Entrywise Hermitian symmetry is independent of positive semidefiniteness. -/
def Hermitian (H : ι × ι → ℂ) : Prop := ∀ i j, H (j, i) = conj (H (i, j))

/-- Four real blocks regroup onto one complete complex ordered-pair index. -/
theorem sum_four_blocks (f : (ι ⊕ ι) × (ι ⊕ ι) → ℝ) :
    (∑ p, f p) = ∑ p : ι × ι,
      (f (.inl p.1, .inl p.2) + f (.inl p.1, .inr p.2) +
        f (.inr p.1, .inl p.2) + f (.inr p.1, .inr p.2)) := by
  simp only [Fintype.sum_prod_type, Fintype.sum_sum_type, Finset.sum_add_distrib]
  ring

/-- No imaginary source coordinate is discarded by the real quadratic readout. -/
theorem real_readout (test : ι → ℂ) (H : ι × ι → ℂ) :
    quadraticReadout (realVector test) (realSource H) = (complexReadout test H).re := by
  unfold quadraticReadout complexReadout
  rw [sum_four_blocks, Complex.re_sum]
  apply Finset.sum_congr rfl
  intro p _
  simp only [outer, realVector, realSource, realGain, Sum.elim_inl, Sum.elim_inr,
    Complex.mul_re, Complex.mul_im, Complex.conj_re, Complex.conj_im]
  ring

/-- Hermitian symmetry, not real projection, proves the full readout is real. -/
theorem hermitian_readout_conjugate (test : ι → ℂ) (H : ι × ι → ℂ)
    (hermitian : Hermitian H) : conj (complexReadout test H) = complexReadout test H := by
  have entry (i j : ι) : conj (conj (test i) * H (i, j) * test j) =
      conj (test j) * H (j, i) * test i := by
    rw [hermitian i j]
    simp [mul_comm, mul_left_comm]
  calc
    _ = ∑ i, ∑ j, conj (conj (test i) * H (i, j) * test j) := by
      simp only [complexReadout, Fintype.sum_prod_type, map_sum]
    _ = ∑ i, ∑ j, conj (test j) * H (j, i) * test i := by simp only [entry]
    _ = _ := by
      rw [Finset.sum_comm]
      simp only [complexReadout, Fintype.sum_prod_type]

theorem hermitian_readout_im_zero (test : ι → ℂ) (H : ι × ι → ℂ)
    (hermitian : Hermitian H) : (complexReadout test H).im = 0 :=
  Complex.conj_eq_iff_im.mp (hermitian_readout_conjugate test H hermitian)

omit ιFinite in
/-- The two-row real Gram is exactly the realification of the complex Gram. -/
theorem realSource_gram [Fintype ι] (feature : κ → ι → ℂ) :
    realSource (complexGram feature) = gram (pairedFeatures feature) := by
  funext p
  rcases p with ⟨i, j⟩
  cases i <;> cases j <;>
    simp only [realSource, realGain, complexGram, Complex.re_sum, Complex.im_sum,
      gram, Fintype.sum_sum_type, pairedFeatures, outer, realVector, imaginaryPartner,
      Sum.elim_inl, Sum.elim_inr, Complex.mul_re, Complex.mul_im,
      Complex.conj_re, Complex.conj_im, neg_mul, mul_neg, neg_neg,
      sub_neg_eq_add, Finset.sum_add_distrib,
      Finset.sum_neg_distrib] <;> ring

/-- Positivity is obtained from the actual model, without a source positivity premise. -/
theorem complex_gram_readout_nonnegative (test : ι → ℂ) (feature : κ → ι → ℂ) :
    0 ≤ (complexReadout test (complexGram feature)).re := by
  rw [← real_readout, realSource_gram]
  exact gram_readout_nonnegative _ _

omit ιFinite in
theorem complexGram_hermitian [Fintype ι] (feature : κ → ι → ℂ) : Hermitian (complexGram feature) := by
  intro i j
  simp [complexGram, mul_comm]

omit ιFinite in
/-- Addition and subtraction preserve all four real blocks. -/
theorem realSource_add [Fintype ι] (H J : ι × ι → ℂ) :
    realSource (fun p => H p + J p) = fun p => realSource H p + realSource J p := by
  funext p
  rcases p with ⟨i, j⟩
  cases i <;> cases j <;> simp [realSource, realGain]
  ring

omit ιFinite in
theorem realSource_sub [Fintype ι] (H J : ι × ι → ℂ) :
    realSource (fun p => H p - J p) = fun p => realSource H p - realSource J p := by
  funext p
  rcases p with ⟨i, j⟩
  cases i <;> cases j <;> simp [realSource, realGain]
  ring

omit τFinite in
/-- Rectangular conjugate congruence is exactly ordinary real block congruence. -/
theorem realSource_transport [Fintype τ] (A : τ → ι → ℂ) (H : ι × ι → ℂ) :
    realSource (complexTransport A H) = transportMatrix (realGain A) (realSource H) := by
  funext p
  unfold transportMatrix
  rw [sum_four_blocks]
  rcases p with ⟨i, j⟩
  cases i <;> cases j
  all_goals
    simp only [realSource, realGain, complexTransport, Complex.re_sum, Complex.im_sum,
      ← Finset.sum_neg_distrib]
    apply Finset.sum_congr rfl
    intro q _
    simp only [rectangularLift, realGain, Complex.mul_re, Complex.mul_im,
      Complex.conj_re, Complex.conj_im]
    ring

omit ιFinite in
/-- Exact column mass: no unproved transfer from complex modulus to real l1. -/
theorem realGain_column_mass [Fintype ι] (weight : τ → ℝ) (A : τ → ι → ℂ) (j : ι ⊕ ι) :
    (∑ i, duplicateWeight weight i * |realGain A i j|) =
      Sum.elim (fun k => ∑ i, weight i * componentMass (A i k))
        (fun k => ∑ i, weight i * componentMass (A i k)) j := by
  cases j <;>
    simp only [Fintype.sum_sum_type, duplicateWeight, realGain, componentMass,
      Sum.elim_inl, Sum.elim_inr, abs_neg, mul_add, Finset.sum_add_distrib]
  ring

/-- The declared component-mass column estimate supplies the real theorem's exact premise. -/
theorem realGain_column_bound (weight : ι → ℝ) (nextWeight : τ → ℝ)
    (A : τ → ι → ℂ) (r : ℝ)
    (columnBound : ∀ j, (∑ i, nextWeight i * componentMass (A i j)) ≤ r * weight j)
    (j : ι ⊕ ι) :
    (∑ i, duplicateWeight nextWeight i * |realGain A i j|) ≤
      r * duplicateWeight weight j := by
  rw [realGain_column_mass]
  cases j <;> exact columnBound _

omit ιFinite in
/-- A complex-modulus test bound does control both real coordinates. -/
theorem realVector_bound [Fintype ι] (weight : ι → ℝ) (test : ι → ℂ)
    (testBound : ∀ i, ‖test i‖ ≤ weight i) (j : ι ⊕ ι) :
    |realVector test j| ≤ duplicateWeight weight j := by
  cases j with
  | inl j => exact (Complex.abs_re_le_norm (test j)).trans (testBound j)
  | inr j => exact (Complex.abs_im_le_norm (test j)).trans (testBound j)

/-- The real matrix budget counts each complex entry twice, with both components. -/
theorem realSource_mass (weight : ι → ℝ) (H : ι × ι → ℂ) :
    channelMass (pairWeight (duplicateWeight weight)) (realSource H) =
      2 * ∑ p : ι × ι, pairWeight weight p * componentMass (H p) := by
  unfold channelMass
  rw [sum_four_blocks, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro p _
  simp only [pairWeight, duplicateWeight, realSource, realGain, componentMass,
    Sum.elim_inl, Sum.elim_inr, abs_neg]
  ring

section Tower

variable {I K : ℕ → Type*} [∀ n, Fintype (I n)] [∀ n, Fintype (K n)]

/-- Complex growing Grams enter the existing real tower through exact block identities.
The complete complex source mismatch is realified before measuring its budget.
No source identity, model update, forcing decay or tail decay is synthesized here. -/
theorem no_fixed_negative_of_complex_growing_gram
    (weight : ∀ n, I n → ℝ) (test : ∀ n, I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ) (tail : ℕ → ℝ)
    (r actual strength : ℝ)
    (weightsNonnegative : ∀ n i, 0 ≤ weight n i)
    (rateNonnegative : 0 ≤ r) (rateStrict : r < 1)
    (testBound : ∀ n i, ‖test n i‖ ≤ weight n i)
    (sourceReadout : ∀ n, actual = (complexReadout (test n) (source n)).re + tail n)
    (columnBound : ∀ n j,
      (∑ i, weight (n + 1) i * componentMass (gain n i j)) ≤ r * weight n j)
    (modelUpdate : ∀ n p, complexGram (feature (n + 1)) p =
      complexTransport (gain n) (complexGram (feature n)) p + injection n p)
    (mismatchVanishes : VanishesAtInfinity (fun n =>
      channelMass (pairWeight (duplicateWeight (weight (n + 1))))
        (realSource (fun p => source (n + 1) p -
          complexTransport (gain n) (source n) p - injection n p))))
    (tailVanishes : VanishesAtInfinity tail)
    (strengthPositive : 0 < strength) (negative : actual ≤ -strength) : False := by
  have realUpdate (n : ℕ) (p : (I (n + 1) ⊕ I (n + 1)) ×
      (I (n + 1) ⊕ I (n + 1))) :
      gram (pairedFeatures (feature (n + 1))) p =
        transportMatrix (realGain (gain n)) (gram (pairedFeatures (feature n))) p +
          realSource (injection n) p := by
    have h := congrArg realSource (funext (modelUpdate n))
    rw [realSource_gram, realSource_add, realSource_transport, realSource_gram] at h
    exact congrFun h p
  have mismatchIdentity (n : ℕ) :
      gramMismatch (fun n => realGain (gain n)) (fun n => realSource (source n))
        (fun n => realSource (injection n)) n =
      realSource (fun p => source (n + 1) p -
        complexTransport (gain n) (source n) p - injection n p) := by
    rw [realSource_sub, realSource_sub, realSource_transport]
    rfl
  apply no_fixed_negative_of_growing_gram
    (fun n => duplicateWeight (weight n)) (fun n => realVector (test n))
    (fun n => realSource (source n)) (fun n => pairedFeatures (feature n))
    (fun n => realGain (gain n)) (fun n => realSource (injection n)) tail r actual strength
  · intro n i
    cases i <;> exact weightsNonnegative n _
  · exact rateNonnegative
  · exact rateStrict
  · exact fun n => realVector_bound (weight n) (test n) (testBound n)
  · intro n
    rw [real_readout]
    exact sourceReadout n
  · exact fun n => realGain_column_bound (weight n) (weight (n + 1))
      (gain n) r (columnBound n)
  · exact realUpdate
  · simpa only [mismatchIdentity] using mismatchVanishes
  · exact tailVanishes
  · exact strengthPositive
  · exact negative

end Tower

/-- A purely imaginary off-diagonal Hermitian block must not be erased. -/
def imaginaryBlock (p : Fin 2 × Fin 2) : ℂ :=
  if p.1 = 0 then (if p.2 = 0 then 0 else Complex.I)
  else (if p.2 = 0 then -Complex.I else 0)

def imaginaryTest (i : Fin 2) : ℂ := if i = 0 then 1 else Complex.I

theorem imaginaryBlock_hermitian : Hermitian imaginaryBlock := by
  intro i j
  fin_cases i <;> fin_cases j <;> norm_num [imaginaryBlock]

/-- Entrywise real projection loses a negative readout which full realification retains. -/
theorem imaginary_mixed_terms_fixture :
    (complexReadout imaginaryTest imaginaryBlock).re = -2 ∧
      (complexReadout imaginaryTest (fun p => ((imaginaryBlock p).re : ℂ))).re = 0 := by
  norm_num [complexReadout, imaginaryTest, imaginaryBlock, Fintype.sum_prod_type,
    Fin.sum_univ_two]

/-- The retained complex negative direction has the same finite positive-model obstruction. -/
theorem imaginary_block_gram_error_floor (feature : κ → Fin 2 → ℂ) :
    2 ≤ |(complexReadout imaginaryTest imaginaryBlock).re -
      (complexReadout imaginaryTest (complexGram feature)).re| := by
  exact positive_model_error_floor
    (actual := (complexReadout imaginaryTest imaginaryBlock).re)
    (approximate := (complexReadout imaginaryTest (complexGram feature)).re)
    (strength := 2)
    (by simpa only [imaginary_mixed_terms_fixture.1] using (le_refl (-2 : ℝ)))
    (complex_gram_readout_nonnegative imaginaryTest feature) le_rfl

/-- Keeping only one real row loses half the value in this one-feature example. -/
theorem two_real_rows_required_fixture :
    (complexReadout (fun _ : Unit => (1 : ℂ))
      (complexGram (fun (_ : Unit) (_ : Unit) => (1 : ℂ) + Complex.I))).re = 2 ∧
    quadraticReadout (realVector (fun _ : Unit => (1 : ℂ)))
      (gram (fun _ : Unit => realVector (fun _ : Unit => (1 : ℂ) + Complex.I))) = 1 := by
  norm_num [complexReadout, complexGram, quadraticReadout, gram, outer, realVector,
    Fintype.sum_prod_type, Fintype.sum_sum_type]

/-- A squared Euclidean modulus below one does not give strict component-mass contraction. -/
theorem modulus_does_not_preserve_column_rate :
    Complex.normSq (⟨1 / 2, 1 / 2⟩ : ℂ) = 1 / 2 ∧
      componentMass (⟨1 / 2, 1 / 2⟩ : ℂ) = 1 := by
  norm_num [Complex.normSq_mk, componentMass]

end

end GRWTSK.Analysis.ErrorBounds.HermitianGramRealification
```
