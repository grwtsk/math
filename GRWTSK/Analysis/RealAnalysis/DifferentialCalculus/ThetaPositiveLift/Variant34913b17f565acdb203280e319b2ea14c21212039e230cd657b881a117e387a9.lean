-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPhiDerivativeStep.Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ThetaPhiDerivativeStep.Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd","mathematical_subject":"Analysis.Calculus","original_sha256":"4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiSignedJetCriterion
import Mathlib.Analysis.Calculus.Deriv.Polynomial

/-!
# Literal all-order theta derivative tape

The finite source jets used through rank four come from one polynomial
recurrence.  This module makes that recurrence all-order and lifts it through
the already proved Gaussian-sum derivative theorem.

For a mode polynomial `P`, differentiation acts by

`P -> (5 - 4y) P + 4y P'`.

The implementation uses the equivalent coefficient recurrence because it
interacts directly with the Gaussian sums already maintained in the
repository.  Each derivative is therefore a finite linear combination of
absolutely convergent Gaussian sums; no new infinite-series interchange is
assumed.

The resulting source tape is a genuine `ThetaPhiSourceJet`.  Its first seven
entries are proved equal to the previously verified source jet through
derivative order six.  No all-rank determinant sign is asserted here.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPhiDerivativeStep.Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open Polynomial
noncomputable section

/-- One coefficient-level application of the theta mode derivative operator.
For a monomial coefficient `a*y^n`, the image has coefficients
`(4n+5)a` at degree `n` and `-4a` at degree `n+1`. -/
def thetaPhiDerivativeStep (p : ℝ[X]) : ℝ[X] :=
  p.sum fun n a =>
    Polynomial.monomial n (((4 * n + 5 : ℕ) : ℝ) * a) +
      Polynomial.monomial (n + 1) (-4 * a)

/-- The derivative operator is additive. -/
theorem thetaPhiDerivativeStep_add (p q : ℝ[X]) :
    thetaPhiDerivativeStep (p + q) =
      thetaPhiDerivativeStep p + thetaPhiDerivativeStep q := by
  unfold thetaPhiDerivativeStep
  exact Polynomial.sum_add_index p q _
    (fun n => by simp)
    (fun n a b => by
      simp only [mul_add, map_add]
      abel)

/-- The coefficient recurrence on one monomial. -/
theorem thetaPhiDerivativeStep_monomial (n : ℕ) (a : ℝ) :
    thetaPhiDerivativeStep (Polynomial.monomial n a) =
      Polynomial.monomial n (((4 * n + 5 : ℕ) : ℝ) * a) +
        Polynomial.monomial (n + 1) (-4 * a) := by
  unfold thetaPhiDerivativeStep
  exact Polynomial.sum_monomial_index a _ (by simp)

/-- The coefficient recurrence is exactly the differential polynomial
recurrence `(5-4y)P + 4yP'` after evaluation. -/
theorem thetaPhiDerivativeStep_eval (p : ℝ[X]) (y : ℝ) :
    (thetaPhiDerivativeStep p).eval y =
      (5 - 4 * y) * p.eval y +
        4 * y * p.derivative.eval y := by
  induction p using Polynomial.induction_on' with
  | add p q hp hq =>
      rw [thetaPhiDerivativeStep_add, Polynomial.eval_add, hp, hq]
      simp only [Polynomial.derivative_add, Polynomial.eval_add]
      ring
  | monomial n a =>
      rw [thetaPhiDerivativeStep_monomial]
      cases n with
      | zero =>
          simp
          ring
      | succ n =>
          simp [Polynomial.derivative_monomial_succ, pow_succ]
          ring

/-- The all-order theta mode polynomials.  Order zero is `2y-3`; every
successor uses the exact derivative recurrence. -/
def thetaPhiDerivativePolynomial : ℕ → ℝ[X]
  | 0 =>
      Polynomial.monomial 0 (-3) +
        Polynomial.monomial 1 2
  | n + 1 =>
      thetaPhiDerivativeStep (thetaPhiDerivativePolynomial n)

/-- Order zero evaluates to the literal source-mode polynomial. -/
theorem thetaPhiDerivativePolynomial_zero_eval (y : ℝ) :
    (thetaPhiDerivativePolynomial 0).eval y = 2 * y - 3 := by
  simp [thetaPhiDerivativePolynomial]
  ring

/-- Successive mode polynomials obey the exact
`P_(n+1)=(5-4y)P_n+4yP_n'` recurrence. -/
theorem thetaPhiDerivativePolynomial_succ_eval (n : ℕ) (y : ℝ) :
    (thetaPhiDerivativePolynomial (n + 1)).eval y =
      (5 - 4 * y) * (thetaPhiDerivativePolynomial n).eval y +
        4 * y * (thetaPhiDerivativePolynomial n).derivative.eval y := by
  rw [thetaPhiDerivativePolynomial]
  exact thetaPhiDerivativeStep_eval _ _

