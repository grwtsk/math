/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.ContractiveZeroDisk
import GRWTSK.Analysis.ComplexAnalysis.RationalComplexQuotient
import GRWTSK.NumberTheory.Zeta.Riemann.ZetaDiskCurvature

set_option autoImplicit false

/-!
# A rational local Newton test for the actual zeta source

The Boolean checks geometry and a contraction budget. TWO analytic center
facts remain explicit: enclosures of the actual zeta value and its actual
first derivative. The all-disk second-derivative bound is supplied internally
from the inherited cubic ceiling. No root-existence premise, derivative oracle,
line projection, sharp total-count certificate, or tested zero packet is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.RationalNewtonWitness

open Set Metric
open GRWTSK.Analysis.ComplexAnalysis.RationalRoundedArithmetic
open GRWTSK.Analysis.ComplexAnalysis.FiniteExponentialEnclosure
open GRWTSK.Analysis.ComplexAnalysis.ContractiveZeroDisk
open CanonicalZeroDivisor LocalJensenCount ZetaDiskCurvature

/-- Raw rational data. The error numbers do not certify the center facts. -/
structure Data where
  center : QComplex
  radius : ℚ
  inverse : QComplex
  value : QComplex
  valueError : ℚ
  slope : QComplex
  slopeError : ℚ
  deriving DecidableEq, Repr

def chartCenter (N : ℕ) (positive : Bool) : QComplex :=
  ⟨2, if positive then (N : ℚ) + 3 / 2 else -((N : ℚ) + 3 / 2)⟩

/-- Cauchy supplies this particular bound for the actual source, not metadata. -/
def curvature (N : ℕ) : ℚ := 8 * ((N : ℚ) + 2) ^ 3

def residualBudget (p : Data) : ℚ :=
  QComplex.rect p.inverse * (QComplex.rect p.value + p.valueError)

def defectBudget (N : ℕ) (p : Data) : ℚ :=
  QComplex.rect (QComplex.sub QComplex.one (QComplex.mul p.inverse p.slope)) +
    QComplex.rect p.inverse * (p.slopeError + curvature N * p.radius)

def Geometry (N : ℕ) (positive : Bool) (p : Data) : Prop :=
  2 ≤ N ∧ 0 < p.radius ∧ p.radius ≤ 5 / 2 ∧
    QComplex.normSq (QComplex.sub p.center (chartCenter N positive)) ≤ (5 / 2 - p.radius) ^ 2

def Admissible (N : ℕ) (positive : Bool) (p : Data) : Prop :=
  Geometry N positive p ∧ 0 ≤ p.valueError ∧ 0 ≤ p.slopeError ∧
    0 < QComplex.normSq p.inverse ∧ defectBudget N p < 1 ∧
      residualBudget p + defectBudget N p * p.radius ≤ p.radius

instance (N : ℕ) (positive : Bool) (p : Data) : Decidable (Admissible N positive p) := by
  unfold Admissible Geometry
  infer_instance

def verify (N : ℕ) (positive : Bool) (p : Data) : Bool := decide (Admissible N positive p)

/-- These two propositions must be proved against riemannZeta, not a surrogate. -/
def CenterEnclosures (p : Data) : Prop :=
  ‖riemannZeta (QComplex.embed p.center) - QComplex.embed p.value‖ ≤ (p.valueError : ℝ) ∧
  ‖deriv riemannZeta (QComplex.embed p.center) - QComplex.embed p.slope‖ ≤ (p.slopeError : ℝ)

theorem verify_iff (N : ℕ) (positive : Bool) (p : Data) :
    verify N positive p = true ↔ Admissible N positive p := by
  simp [verify]

/-- Exact signed chart identity. The sign is not inferred from approximate data. -/
theorem chartCenter_spec (N : ℕ) (positive : Bool) :
    QComplex.embed (chartCenter N positive) = upperCenter N ∨
      QComplex.embed (chartCenter N positive) = lowerCenter N := by
  cases positive with
  | false => right; apply Complex.ext <;> simp [chartCenter, QComplex.embed, lowerCenter]
  | true => left; apply Complex.ext <;> simp [chartCenter, QComplex.embed, upperCenter]

theorem curvature_nonneg (N : ℕ) : 0 ≤ curvature N := by unfold curvature; positivity

