/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ZetaDiskCauchyBounds
import GRWTSK.NumberTheory.Zeta.Riemann.LocalNewtonWitness

set_option autoImplicit false

/-!
# A derived actual-zeta curvature supplier for the existing Newton criterion

Only center values and first derivatives retain independent analytic enclosure
premises. The whole-disk second derivative bound is computed from exact rational
geometry and proved via the sourced Mellin identity and Cauchy. The old Newton
criterion, zero source, and canonical count input remain unchanged.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CauchyNewtonWitness

open Metric Set
open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure
open CanonicalZeroDivisor EnclosedZeroInventory
open GRWTSK.Analysis.Complex
open RationalMellinFamily (Member memberAt)
open RationalTentEnclosure (CoordinateData radiusAt)

/-- Center data only. There is no caller-supplied curvature field. -/
structure CenterData where
  inverse : Coordinates
  value : Coordinates
  derivative : Coordinates
  valueError : ℚ
  derivativeError : ℚ
  deriving DecidableEq

def leftMargin (c : Coordinates) (S : ℚ) : ℚ := c.1 - S
def poleMargin (c : Coordinates) (S : ℚ) : ℚ := 1 - c.1 - S
def sizeBound (c : Coordinates) (S : ℚ) : ℚ := RationalNewtonDisk.magnitude c + S

/-- Total rational expression; positivity of each denominator is checked before use. -/
def curvature (c : Coordinates) (R S : ℚ) : ℚ :=
  2 * (sizeBound c S / poleMargin c S + sizeBound c S / leftMargin c S) / (S - R) ^ 2

def checkGeometry (c : Coordinates) (R S : ℚ) : Bool :=
  decide (0 < R ∧ R < S ∧ 0 < leftMargin c S ∧ 0 < poleMargin c S)

/-- Fill the old datum with the derived curvature without changing the old checker. -/
def newtonData (c : Coordinates) (R S : ℚ) (p : CenterData) : RationalNewtonDisk.Data :=
  ⟨p.inverse, p.value, p.derivative, p.valueError, p.derivativeError, curvature c R S⟩

def checkAt (c : Coordinates) (R S : ℚ) (p : CenterData) : Bool :=
  checkGeometry c R S && LocalNewtonWitness.checkAt c R (newtonData c R S p)

/-- These two center enclosures still require proofs about the actual zeta function. -/
def CenterEstimates (c : Coordinates) (p : CenterData) : Prop :=
  ‖riemannZeta (toComplex c) - toComplex p.value‖ ≤ (p.valueError : ℝ) ∧
  ‖deriv riemannZeta (toComplex c) - toComplex p.derivative‖ ≤ (p.derivativeError : ℝ)

theorem geometry_iff (c : Coordinates) (R S : ℚ) :
    checkGeometry c R S = true ↔
      0 < R ∧ R < S ∧ 0 < leftMargin c S ∧ 0 < poleMargin c S := by
  simp only [checkGeometry, decide_eq_true_eq]

theorem checkAt_iff (c : Coordinates) (R S : ℚ) (p : CenterData) :
    checkAt c R S p = true ↔ checkGeometry c R S = true ∧
      LocalNewtonWitness.checkAt c R (newtonData c R S p) = true := by
  simp only [checkAt, Bool.and_eq_true]

/-- Outer guards imply the old strict strip guard at the smaller disk. -/
theorem checked_inner_strip {c : Coordinates} {R S : ℚ}
    (hg : checkGeometry c R S = true) : 0 < c.1 - R ∧ c.1 + R < 1 := by
  obtain ⟨_, hRS, hl, hp⟩ := (geometry_iff c R S).mp hg
  unfold leftMargin poleMargin at hl hp
  constructor <;> linarith