/-- Lift a mode polynomial to the corresponding finite linear combination of
the repository's absolutely convergent Gaussian sums. -/
def thetaPhiGaussianLift (p : ℝ[X]) : ℝ → ℝ :=
  fun t =>
    p.sum fun n a =>
      a * Real.pi ^ (n + 1) *
        thetaGaussianSum (2 * n + 2) (4 * n + 5) t

/-- The Gaussian lift preserves polynomial addition. -/
theorem thetaPhiGaussianLift_add (p q : ℝ[X]) :
    thetaPhiGaussianLift (p + q) =
      thetaPhiGaussianLift p + thetaPhiGaussianLift q := by
  funext t
  unfold thetaPhiGaussianLift
  rw [Polynomial.sum_add_index]
  · rfl
  · intro n
    simp
  · intro n a b
    ring

/-- The Gaussian lift of one polynomial monomial. -/
theorem thetaPhiGaussianLift_monomial (n : ℕ) (a : ℝ) :
    thetaPhiGaussianLift (Polynomial.monomial n a) =
      fun t =>
        a * Real.pi ^ (n + 1) *
          thetaGaussianSum (2 * n + 2) (4 * n + 5) t := by
  funext t
  unfold thetaPhiGaussianLift
  exact Polynomial.sum_monomial_index a _ (by simp)

/-- Lifting the polynomial derivative step gives the ordinary derivative of
the lifted Gaussian source. -/
theorem hasDerivAt_thetaPhiGaussianLift
    (p : ℝ[X]) (t : ℝ) :
    HasDerivAt (thetaPhiGaussianLift p)
      (thetaPhiGaussianLift (thetaPhiDerivativeStep p) t) t := by
  induction p using Polynomial.induction_on' with
  | add p q hp hq =>
      rw [thetaPhiGaussianLift_add, thetaPhiDerivativeStep_add,
        thetaPhiGaussianLift_add]
      exact hp.add hq
  | monomial n a =>
      rw [thetaPhiGaussianLift_monomial]
      have h :=
        (hasDerivAt_thetaGaussianSum
          (2 * n + 2) (4 * n + 5) t).const_mul
          (a * Real.pi ^ (n + 1))
      have hvalue :
          thetaPhiGaussianLift
              (thetaPhiDerivativeStep
                (Polynomial.monomial n a)) t =
            a * Real.pi ^ (n + 1) *
              (((4 * n + 5 : ℕ) : ℝ) *
                  thetaGaussianSum (2 * n + 2) (4 * n + 5) t -
                4 * Real.pi *
                  thetaGaussianSum
                    (2 * n + 2 + 2) (4 * n + 5 + 4) t) := by
        rw [thetaPhiDerivativeStep_monomial,
          thetaPhiGaussianLift_add,
          thetaPhiGaussianLift_monomial,
          thetaPhiGaussianLift_monomial]
        simp only [Pi.add_apply, Nat.cast_add, Nat.cast_mul,
          Nat.cast_ofNat]
        rw [show n + 1 + 1 = n + 2 by omega,
          show 2 * (n + 1) + 2 = 2 * n + 2 + 2 by omega,
          show 4 * (n + 1) + 5 = 4 * n + 5 + 4 by omega,
          pow_succ]
        ring
      rw [hvalue]
      exact h

/-- The literal all-order source derivative candidate obtained by lifting the
all-order mode-polynomial recurrence. -/
def thetaPhiDerivativeTapeValue (n : ℕ) : ℝ → ℝ :=
  thetaPhiGaussianLift (thetaPhiDerivativePolynomial n)

/-- Consecutive entries of the all-order tape are genuine ordinary
derivatives. -/
theorem hasDerivAt_thetaPhiDerivativeTapeValue
    (n : ℕ) (t : ℝ) :
    HasDerivAt (thetaPhiDerivativeTapeValue n)
      (thetaPhiDerivativeTapeValue (n + 1) t) t := by
  unfold thetaPhiDerivativeTapeValue
  rw [thetaPhiDerivativePolynomial]
  exact hasDerivAt_thetaPhiGaussianLift _ t

/-- The literal theta source is the initial Gaussian lift. -/
theorem thetaPhiDerivativeTapeValue_zero :
    thetaPhiDerivativeTapeValue 0 = thetaPhi := by
  funext t
  have he (m : ℕ) :
      thetaPhiTerm m t =
        (2 * Real.pi ^ 2) * thetaGaussianTerm 4 9 m t -
          (3 * Real.pi) * thetaGaussianTerm 2 5 m t := by
    rw [thetaPhiTerm_eq_gaussians]
    unfold thetaGaussianTerm
    ring_nf
  have hsource :
      thetaPhi t =
        (2 * Real.pi ^ 2) * thetaGaussianSum 4 9 t -
          (3 * Real.pi) * thetaGaussianSum 2 5 t := by
    unfold thetaPhi
    simp_rw [he]
    rw [((thetaGaussianTerm_summable 4 9 t).mul_left
        (2 * Real.pi ^ 2)).tsum_sub
      ((thetaGaussianTerm_summable 2 5 t).mul_left
        (3 * Real.pi)),
      tsum_mul_left, tsum_mul_left]
    rfl
  rw [hsource]
  change
    thetaPhiGaussianLift
        (Polynomial.monomial 0 (-3) +
          Polynomial.monomial 1 2) t =
      (2 * Real.pi ^ 2) * thetaGaussianSum 4 9 t -
        (3 * Real.pi) * thetaGaussianSum 2 5 t
  rw [thetaPhiGaussianLift_add,
    thetaPhiGaussianLift_monomial,
    thetaPhiGaussianLift_monomial]
  norm_num
  ring

