import Mathlib.Algebra.Polynomial.Laurent
import Mathlib.GroupTheory.QuotientGroup.Basic

/-!
# The discrete algebraic core of the rank-one Satake map

Local source attribution: grwtsk contributors.

Convolution is defined independently on finitely supported coefficient sequences.
The map to Laurent polynomials intertwines this convolution with multiplication.
No local field, Haar measure, or automorphic correspondence is asserted here.
-/

noncomputable section

namespace GRWTSK.NumberTheory.DiscreteSatake

variable {R : Type*} [CommSemiring R]

abbrev Coefficients (R : Type*) [Zero R] := ℤ →₀ R

/-- Convolution on the additive valuation lattice, with finite support. -/
def convolution (f g : Coefficients R) : Coefficients R :=
  f.sum fun m a => g.sum fun n b => Finsupp.single (m + n) (a * b)

/-- The characteristic function of a single valuation class. -/
def delta (n : ℤ) : Coefficients R := Finsupp.single n 1

/-- The coefficient-to-Laurent map; its input multiplication is `convolution`. -/
def satake (f : Coefficients R) : LaurentPolynomial R := AddMonoidAlgebra.ofCoeff f

/-- Recover the finite coefficient sequence from its Laurent presentation. -/
def coefficients (p : LaurentPolynomial R) : Coefficients R := p.coeff

@[simp] theorem coefficients_satake (f : Coefficients R) :
    coefficients (satake f) = f := rfl

@[simp] theorem satake_coefficients (p : LaurentPolynomial R) :
    satake (coefficients p) = p := rfl

theorem satake_injective : Function.Injective (satake : Coefficients R → LaurentPolynomial R) :=
  AddMonoidAlgebra.ofCoeff_injective

/-- Multiplicativity follows from the explicit two finite sums defining convolution. -/
theorem satake_convolution (f g : Coefficients R) :
    satake (convolution f g) = satake f * satake g := by
  simp only [satake, convolution, AddMonoidAlgebra.mul_def,
    AddMonoidAlgebra.ofCoeff_finsuppSum,
    AddMonoidAlgebra.ofCoeff_single]

@[simp] theorem satake_delta (n : ℤ) :
    satake (delta n : Coefficients R) = LaurentPolynomial.T n := rfl

/-- The discrete Hecke basis law. -/
theorem convolution_delta_delta (m n : ℤ) :
    convolution (delta m : Coefficients R) (delta n) = delta (m + n) := by
  apply satake_injective
  rw [satake_convolution, satake_delta, satake_delta, satake_delta,
    LaurentPolynomial.T_add]

/-- Convolution associativity reconstructed through Laurent multiplication. -/
theorem convolution_assoc_via_satake (f g h : Coefficients R) :
    convolution (convolution f g) h = convolution f (convolution g h) := by
  apply satake_injective
  simp only [satake_convolution, mul_assoc]

theorem convolution_comm_via_satake (f g : Coefficients R) :
    convolution f g = convolution g f := by
  apply satake_injective
  simp only [satake_convolution, mul_comm]

@[simp] theorem convolution_delta_zero (f : Coefficients R) :
    convolution (delta 0) f = f := by
  apply satake_injective
  simp only [satake_convolution, satake_delta, LaurentPolynomial.T_zero, one_mul]

/-- Translation is convolution by the valuation-class characteristic function. -/
def shift (k : ℤ) (f : Coefficients R) : Coefficients R := convolution (delta k) f

theorem satake_shift (k : ℤ) (f : Coefficients R) :
    satake (shift k f) = LaurentPolynomial.T k * satake f := by
  rw [shift, satake_convolution, satake_delta]

theorem shift_apply (k n : ℤ) (f : Coefficients R) :
    shift k f n = f (n - k) := by
  have h := congrArg (fun p : LaurentPolynomial R => p.coeff n) (satake_shift k f)
  rw [LaurentPolynomial.T, AddMonoidAlgebra.coeff_single_mul_apply] at h
  simpa only [satake, AddMonoidAlgebra.coeff_ofCoeff, one_mul, neg_add_eq_sub] using h

theorem shift_add (k l : ℤ) (f : Coefficients R) :
    shift k (shift l f) = shift (k + l) f := by
  apply satake_injective
  simp only [satake_shift, LaurentPolynomial.T_add, mul_assoc]

@[simp] theorem shift_zero (f : Coefficients R) : shift 0 f = f :=
  convolution_delta_zero f

