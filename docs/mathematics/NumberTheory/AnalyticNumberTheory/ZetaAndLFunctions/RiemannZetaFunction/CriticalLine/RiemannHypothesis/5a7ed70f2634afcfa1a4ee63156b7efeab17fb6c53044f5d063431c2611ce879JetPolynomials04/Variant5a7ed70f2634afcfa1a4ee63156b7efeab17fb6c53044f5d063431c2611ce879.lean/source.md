# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.5a7ed70f2634afcfa1a4ee63156b7efeab17fb6c53044f5d063431c2611ce879JetPolynomials04.Variant5a7ed70f2634afcfa1a4ee63156b7efeab17fb6c53044f5d063431c2611ce879

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f969c54f668e861e45bc0a6eccc011ce4357362` · SHA-256 `5a7ed70f2634afcfa1a4ee63156b7efeab17fb6c53044f5d063431c2611ce879`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

/-!
# Finite polynomial identities for the first five theta source derivatives

These are exact scalar polynomial certificates. The positive-mode exponential
factor is kept outside the polynomials. No infinite-series interchange or source
Wronskian sign is asserted by the finite identities alone.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
noncomputable section

/-- Polynomial factors in derivatives of a literal theta mode, through order four. -/
def thetaPhiJetPolynomial (k : Fin 5) (y : ℝ) : ℝ :=
  ![2 * y - 3,
    -8 * y ^ 2 + 30 * y - 15,
    32 * y ^ 3 - 224 * y ^ 2 + 330 * y - 75,
    -128 * y ^ 4 + 1440 * y ^ 3 - 4232 * y ^ 2 + 3270 * y - 375,
    512 * y ^ 5 - 8448 * y ^ 4 + 41408 * y ^ 3 -
      68096 * y ^ 2 + 30930 * y - 1875] k

/-- Explicit polynomial bounds valid already at `y ≥ 3`. -/
theorem thetaPhiJetPolynomial_abs_le (k : Fin 5) {y : ℝ} (hy : 3 ≤ y) :
    |thetaPhiJetPolynomial k y| ≤ 2 * 4 ^ k.val * y ^ (k.val + 1) := by
  let x := y - 3
  have hx : 0 ≤ x := sub_nonneg.mpr hy
  have he : y = x + 3 := by dsimp [x]; ring
  rw [he]
  have hplus : 0 ≤ 2 * 4 ^ k.val * (x + 3) ^ (k.val + 1) +
      thetaPhiJetPolynomial k (x + 3) := by
    fin_cases k <;> norm_num [thetaPhiJetPolynomial] <;> ring_nf <;> first | positivity | nlinarith only [hx, pow_nonneg hx 2, pow_nonneg hx 3, pow_nonneg hx 4, pow_nonneg hx 5]
  have hminus : 0 ≤ 2 * 4 ^ k.val * (x + 3) ^ (k.val + 1) -
      thetaPhiJetPolynomial k (x + 3) := by
    fin_cases k <;> norm_num [thetaPhiJetPolynomial] <;> ring_nf <;> first | positivity | nlinarith only [hx, pow_nonneg hx 2, pow_nonneg hx 3, pow_nonneg hx 4, pow_nonneg hx 5]
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- The scalar Hankel determinant of a five-term jet. -/
def thetaPhiJetDet (v : Fin 5 → ℝ) : ℝ :=
  v 0 * v 2 * v 4 + 2 * v 1 * v 2 * v 3 -
    v 0 * (v 3) ^ 2 - v 4 * (v 1) ^ 2 - (v 2) ^ 3

/-- Agreement with the actual order-three Hankel matrix determinant. -/
theorem thetaPhiJetDet_eq_matrix (v : Fin 5 → ℝ) :
    thetaPhiJetDet v = Matrix.det !![v 0, v 1, v 2; v 1, v 2, v 3; v 2, v 3, v 4] := by
  simp only [thetaPhiJetDet, Matrix.det_fin_three, Matrix.of_apply,
    Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two]
  ring

/-- The first two modes already have a uniform negative jet determinant.
The proof is a nonnegative-coefficient certificate after the shift `A = x + 3`.
The second-mode exponential weight may be any nonnegative real number here. -/
theorem thetaPhiJetDet_two_modes_le {A z : ℝ} (hA : 3 ≤ A) (hz : 0 ≤ z) :
    thetaPhiJetDet (fun k => thetaPhiJetPolynomial k A +
      4 * z * thetaPhiJetPolynomial k (4 * A)) ≤ -12607488 := by
  let x := A - 3
  have hx : 0 ≤ x := sub_nonneg.mpr hA
  have he : A = x + 3 := by dsimp [x]; ring
  rw [he]
  have hid : -thetaPhiJetDet (fun k => thetaPhiJetPolynomial k (x + 3) +
      4 * z * thetaPhiJetPolynomial k (4 * (x + 3))) - 12607488 =
    (32514048*x + 32071680*x^2 + 16834560*x^3 + 5160960*x^4 + 884736*x^5 + 65536*x^6) +
    z * (46386266112 + 152209539072*x + 217469878272*x^2 + 178059608064*x^3 +
      91899740160*x^4 + 30706089984*x^5 + 6487670784*x^6 + 790953984*x^7 + 42467328*x^8) +
    z^2 * (5713915281408 + 17205319434240*x + 22780536422400*x^2 +
      17343647318016*x^3 + 8308626554880*x^4 + 2564439146496*x^5 +
      497724948480*x^6 + 55490641920*x^7 + 2717908992*x^8) +
    z^3 * (8710898319360 + 18430140874752*x + 16275745013760*x^2 +
      7679099535360*x^3 + 2041451642880*x^4 + 289910292480*x^5 + 17179869184*x^6) := by
    dsimp [thetaPhiJetDet, thetaPhiJetPolynomial]
    ring
  have hp : 0 ≤ -thetaPhiJetDet (fun k => thetaPhiJetPolynomial k (x + 3) +
      4 * z * thetaPhiJetPolynomial k (4 * (x + 3))) - 12607488 := by
    rw [hid]
    positivity
  linarith

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
