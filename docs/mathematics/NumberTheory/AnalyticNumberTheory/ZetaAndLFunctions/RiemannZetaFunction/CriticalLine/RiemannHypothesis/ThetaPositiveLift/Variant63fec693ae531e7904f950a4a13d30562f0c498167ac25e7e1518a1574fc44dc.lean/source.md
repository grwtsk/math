# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `181e8809db9e06af15d220fbf0197318f5778f14` · SHA-256 `5496ce69ab81ec6af2b612cbeecafbb4dca7d444dbe6622b87ad74c919f53ba5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiSignedTouchardPolynomial.Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaPhiSignedTouchardPolynomial.Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiSignedPoissonBridge
import Mathlib.Algebra.Polynomial.Roots

/-!
# Finite generalized Touchard identification for the theta base tape

The analytic signed-Poisson bridge is verified. This module closes its remaining
finite algebraic gate.

The signed Touchard polynomial is
  S_n(X) = sum_j {n \brace j} (-1)^j X^j.
It is generated from S_0 = 1 by the linear operator
  A(P) = -X P + X P'.

The theta base derivative operator is exactly
  5 I + 4 A.
Since 4 A commutes with 5 I, the binomial theorem for endomorphisms gives
  (5 I + 4 A)^n 1
as the explicit generalized signed Touchard sum. This identifies the verified
base polynomial Q_n with the generalized signed Touchard value already used by
the analytic bridge.

Consequently the previously conditional
ThetaPhiBaseSignedMomentRepresentation is discharged.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiSignedTouchardPolynomial.Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open Polynomial
open scoped BigOperators
noncomputable section

/-- Signed Touchard polynomial whose evaluation is T_n(-y). -/
def thetaPhiSignedTouchardPolynomial (n : ℕ) : ℝ[X] :=
  ∑ j ∈ Finset.range (n + 1),
    Polynomial.monomial j
      ((Nat.stirlingSecond n j : ℝ) * (-1 : ℝ) ^ j)

/-- Coefficients of the signed Touchard polynomial. -/
theorem thetaPhiSignedTouchardPolynomial_coeff
    (n k : ℕ) :
    (thetaPhiSignedTouchardPolynomial n).coeff k =
      (Nat.stirlingSecond n k : ℝ) * (-1 : ℝ) ^ k := by
  by_cases hk : k < n + 1
  · simp [thetaPhiSignedTouchardPolynomial,
      Polynomial.finsetSum_coeff, Polynomial.coeff_monomial,
      hk, eq_comm]
  · have hkn : n < k := by omega
    rw [Nat.stirlingSecond_eq_zero_of_lt hkn]
    simp [thetaPhiSignedTouchardPolynomial,
      Polynomial.finsetSum_coeff, Polynomial.coeff_monomial,
      hk, eq_comm]

/-- Evaluation of the signed Touchard polynomial is the maintained signed
Touchard value. -/
theorem thetaPhiSignedTouchardPolynomial_eval
    (n : ℕ) (y : ℝ) :
    (thetaPhiSignedTouchardPolynomial n).eval y =
      thetaPhiSignedTouchardValue n y := by
  unfold thetaPhiSignedTouchardPolynomial
    thetaPhiSignedTouchardValue
  rw [Polynomial.eval_finsetSum]
  apply Finset.sum_congr rfl
  intro j hj
  rw [Polynomial.eval_monomial]
  rw [mul_assoc, ← mul_pow]
  simp

/-- Linear signed-Touchard raising operator A(P) = -X P + X P'. -/
def thetaPhiSignedTouchardOperator :
    Module.End ℝ ℝ[X] where
  toFun p := -(Polynomial.X * p) +
    Polynomial.X * p.derivative
  map_add' p q := by
    simp only [mul_add, map_add]
    abel
  map_smul' c p := by
    change
      -(Polynomial.X * (c • p)) +
          Polynomial.X * (c • p).derivative =
        c • (-(Polynomial.X * p) +
          Polynomial.X * p.derivative)
    rw [map_smul, mul_smul_comm, mul_smul_comm,
      smul_add, smul_neg]

