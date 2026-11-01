/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Primary upstream arithmetic source: Record4239Curve.lean, mathematical curve
by Noam D. Elkies, Zev Klagsbrun and Samuel Li (2026), with the exact count
certificates and their original attribution retained in that module.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239Curve
import Mathlib.AlgebraicGeometry.EllipticCurve.LFunction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Finite good-prime Euler inversion from actual elliptic point counts

The source is the nonsingular Weierstrass model and the finite residue-field
point count. For good reduction, the degree-two reciprocal Euler polynomial is
  1 - (q + 1 - N_q) T + q T^2.
Its value at T = 1/q is EXACTLY N_q/q. Its coefficient at T^2 is q,
so the normalized prime-square reciprocal coefficient is exactly one.
No zeta/Liouville coefficients or supplied positive Gram replace this source.

The source model and original finite counts for record curve #4239 are tied to
the pre-existing Record4239 declarations. The source does not prove a global
elliptic Euler product, Goldfeld's asymptotic, Selmer comparison or BSD.

Mathlib's genuine local factors are WeierstrassCurve.localPolynomial,
WeierstrassCurve.localPowerSeries, and WeierstrassCurve.LFunction. A separate
minimal-model/reduction proof is needed to identify this elementary good-prime
polynomial with a specified Mathlib localPolynomial; we do not assume that
identification as an unqualified theorem.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves

/-- The actual trace extracted from a finite-field group order. -/
def frobeniusTrace (q pointCount : ℕ) : ℤ :=
  (q : ℤ) + 1 - (pointCount : ℤ)

/-- Integer coefficients of the reciprocal quadratic good-reduction factor. -/
def reciprocalCoefficient (q pointCount : ℕ) : ℕ → ℤ
  | 0 => 1
  | 1 => -frobeniusTrace q pointCount
  | 2 => q
  | _ => 0

/-- Evaluation of the good local polynomial at a rational parameter. -/
def goodReciprocal (q pointCount : ℕ) (T : ℚ) : ℚ :=
  1 - (frobeniusTrace q pointCount : ℚ) * T + (q : ℚ) * T ^ 2

theorem reciprocal_constant (q pointCount : ℕ) :
    reciprocalCoefficient q pointCount 0 = 1 := rfl

theorem reciprocal_prime (q pointCount : ℕ) :
    reciprocalCoefficient q pointCount 1 = -frobeniusTrace q pointCount := rfl

theorem reciprocal_prime_square (q pointCount : ℕ) :
    reciprocalCoefficient q pointCount 2 = (q : ℤ) := rfl

/-- No artificial higher prime powers occur in this reciprocal polynomial. -/
theorem reciprocal_higher_zero (q pointCount k : ℕ) (hk : 3 ≤ k) :
    reciprocalCoefficient q pointCount k = 0 := by
  have hk0 : k ≠ 0 := by omega
  have hk1 : k ≠ 1 := by omega
  have hk2 : k ≠ 2 := by omega
  simp [reciprocalCoefficient, hk0, hk1, hk2]

/-- The polynomial is recovered from its *complete* coefficient packet. -/
theorem goodReciprocal_coefficients (q pointCount : ℕ) (T : ℚ) :
    goodReciprocal q pointCount T =
      ∑ k ∈ Finset.range 3, (reciprocalCoefficient q pointCount k : ℚ) * T ^ k := by
  simp [Finset.sum_range_succ, reciprocalCoefficient, goodReciprocal] <;> ring

/-- The true good-reduction identity at s=1, entirely finite algebra. -/
theorem goodReciprocal_at_inverse (q pointCount : ℕ) (hq : 0 < q) :
    goodReciprocal q pointCount ((q : ℚ)⁻¹) =
      (pointCount : ℚ) / (q : ℚ) := by
  have hq0 : (q : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hq)
  simp only [goodReciprocal, frobeniusTrace]
  push_cast
  field_simp [hq0] <;> ring

/-- The normalized reciprocal coefficient at the prime-square sector is 1.
The prime coefficient instead contains the signed Frobenius trace. -/
theorem normalized_prime_square (q pointCount : ℕ) (hq : 0 < q) :
    (reciprocalCoefficient q pointCount 2 : ℚ) / (q : ℚ) = 1 := by
  have hq0 : (q : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hq)
  simp [reciprocalCoefficient, hq0]

/-- Unitary normalization uses an actual square root of the field size.
The normalized center is s=1/2, not the unshifted center s=1. -/
def normalizedGoodReciprocal (q pointCount : ℕ) (root T : ℝ) : ℝ :=
  1 - (frobeniusTrace q pointCount : ℝ) / root * T + T ^ 2