theorem curvature_nonneg {c : Coordinates} {R S : ℚ}
    (hg : checkGeometry c R S = true) : 0 ≤ curvature c R S := by
  obtain ⟨hR, hRS, hl, hp⟩ := (geometry_iff c R S).mp hg
  have hB : 0 ≤ sizeBound c S := add_nonneg (RationalNewtonDisk.magnitude_nonneg c)
    (hR.trans hRS).le
  exact div_nonneg
    (mul_nonneg (by norm_num) (add_nonneg (div_nonneg hB hp.le) (div_nonneg hB hl.le)))
    (sq_nonneg _)

/-- No whole-disk estimate is assumed: this is the actual analytic supplier. -/
theorem curvature_bound {c : Coordinates} {R S : ℚ}
    (hg : checkGeometry c R S = true) :
    ∀ z ∈ closedBall (toComplex c) (R : ℝ),
      ‖deriv (deriv riemannZeta) z‖ ≤ (curvature c R S : ℝ) := by
  obtain ⟨_hR, hRS, hl, hp⟩ := (geometry_iff c R S).mp hg
  have hleft : (leftMargin c S : ℝ) ≤ (toComplex c).re - (S : ℝ) := by
    simp [leftMargin, toComplex]
  have hright : (toComplex c).re + (S : ℝ) ≤ 1 - (poleMargin c S : ℝ) := by
    simp only [poleMargin, Rat.cast_sub, Rat.cast_one, toComplex]
    linarith
  have hB : ‖toComplex c‖ + (S : ℝ) ≤ (sizeBound c S : ℝ) := by
    simpa only [sizeBound, Rat.cast_add] using
      add_le_add_right (RationalNewtonDisk.norm_le_magnitude c) (S : ℝ)
  have hu := ZetaDiskCauchyBounds.norm_secondDeriv_zeta_le_on_inner
    (c := toComplex c) (R := (R : ℝ)) (S := (S : ℝ))
    (σ := (leftMargin c S : ℝ)) (δ := (poleMargin c S : ℝ)) (B := (sizeBound c S : ℝ))
    (by exact_mod_cast hRS) (by exact_mod_cast hl) (by exact_mod_cast hp) hleft hright hB
  simpa [curvature] using hu

/-- The inherited three-part Estimates now follows from just the two center estimates. -/
theorem estimates_of_centers {c : Coordinates} {R S : ℚ} {p : CenterData}
    (hg : checkGeometry c R S = true) (he : CenterEstimates c p) :
    RationalNewtonDisk.Estimates riemannZeta c R (newtonData c R S p) := by
  exact ⟨he.1, he.2, curvature_bound hg⟩

/-- Same actual zero, original disk and analytic order one, through the old Newton theorem. -/
theorem exists_unique_point {c : Coordinates} {R S : ℚ} {p : CenterData}
    (hc : checkAt c R S p = true) (he : CenterEstimates c p) :
    ∃ z : ZeroPoint, ‖z.1 - toComplex c‖ ≤ (R : ℝ) ∧ multiplicity z = 1 ∧
      ∀ v : ZeroPoint, ‖v.1 - toComplex c‖ ≤ (R : ℝ) → v = z := by
  have hp := (checkAt_iff c R S p).mp hc
  exact LocalNewtonWitness.exists_unique_point hp.2 (estimates_of_centers hp.1 he)

/-- Supply the unchanged family consumer without inventing a full-count certificate. -/
theorem familyEstimates_of_centers (family : List Member) (d : CoordinateData)
    (outer : RecordIndex family → ℚ) (p : RecordIndex family → CenterData)
    (hg : ∀ i : RecordIndex family,
      checkGeometry (memberAt family i).center (radiusAt d i) (outer i) = true)
    (he : ∀ i : RecordIndex family, CenterEstimates (memberAt family i).center (p i)) :
    LocalNewtonWitness.FamilyEstimates family d
      (fun i => newtonData (memberAt family i).center (radiusAt d i) (outer i) (p i)) := by
  intro i
  exact estimates_of_centers (hg i) (he i)

end GRWTSK.RiemannHypothesis.CauchyNewtonWitness