/-- The signed Touchard operator raises the signed Touchard sequence. -/
theorem thetaPhiSignedTouchardOperator_apply
    (n : ℕ) :
    thetaPhiSignedTouchardOperator
        (thetaPhiSignedTouchardPolynomial n) =
      thetaPhiSignedTouchardPolynomial (n + 1) := by
  ext k
  cases k with
  | zero =>
      simp [thetaPhiSignedTouchardOperator,
        thetaPhiSignedTouchardPolynomial_coeff]
  | succ k =>
      simp only [thetaPhiSignedTouchardOperator,
        LinearMap.coe_mk, AddHom.coe_mk,
        Polynomial.coeff_add, Polynomial.coeff_neg,
        Polynomial.coeff_X_mul,
        Polynomial.coeff_derivative,
        thetaPhiSignedTouchardPolynomial_coeff]
      rw [Nat.stirlingSecond_succ_succ]
      simp only [Nat.cast_add, Nat.cast_mul, pow_succ]
      ring

/-- The zeroth signed Touchard polynomial is one. -/
@[simp] theorem thetaPhiSignedTouchardPolynomial_zero :
    thetaPhiSignedTouchardPolynomial 0 = 1 := by
  simp [thetaPhiSignedTouchardPolynomial]

/-- Iterating the signed Touchard operator from one produces the signed
Touchard polynomial tape. -/
theorem thetaPhiSignedTouchardOperator_pow_one
    (n : ℕ) :
    (thetaPhiSignedTouchardOperator ^ n) (1 : ℝ[X]) =
      thetaPhiSignedTouchardPolynomial n := by
  induction n with
  | zero =>
      simp
  | succ n ih =>
      rw [pow_succ', Module.End.mul_apply, ih,
        thetaPhiSignedTouchardOperator_apply]

/-- The theta base operator as a linear endomorphism. -/
def thetaPhiBaseEndomorphism :
    Module.End ℝ ℝ[X] :=
  (5 : ℝ) • LinearMap.id +
    (4 : ℝ) • thetaPhiSignedTouchardOperator

/-- The coefficient-level theta derivative step is exactly the affine
Touchard endomorphism 5 I + 4 A. -/
theorem thetaPhiBaseEndomorphism_apply
    (p : ℝ[X]) :
    thetaPhiBaseEndomorphism p =
      thetaPhiDerivativeStep p := by
  apply Polynomial.funext
  intro y
  rw [thetaPhiDerivativeStep_eval]
  simp only [thetaPhiBaseEndomorphism,
    LinearMap.add_apply, LinearMap.smul_apply,
    LinearMap.id_apply, thetaPhiSignedTouchardOperator,
    LinearMap.coe_mk, AddHom.coe_mk,
    Polynomial.eval_add, Polynomial.eval_smul,
    smul_eq_mul, Polynomial.eval_neg,
    Polynomial.eval_mul, Polynomial.eval_X]
  ring