/-- Exact source-preserving substitution T -> T/sqrt(q). -/
theorem normalizedGood_from_source (q pointCount : ℕ) (root T : ℝ)
    (hroot : root ^ 2 = (q : ℝ)) (hroot_ne : root ≠ 0) :
    1 - (frobeniusTrace q pointCount : ℝ) * (T / root) +
      (q : ℝ) * (T / root) ^ 2 =
    normalizedGoodReciprocal q pointCount root T := by
  unfold normalizedGoodReciprocal
  rw [← hroot]
  field_simp [hroot_ne] <;> ring

/-- The full normalized reciprocal polynomial has no terms beyond p^2. -/
def normalizedCoefficient (q pointCount : ℕ) (root : ℝ) : ℕ → ℝ
  | 0 => 1
  | 1 => -(frobeniusTrace q pointCount : ℝ) / root
  | 2 => 1
  | _ => 0

theorem normalized_coefficient_prime (q pointCount : ℕ) (root : ℝ) :
    normalizedCoefficient q pointCount root 1 =
      -(frobeniusTrace q pointCount : ℝ) / root := rfl

theorem normalized_coefficient_prime_square (q pointCount : ℕ) (root : ℝ) :
    normalizedCoefficient q pointCount root 2 = 1 := rfl

/-- Actual coefficient polynomial, including the complete prime-square term. -/
theorem normalizedGood_coefficients (q pointCount : ℕ) (root T : ℝ) :
    normalizedGoodReciprocal q pointCount root T =
      ∑ k ∈ Finset.range 3, normalizedCoefficient q pointCount root k * T ^ k := by
  simp [Finset.sum_range_succ, normalizedCoefficient, normalizedGoodReciprocal] <;> ring

/-- A finite product of actual count-to-Euler observations. All duplicates
remain in the index set; using this as a prime window additionally requires
a separate no-collision certificate for the indexed primes. -/
theorem finite_good_window
    {ι : Type*} (S : Finset ι) (q pointCount : ι → ℕ)
    (hq : ∀ i ∈ S, 0 < q i) :
    (∏ i ∈ S, goodReciprocal (q i) (pointCount i) ((q i : ℚ)⁻¹)) =
    (∏ i ∈ S, (pointCount i : ℚ) / (q i : ℚ)) := by
  apply Finset.prod_congr rfl
  intro i hi
  exact goodReciprocal_at_inverse (q i) (pointCount i) (hq i hi)

/-- A source-independent quadratic trace recurrence. Connecting this
recurrence to counts over F_(q^n) additionally requires the actual
Frobenius characteristic polynomial for the chosen good reduction. -/
def tracePair (q pointCount : ℕ) : ℕ → ℤ × ℤ
  | 0 => (2, frobeniusTrace q pointCount)
  | k + 1 =>
      let prev := tracePair q pointCount k
      (prev.2, frobeniusTrace q pointCount * prev.2 - (q : ℤ) * prev.1)

def extensionTrace (q pointCount n : ℕ) : ℤ := (tracePair q pointCount n).1

theorem extensionTrace_zero (q pointCount : ℕ) :
    extensionTrace q pointCount 0 = 2 := rfl

theorem extensionTrace_one (q pointCount : ℕ) :
    extensionTrace q pointCount 1 = frobeniusTrace q pointCount := rfl

theorem extensionTrace_two (q pointCount : ℕ) :
    extensionTrace q pointCount 2 =
      (frobeniusTrace q pointCount) ^ 2 - 2 * (q : ℤ) := by
  simp [extensionTrace, tracePair] <;> ring

theorem extensionTrace_recurrence (q pointCount n : ℕ) :
    extensionTrace q pointCount (n + 2) =
      frobeniusTrace q pointCount * extensionTrace q pointCount (n + 1) -
        (q : ℤ) * extensionTrace q pointCount n := by
  rfl

/-! ## Source-identified Weierstrass and finite residue data -/

/-- No new curve group law: this is the *existing* integral record model
in Mathlib's five-coefficient Weierstrass carrier. -/
def recordModel : WeierstrassCurve ℤ where
  a₁ := 1
  a₂ := 0
  a₃ := 0
  a₄ := -Record4239.A
  a₆ := Record4239.B

/-- Rational base source with coefficients identical to the integral record
model; field-changing compatibility is a separate proof obligation. -/
def recordModelRational : WeierstrassCurve ℚ where
  a₁ := 1
  a₂ := 0
  a₃ := 0
  a₄ := -(Record4239.A : ℚ)
  a₆ := (Record4239.B : ℚ)