/-- Squared-distance data plus the NONNEGATIVE margin prove whole-disk containment. -/
theorem geometry_subset (N : ℕ) (positive : Bool) (p : Data)
    (hg : Geometry N positive p) :
    closedBall (QComplex.embed p.center) (p.radius : ℝ) ⊆
      closedBall (QComplex.embed (chartCenter N positive)) (5 / 2 : ℝ) := by
  have hr : (p.radius : ℝ) ≤ 5 / 2 := by
    have h := (Rat.cast_le (K := ℝ)).2 hg.2.2.1
    norm_num only [Rat.cast_div, Rat.cast_ofNat] at h
    exact h
  have hd : ‖QComplex.embed p.center - QComplex.embed (chartCenter N positive)‖ ^ 2 ≤
      (5 / 2 - (p.radius : ℝ)) ^ 2 := by
    have h : (QComplex.normSq (QComplex.sub p.center (chartCenter N positive)) : ℝ) ≤
        (5 / 2 - (p.radius : ℝ)) ^ 2 := by
      have hc := (Rat.cast_le (K := ℝ)).2 hg.2.2.2
      simpa only [Rat.cast_pow, Rat.cast_sub, Rat.cast_div, Rat.cast_ofNat] using hc
    simpa only [QComplex.cast_normSq, QComplex.embed_sub] using h
  have hdist : dist (QComplex.embed p.center) (QComplex.embed (chartCenter N positive)) ≤
      5 / 2 - (p.radius : ℝ) := by
    rw [dist_eq_norm]
    exact (sq_le_sq₀ (norm_nonneg _) (by linarith : (0 : ℝ) ≤ 5 / 2 - (p.radius : ℝ))).mp hd
  intro z hz
  have hz' : dist z (QComplex.embed p.center) ≤ (p.radius : ℝ) := hz
  have ht := dist_triangle z (QComplex.embed p.center) (QComplex.embed (chartCenter N positive))
  change dist z (QComplex.embed (chartCenter N positive)) ≤ 5 / 2
  linarith

/-- The actual residual and the WHOLE-disk derivative defect acquire rational ceilings. -/
theorem source_bounds (N : ℕ) (positive : Bool) (p : Data)
    (hp : Admissible N positive p) (hc : CenterEnclosures p) :
    ‖QComplex.embed p.inverse * riemannZeta (QComplex.embed p.center)‖ ≤ (residualBudget p : ℝ) ∧
      ∀ z ∈ closedBall (QComplex.embed p.center) (p.radius : ℝ),
        ‖1 - QComplex.embed p.inverse * deriv riemannZeta z‖ ≤ (defectBudget N p : ℝ) := by
  have hr : (0 : ℝ) ≤ p.radius := le_of_lt (by exact_mod_cast hp.1.2.1)
  have hev : (0 : ℝ) ≤ p.valueError := by exact_mod_cast hp.2.1
  have hed : (0 : ℝ) ≤ p.slopeError := by exact_mod_cast hp.2.2.1
  have hM : (0 : ℝ) ≤ curvature N := by exact_mod_cast curvature_nonneg N
  have hsub := geometry_subset N positive p hp.1
  have hout : closedBall (QComplex.embed (chartCenter N positive)) (5 / 2 : ℝ) ⊆
      closedBall (QComplex.embed (chartCenter N positive)) (3 : ℝ) :=
    closedBall_subset_closedBall (by norm_num)
  have ha := (analyticOnNhd_zeta_disk N hp.1.1 _ (chartCenter_spec N positive)).mono (hsub.trans hout)
  have hsecond : ∀ z ∈ closedBall (QComplex.embed p.center) (p.radius : ℝ),
      ‖deriv (deriv riemannZeta) z‖ ≤ (curvature N : ℝ) := by
    intro z hz
    simpa [curvature] using norm_zeta_second_le N hp.1.1 _ z (chartCenter_spec N positive) (hsub hz)
  have hb := center_enclosure_bounds riemannZeta (QComplex.embed p.inverse)
    (QComplex.embed p.center) (QComplex.embed p.value) (QComplex.embed p.slope)
    (p.radius : ℝ) (curvature N : ℝ) (p.valueError : ℝ) (p.slopeError : ℝ)
    hr hM ha hsecond hc.1 hc.2
  constructor
  · refine hb.1.trans ?_
    have h := mul_le_mul (norm_le_rectNorm (QComplex.embed p.inverse))
      (add_le_add_right (norm_le_rectNorm (QComplex.embed p.value)) (p.valueError : ℝ))
      (by positivity) (rectNorm_nonneg (QComplex.embed p.inverse))
    simpa [residualBudget, add_comm] using h
  · intro z hz
    refine (hb.2 z hz).trans ?_
    have hA := mul_le_mul_of_nonneg_right (norm_le_rectNorm (QComplex.embed p.inverse))
      (show (0 : ℝ) ≤ (p.slopeError : ℝ) + (curvature N : ℝ) * (p.radius : ℝ) by positivity)
    have hD := norm_le_rectNorm
      (QComplex.embed (QComplex.sub QComplex.one (QComplex.mul p.inverse p.slope)))
    have h := add_le_add hD hA
    simpa [defectBudget] using h