/-- A sample theorem transported through the Laurent presentation and returned
to the original coefficient statement, without reusing the target theorem. -/
theorem shift_inverse_via_satake (k : ℤ) (f : Coefficients R) :
    shift (-k) (shift k f) = f := by
  apply satake_injective
  rw [satake_shift, satake_shift, ← mul_assoc, ← LaurentPolynomial.T_add,
    neg_add_cancel, LaurentPolynomial.T_zero, one_mul]

/-- Evaluation at a unit, so every negative power has its required inverse. -/
def characterEvaluation (z : Rˣ) (f : Coefficients R) : R :=
  LaurentPolynomial.eval₂ (RingHom.id R) z (satake f)

theorem characterEvaluation_convolution (z : Rˣ) (f g : Coefficients R) :
    characterEvaluation z (convolution f g) =
      characterEvaluation z f * characterEvaluation z g := by
  simp only [characterEvaluation, satake_convolution, map_mul]

@[simp] theorem characterEvaluation_delta (z : Rˣ) (n : ℤ) :
    characterEvaluation z (delta n) = (z ^ n).val := by
  simp only [characterEvaluation, satake_delta, LaurentPolynomial.eval₂_T]

theorem characterEvaluation_shift (z : Rˣ) (k : ℤ) (f : Coefficients R) :
    characterEvaluation z (shift k f) = (z ^ k).val * characterEvaluation z f := by
  rw [shift, characterEvaluation_convolution, characterEvaluation_delta]

/-- The spectral value is the finite Laurent sum, including negative powers. -/
theorem characterEvaluation_eq_sum (z : Rˣ) (f : Coefficients R) :
    characterEvaluation z f = f.sum (fun n a => a * (z ^ n).val) := by
  unfold characterEvaluation satake
  rw [← AddMonoidAlgebra.sum_coeff_single (AddMonoidAlgebra.ofCoeff f)]
  simp only [Finsupp.sum, map_sum,
    LaurentPolynomial.single_eq_C_mul_T, LaurentPolynomial.eval₂_C_mul_T,
    RingHom.id_apply]

section ValuationQuotient

variable {G : Type*} [Group G]

/-- A multiplicative character obtained from an integer-valued valuation and a
unit parameter. Triviality on the valuation kernel is proved below. -/
def valuationCharacter (v : G →* Multiplicative ℤ) (z : Rˣ) : G →* Rˣ where
  toFun g := z ^ (v g).toAdd
  map_one' := by simp
  map_mul' g h := by simp [zpow_add]

theorem valuationCharacter_kernel (v : G →* Multiplicative ℤ) (z : Rˣ)
    (g : G) (hg : g ∈ v.ker) : valuationCharacter v z g = 1 := by
  have hv : v g = 1 := hg
  simp [valuationCharacter, hv]

theorem valuationCharacter_uniformizer (v : G →* Multiplicative ℤ) (z : Rˣ)
    (π : G) (hπ : v π = Multiplicative.ofAdd 1) : valuationCharacter v z π = z := by
  simp [valuationCharacter, hπ]

/-- The spectral value of the discrete basis agrees with the character of an
element representing that normalized valuation class. -/
theorem characterEvaluation_delta_eq_valuationCharacter
    (v : G →* Multiplicative ℤ) (z : Rˣ) (π : G)
    (hπ : v π = Multiplicative.ofAdd 1) (n : ℤ) :
    characterEvaluation z (delta n) = (valuationCharacter v z (π ^ n)).val := by
  rw [map_zpow, valuationCharacter_uniformizer v z π hπ, characterEvaluation_delta]

/-- An integer-valued multiplicative valuation with an element of value one is
surjective. The normalization supplies a concrete preimage of every integer. -/
theorem normalizedValuation_surjective (v : G →* Multiplicative ℤ) (π : G)
    (hπ : v π = Multiplicative.ofAdd 1) : Function.Surjective v := by
  intro n
  refine ⟨π ^ n.toAdd, ?_⟩
  rw [map_zpow, hπ, ← ofAdd_zsmul]
  simp

/-- The algebraic valuation quotient. For a local-field application, a separate
proof must identify `v.ker` with the unit subgroup of the valuation ring. -/
def valuationQuotient (v : G →* Multiplicative ℤ) (π : G)
    (hπ : v π = Multiplicative.ofAdd 1) : G ⧸ v.ker ≃* Multiplicative ℤ :=
  QuotientGroup.quotientKerEquivOfSurjective v (normalizedValuation_surjective v π hπ)

end ValuationQuotient

end GRWTSK.NumberTheory.DiscreteSatake