/-- The original rational affine equation agrees with the actual rational
Weierstrass carrier (not the integral model evaluated on rationals). -/
theorem recordModel_equation (x y : ℚ) :
    recordModelRational.toAffine.Equation x y ↔ Record4239.OnRecordModel x y := by
  rw [WeierstrassCurve.Affine.equation_iff]
  simp [recordModelRational, Record4239.OnRecordModel] <;> ring

/-- Finite residue-field point counting for an ACTUAL integral Weierstrass
model. This is only a group order when the reduction is nonsingular. -/
def integralModelCount (W : WeierstrassCurve ℤ) (p : ℕ) [NeZero p] : ℕ :=
  1 + (Finset.univ.filter (fun xy : ZMod p × ZMod p =>
    xy.2 ^ 2 + (W.a₁ : ZMod p) * xy.1 * xy.2 +
      (W.a₃ : ZMod p) * xy.2 =
    xy.1 ^ 3 + (W.a₂ : ZMod p) * xy.1 ^ 2 +
      (W.a₄ : ZMod p) * xy.1 + (W.a₆ : ZMod p))).card

/-- Exact reduction to the original model's enumerated source points.
This is a source identity, not a fabricated count field. -/
theorem recordModel_count (p : ℕ) [NeZero p] :
    integralModelCount recordModel p = Record4239.reducedPointCount p := by
  simp [integralModelCount, recordModel, Record4239.reducedPointCount,
    sub_eq_add_neg, add_assoc, mul_assoc]

/-- Exact discriminant comparison with the original source's b-invariant
formula. Hence the original mod-7 and mod-19 tests refer to this model. -/
theorem recordModel_discriminant :
    recordModel.Δ = Record4239.recordDiscriminant := by
  simp only [recordModel, Record4239.recordDiscriminant,
    WeierstrassCurve.Δ, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆, WeierstrassCurve.b₈]
  ring

/-- A noncoercible certificate: the count must agree with an actual model,
with the good discriminant and prime explicitly retained. -/
structure GoodPointCountCertificate (p : ℕ) [NeZero p] where
  model : WeierstrassCurve ℤ
  prime : Nat.Prime p
  good : (model.Δ : ZMod p) ≠ 0
  count : ℕ
  count_eq : count = integralModelCount model p

/-- The source's prime-7 trace and its finite reciprocal factor. -/
theorem record_trace_seven :
    frobeniusTrace 7 (Record4239.reducedPointCount 7) = -5 := by
  simp [frobeniusTrace, Record4239.pointCount7]

theorem record_trace_nineteen :
    frobeniusTrace 19 (Record4239.reducedPointCount 19) = -7 := by
  simp [frobeniusTrace, Record4239.pointCount19]

theorem record_factor_seven (T : ℚ) :
    goodReciprocal 7 (Record4239.reducedPointCount 7) T =
      1 + 5 * T + 7 * T ^ 2 := by
  rw [Record4239.pointCount7]
  norm_num [goodReciprocal, frobeniusTrace]

theorem record_factor_nineteen (T : ℚ) :
    goodReciprocal 19 (Record4239.reducedPointCount 19) T =
      1 + 7 * T + 19 * T ^ 2 := by
  rw [Record4239.pointCount19]
  norm_num [goodReciprocal, frobeniusTrace]

/-- A certified two-prime Goldfeld window, reusing the actual original
integer point-count certificates. No limiting asymptotic is inferred. -/
theorem record_window_seven_nineteen :
    goodReciprocal 7 (Record4239.reducedPointCount 7) (1 / 7) *
      goodReciprocal 19 (Record4239.reducedPointCount 19) (1 / 19) =
      (351 / 133 : ℚ) := by
  rw [record_factor_seven, record_factor_nineteen]
  norm_num

/-- Both recurrence-defined prime-square Frobenius traces equal 11;
actual F_(p²) point counts require an independent Frobenius comparison. -/
theorem record_second_trace_seven :
    extensionTrace 7 (Record4239.reducedPointCount 7) 2 = 11 := by
  rw [extensionTrace_two, record_trace_seven]
  norm_num

theorem record_second_trace_nineteen :
    extensionTrace 19 (Record4239.reducedPointCount 19) 2 = 11 := by
  rw [extensionTrace_two, record_trace_nineteen]
  norm_num

/-- The exact finite divisibility obstruction needed by a future
good-reduction prime-to-p torsion-specialization proof. -/
theorem thirteen_coprime_twentyseven : Nat.Coprime 13 27 := by decide

theorem joint_order_divisor_one (m : ℕ) (h7 : m ∣ 13) (h19 : m ∣ 27) :
    m = 1 := by
  have hg : m ∣ Nat.gcd 13 27 := Nat.dvd_gcd h7 h19
  have h : Nat.gcd 13 27 = 1 := by decide
  rw [h] at hg
  exact Nat.dvd_one.mp hg

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
