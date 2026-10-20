/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.RationalNewtonDisk
import GRWTSK.NumberTheory.Zeta.Riemann.EnclosedZeroInventory

set_option autoImplicit false

/-!
# Actual local zeta witnesses from Newton-disk estimates

The finite guards neither evaluate zeta nor verify the analytic enclosures.
The required center value, center derivative, and UNIFORM second derivative
estimates remain independent proof arguments. Once supplied, an actual unique
simple nontrivial zero is derived. This route is restricted to unit record weights.
The prior repeated-zero route is unchanged. No zero-count theorem is constructed.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.LocalNewtonWitness

open Metric Set
open CanonicalZeroDivisor EnclosedZeroInventory
open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure
open GRWTSK.Analysis.Complex
open RationalMellinFamily (Member memberAt)
open RationalTentEnclosure (CoordinateData radiusAt)

/-- Entire closed disk lies in the open critical strip; not on the critical line. -/
def checkAt (c : Coordinates) (R : ℚ) (p : RationalNewtonDisk.Data) : Bool :=
  RationalNewtonDisk.check R p && decide (0 < c.1 - R ∧ c.1 + R < 1)

theorem checkAt_iff (c : Coordinates) (R : ℚ) (p : RationalNewtonDisk.Data) :
    checkAt c R p = true ↔ RationalNewtonDisk.check R p = true ∧
      0 < c.1 - R ∧ c.1 + R < 1 := by
  simp only [checkAt, Bool.and_eq_true, decide_eq_true_eq]

theorem disk_in_strip {c : Coordinates} {R : ℚ} {p : RationalNewtonDisk.Data}
    (hc : checkAt c R p = true) {z : ℂ}
    (hz : z ∈ closedBall (toComplex c) (R : ℝ)) : 0 < z.re ∧ z.re < 1 := by
  obtain ⟨_, hlo, hhi⟩ := (checkAt_iff c R p).mp hc
  have hn : ‖z - toComplex c‖ ≤ (R : ℝ) := by
    simpa only [mem_closedBall, dist_eq_norm] using hz
  have hre : |z.re - (c.1 : ℝ)| ≤ (R : ℝ) := by
    simpa only [Complex.sub_re, toComplex] using (Complex.abs_re_le_norm (z - toComplex c)).trans hn
  have hlo' : (0 : ℝ) < (c.1 : ℝ) - R := by exact_mod_cast hlo
  have hhi' : (c.1 : ℝ) + R < (1 : ℝ) := by exact_mod_cast hhi
  constructor <;> linarith [(abs_le.mp hre).1, (abs_le.mp hre).2]

/-- Analyticity is derived from the actual source and the pole exclusion. -/
theorem disk_analytic {c : Coordinates} {R : ℚ} {p : RationalNewtonDisk.Data}
    (hc : checkAt c R p = true) :
    ∀ z ∈ closedBall (toComplex c) (R : ℝ), AnalyticAt ℂ riemannZeta z := by
  intro z hz
  apply analyticOn_riemannZeta z
  intro he
  have hs := (disk_in_strip hc hz).2
  simpa only [he, Complex.one_re, lt_self_iff_false] using hs

/-- A local actual point of order ONE, not a disk total count assigned to one point. -/
theorem exists_unique_point {c : Coordinates} {R : ℚ} {p : RationalNewtonDisk.Data}
    (hc : checkAt c R p = true)
    (he : RationalNewtonDisk.Estimates riemannZeta c R p) :
    ∃ z : ZeroPoint, ‖z.1 - toComplex c‖ ≤ (R : ℝ) ∧ multiplicity z = 1 ∧
      ∀ v : ZeroPoint, ‖v.1 - toComplex c‖ ≤ (R : ℝ) → v = z := by
  obtain ⟨z, hz, hfz, ho, hu⟩ := RationalNewtonDisk.check_sound
    ((checkAt_iff c R p).mp hc).1 he (disk_analytic hc)
  have hs := disk_in_strip hc hz
  have hzero : NontrivialZetaZero z := by
    refine ⟨hfz, ?_, ?_⟩
    · rintro ⟨n, heq⟩
      have hr : z.re = -2 * ((n : ℝ) + 1) := by
        simpa using congrArg Complex.re heq
      have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
      nlinarith
    · intro heq
      simpa only [heq, Complex.one_re, lt_self_iff_false] using hs.2
  let point : ZeroPoint := ⟨z, hzero⟩
  refine ⟨point, by simpa only [mem_closedBall, dist_eq_norm] using hz, ?_, ?_⟩
  · change analyticOrderNatAt riemannZeta z = 1
    simp [analyticOrderNatAt, ho]
  · intro v hv
    apply Subtype.ext
    exact hu v.1 (by simpa only [mem_closedBall, dist_eq_norm] using hv) v.2.1

/-- A typed finite table, with one datum at every record index. No parser is asserted. -/
def checkFamily (family : List Member) (d : CoordinateData)
    (data : RecordIndex family → RationalNewtonDisk.Data) : Bool :=
  decide (∀ i : RecordIndex family, (memberAt family i).multiplicity = 1 ∧
    checkAt (memberAt family i).center (radiusAt d i) (data i) = true)

/-- Analytic estimates, separately proved at the SAME checked centers and radii. -/
def FamilyEstimates (family : List Member) (d : CoordinateData)
    (data : RecordIndex family → RationalNewtonDisk.Data) : Prop :=
  ∀ i : RecordIndex family,
    RationalNewtonDisk.Estimates riemannZeta (memberAt family i).center (radiusAt d i) (data i)

/-- Discharges the previous local-existence premise; the global count stays independent. -/
theorem localWitnesses_of_checks {family : List Member} {d : CoordinateData}
    {data : RecordIndex family → RationalNewtonDisk.Data}
    (hc : checkFamily family d data = true) (he : FamilyEstimates family d data) :
    LocalWitnesses family d := by
  have hs : ∀ i : RecordIndex family, (memberAt family i).multiplicity = 1 ∧
      checkAt (memberAt family i).center (radiusAt d i) (data i) = true := by
    simpa only [checkFamily, decide_eq_true_eq] using hc
  intro i
  obtain ⟨z, hz, hm, _⟩ := exists_unique_point (hs i).2 (he i)
  exact ⟨z, hz, by simp [(hs i).1, hm]⟩

end GRWTSK.RiemannHypothesis.LocalNewtonWitness