/-- The all-order recurrence therefore gives an actual literal theta source
jet, not merely a formal polynomial tape. -/
def thetaPhiInfiniteSourceJet : ThetaPhiSourceJet where
  value := thetaPhiDerivativeTapeValue
  zero_eq := thetaPhiDerivativeTapeValue_zero
  succ_hasDerivAt := hasDerivAt_thetaPhiDerivativeTapeValue

/-- The first derivative in the all-order tape is the maintained raw first
source derivative. -/
theorem thetaPhiDerivativeTapeValue_one :
    thetaPhiDerivativeTapeValue 1 = thetaPhiRawD1 := by
  funext t
  have h := hasDerivAt_thetaPhiDerivativeTapeValue 0 t
  rw [thetaPhiDerivativeTapeValue_zero] at h
  exact h.unique (hasDerivAt_thetaPhi_raw t)

/-- The second derivative in the all-order tape is the maintained raw second
source derivative. -/
theorem thetaPhiDerivativeTapeValue_two :
    thetaPhiDerivativeTapeValue 2 = thetaPhiRawD2 := by
  funext t
  have h := hasDerivAt_thetaPhiDerivativeTapeValue 1 t
  rw [thetaPhiDerivativeTapeValue_one] at h
  exact h.unique (hasDerivAt_thetaPhiRawD1 t)

/-- The third derivative in the all-order tape is the maintained raw third
source derivative. -/
theorem thetaPhiDerivativeTapeValue_three :
    thetaPhiDerivativeTapeValue 3 = thetaPhiRawD3 := by
  funext t
  have h := hasDerivAt_thetaPhiDerivativeTapeValue 2 t
  rw [thetaPhiDerivativeTapeValue_two] at h
  exact h.unique (hasDerivAt_thetaPhiRawD2 t)

/-- The fourth derivative in the all-order tape is the maintained raw fourth
source derivative. -/
theorem thetaPhiDerivativeTapeValue_four :
    thetaPhiDerivativeTapeValue 4 = thetaPhiRawD4 := by
  funext t
  have h := hasDerivAt_thetaPhiDerivativeTapeValue 3 t
  rw [thetaPhiDerivativeTapeValue_three] at h
  exact h.unique (hasDerivAt_thetaPhiRawD3 t)

/-- The fifth derivative in the all-order tape is the maintained raw fifth
source derivative. -/
theorem thetaPhiDerivativeTapeValue_five :
    thetaPhiDerivativeTapeValue 5 = thetaPhiRawD5 := by
  funext t
  have h := hasDerivAt_thetaPhiDerivativeTapeValue 4 t
  rw [thetaPhiDerivativeTapeValue_four] at h
  exact h.unique (hasDerivAt_thetaPhiRawD4 t)

/-- The sixth derivative in the all-order tape is the maintained raw sixth
source derivative. -/
theorem thetaPhiDerivativeTapeValue_six :
    thetaPhiDerivativeTapeValue 6 = thetaPhiRawD6 := by
  funext t
  have h := hasDerivAt_thetaPhiDerivativeTapeValue 5 t
  rw [thetaPhiDerivativeTapeValue_five] at h
  exact h.unique (hasDerivAt_thetaPhiRawD5 t)

/-- The literal infinite derivative tape agrees with every entry of the
previously verified seven-entry source jet. -/
theorem thetaPhiInfiniteSourceJet_prefix7
    (k : Fin 7) (t : ℝ) :
    thetaPhiInfiniteSourceJet.value k.val t =
      thetaPhiJet7 t k := by
  change thetaPhiDerivativeTapeValue k.val t =
    thetaPhiJet7 t k
  fin_cases k
  · rw [thetaPhiDerivativeTapeValue_zero]
    rfl
  · rw [thetaPhiDerivativeTapeValue_one]
    rfl
  · rw [thetaPhiDerivativeTapeValue_two]
    rfl
  · rw [thetaPhiDerivativeTapeValue_three]
    rfl
  · rw [thetaPhiDerivativeTapeValue_four]
    rfl
  · rw [thetaPhiDerivativeTapeValue_five]
    rfl
  · rw [thetaPhiDerivativeTapeValue_six]
    rfl

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