/-- The verified base polynomial tape is the orbit of one under the base
endomorphism. -/
theorem thetaPhiBasePolynomial_eq_endomorphism_pow
    (n : ℕ) :
    thetaPhiBasePolynomial n =
      (thetaPhiBaseEndomorphism ^ n) (1 : ℝ[X]) := by
  induction n with
  | zero =>
      simp [thetaPhiBasePolynomial]
  | succ n ih =>
      rw [thetaPhiBasePolynomial_succ, ih,
        ← thetaPhiBaseEndomorphism_apply,
        pow_succ', Module.End.mul_apply]

/-- Powers of a scalar multiple of an endomorphism act by the corresponding
scalar power. -/
private theorem smul_end_pow_apply
    (c : ℝ) (F : Module.End ℝ ℝ[X])
    (n : ℕ) (p : ℝ[X]) :
    (((c : ℝ) • F) ^ n) p =
      c ^ n • ((F ^ n) p) := by
  induction n with
  | zero =>
      simp
  | succ n ih =>
      calc
        (((c : ℝ) • F) ^ (n + 1)) p =
            ((c : ℝ) • F)
              ((((c : ℝ) • F) ^ n) p) := by
                rw [pow_succ', Module.End.mul_apply]
        _ = ((c : ℝ) • F)
              (c ^ n • ((F ^ n) p)) := by rw [ih]
        _ = c • (c ^ n • F ((F ^ n) p)) := by
              rw [LinearMap.smul_apply, map_smul]
        _ = (c * c ^ n) • F ((F ^ n) p) := by
              rw [smul_smul]
        _ = c ^ (n + 1) • F ((F ^ n) p) := by
              congr 1
              rw [pow_succ]
              ring
        _ = c ^ (n + 1) • ((F ^ (n + 1)) p) := by
              congr 1
              rw [pow_succ', Module.End.mul_apply]

/-- The scaled signed Touchard operator applied repeatedly to one. -/
private theorem scaled_touchard_pow_one
    (n : ℕ) :
    (((4 : ℝ) • thetaPhiSignedTouchardOperator) ^ n)
        (1 : ℝ[X]) =
      (4 : ℝ) ^ n •
        thetaPhiSignedTouchardPolynomial n := by
  rw [smul_end_pow_apply,
    thetaPhiSignedTouchardOperator_pow_one]

/-- The scaled identity endomorphism acts by the scalar power. -/
private theorem scaled_id_pow_apply
    (n : ℕ) (p : ℝ[X]) :
    (((5 : ℝ) •
        (LinearMap.id : Module.End ℝ ℝ[X])) ^ n) p =
      (5 : ℝ) ^ n • p := by
  rw [smul_end_pow_apply]
  simp

/-- The two endomorphisms in the base operator commute. -/
private theorem scaled_touchard_commute_scaled_id :
    Commute
      ((4 : ℝ) • thetaPhiSignedTouchardOperator)
      ((5 : ℝ) •
        (LinearMap.id : Module.End ℝ ℝ[X])) := by
  exact
    ((Commute.one_right thetaPhiSignedTouchardOperator).smul_left
      (4 : ℝ)).smul_right (5 : ℝ)

/-- Exact binomial expansion of the base endomorphism orbit. -/
theorem thetaPhiBaseEndomorphism_pow_one_eq_touchard_sum
    (n : ℕ) :
    (thetaPhiBaseEndomorphism ^ n) (1 : ℝ[X]) =
      ∑ j ∈ Finset.range (n + 1),
        ((n.choose j : ℝ) *
          (4 : ℝ) ^ j *
          (5 : ℝ) ^ (n - j)) •
            thetaPhiSignedTouchardPolynomial j := by
  let A : Module.End ℝ ℝ[X] :=
    (4 : ℝ) • thetaPhiSignedTouchardOperator
  let I : Module.End ℝ ℝ[X] :=
    (5 : ℝ) • (LinearMap.id : Module.End ℝ ℝ[X])
  have hcomm : Commute A I := by
    simpa [A, I] using scaled_touchard_commute_scaled_id
  have hbase : thetaPhiBaseEndomorphism = A + I := by
    dsimp [A, I, thetaPhiBaseEndomorphism]
    rw [add_comm]
  rw [hbase, hcomm.add_pow]
  change
    (∑ j ∈ Finset.range (n + 1),
      A ^ j * I ^ (n - j) * (n.choose j)) (1 : ℝ[X]) =
      _
  rw [LinearMap.sum_apply]
  apply Finset.sum_congr rfl
  intro j hj
  rw [Module.End.mul_apply, Module.End.natCast_apply,
    Module.End.mul_apply]
  rw [← Nat.cast_smul_eq_nsmul ℝ]
  rw [map_smul, map_smul]
  dsimp [A, I]
  rw [scaled_id_pow_apply, map_smul,
    scaled_touchard_pow_one]
  simp only [smul_smul]
  congr 1
  ring

/-- The verified base polynomial is exactly the explicit generalized signed
Touchard polynomial. -/
theorem thetaPhiBasePolynomial_eq_generalizedTouchardPolynomial
    (n : ℕ) :
    thetaPhiBasePolynomial n =
      ∑ j ∈ Finset.range (n + 1),
        ((n.choose j : ℝ) *
          (4 : ℝ) ^ j *
          (5 : ℝ) ^ (n - j)) •
            thetaPhiSignedTouchardPolynomial j := by
  rw [thetaPhiBasePolynomial_eq_endomorphism_pow,
    thetaPhiBaseEndomorphism_pow_one_eq_touchard_sum]

/-- Finite generalized Touchard identification required by the analytic
signed-Poisson bridge. -/
theorem thetaPhiBaseGeneralizedTouchardIdentification :
    ThetaPhiBaseGeneralizedTouchardIdentification := by
  intro n y
  rw [thetaPhiBasePolynomial_eq_generalizedTouchardPolynomial]
  unfold thetaPhiGeneralizedSignedTouchardValue
  rw [Polynomial.eval_finsetSum]
  apply Finset.sum_congr rfl
  intro j hj
  rw [Polynomial.eval_smul,
    thetaPhiSignedTouchardPolynomial_eval]
  rfl

/-- The theta base tape therefore has the exact signed-moment representation
on the arithmetic support 4*l+5. -/
theorem thetaPhiBaseSignedMomentRepresentation :
    ThetaPhiBaseSignedMomentRepresentation :=
  thetaPhiBaseSignedMomentRepresentation_of_generalizedTouchard
    thetaPhiBaseGeneralizedTouchardIdentification

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