/-- A genuine local zero is produced from center enclosures and finite tests.
No local-zero premise or all-disk derivative supplier remains in this theorem. -/
theorem exists_zero (N : ℕ) (positive : Bool) (p : Data)
    (hv : verify N positive p = true) (hc : CenterEnclosures p) :
    ∃ z : ZeroPoint,
      ‖z.1 - QComplex.embed p.center‖ ≤ (p.radius : ℝ) ∧
      ‖z.1 - QComplex.embed p.center‖ ≤ (residualBudget p : ℝ) / (1 - (defectBudget N p : ℝ)) ∧
      deriv riemannZeta z.1 ≠ 0 ∧
      ∀ w : ZeroPoint, ‖w.1 - QComplex.embed p.center‖ ≤ (p.radius : ℝ) → w = z := by
  have hp := (verify_iff N positive p).mp hv
  have hr : (0 : ℝ) < p.radius := by exact_mod_cast hp.1.2.1
  have hev : (0 : ℝ) ≤ p.valueError := by exact_mod_cast hp.2.1
  have hed : (0 : ℝ) ≤ p.slopeError := by exact_mod_cast hp.2.2.1
  have hA : QComplex.embed p.inverse ≠ 0 := by
    have hn : (0 : ℝ) < QComplex.normSq p.inverse := by exact_mod_cast hp.2.2.2.1
    rw [QComplex.cast_normSq] at hn
    intro he
    rw [he] at hn
    norm_num at hn
  have hq0 : (0 : ℝ) ≤ (defectBudget N p : ℝ) := by
    have hq : 0 ≤ defectBudget N p := by
      unfold defectBudget QComplex.rect
      have hm := curvature_nonneg N
      have her := hp.2.2.1
      have hrr := hp.1.2.1.le
      positivity
    exact_mod_cast hq
  have hq1 : (defectBudget N p : ℝ) < 1 := by exact_mod_cast hp.2.2.2.2.1
  have hself : (residualBudget p : ℝ) + (defectBudget N p : ℝ) * (p.radius : ℝ) ≤ (p.radius : ℝ) := by
    exact_mod_cast hp.2.2.2.2.2
  have hsub := geometry_subset N positive p hp.1
  have hout : closedBall (QComplex.embed (chartCenter N positive)) (5 / 2 : ℝ) ⊆
      closedBall (QComplex.embed (chartCenter N positive)) (3 : ℝ) :=
    closedBall_subset_closedBall (by norm_num)
  have ha := (analyticOnNhd_zeta_disk N hp.1.1 _ (chartCenter_spec N positive)).mono (hsub.trans hout)
  obtain ⟨hres, hdefect⟩ := source_bounds N positive p hp hc
  obtain ⟨z, hz, hzero, hloc, huniq⟩ := exists_unique_zero riemannZeta
    (QComplex.embed p.inverse) (QComplex.embed p.center) (p.radius : ℝ)
    (defectBudget N p : ℝ) (residualBudget p : ℝ) hA hr hq0 hq1
    (fun w hw => (ha w hw).differentiableAt) hdefect hres hself
  have hnz := nontrivial_of_zero_in_disk N hp.1.1 _ z (chartCenter_spec N positive)
    (hout (hsub hz)) hzero
  refine ⟨⟨z, hnz⟩, ?_, hloc, deriv_ne_zero_of_defect _ _ _ hq1 (hdefect z hz), ?_⟩
  · simpa [mem_closedBall, dist_eq_norm] using hz
  · intro w hw
    apply Subtype.ext
    exact huniq w.1 (by simpa [mem_closedBall, dist_eq_norm] using hw) w.2.1

end GRWTSK.RiemannHypothesis.RationalNewtonWitness
