import FormalResearch.RiemannHypothesis.Conversation.OpenArithmeticSuppliers
import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.Data.Nat.Choose.Sum

/-!
# Exact fixed translation filters retain every detector in the right half-plane

LT03-09's next concrete supplier is the fixed ninth forward difference. The
complete finite binomial multiplier is exactly (exp(h*s)-1)^k. For h>0 it has
no zero with Re(s)>0, for every natural order k. The order-nine specialization
uses all ten evaluations of the unchanged weighted closed prime moment.
The compact-measure Laplace transport, entire finite head, exact order-nine
arithmetic poles and one-sided Landau return remain separate analytic proofs.
No filtered source cap or new zero-free region is proved by this multiplier.

Human fixed-source and detector direction: grwtsk contributors. Local multiplier
and arithmetic-source consumer: OpenAI Codex. Mathlib binomial, complex
exponential and norm laws retain qualified upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.FixedTranslationFilter
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect
open FormalResearch.RiemannHypothesis.SourcePairing
open scoped BigOperators
noncomputable section

def multiplier (k : ℕ) (h : ℝ) (s : ℂ) : ℂ :=
  ∑ j ∈ Finset.range (k + 1), (-1 : ℂ) ^ (k - j) * (k.choose j : ℂ) *
    Complex.exp ((j : ℂ) * (h : ℂ) * s)

theorem exact_binomial_multiplier (k : ℕ) (h : ℝ) (s : ℂ) :
    multiplier k h s = (Complex.exp ((h : ℂ) * s) - 1) ^ k := by
  rw [sub_eq_add_neg, add_pow]
  unfold multiplier
  apply Finset.sum_congr rfl
  intro j _hj
  have he : Complex.exp ((j : ℂ) * (h : ℂ) * s) =
      Complex.exp ((h : ℂ) * s) ^ j := by
    rw [mul_assoc, Complex.exp_nat_mul]
  rw [he]
  ring

theorem right_half_plane_exp_norm {h : ℝ} {s : ℂ} (hh : 0 < h) (hs : 0 < s.re) :
    1 < ‖Complex.exp ((h : ℂ) * s)‖ := by
  rw [Complex.norm_exp]
  have hr : ((h : ℂ) * s).re = h * s.re := by simp
  rw [hr]
  exact Real.one_lt_exp_iff.mpr (mul_pos hh hs)

theorem exp_shift_not_one {h : ℝ} {s : ℂ} (hh : 0 < h) (hs : 0 < s.re) :
    Complex.exp ((h : ℂ) * s) ≠ 1 := by
  intro he
  have hn := right_half_plane_exp_norm hh hs
  rw [he, norm_one] at hn
  exact lt_irrefl _ hn

theorem multiplier_retains_every_right_detector (k : ℕ) {h : ℝ} {s : ℂ}
    (hh : 0 < h) (hs : 0 < s.re) : multiplier k h s ≠ 0 := by
  rw [exact_binomial_multiplier]
  exact pow_ne_zero k (sub_ne_zero.mpr (exp_shift_not_one hh hs))

def weightedSource (A : ℝ) : ℝ := A ^ 17 * sourceNormalization A * closedPrimeMoment A

def ninthDifference (h A : ℝ) : ℝ :=
  ∑ j ∈ Finset.range 10, (-1 : ℝ) ^ (9 - j) * ((9 : ℕ).choose j : ℝ) *
    weightedSource (A + (j : ℝ) * h)

theorem ninth_difference_retains_complete_source (h A : ℝ) :
    ninthDifference h A = ∑ j ∈ Finset.range 10,
      (-1 : ℝ) ^ (9 - j) * ((9 : ℕ).choose j : ℝ) *
      ((A + (j : ℝ) * h) ^ 17 * sourceNormalization (A + (j : ℝ) * h) *
        closedPrimeMoment (A + (j : ℝ) * h)) := rfl

theorem every_probe_retains_source_domain {h A : ℝ} (hh : 0 ≤ h) (hA : 1 ≤ A)
    (j : ℕ) : 1 ≤ A + (j : ℝ) * h := by
  exact hA.trans (le_add_of_nonneg_right (mul_nonneg (Nat.cast_nonneg j) hh))

theorem ninth_multiplier_retains_every_right_detector {h : ℝ} {s : ℂ}
    (hh : 0 < h) (hs : 0 < s.re) : multiplier 9 h s ≠ 0 :=
  multiplier_retains_every_right_detector 9 hh hs

end
end GRWTSK.RiemannHypothesis.Conversation.FixedTranslationFilter
